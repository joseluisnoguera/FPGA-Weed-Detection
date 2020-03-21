#ifndef _XF_STAGE_2_H_
#define _XF_STAGE_2_H_

#include "weed_detection.h"

void get_12th_segment(rs_gray_img_t& eroded, rs_gray_img12th_t& bottom){

	//Conseguir 12va parte inferior de la imagen
	#pragma HLS dataflow
	static const uint32_t h_offset = ((RS_HEIGHT - RS_HEIGHT_12th)*RS_WIDTH)+1;
	get_12th_segment_label2:for (uint16_t i = 0; i < RS_HEIGHT_12th*RS_WIDTH; i++)
			bottom.data[i] = eroded.data[i+h_offset];
}

//Devuelve el histograma horizontal de una imagen
void get_histogram(rs_gray_img12th_t& bottom, uint8_t* histogram) {

	get_histogram_label3:for (uint16_t h=0; h<RS_WIDTH; h++)
		for (uint8_t v=0; v<RS_HEIGHT_12th; v++)
			if (bottom.data[v*RS_WIDTH+h]>0)
				histogram[h]++;
}

//Busca los puntos maximos de una distribucion
//TODO Verificar
void get_line_bases(rs_gray_img12th_t& bottom, LineBase* line_bases){

	#pragma HLS inline region
	static uint8_t histogram[RS_WIDTH];
	get_line_bases_label4:for (uint16_t i=0; i<RS_WIDTH; i++)
		histogram[i]=0;
	static uint8_t smoothed[RS_WIDTH];
	get_histogram(bottom, histogram);

	//		Suavizado del histograma	//
	get_line_bases_label5:for (uint16_t y=0; y<RS_WIDTH; y++){
		uint16_t total = 0;
		for (uint8_t x=0; x<win_size; x++){
			int32_t tmp = y - win_mid_size + x;
			if (tmp >= 0 && tmp < RS_WIDTH)
				total += histogram[tmp];
		}
		smoothed[y] = (uint8_t)(total/win_size);
	}

	//		Deteccion de maximos locales	//
	get_line_bases_label0:for (uint8_t i=0; i<max_lines; i++)
		line_bases[i].active=false;
	uint16_t last_max_dist = 0, meceta_counter = 0;
	uint8_t line_counter = 0;
	bool flag_meceta=false;

	get_line_bases_label3:for (uint16_t i = 0; i<RS_WIDTH; i++){
		if(line_counter == 0 && smoothed[i] > 0){
			line_bases[line_counter].y = i;
			line_bases[line_counter].active = true;
			line_counter++;
			last_max_dist=0;
		} else {
			if(line_counter != 0 && smoothed[i] > 0){
				if(smoothed[i]>smoothed[line_bases[line_counter-1].y]){
					if(last_max_dist<=min_dist){
						line_bases[line_counter-1].y = i;
					} else {
						line_bases[line_counter].y = i;
						line_bases[line_counter].active = true;
						line_counter++;
					}
					meceta_counter=0;
					last_max_dist=0;
				} else {
					if(smoothed[i]<smoothed[line_bases[line_counter-1].y]){
						if (flag_meceta){
							uint16_t _tmp=line_bases[line_counter-1].y+(meceta_counter>>1); //meceta_counter/2
							if(_tmp-line_bases[line_counter-1].y>min_dist){
								line_bases[line_counter].y = _tmp;
								line_bases[line_counter].active = true;
								line_counter++;
							} else {
								line_bases[line_counter-1].y = _tmp;
							}
							flag_meceta = false;
							last_max_dist=0;
							meceta_counter=0;
						} else {
							if(smoothed[i]>smoothed[i-1] && last_max_dist>min_dist){
								line_bases[line_counter].y = i;
								line_bases[line_counter].active = true;
								line_counter++;
								last_max_dist=0;
							}
						}
					} else {
						//if(smoothed[i]==smoothed[line_bases[line_counter-1].y] /*&& i==(line_bases[line_counter-1].y+1)*/){
						meceta_counter++;
						flag_meceta = true;
						//}
					}
				}
			}
		}
	last_max_dist++;
	}
}

// Extrae el micro ROI de la imagen
void extract_micro_roi(rs_gray_img_t& img_in_mr, uint16_t x_top, uint16_t x_bottom, uint16_t y_left, uint16_t y_right, micro_roi_t& micro_roi){

//	#pragma HLS dataflow
	extract_micro_roi_label6:for(uint8_t v = 0; v < MICRO_ROI_HIGHT; v++)
		for(uint8_t h = 0; h < MICRO_ROI_WIDTH; h++){
			uint8_t _v = v + x_top;
			uint16_t _h = h + y_left;
			if (_v<x_bottom && _h<y_right)
				micro_roi.data[v*MICRO_ROI_WIDTH+h] = img_in_mr.data[_v*RS_WIDTH+_h];
		}
}

//Obtiene el centroide (x=vc,y=hc) de un microROI
void get_centroid_sh(micro_roi_t& micro_roi, uint16_t h_offset, uint8_t& v_offset, uint8_t v_limit, uint16_t h_limit, Centroid possible_c , Centroid& c){

	#pragma HLS dataflow
	uint32_t v_sum = 0, h_sum = 0, _sum = 0;
	get_centroid_sh_label7:for ( uint8_t h = 0; h < MICRO_ROI_WIDTH; h++)
		for(uint8_t v = 0; v < MICRO_ROI_HIGHT; v++){
			if (h<h_limit && v<v_limit)
				if (micro_roi.data[v*MICRO_ROI_WIDTH+h] > 0){
					v_sum += v;
					h_sum += h;
					_sum++;
				}
		}
	if (_sum != 0){
		c.x = (uint16_t)((v_sum/_sum) + v_offset);
		c.y = (int32_t)((h_sum/_sum) + h_offset);
	} else {
		c.x = possible_c.x;
		c.y = possible_c.y;
	}
}

void get_centroid_fh(micro_roi_t& micro_roi, uint16_t h_offset, uint8_t v_offset, uint8_t v_limit, uint16_t h_limit, Centroid& c){

	#pragma HLS dataflow
	uint32_t v_sum = 0, h_sum = 0, _sum = 0;
	c.x = (v_limit >> 1);
	c.y = (int32_t)(h_limit >> 1);
	get_centroid_fh_label8:for ( uint8_t h=0; h < MICRO_ROI_WIDTH; h++)
		for(uint8_t v=0; v < MICRO_ROI_HIGHT; v++)
			if (h<h_limit && v<v_limit)
				if (micro_roi.data[v*MICRO_ROI_WIDTH+h] > 0){
					v_sum += v;
					h_sum += h;
					_sum++;
				}
	if (_sum != 0){
		c.x = (v_sum/_sum);
		c.y = (h_sum/_sum);
	}
	c.x += v_offset;
	c.y += h_offset;
}

// Obtiene los ultimos centroides de la lista
void get_last_centroids(Centroid centroids[], uint8_t selected_line, Centroid last_c[], uint8_t seg_index_start, uint8_t size){

	#pragma HLS dataflow
	uint8_t seg_index_end = seg_index_start + size;
	get_last_centroids_label9:for(uint8_t i=0; i<max_lines; i++){
		uint8_t _i = i+seg_index_start;
		if (_i < seg_index_end){
			last_c[i]=centroids[_i*max_lines+selected_line];
		}
	}
}

//Obtiene el valor y (horizontal) dado un valor x(vertical), m(coeficiente lineal) y b(coeficiente independiente)
int32_t get_y_lineal(uint16_t x, fixed_40b_16i& m, int32_t& b){ return ((int32_t)(m*x+b)); }

//Devuelve m y b de la recta que mejor se ajusta a una lista de puntos
void least_squares_line(Centroid* centroids, uint8_t size, fixed_40b_16i& m, int32_t& b){

//	#pragma HLS pipeline
	uint32_t sum_x=0, sum_y=0, sum_xy=0, sum_xx=0;
	//Parent function is pipelined
	least_squares_line_label10:for (uint8_t i=0; i<max_segments-1; i++)
		if (i < size){
			sum_x+=centroids[i].x;
			sum_y+=centroids[i].y;
			sum_xy+=centroids[i].x*centroids[i].y;
			sum_xx+=centroids[i].x*centroids[i].x;
		}
	int64_t num = (int64_t)(size) * sum_xy - (int64_t)(sum_x) * sum_y;
	int64_t den = (int64_t)(size) * sum_xx - (int64_t)(sum_x) * sum_x;
	m=(fixed_40b_16i)(((fixed_88b_64i)num/(fixed_88b_64i)den));
	b=(int32_t)((sum_y/size)-int32_t((sum_x/size)*m));
}

void extract_first_centroid(const ufixed_24b_8i& micro_roi_width_control, LineBase line_bases[], rs_gray_img_t& eroded, Centroid centroids[]){

//	#pragma HLS pipeline
//	#pragma HLS inline region
	micro_roi_t micro_roi_0(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH);
//	#pragma HLS STREAM variable=micro_roi_0 depth=1 dim=1
	uint8_t half_width=(uint8_t(micro_roi_width_control)>>1);
	uint8_t x_bottom = segments[0], x_top = segments[1];
	extract_first_centroid_label11:for (uint8_t line_index=0; line_index<max_lines; line_index++){
		if(line_bases[line_index].active){
			int32_t y_left = line_bases[line_index].y - half_width, y_right = line_bases[line_index].y + half_width;
			if(y_left<0) y_left=0;
			if(y_right>=RS_WIDTH) y_right=RS_WIDTH-1;
			extract_micro_roi(eroded, x_top, x_bottom, (uint16_t)y_left, (uint16_t)y_right, micro_roi_0);
			Centroid c;
			#pragma HLS data_pack variable=c
			get_centroid_fh(micro_roi_0, (uint16_t)y_left, x_top, x_bottom-x_top,(uint16_t) y_right-y_left, c);
			centroids[line_index]=c;
		}
	}
}

void extract_second_centroid(const ufixed_24b_8i& micro_roi_width_control, LineBase line_bases[], rs_gray_img_t& eroded, Centroid centroids[]){

//	#pragma HLS pipeline
//	#pragma HLS inline region
	micro_roi_t micro_roi_1(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH);
//	#pragma HLS STREAM variable=micro_roi_1 depth=1 dim=1
	uint8_t half_width = (uint8_t(micro_roi_width_control)>>1);
	uint8_t x_bottom = segments[1], x_top = segments[2];
	extract_second_centroid_label12:for (uint8_t line_index=0; line_index<max_lines; line_index++){
		if(line_bases[line_index].active){
			int32_t y_left = centroids[line_index].y - half_width;
			int32_t y_right = centroids[line_index].y + half_width;
			if(y_left < 0) y_left = 0;
			if(y_right >= RS_WIDTH) y_right = RS_WIDTH-1;
			extract_micro_roi(eroded, x_top, x_bottom, (uint16_t)y_left, (uint16_t)y_right, micro_roi_1);
			Centroid c;
			#pragma HLS data_pack variable=c
			get_centroid_fh(micro_roi_1, (uint16_t)y_left, x_top, x_bottom-x_top,(uint16_t) y_right-y_left, c);
			centroids[line_index+max_lines]=c;
		}
	}
}

void extract_third_and_fourth_c(ufixed_24b_8i& micro_roi_width_control, LineBase line_bases[], ufixed_24b_8i& micro_roi_width_control_out,
		rs_gray_img_t& eroded, Centroid centroids[]){

//	#pragma HLS pipeline
//	#pragma HLS inline region
	micro_roi_t micro_roi_2(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH);
//	#pragma HLS STREAM variable=micro_roi_2 depth=1 dim=1
	static Centroid last_c[max_last_centroids];
	#pragma HLS data_pack variable=last_c
	extract_third_and_fourth_c_label13:for(uint8_t seg_index=3; seg_index<5; seg_index++){
		uint8_t c_offset = max_lines*(seg_index-1);
		uint8_t half_width = (uint8_t(micro_roi_width_control)>>1);
		uint8_t x_bottom = segments[seg_index-1], x_top = segments[seg_index];
		uint8_t x_middle = x_bottom;//((x_bottom-x_top)>>1) + x_top; // x_bottom;
		for (uint8_t line_index=0; line_index<max_lines; line_index++){
			if (line_bases[line_index].active){
				get_last_centroids(centroids, line_index, last_c, (uint8_t)0, seg_index-1);
				fixed_40b_16i m;
				int32_t b;
				least_squares_line(last_c, seg_index-1, m, b);
				int32_t y_temp = get_y_lineal(x_middle, m, b);
				int32_t y_left = y_temp - half_width, y_right = y_temp + half_width;
				if(y_left < 0) y_left=0;
				if(y_right >= RS_WIDTH) y_right = RS_WIDTH-1;
				extract_micro_roi(eroded, x_top, x_bottom, (uint16_t)y_left, (uint16_t)y_right, micro_roi_2);
				Centroid c;
				#pragma HLS data_pack variable=c
				get_centroid_fh(micro_roi_2, (uint16_t)y_left, x_top, x_bottom-x_top,(uint16_t)(y_right-y_left), c);
				centroids[line_index+c_offset]=c;
			}
		}
		micro_roi_width_control-=micro_roi_decay;
	}
	micro_roi_width_control_out=micro_roi_width_control;
}

void extr_half_1_cent(ufixed_24b_8i& micro_roi_width_control, ufixed_24b_8i& micro_roi_width_control_out, LineBase line_bases[],
		rs_gray_img_t& eroded, Centroid centroids[]){

//	#pragma HLS dataflow
	micro_roi_t micro_roi_0(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH);
	extract_first_centroid(micro_roi_width_control, line_bases, eroded, centroids);
	micro_roi_width_control-=micro_roi_decay;
	extract_second_centroid(micro_roi_width_control, line_bases, eroded, centroids);
	micro_roi_width_control-=micro_roi_decay;
	extract_third_and_fourth_c(micro_roi_width_control, line_bases, micro_roi_width_control_out, eroded, centroids);
}

void extr_half_2_cent( ufixed_24b_8i& micro_roi_width_control, LineBase* line_bases, rs_gray_img_t& eroded, Centroid* centroids){

//	#pragma HLS pipeline
//	#pragma HLS dataflow
//	#pragma HLS inline region
	micro_roi_t micro_roi_3(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH);
//	#pragma HLS STREAM variable=micro_roi_3 depth=1 dim=1
	//Calculo de centroides de la segunda mitad, basado en los 4 centroides anteriores
	uint8_t last_seg_index=0;
	extr_half_2_cent_label14:for (int seg_index = 5; seg_index < max_segments; seg_index++){
//		#pragma HLS unroll factor=1
		uint8_t x_bottom = segments[seg_index-1], x_top = segments[seg_index];
		uint8_t x_middle = x_bottom;//x_top + ((x_bottom-x_top) >> 1); //x_bottom;
		uint8_t micro_roi_half_width = (uint8_t(micro_roi_width_control) >> 1);
		uint8_t c_offset = max_lines*(seg_index-1);
		for (uint8_t line_index = 0; line_index < max_lines; line_index++){
//			#pragma HLS unroll factor=1
			if (line_bases[line_index].active){
				static Centroid last_centroids[max_last_centroids];
				#pragma HLS data_pack variable=last_centroids
				get_last_centroids(centroids, line_index, last_centroids, last_seg_index, max_last_centroids);
				fixed_40b_16i m;
				int32_t b;
				least_squares_line(last_centroids, max_last_centroids, m, b);
				int32_t y_temp=get_y_lineal(x_bottom, m, b);
				int32_t y_left = y_temp - micro_roi_half_width, y_right = y_temp + micro_roi_half_width;
				if(y_left < 0) y_left = 0;
				if(y_right >= RS_WIDTH) y_right = RS_WIDTH - 1;
				extract_micro_roi(eroded, x_top, x_bottom, (uint16_t)y_left, (uint16_t)y_right, micro_roi_3);
				int32_t y_possible = get_y_lineal(x_middle, m, b);
				Centroid possible_c, c;
				#pragma HLS data_pack variable=possible_c
				#pragma HLS data_pack variable=c
				possible_c.x = x_middle;
				possible_c.y = y_possible;
				get_centroid_sh(micro_roi_3, (uint16_t)y_left, x_top, x_bottom-x_top,(uint16_t) y_right-y_left, possible_c, c);
				centroids[c_offset+line_index]=c;
			}
		}
		micro_roi_width_control -= micro_roi_decay;
		last_seg_index++;
	}
}

//Devuelve los centroides de la imagen
void get_centroids(LineBase* line_bases, rs_gray_img_t& eroded, Centroid* centroids){

	//Nota: El eje vertical es el de coordenadas(x), el horizontal de ordenadas(y)
	//Cada fila es un segmento (de 12) donde cada columna de ella es una lï¿½nea distinta
	//Asegurarse que cuando se calcula los primeros centroides sean igual a max_centroids
	ufixed_24b_8i micro_roi_width_control = CROP_WIDTH_BOTTOM;
	ufixed_24b_8i micro_roi_width_control_out;
	extr_half_1_cent(micro_roi_width_control, micro_roi_width_control_out, line_bases, eroded, centroids);
	extr_half_2_cent(micro_roi_width_control_out, line_bases, eroded, centroids);
}

void get_lines_lsl(Centroid centroids[], LineBase line_bases[], Line final_lines[], bool& lines_founded){

//	#pragma HLS pipeline //Parent function is pipelined
	lines_founded = false;
	get_lines_lsl_label15:for (uint8_t line_index=0; line_index<max_lines; line_index++){
		if (line_bases[line_index].active){
			static Centroid line_centroids[max_segments-1];
			#pragma HLS data_pack variable=line_centroids
			get_lines_lsl_label0:for (uint8_t s_index=0; s_index<max_segments-1; s_index++)
				line_centroids[s_index]=centroids[(s_index)*max_lines+line_index];
			fixed_40b_16i m;
			int32_t b;
			least_squares_line(line_centroids, max_segments-1, m, b);
			float _m = m;
			int32_t y_temp = get_y_lineal(RS_HEIGHT, m, b);
			if ((( y_temp>=0 && y_temp<=third_1 && m<(fixed_40b_16i)(-0.14) && m>(fixed_40b_16i)(-1)))
				||(y_temp>=third_2 && y_temp<RS_WIDTH && m>(fixed_40b_16i)(0.14) && m<1)
				||(y_temp<third_2 && y_temp>third_1 && m<(fixed_40b_16i)(0.4) && m>(fixed_40b_16i)(-0.4))){
				final_lines[line_index].active=true;
				final_lines[line_index].m=m;
				final_lines[line_index].b=b;
				lines_founded = true;
			} else{
				final_lines[line_index].active=false;
			}
		}
	}
}

//Devuelve 1 si la posiciï¿½n enviada pertenece al cultivo, -1 si pertenece a la maleza
int8_t is_crop_or_furrow(Line* lines, int16_t& px, uint16_t& py, uint8_t& crop_width){

//	#pragma HLS pipeline
	#pragma HLS inline region
	static int32_t h_buffer[max_lines];
	bool flag_first=true;
	int32_t most_left, most_right;
	is_crop_or_furrow_label5:for (uint8_t i=0; i<max_lines; i++){
		if (lines[i].active){
			h_buffer[i] = get_y_lineal((int32_t)px, lines[i].m, lines[i].b);
			int32_t tmp_most_left = h_buffer[i] - crop_width;
			int32_t tmp_most_right = h_buffer[i] + crop_width;
			if (py <= tmp_most_right && py >= tmp_most_left)
				return (1);
			if (flag_first){
				most_left = tmp_most_left;
				most_right = tmp_most_right;
				flag_first=false;
			} else{
				if (tmp_most_left < most_left) most_left = tmp_most_left;
				if (tmp_most_right > most_right) most_right = tmp_most_right;
			}
		}
	}
	if (py <= most_left || py >= most_right)
		return (0);
	return (-1);
}

void get_weed_mask(rs_gray_img_t& weed_mask_tmp, ufixed_24b_8i crop_widh_control, Line lines[], bool& lines_founded){

//	#pragma HLS pipeline
	//Creacion de las mascaras (La de cultivo no es necesaria)
	get_weed_mask_label17:for(int16_t v=RS_HEIGHT-1; v>=0; v--){
		uint8_t tmp_hw_c = (crop_widh_control>>1);
		for(uint16_t h=0; h<RS_WIDTH; h++){
//			#pragma HLS unroll factor=1 //Parent loop is pipelined
			if(lines_founded && is_crop_or_furrow(lines, v, h, tmp_hw_c) == -1)
				weed_mask_tmp.data[v*RS_WIDTH+h] = 255;
			else
				weed_mask_tmp.data[v*RS_WIDTH+h] = 0;
		}
		crop_widh_control -= cw_decay;
	}
}

void get_crop_lines(rs_gray_img12th_t& bottom, rs_gray_img_t& eroded, rs_gray_img_t& weed_mask_tmp){

	//El calculo de segmentos se realiza offline segï¿½n la especificaciï¿½n de altura que se tenga
	//Cuando la altura cambie de manera dinï¿½mica se debe implementar en C++
//	#pragma HLS dataflow
//	#pragma HLS inline recursive
	static LineBase line_bases[max_lines];
	#pragma HLS data_pack variable=line_bases
	static Centroid centroids[max_centroids];
	#pragma HLS data_pack variable=centroids
	static Line lines[max_lines];
	#pragma HLS data_pack variable=lines
	bool lines_founded = false;

	//Deteccion de base de rectas de cultivo por histograma (Para la 12va parte inferior de la imagen)
	get_line_bases(bottom, line_bases);

	//Correcciï¿½n de los valores de corte (b) en las rectas (y=m*x+b)
	get_centroids(line_bases, eroded, centroids);

//	for (uint8_t i=0; i<max_lines; i++){
//		if (line_bases[i].active){
//		printf("Centroide linea %d \n", i);
//		for (uint8_t j=0; j<max_segments-1; j++)
//				printf("x,y : %d,%d - ", centroids[j*max_lines+i].x, centroids[j*max_lines+i].y);
//		printf("\n");
//		}
//	}

	//Obtencion de rectas con metodo de minimos cuadrados
	get_lines_lsl(centroids, line_bases, lines, lines_founded);

//	for (uint8_t i=0; i<max_lines; i++)
//		if (lines[i].active)
//			printf("Linea %d con m: %.6f y b: %d \n", i, (float)lines[i].m, lines[i].b);

	//Obtener máscara de maleza
	get_weed_mask(weed_mask_tmp, cw_bottom_additioned, lines, lines_founded);
}

#endif
