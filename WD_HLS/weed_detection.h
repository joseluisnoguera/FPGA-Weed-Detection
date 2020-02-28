#include "image_config.h"

//XfOpenCV used libraries
#include "imgproc/xf_cvt_color.hpp"
#include "imgproc/xf_resize.hpp"
#include "imgproc/xf_otsuthreshold.hpp"
#include "imgproc/xf_threshold.hpp"
#include "imgproc/xf_custom_convolution.hpp"
#include "imgproc/xf_channel_extract.hpp"
#include "core/xf_min_max_loc.hpp"
#include "core/xf_arithm.hpp"
#include "imgproc/xf_channel_combine.hpp"
#include "imgproc/xf_accumulate_image.hpp"
#include "imgproc/xf_erosion.hpp"
#include "imgproc/xf_dilation.hpp"
#include "imgproc/xf_houghlines.hpp"

//Image processing
void edge_detect(rgb_img_t& img_in, rgb_img_t& img_ou/*, fixed_16b_4& ground_distance, fixed_16b_4& angle*/);

//AXI interface
void ip_accel_app(stream_t& stream_in, stream_t& stream_out/*, fixed_16b_4& ground_distance, fixed_16b_4& angle*/);


//--------------- Variables utiles ---------------
static unsigned char kernel_ones[FILTER_SIZE*FILTER_SIZE]={1, 1, 1, 1, 1, 1, 1, 1, 1};
static short int kernel_vertical_borders[FILTER_SIZE*FILTER_SIZE] = {1, 0, -1, 2, 0, -2, 1, 0, -1};
short int* p_kernel_vert = kernel_vertical_borders;

//--------------- Funciones usadas en procesamiento ---------------

//h: horizontal v:vertical
// Extrae el micro ROI de la imagen
void extract_micro_roi(rs_gray_img_t& veg_img, uint16_t& x_top, uint16_t& y_left, uint16_t& x_bottom, uint16_t y_right, micro_roi_t& micro_roi){
	for(uint16_t h=x_top; h<x_bottom; h++)
		for(uint16_t v=y_left; v<y_right; v++)
			micro_roi[(v-x_top)*RS_WIDTH+(h-y_left)]=veg_img[v*RS_WIDTH+h];
}

//Obtiene el centroide (x=vc,y=hc) de un microROI
void get_centroid_in_micro_roi(micro_roi_t& micro_roi, uint16_t& h_offset, uint16_t& v_offset, uint16_t& v_limit, uint16_t& h_limit, Centroid& possible_c , uint16_t& hc, uint16_t& vc){
	uint32_t v_sum=0, h_sum=0, _sum=0, _vc=(uint32_t)v_limit/2, _hc=(uint32_t)h_limit/2;
	for ( uint16_t h=0; h < h_limit; h++)
		for(uint16_t v=0; v < v_limit; v++)
			if (micro_roi[v*MAX_WIDTH+h] > 0){
				v_sum += v;
				h_sum += h;
				_sum++;
			}
	if (_sum != 0){
		_vc = (uint32_t) ((float)v_sum/(float)_sum)+v_offset;
		_hc = (uint32_t) ((float)h_sum/(float)_sum)+h_offset;
	} else {
		_vc = possible_c.x;
		_hc = possible_c.y;
	}
	vc = _vc;
	hc = _hc;
}

void get_last_centroids(Centroid* centroids, uint8_t selected_line, Line* lines, Centroid* last_c, uint8_t seg_index){
	//Obtengo el indice de l�nea que busco
	int8_t line_index=-1;
	int8_t line_counter=-1;
	do {
		line_index++;
		if(lines[line_index].active) line_counter++;
	}while(line_counter<selected_line);
	//Paso los 4 anteriores centroides
	for(uint8_t i=seg_index; i<seg_index+max_centroids; i++){
		last_c[i]=centroids[i*max_lines+line_index];
	}
}

//Obtiene el valor y (horizontal) dado un valor x(vertical), m(coeficiente lineal) y b(coeficiente independiente)
uint16_t get_y_lineal(uint16_t x, fixed_32b_12i m, int32_t b){ return (uint16_t)(m*x+b); }

//Obtiene la cantidad de vegetaci�n (blanco) que hay en un recorrido lineal a trav�s de la imagen
uint32_t get_vegetation_in_line(rs_gray_img12th_t& img, fixed_32b_12i m, int32_t b){
	uint32_t sum = 0;
	for (uint16_t x=0; x<RS_HEIGHT; x++){
		uint16_t y = get_y_lineal(x, m, b);
		if (y>=0 && y<RS_WIDTH)
			sum++;
	}
	return sum;
}

//Devuelve una imagen de 8b de profundidad utilizando el indice de vegetacion seleccionado
void get_vegetation_image(rgb_img_t& img_in, uint8_t& selected_index, gray_img_t& img_out){
	#pragma HLS dataflow
	gray_img_t r_channel(MAX_HEIGHT, MAX_WIDTH);
	#pragma HLS STREAM variable=r_channel depth=1 dim=1
	gray_img_t g_channel(MAX_HEIGHT, MAX_WIDTH);
	#pragma HLS STREAM variable=g_channel depth=1 dim=1
	gray_img_t b_channel(MAX_HEIGHT, MAX_WIDTH);
	#pragma HLS STREAM variable=b_channel depth=1 dim=1
	gray_float_img_t veg_temp(MAX_HEIGHT, MAX_WIDTH);
	#pragma HLS STREAM variable=veg_temp depth=1 dim=1
	//Extrae como RGB pero es BGR
	xf::extractChannel<XF_8UC3, XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1>(img_in, r_channel, XF_EXTRACT_CH_B);
	xf::extractChannel<XF_8UC3, XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1>(img_in, g_channel, XF_EXTRACT_CH_G);
	xf::extractChannel<XF_8UC3, XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1>(img_in, b_channel, XF_EXTRACT_CH_R);
	//Buscar m�ximos en cada canal
	int32_t max_r, max_g, max_b;
	//Variables no usadas que requiere la funci�n
	int32_t r_min_value, g_min_value, b_min_value;
	uint16_t r_min_locx, r_min_locy, r_max_locx, r_max_locy;
	uint16_t g_min_locx, g_min_locy, g_max_locx, g_max_locy;
	uint16_t b_min_locx, b_min_locy, b_max_locx, b_max_locy;
	//Buscar el maximo en cada canal
	xf::minMaxLoc<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1>(r_channel, &r_min_value, &max_r, &r_min_locx, &r_min_locy, &r_max_locx, &r_max_locy);
	xf::minMaxLoc<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1>(g_channel, &g_min_value, &max_g, &g_min_locx, &g_min_locy, &g_max_locx, &g_max_locy);
	xf::minMaxLoc<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1>(b_channel, &b_min_value, &max_b, &b_min_locx, &b_min_locy, &b_max_locx, &b_max_locy);
	if (max_r == 0) max_r = 1;
	if (max_g == 0) max_g = 1;
	if (max_b == 0) max_b = 1;
	fixed_40b_16i temp, max_value=0, min_value=32760; // ~2 a la 15
	switch (selected_index){
		//---------- EXG ----------//
		case EXG:
			for (uint16_t x=0; x<MAX_HEIGHT; x++ ){
				for (uint16_t y=0; y<MAX_WIDTH; y++){
					fixed_40b_16i denominator = (fixed_40b_16i)(r_channel.data[x*MAX_WIDTH+y] / max_r
											+ g_channel.data[x*MAX_WIDTH+y] / max_g
											+ b_channel.data[x*MAX_WIDTH+y] / max_b);
					if (denominator == 0) denominator = 1;
					temp = 2*((fixed_40b_16i)g_channel.data[x*MAX_WIDTH+y]/denominator)
							- ((fixed_40b_16i)r_channel.data[x*MAX_WIDTH+y]/denominator)
							- ((fixed_40b_16i)b_channel.data[x*MAX_WIDTH+y]/denominator);
					 veg_temp.data[x*MAX_WIDTH+y] = (float)temp;
					 if (max_value < temp) max_value = temp;
					 if (min_value > temp) min_value = temp;
				}
			}
		break;
		//---------- CIVE ----------//
		case CIVE:
			fixed_40b_16i denominator = max_r + max_g + max_b;
			fixed_40b_16i r_const = 0.441, g_const = 0.811, b_const = 0.385, c_const = 18.78745;
			for (uint16_t x=0; x<MAX_HEIGHT; x++ )
				for (uint16_t y=0; y<MAX_WIDTH; y++){
					temp  = ((r_const*(fixed_40b_16i)r_channel.data[x*MAX_WIDTH+y]))/denominator
							- ((g_const*(fixed_40b_16i)g_channel.data[x*MAX_WIDTH+y])/denominator)
							+ ((b_const*(fixed_40b_16i)b_channel.data[x*MAX_WIDTH+y])/denominator)
							+ c_const;
					veg_temp.data[x*MAX_WIDTH+y] = (float)temp;
					if (max_value < temp) max_value = temp;
					if (min_value > temp) min_value = temp;
				}
		break;
		default:
			img_out.copyTo(img_in.data);
	}
	//Escalar a 0-255  ... ((a - min)/(max-min)) * 255
	fixed_40b_16i _d = max_value - min_value;
	for (uint16_t x=0; x<MAX_HEIGHT; x++ )
		for (uint16_t y=0; y<MAX_WIDTH; y++)
			if (selected_index == EXG) //Invierte
				img_out.data[x*MAX_WIDTH+y] = 255-(uint8_t)((((fixed_40b_16i)img_in.data[x*MAX_WIDTH+y]-min_value)/_d)*255);
			else
				img_out.data[x*MAX_WIDTH+y] = (uint8_t)((((fixed_40b_16i)img_in.data[x*MAX_WIDTH+y]-min_value)/_d)*255);
}

//Para binarizar la imagen en vegetacion y no vegetacion
void segment_image(rs_gray_img_t& img_in, rs_gray_img_t& img_out){
	unsigned char otsuValue;
	xf::OtsuThreshold<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(img_in, otsuValue);
	xf::Threshold<THRESH_TYPE,XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(img_in, img_out, otsuValue, 255);
}

//Devuelve el porcentaje de vegetacion en la imagen
ufixed_40b_24i& get_total_vegetation(rs_gray_img_t& veg_img){
	ufixed_40b_24i total = 0;
	for (uint16_t x=0; x<RS_HEIGHT; x++ )
		for (uint16_t y=0; y<RS_WIDTH; y++)
			if (veg_img.data[x*MAX_WIDTH+y]>0)
				total++;
	ufixed_40b_24i result = total / (ufixed_40b_24i)rs_size;
	return result;
}

//Devuelve el histograma horizontal de una imagen
void get_histogram(rs_gray_img12th_t& bottom, uint16_t* histogram) {
	for (uint16_t x=0; x<RS_HEIGHT_12th; x++ )
		for (uint16_t y=0; y<MAX_WIDTH; y++)
			if (bottom.data[x*MAX_WIDTH+y]>0)
				histogram[y]++;
}

//Busca los puntos maximos de una distribucion
void get_line_bases(rs_gray_img12th_t& bottom, uint16_t* line_bases, uint8_t& line_counter){
	static uint16_t histogram[MAX_WIDTH];
	get_histogram(bottom, histogram);
	//		Suavizado del histograma	//s
	static int smoothed[MAX_WIDTH];
	for (uint16_t y=0; y<MAX_WIDTH; y++){
		uint16_t total = 0;
		for (uint16_t x=0; x<win_size; x++){
			int16_t tmp = y-win_mid_size+x;
			if (tmp >= 0 && tmp < MAX_WIDTH)
				total += histogram[tmp];
		}
		smoothed[y] = (uint16_t)(total/win_size);
	}
	//		Deteccion de maximos locales	//
	line_bases[0] = 0;
	uint16_t index=0, last_max_dist=0, meceta_counter=0;
	line_counter=0;
	uint16_t i=0;
	while(i<MAX_WIDTH && line_counter<max_lines){
		if(line_counter==0 && smoothed[i]>0){
			line_bases[line_counter]=i;
			line_counter++;
			last_max_dist=0;
		}else{
			if(line_counter!=0 && smoothed[i]>0){
				if(smoothed[i]>smoothed[line_bases[line_counter-1]]){
					if(last_max_dist<=min_dist){
						line_bases[line_counter-1]=i;
						last_max_dist=0;
					}else{
						line_bases[line_counter]=i;
						line_counter++;
						last_max_dist=0;
					}
				}else{
					if(smoothed[i]<smoothed[line_bases[line_counter-1]]){
						if(smoothed[i]>smoothed[i-1] && last_max_dist>min_dist){
							line_bases[line_counter]=i;
							line_counter++;
							last_max_dist=0;
						}
					}else{
						if(smoothed[i]==smoothed[line_bases[line_counter-1]] && i==line_bases[line_counter-1]+1){
							meceta_counter=0;
							while(i<MAX_WIDTH-1 && smoothed[i]==smoothed[line_bases[line_counter-1]]){
								i++;
								meceta_counter++;
								last_max_dist++;
							}
							if(smoothed[i]<smoothed[i-1]){
								uint16_t _tmp=line_bases[line_counter-1]+(meceta_counter>>1); //meceta_counter/2
								if(_tmp-line_bases[line_counter-1]>min_dist){
									line_bases[line_counter]=_tmp;
									line_counter++;
									last_max_dist=0;
								}
							}
						}
					}
				}
			}
		}
		i++;
		last_max_dist++;
	}
}

//Devuelve 1 si la posición enviada pertenece al cultivo, -1 si pertenece a la maleza
bool& is_crop_or_furrow(Line* lines, uint8_t& lines_founded, uint16_t& px, uint16_t& py, uint16_t crop_width){
    if (lines_founded != 0){
		uint16_t h_buffer[max_lines];
		uint8_t i=0;
		while (!lines[i].active) i++;
		h_buffer[i] = get_y_lineal(px, lines[i].m, lines[i].b);
		uint16_t most_left = h_buffer[i] - crop_width;
		uint16_t most_right = h_buffer[i] + crop_width;
		uint8_t control = 1;
		while (control<lines_founded){
			i++;
			while (!lines[i].active) i++;
			control++;
			h_buffer[i]=get_y_lineal(px, lines[i].m, lines[i].b);
			uint16_t tmp_most_left = h_buffer[i] - crop_width;
			uint16_t tmp_most_right = h_buffer[i] + crop_width;
			if (tmp_most_left < most_left) most_left = tmp_most_left;
			if (tmp_most_right > most_right) most_right = tmp_most_right;
		}
		if (py <= most_left || py >= most_right)
			return 0;
		uint8_t i2=0;
		uint8_t control2=0;
		while (control2<lines_founded){
			while(!lines[i2].active) i2++;
			control2++;
			uint16_t c_left = h_buffer[i2] - crop_width;
			uint16_t c_right = h_buffer[i2] + crop_width;
			if (py <= c_right && py >= c_left)
				return 1;
			i2++;
		}
		return -1;
	} else
		return 0;
}

//Devuelve m y b de la recta que mejor se ajusta a una lista de puntos
void least_squares_line(Centroid* centroids, uint8_t size, fixed_32b_12i& m, uint32_t& b){
	uint64_t sum_x=0, sum_y=0, sum_xy=0, sum_xx=0;
	for (uint16_t i=0; i<size; i++){
		sum_x+=centroids[i].x;
		sum_y+=centroids[i].y;
		sum_xy+=centroids[i].x*centroids[i].y;
		sum_xx+=centroids[i].x*centroids[i].x;
	}
	uint64_t numerator=(size*sum_xy)-(sum_x*sum_y);
	uint64_t denominator=(size*sum_xx)-(sum_x*sum_x);
	m=(fixed_32b_12i)((float)numerator/(float)denominator);
	uint16_t yc=sum_y/size, xc=sum_x/size;
	b=(uint32_t)(yc-m*xc);
}

//Devuelve el promedio de una lista
uint32_t mean(uint32_t* list, uint8_t& size){
    uint32_t sum=0;
    for (uint8_t i=0; i<size; i++){
        sum += list[i];
    }
    return sum/(uint32_t)size;
}
