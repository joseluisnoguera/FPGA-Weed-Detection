#include "weed_detection.h"
#include "hls_math.h"

// --------------- Procesamiento general de imagen ---------------
void weed_detection(rgb_img_t& img_in, rgb_img_t& img_out/*, fixed_16b_4& ground_distance, fixed_16b_4& angle*/)
{
	//pragma stream depth tells tools that no buffering is needed

	//Se corta un cuarto de la parte superior siempre, hay que calcular los valores con esto

	// ---------------- PRIMERA ETAPA ---------------- //
	// Durante esta etapa se procesa la im�gen para obtener una de menor tama�o resaltando la vegetaci�n y l�neas

	//Convertir al �ndice seleccionado (Escalando a 8 bits)
	gray_img_t veg_img(MAX_HEIGHT, MAX_WIDTH);
	#pragma HLS STREAM variable=veg_img depth=1 dim=1
	get_vegetation_image(img_in, EXG, veg_img);


	//Resize a un cuarto de la imagen
//	int new_h_offset = (height_offset * RS_HEIGHT) / MAX_HEIGHT;
//	int new_width = RS_WIDTH;
	rs_gray_img_t resized(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=resized depth=1 dim=1
	xf::resize<INTERPOLATION, XF_8UC1, MAX_HEIGHT, MAX_WIDTH, RS_HEIGHT, RS_WIDTH, NPC1, MAXDOWNSCALE>(veg_img, resized);


	//Threshold Otsu
	rs_gray_img_t segmented(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=segmented depth=1 dim=1
	segment_image(resized, segmented);


	//Apertura y Cierre (kernel 3x3 con forma de suma)
	rs_gray_img_t temp0(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=temp0 depth=1 dim=1
	rs_gray_img_t temp1(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=temp1 depth=1 dim=1
	rs_gray_img_t temp2(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=temp2 depth=1 dim=1
	rs_gray_img_t opened(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=opened depth=1 dim=1
	xf::erode<XF_BORDER_CONSTANT, XF_8UC1 , RS_HEIGHT, RS_WIDTH, KERNEL_SHAPE, FILTER_SIZE, FILTER_SIZE, ITERATIONS, NPC1>(segmented, temp0, kernel_ones);
	xf::dilate<XF_BORDER_CONSTANT, XF_8UC1 , RS_HEIGHT, RS_WIDTH, KERNEL_SHAPE, FILTER_SIZE, FILTER_SIZE, ITERATIONS, NPC1>(temp0, temp1, kernel_ones);
	xf::dilate<XF_BORDER_CONSTANT, XF_8UC1 , RS_HEIGHT, RS_WIDTH, KERNEL_SHAPE, FILTER_SIZE, FILTER_SIZE, ITERATIONS, NPC1>(temp1, temp2, kernel_ones);
	xf::erode<XF_BORDER_CONSTANT, XF_8UC1 , RS_HEIGHT, RS_WIDTH, KERNEL_SHAPE, FILTER_SIZE, FILTER_SIZE, ITERATIONS, NPC1>(temp2, opened, kernel_ones);


	//Erosion segun la cantidad de vegetacion que tenga
	rs_gray_img_t eroded(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=eroded depth=1 dim=1
	ufixed_40b_24i vegetation = get_total_vegetation(opened);
	if ( vegetation <= th_total_vegetation)
		xf::erode<XF_BORDER_CONSTANT, XF_8UC1 , RS_HEIGHT, RS_WIDTH, KERNEL_SHAPE, FILTER_SIZE, FILTER_SIZE, ITERATIONS, NPC1>(opened, eroded, kernel_ones);
	 else
		eroded.copyTo(opened.data);

	// ---------------- SEGUNDA ETAPA ---------------- //
	// En esta etapa se detectan y seleccionan las rectas que se ajustan a los surcos

	//Conseguir 12va parte inferior de la imagen
	rs_gray_img12th_t bottom(RS_HEIGHT_12th, RS_WIDTH);
	#pragma HLS STREAM variable=bottom depth=1 dim=1
	int height_offset = (RS_HEIGHT - RS_HEIGHT_12th)*RS_WIDTH; //Ya que requiero la parte inferior, debo comenzar de m�s adelante
	for (int x = 0; x<RS_HEIGHT_12th; x++ )
		for (int y = 0; y<MAX_WIDTH; y++)
			bottom.data[x*RS_WIDTH + y] = eroded.data[x*RS_WIDTH + height_offset + y];

	//Deteccion de base de rectas de cultivo por histograma (Para la 12va parte inferior de la imagen)
	static uint16_t line_bases[max_lines];
	uint8_t lines_founded;
	get_line_bases(bottom, line_bases, lines_founded);

	//Conseguir bordes (operacion con un kernel vertical para obtener bordes verticales) ([[3, 0, -3],[10, 0, -10],[3, 0, -3]])
	rs_gray_img12th_t borders(RS_HEIGHT_12th, RS_WIDTH);
	#pragma HLS STREAM variable=borders depth=1 dim=1
	xf::filter2D<XF_BORDER_CONSTANT,FILTER_SIZE, FILTER_SIZE, XF_8UC1, XF_8UC1, RS_HEIGHT_12th, RS_WIDTH, NPC1>(bottom, borders, p_kernel_vert, SHIFT);

	//Tranformada de Hough con imagen de bordes verticales
	static float* outputrho[LINESMAX];
	static float* outputtheta[LINESMAX];
	short hough_lines;
	xf::HoughLines<RHOSTEP,THETASTEP,LINESMAX,DIAGVAL,MINTHETA,MAXTHETA,XF_8UC1, RS_HEIGHT_12th, RS_WIDTH, NPC1>(borders, outputrho, outputtheta, threshold_hough, hough_lines);

	//Creo los topes superior e inferior a partir de los indices
	static uint16_t upper_limit[max_lines];
	static uint16_t lower_limit[max_lines];
	static Line lines[max_lines];
	for (uint8_t i=0; i < lines_founded; i++){
		upper_limit[i] = line_bases[i] + mid_cw_bottom;
		lower_limit[i] = line_bases[i] - mid_cw_bottom;
		lines[i].active = false;
	}

	//Selecciono las mejores rectas encontradas por la transormaci�n de Hough
	for (uint8_t line_index=0; line_index<hough_lines; line_index++){
		fixed_32b_12i sin_theta = (fixed_32b_12i)hls::sin(*outputtheta[line_index]);
		fixed_32b_12i cos_theta = (fixed_32b_12i)hls::cos(*outputtheta[line_index]);
		if (cos_theta != 0){
			fixed_32b_12i _current_m = -sin_theta/cos_theta;
			uint16_t _current_b = (uint16_t)outputrho[line_index]/cos_theta;
			int16_t y = (int16_t)(RS_HEIGHT*_current_m+_current_b);
			uint8_t group = -1;
			for (uint8_t g_index=0; g_index<lines_founded; g_index++)
				if(y <= upper_limit[g_index] && y >= lower_limit[g_index])
					group = g_index;
			if ((y>0 && y<MAX_WIDTH && group!=-1) &&
					((y<third_1 && outputtheta[line_index]<max_ang_th1 && outputtheta[line_index]>min_ang_th1) ||
					(y>third_2 && outputtheta[line_index]<max_ang_th2 && outputtheta[line_index]>min_ang_th2) ||
					(y>third_1 && y<third_2 && outputtheta[line_index]<max_ang_th3 && outputtheta[line_index]>min_ang_th3))){
				if (lines[group].active){
					uint32_t _veg_total=get_vegetation_in_line(bottom, _current_m, _current_b);
					if (_veg_total > lines[group].veg_amount){
						lines[group].m=_current_m;
						lines[group].b=_current_b;
						lines[group].veg_amount=_veg_total;
					}
				} else {
					lines[group].active=true;
					lines[group].m=_current_m;
					lines[group].b=_current_b;
					lines[group].veg_amount=get_vegetation_in_line(bottom, _current_m, _current_b);
				}
			}
		}
	}

	//El calculo de segmentos se realiza offline seg�n la especificaci�n de altura que se tenga
	//Cuando la altura cambie de manera din�mica se debe implementar en C++

	static Centroid centroids[max_centroides]; //Fila: el numero de linea - Columna: El numero de centroide
	//Correcci�n de los valores de corte (b) en las rectas (y=m*x+b)
	uint8_t i_aux1=0;
	for(uint8_t i=0; i<lines_founded; i++){
		while(!lines[i_aux1].active) i_aux1++;
		int32_t tmp=get_y_lineal(-rs_h_middle, lines[i_aux1].m, lines[i_aux1].b);
		lines[i_aux1].b=tmp;
		i_aux1++;
	}

	//Calculo de centroides de la primera mitad de la image, utilizando rectas de Houghs
	//Nota: El eje vertical es el de coordenadas(x), el horizontal de ordenadas(y)
	//Cada fila es un segmento (de 12) donde cada columna de ella es una l�nea distinta
	//Asegurarse que cuando se calcula los primeros centroides sean igual a max_centroids
	uint8_t segment_index=1;
	ufixed_32b_12i micro_roi_width_control = CROP_WIDTH_BOTTOM;
	micro_roi_t micro_roi=(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH);
	#pragma HLS STREAM variable=micro_roi depth=1 dim=1
	while(segments[segment_index] >= rs_h_middle){
		for (uint8_t line_index=0; line_index<max_lines; line_index++){
			if(lines[line_index].active){
				uint16_t micro_roi_width=(uint16_t)micro_roi_width_control; //Convierto a entero sin signo
				uint16_t x_bottom=segments[segment_index-1], x_top=segments[segment_index];

				uint16_t y_temp=get_y_lineal(x_bottom, lines[line_index].m, lines[line_index].b); //Valor de y en medio del microROI
				uint16_t half_width=(uint16_t)(micro_roi_width>>1); // div 2
				uint16_t y_left=y_temp-half_width, y_right=y_temp+half_width;

				if(y_left<0) y_left=0;
				if(y_right>=RS_WIDTH) y_right=RS_WIDTH-1;
				uint16_t micro_roi_hight=(uint16_t)(segments[segment_index-1]-segments[segment_index]);
				extract_micro_roi(eroded, x_top, y_left, x_bottom, y_right, micro_roi);
				uint16_t x_middle=x_bottom+((x_bottom-x_top)>>1);
				uint16_t y_possible=get_y_lineal(x_middle, lines[line_index].m, lines[line_index].b);
				Centroid possible_c; possible_c.x=x_middle;
				Centroid  c;
				get_centroid_in_micro_roi(micro_roi, y_left, x_top, micro_roi_hight, micro_roi_width, possible_c, c.y, c.x);
				centroids[(segment_index-1)*max_lines+line_index]=c;
			}
		}
		micro_roi_width_control-=micro_roi_decay;
		segment_index++;
	}

	//Calculo de centroides de la segunda mitad, basado en los 4 centroides anteriores
	uint8_t last_seg_index=0;
	while(segment_index < max_segments){
		for (uint8_t line_index=0; line_index<max_lines; line_index++){
			if(lines[line_index].active){
				Centroid last_centroids[max_centroids];
				get_last_centroids(centroids, line_index, lines, last_centroids, last_seg_index);
				Centroid last_one=last_centroids[max_centroids-1];
				fixed_32b_12i m;
				uint32_t b;
				least_squares_line(last_centroids, max_centroids, m, b);
				uint16_t micro_roi_width=(uint16_t)micro_roi_width_control; //Convierto a entero sin signo
				uint16_t x_bottom=segments[segment_index-1], x_top=segments[segment_index];
				uint16_t y_temp=get_y_lineal(x_bottom, m, b);
				uint16_t tmp= (uint16_t)(micro_roi_width>>1); // div 2
				uint16_t y_left=y_temp-tmp, y_right=y_temp+tmp;
				if(y_left<0) y_left=0;
				if(y_right>=RS_WIDTH) y_right=RS_WIDTH-1;
				uint16_t micro_roi_hight=(uint16_t)(segments[segment_index-1]-segments[segment_index]);
				extract_micro_roi(eroded, x_top, y_left, x_bottom, y_right, micro_roi);
				uint16_t x_middle=x_bottom+((x_bottom-x_top)>>1);
				uint16_t y_possible=get_y_lineal(x_middle, lines[line_index].m, lines[line_index].b);
				Centroid possible_c; possible_c.x=x_middle;
				Centroid  c;
				get_centroid_in_micro_roi(micro_roi, y_left, x_top, micro_roi_hight, micro_roi_width, possible_c, c.y, c.x);
				centroids[(segment_index-1)*max_lines+line_index]=c;
			}
		}
		micro_roi_width_control-=micro_roi_decay;
		segment_index++;
		last_seg_index++;
	}

	//Obtencion de rectas con metodo de minimos cuadrados
	for (uint8_t line_index=0; line_index<max_lines; line_index++){
		if(lines[line_index].active){
			Centroid line_centroids[max_segments];
			for (uint8_t c_index=0; c_index<max_segments; c_index++)
				line_centroids[c_index]=centroids[(c_index)*max_lines+line_index];
			Centroid last_one=line_centroids[max_segments-1];
			fixed_32b_12i m;
			uint32_t b;
			least_squares_line(line_centroids, max_segments, m, b);
			//TODO: Verificar si m cumple las condiciones para que la recta sea v�lida
//			lines[line_index].active=false;
			lines[line_index].m=m;
			lines[line_index].b=b;
		}
	}

	// ---------------- TERCERA ETAPA ---------------- //
	// En esta etapa se genera la m�scara de maleza, con la cual se clasifica seg�n la cantidad de verde en el cuadrante

	//Creacion de las mascaras (La de cultivo no es necesaria)
	rs_gray_img_t weed_mask_tmp=(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=weed_mask_tmp depth=1 dim=1
	uint16_t crop_widh_control= cw_bottom_additioned;

	for(uint16_t v=RS_HEIGHT-1; v>=0; v--){
		uint16_t tmp_cw_c=(crop_widh_control>>1);
		for(uint16_t h=0; h<RS_WIDTH; h++){
			bool result=is_crop_or_furrow(lines, lines_founded, v, h, crop_widh_control);
			if(result==-1)
				weed_mask_tmp[v*RS_WIDTH+h]=255;
		}
		crop_widh_control-=cw_decay;
	}

	//Bitwise and para generar la m�scara de maleza final
	rs_gray_img_t weed_mask=(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=weed_mask depth=1 dim=1
	xf::bitwise_and<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1> (weed_mask_tmp, opened, weed_mask);

	//Threshold de maleza
	for(uint8_t seg_index=0; seg_index<max_segments-1; seg_index++){
		uint16_t quadrant_space[max_lines-1];
		ufixed_40b_24i quadrant_weed[max_lines-1];
		for(uint16_t v=segments[seg_index+1]; v<segments[seg_index]; v++){
			uint16_t quadrant_index=0;
			uint16_t h=0;
			while(quadrant_index<max_lines-1 && h<RS_WIDTH){
				while(h<RS_WIDTH && weed_mask_tmp[v*RS_WIDTH+h]==0)
					h++;
				while(h<RS_WIDTH && weed_mask_tmp[v*RS_WIDTH+h]>0){
					quadrant_space[quadrant_index]++;
					if(weed_mask[v*RS_WIDTH+h]>0)
						quadrant_weed[quadrant_index]++;
					h++;
				}
				quadrant_index++;
			}
		}
		for(uint8_t i=0; i<max_lines-1; i++)
			quadrant_weed[i]=quadrant_weed[i]/(ufixed_40b_24i)quadrant_space[i];

		//Dibujado para mostrar en pantalla, sin pantalla no es necesario
		for(uint16_t v=segments[seg_index+1]; v<segments[seg_index]; v++){
			uint16_t quadrant_index=0;
			uint16_t h=0;
			while(quadrant_index<max_lines-1 && h<RS_WIDTH){
				while(h<RS_WIDTH && weed_mask_tmp[v*RS_WIDTH+h]==0)
					h++;
				if(quadrant_weed[quadrant_index]>weed_threshold)
					while(h<RS_WIDTH && weed_mask_tmp[v*RS_WIDTH+h]==255)
						h++;
				else
					while(h<RS_WIDTH && weed_mask_tmp[v*RS_WIDTH+h]==255){
						weed_mask[v*RS_WIDTH+h]=0;
						h++;
					}
				quadrant_index++;
			}
		}
	}

	//Esta parte es para generar la imagen de salida, cuando no se necesita hay que quitarlo
	rs_gray_img_t zero=(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=zero depth=1 dim=1
	for(uint16_t i=0; i<RS_HEIGHT; i++)
		for(uint16_t j=0; j<RS_WIDTH; j++)
			zero[i*RS_WIDTH+j]=0;

	//Se junta en una imagen rgb
	rs_rgb_img_t mask_img_out=(RS_HEIGHT,RS_WIDTH);
	#pragma HLS STREAM variable=mask_img_out depth=1 dim=1
	xf::merge<XF_8UC1, XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1>(zero, weed_mask, zero, mask_img_out);

	//Se realiza resize para que tengan las mismas dimensiones
	rgb_img_t rs_mask_img_out=(MAX_HEIGHT, MAX_WIDTH);
	#pragma HLS STREAM variable=rs_mask_img_out depth=1 dim=1
	xf::resize<INTERPOLATION, XF_8UC3, RS_HEIGHT, RS_WIDTH, MAX_HEIGHT, MAX_WIDTH, NPC1, MAXDOWNSCALE>(mask_img_out, rs_mask_img_out);

	//Se suman las im�genes rgb
	xf::accumulate<XF_8UC3,XF_8UC3, MAX_HEIGHT, MAX_WIDTH, NPC1>(rs_mask_img_out, img_in,img_out);

}


// --------------- AXI Interface ---------------
void ip_accel_app(stream_t& stream_in, stream_t& stream_out/*, fixed_16b_4& ground_distance, fixed_16b_4& angle*/)
{
	#pragma HLS INTERFACE axis register both  port=stream_in
	#pragma HLS INTERFACE axis register both  port=stream_out

	rgb_img_t img_in(MAX_HEIGHT, MAX_WIDTH);
	#pragma HLS STREAM variable=img_in depth=1 dim=1
	rgb_img_t img_out(MAX_HEIGHT, MAX_WIDTH);
	#pragma HLS STREAM variable=img_out depth=1 dim=1

	 //Interpret AXI-Stream interface and pull the frame from it
	xf::AXIvideo2xfMat(stream_in, img_in);

	//Accelerated function
	weed_detection(img_in, img_out/*, ground_distance, angle*/); // ,int* weed_detected);

	//Pack the frame back into AXI-Stream interface
	xf::xfMat2AXIvideo(img_out, stream_out);
}
