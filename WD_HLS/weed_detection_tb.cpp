#include "headers.h"
//#include "image_config_tb.h"
#include "time.h"
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include "weed_detection.h"

//Notes: I have to update lines_founded when i filter them
//static cv::Mat micro_roi_0(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH, CV_8UC1);
//static cv::Mat micro_roi_1(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH, CV_8UC1);
//
//static cv::Mat kernel_v5 = (cv::Mat_<uint8_t>(3,3) << 0,1,0,0,1,0,0,1,0);
//
//#if DEBUG
//int color = 128;
//#endif
//
//
//
////Extrae como RGB pero es BGR
//void extract_channels(const cv::Mat& img_in, cv::Mat& r_channel, cv::Mat& g_channel, cv::Mat& b_channel){
//
//	cv::extractChannel(img_in, r_channel, 2);
//	cv::extractChannel(img_in, g_channel, 1);
//	cv::extractChannel(img_in, b_channel, 0);
//}
//
//void get_max_from_channels(const cv::Mat& r_channel, const cv::Mat& g_channel, const cv::Mat& b_channel, int32_t& max_r, int32_t& max_g, int32_t& max_b){
//
//	//Variables no usadas que requiere la funci�n
//	double r_min_value, g_min_value, b_min_value, r_max_value, g_max_value, b_max_value;
//	//Buscar el maximo en cada canal
//	cv::minMaxLoc(r_channel, &r_min_value, &r_max_value);
//	cv::minMaxLoc(g_channel, &g_min_value, &g_max_value);
//	cv::minMaxLoc(b_channel, &b_min_value, &b_max_value);
//	max_r = (int32_t)(r_max_value);
//	max_g = (int32_t)(g_max_value);
//	max_b = (int32_t)(b_max_value);
//}
//
//void get_exg_image(const cv::Mat& r_channel, const cv::Mat& g_channel, const cv::Mat& b_channel, int32_t& max_r, int32_t& max_g, int32_t& max_b,
//		cv::Mat& veg_img, fixed_40b_16i& min_value, fixed_40b_16i& max_value){
//
//	veg_img = cv::Mat_<float>(RS_HEIGHT,RS_WIDTH);
//	max_value=0, min_value=32760; // ~2 a la 15
//	fixed_40b_16i denominator, temp;
//	for (uint32_t i=0; i<RS_HEIGHT*RS_WIDTH; i++ ){
//		denominator = (fixed_40b_16i)(r_channel.data[i]/max_r
//								+ g_channel.data[i]/max_g
//								+ b_channel.data[i]/max_b);
//		if (denominator == 0) denominator = 1;
//		temp = 2*((fixed_40b_16i)g_channel.data[i]/denominator)
//				- ((fixed_40b_16i)r_channel.data[i]/denominator)
//				- ((fixed_40b_16i)b_channel.data[i]/denominator);
//		veg_img.data[i] = (float)temp;
//		if (max_value < temp) max_value = temp;
//		if (min_value > temp) min_value = temp;
//	}
//}
//
//void convert_fp_to_8b(fixed_40b_16i& min_value, fixed_40b_16i _d, const cv::Mat& veg, cv::Mat& img_out){
//
//	fixed_40b_16i scalar = 255/_d;
//	for (uint32_t i=0; i<RS_HEIGHT*RS_WIDTH; i++ ){
//			img_out.data[i] = (uint8_t)(((fixed_40b_16i)veg.data[i]-min_value)*scalar); //Sin invertir
//	}
//}
//
////Devuelve una imagen de 8b de profundidad utilizando el indice de vegetacion seleccionado
//void get_vegetation_image(const cv::Mat& img_in, cv::Mat& img_out){
//
//	cv::Mat r_channel(RS_HEIGHT,RS_WIDTH,CV_8UC1);
//	cv::Mat g_channel(RS_HEIGHT,RS_WIDTH,CV_8UC1);
//	cv::Mat b_channel(RS_HEIGHT,RS_WIDTH,CV_8UC1);
//	cv::Mat veg_temp(RS_HEIGHT,RS_WIDTH,CV_32SC1);
//	//En el sintetizable img_in debe duplicarse
//	extract_channels(img_in, r_channel, g_channel, b_channel);
//	//Buscar m�ximos en cada canal
//	int32_t max_r, max_g, max_b;
//	get_max_from_channels(r_channel, g_channel, b_channel, max_r, max_g, max_b);
//	if (max_r == 0) max_r = 1;
//	if (max_g == 0) max_g = 1;
//	if (max_b == 0) max_b = 1;
//	fixed_40b_16i max_value, min_value;
//	get_exg_image(r_channel, g_channel, b_channel, max_r, max_g, max_b, veg_temp, min_value, max_value);
//	//Escalar a 0-255  ... ((a - min)/(max-min)) * 255
//	convert_fp_to_8b(min_value, max_value - min_value, veg_temp, img_out);
//}
//
////Para binarizar la imagen en vegetacion y no vegetacion
//void segment_image(const cv::Mat& img_in, cv::Mat& img_out){
//
//	unsigned char otsuValue;
//	cv::threshold(img_in, img_out, 0, 255, cv::THRESH_OTSU);
//}
//
////Devuelve el porcentaje de vegetacion en la imagen
//ufixed_40b_16i get_total_vegetation(const cv::Mat& veg_img){
//
//	uint32_t total1 = 0, total2 = 0;
//	for (uint32_t i=0; i<((RS_HEIGHT*RS_WIDTH)>>1); i++ ) //Son dos por su orientación a paralelismo hardware
//		if (veg_img.data[i]>0)
//			total1++;
//	for (uint32_t i=((RS_HEIGHT*RS_WIDTH)>>1); i<RS_HEIGHT*RS_WIDTH; i++ )
//		if (veg_img.data[i]>0)
//			total2++;
//	return ((ufixed_40b_16i)(total1 + total2) / (ufixed_40b_16i)rs_size);
//}
//
//void remark_crop_lines(const cv::Mat& opened, cv::Mat& eroded){
//
//	if ( get_total_vegetation(opened) >= th_total_vegetation) {
//		cv::erode(opened, eroded, kernel_v5);
//	} else {
//		opened.copyTo(eroded);
//	}
//}
//
////Devuelve el histograma horizontal de una imagen
//void get_histogram(const cv::Mat& bottom, uint16_t histogram[]) {
//
//	for (uint16_t h=0; h<RS_WIDTH; h++)
//		for (uint16_t v=0; v<RS_HEIGHT_12th; v++)
//			if (bottom.data[v*RS_WIDTH+h]>0)
//				histogram[h]++;
//}
//
////Busca los puntos maximos de una distribucion
//void get_line_bases(const cv::Mat& bottom, LineBase line_bases[]){
//
//	static uint16_t histogram[RS_WIDTH];
//	for (int i=0; i<RS_WIDTH; i++)
//		histogram[i]=0;
//	static int smoothed[RS_WIDTH];
//	get_histogram(bottom, histogram);
//	//		Suavizado del histograma	//
//	for (uint16_t y=0; y<RS_WIDTH; y++){
//		uint16_t total = 0;
//		for (uint16_t x=0; x<win_size; x++){
//			int32_t tmp = y - win_mid_size + x;
//			if (tmp >= 0 && tmp < RS_WIDTH)
//				total += histogram[tmp];
//		}
//		smoothed[y] = (uint16_t)(total/win_size);
//	}
//	//		Deteccion de maximos locales	//
//	uint16_t last_max_dist = 0, meceta_counter = 0;
//	uint8_t line_counter = 0;
//	uint16_t i = 0;
//	while(i<RS_WIDTH && line_counter < max_lines){
//		if(line_counter == 0 && smoothed[i] > 0){
//			line_bases[line_counter].y = i;
//			line_bases[line_counter].active = true;
//			line_counter++;
//			last_max_dist=0;
//		}else{
//			if(line_counter != 0 && smoothed[i] > 0){
//				if(smoothed[i]>smoothed[line_bases[line_counter-1].y]){
//					if(last_max_dist<=min_dist){
//						line_bases[line_counter-1].y = i;
//						last_max_dist=0;
//					}else{
//						line_bases[line_counter].y = i;
//						line_bases[line_counter].active = true;
//						line_counter++;
//						last_max_dist=0;
//					}
//				}else{
//					if(smoothed[i]<smoothed[line_bases[line_counter-1].y]){
//						if(smoothed[i]>smoothed[i-1] && last_max_dist>min_dist){
//							line_bases[line_counter].y = i;
//							line_bases[line_counter].active = true;
//							line_counter++;
//							last_max_dist=0;
//						}
//					}else{
//						if(smoothed[i]==smoothed[line_bases[line_counter-1].y] && i==(line_bases[line_counter-1].y+1)){
//							meceta_counter=0;
//							while(i<RS_WIDTH-1 && smoothed[i]==smoothed[line_bases[line_counter-1].y]){
//								i++;
//								meceta_counter++;
//								last_max_dist++;
//							}
//							if(smoothed[i]<smoothed[i-1]){
//								uint16_t _tmp=line_bases[line_counter-1].y+(meceta_counter>>1); //meceta_counter/2
//								if(_tmp-line_bases[line_counter-1].y>min_dist){
//									line_bases[line_counter].y = _tmp;
//									line_bases[line_counter].active = true;
//									line_counter++;
//									last_max_dist=0;
//								}
//							}
//						}
//					}
//				}
//			}
//		}
//		i++;
//		last_max_dist++;
//	}
//	while (line_counter<max_lines){
//		line_bases[line_counter].active=false;
//		line_counter++;
//	}
//}
//
//// Extrae el micro ROI de la imagen
//void extract_micro_roi(const cv::Mat& img_in, uint16_t x_top, uint16_t x_bottom, uint16_t y_left, uint16_t y_right, cv::Mat& micro_roi){
//
//	for(uint16_t v = x_top; v < x_bottom; v++)
//		for(uint16_t h = y_left; h < y_right; h++){
//			uint16_t _v = v-x_top, _h= h-y_left;
//			micro_roi.data[_v*MICRO_ROI_WIDTH+_h] = img_in.data[v*RS_WIDTH+h];
//		}
//}
//
////Obtiene el centroide (x=vc,y=hc) de un microROI
//void get_centroid_sh(const cv::Mat& micro_roi, uint16_t h_offset, uint16_t& v_offset, uint16_t v_limit, uint16_t h_limit, Centroid possible_c , Centroid& c){
//
//	uint64_t v_sum = 0, h_sum = 0, _sum = 0;
//	for ( uint16_t h = 0; h < h_limit; h++)
//		for(uint16_t v = 0; v < v_limit; v++)
//			if (micro_roi.data[v*MICRO_ROI_WIDTH+h] > 0){
//				v_sum += v;
//				h_sum += h;
//				_sum++;
//			}
//	if (_sum != 0){
//		c.x = (uint16_t)((v_sum/_sum) + v_offset);
//		c.y = (int32_t)((h_sum/_sum) + h_offset);
//	} else {
//		c.x = possible_c.x;
//		c.y = possible_c.y;
//	}
//}
//
//void get_centroid_fh(const cv::Mat& micro_roi, uint16_t h_offset, uint16_t v_offset, uint16_t v_limit, uint16_t h_limit, Centroid& c){
//
//	uint32_t v_sum = 0, h_sum = 0, _sum = 0;
//	c.x = (v_limit >> 1);
//	c.y = (int32_t)(h_limit >> 1);
//	for ( uint16_t h=0; h < h_limit; h++)
//		for(uint16_t v=0; v < v_limit; v++)
//			if (micro_roi.data[v*MICRO_ROI_WIDTH+h] > 0){
//				v_sum += v;
//				h_sum += h;
//				_sum++;
//			}
//	if (_sum != 0){
//		c.x = (v_sum/_sum);
//		c.y = (h_sum/_sum);
//	}
//	c.x += v_offset;
//	c.y += h_offset;
//}
//
//// Obtiene los últimos centroides de la lista
//void get_last_centroids(Centroid centroids[], uint8_t selected_line, Centroid last_c[], uint8_t seg_index_start, uint8_t size){
//
//	for(uint8_t i=seg_index_start; i<seg_index_start+size; i++){
//		last_c[i-seg_index_start]=centroids[i*max_lines+selected_line];
//	}
//}
//
////Obtiene el valor y (horizontal) dado un valor x(vertical), m(coeficiente lineal) y b(coeficiente independiente)
//int32_t get_y_lineal(uint16_t x, fixed_40b_16i& m, int32_t& b){ return(int32_t(m*x+b)); }
//
////Devuelve m y b de la recta que mejor se ajusta a una lista de puntos
//void least_squares_line(Centroid centroids[], uint8_t size, fixed_40b_16i& m, int32_t& b){
//
//	uint32_t sum_x=0, sum_y=0, sum_xy=0, sum_xx=0;
//	for (uint8_t i=0; i<size; i++){
//		sum_x+=centroids[i].x;
//		sum_y+=centroids[i].y;
//		sum_xy+=centroids[i].x*centroids[i].y;
//		sum_xx+=centroids[i].x*centroids[i].x;
//	}
//	int64_t num = (int64_t)(size * sum_xy) - (int64_t)(sum_x * sum_y);
//	int64_t den = (int64_t)(size * sum_xx) - (int64_t)(sum_x * sum_x);
//	m=(fixed_40b_16i)(((fixed_88b_64i)num/(fixed_88b_64i)den));
//	b=(int32_t)((sum_y/size)-int32_t((sum_x/size)*m));
//}
//
//#if DEBUG
//void extract_first_centroid(const fixed_40b_16i& micro_roi_width_control, LineBase line_bases[], const cv::Mat& eroded, Centroid centroids[], cv::Mat& with_c){
//#else
//void extract_first_centroid(const fixed_40b_16i& micro_roi_width_control, LineBase line_bases[], const cv::Mat& eroded, Centroid centroids[]){
//#endif
//
//	uint16_t half_width=(uint16_t)(micro_roi_width_control/2);
//	uint16_t x_bottom = segments[0], x_top = segments[1];
//	for (uint8_t line_index=0; line_index<max_lines; line_index++){
//		if(line_bases[line_index].active){
//			int32_t y_left = line_bases[line_index].y - half_width, y_right = line_bases[line_index].y + half_width;
//			if(y_left<0) y_left=0;
//			if(y_right>=RS_WIDTH) y_right=RS_WIDTH-1;
//			extract_micro_roi(eroded, x_top, x_bottom, (uint16_t)y_left, (uint16_t)y_right, micro_roi_0);
//			Centroid c;
//			get_centroid_fh(micro_roi_0, (uint16_t)y_left, x_top, x_bottom-x_top,(uint16_t) y_right-y_left, c);
//			centroids[line_index]=c;
//#if DEBUG
//			cv::circle(with_c, cv::Point(c.y, c.x), 3, color, CV_FILLED, 8, 0);
//#endif
//		}
//	}
//}
//
//#if DEBUG
//void extract_second_centroid(const fixed_40b_16i& micro_roi_width_control, LineBase line_bases[], const cv::Mat& eroded, Centroid centroids[], cv::Mat& with_c){
//#else
//void extract_second_centroid(const fixed_40b_16i& micro_roi_width_control, LineBase line_bases[], const cv::Mat& eroded, Centroid centroids[]){
//#endif
//
//	uint16_t half_width=(uint16_t)(micro_roi_width_control/2);
//	uint16_t x_bottom = segments[1], x_top = segments[2];
//	for (uint8_t line_index=0; line_index<max_lines; line_index++){
//		if(line_bases[line_index].active){
//			int32_t y_left = centroids[line_index].y - half_width;
//			int32_t y_right = centroids[line_index].y + half_width;
//			if(y_left < 0) y_left = 0;
//			if(y_right >= RS_WIDTH) y_right = RS_WIDTH-1;
//			extract_micro_roi(eroded, x_top, x_bottom, (uint16_t)y_left, (uint16_t)y_right, micro_roi_1);
//			Centroid c;
//			get_centroid_fh(micro_roi_1, (uint16_t)y_left, x_top, x_bottom-x_top,(uint16_t) y_right-y_left, c);
//			centroids[line_index+max_lines]=c;
//#if DEBUG
//			cv::circle(with_c, cv::Point(c.y,c.x), 3, color, CV_FILLED, 8, 0);
//#endif
//
//		}
//	}
//}
//
//#if DEBUG
//void extract_third_and_fourth_c(fixed_40b_16i& micro_roi_width_control, LineBase line_bases[], fixed_40b_16i& micro_roi_width_control_out,
//		const cv::Mat& eroded, Centroid centroids[], cv::Mat& with_c){
//#else
//void extract_third_and_fourth_c(fixed_40b_16i& micro_roi_width_control, LineBase line_bases[], fixed_40b_16i& micro_roi_width_control_out,
//		const cv::Mat& eroded, Centroid centroids[]){
//#endif
//
//	fixed_40b_16i m;
//	int32_t b;
//	cv::Mat micro_roi_2(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH, CV_8UC1);
//	for(uint8_t seg_index=3; seg_index<5; seg_index++){
//		uint16_t c_offset = max_lines*(seg_index-1);
//		uint16_t half_width=(uint16_t)(micro_roi_width_control/2);
//		uint16_t x_bottom = segments[seg_index-1], x_top = segments[seg_index];
//		int32_t x_middle =  x_bottom;//((x_bottom-x_top)>>1) + x_top;
//		static Centroid last_c[max_last_centroids];
//		for (uint8_t line_index=0; line_index<max_lines; line_index++){
//			if (line_bases[line_index].active){
//				get_last_centroids(centroids, line_index, last_c, (uint8_t)0, seg_index-1);
//				least_squares_line(last_c, seg_index-1, m, b);
//				int32_t y_temp = get_y_lineal(x_middle, m, b);
//				if (y_temp >= RS_WIDTH) y_temp = RS_WIDTH-1;
//				if (y_temp < 0) y_temp = 0;
//				int32_t y_left = y_temp - half_width, y_right = y_temp + half_width;
//				if(y_left < 0) y_left=0;
//				if(y_right >= RS_WIDTH) y_right = RS_WIDTH-1;
//				extract_micro_roi(eroded, x_top, x_bottom, (uint16_t)y_left, (uint16_t)y_right, micro_roi_2);
//				Centroid c;
//				get_centroid_fh(micro_roi_2, (uint16_t)y_left, x_top, x_bottom-x_top,(uint16_t)(y_right-y_left), c);
//				centroids[line_index+c_offset]=c;
//#if DEBUG
//				cv::circle(with_c, cv::Point(c.y,c.x), 3, color, CV_FILLED, 8, 0);
//#endif
//			}
//		}
//		micro_roi_width_control-=micro_roi_decay;
//	}
//	micro_roi_width_control_out=micro_roi_width_control;
//}
//
//#if DEBUG
//void extr_half_1_cent(fixed_40b_16i& micro_roi_width_control, fixed_40b_16i& micro_roi_width_control_out, LineBase line_bases[],
//		const cv::Mat& eroded, Centroid centroids[], cv::Mat& with_c){
//#else
//void extr_half_1_cent(fixed_40b_16i& micro_roi_width_control, fixed_40b_16i& micro_roi_width_control_out, LineBase line_bases[],
//		const cv::Mat& eroded, Centroid centroids[]){
//#endif
//
//#if DEBUG
//	extract_first_centroid(micro_roi_width_control, line_bases, eroded, centroids, with_c);
//	micro_roi_width_control-=micro_roi_decay;
//	extract_second_centroid(micro_roi_width_control, line_bases, eroded, centroids, with_c);
//	micro_roi_width_control-=micro_roi_decay;
//	extract_third_and_fourth_c(micro_roi_width_control, line_bases, micro_roi_width_control_out, eroded, centroids, with_c);
//#else
//	extract_first_centroid(micro_roi_width_control, line_bases, eroded, centroids);
//	micro_roi_width_control-=micro_roi_decay;
//	extract_second_centroid(micro_roi_width_control, line_bases, eroded, centroids);
//	micro_roi_width_control-=micro_roi_decay;
//	extract_third_and_fourth_c(micro_roi_width_control, line_bases, micro_roi_width_control_out, eroded, centroids);
//#endif
//}
//
//#if DEBUG
//	void extr_half_2_cent(fixed_40b_16i& micro_roi_width_control, LineBase line_bases[], const cv::Mat& eroded, Centroid centroids[], cv::Mat& with_c){
//#else
//	void extr_half_2_cent(fixed_40b_16i& micro_roi_width_control, LineBase line_bases[], const cv::Mat& eroded, Centroid centroids[]){
//#endif
//
//	//Calculo de centroides de la segunda mitad, basado en los 4 centroides anteriores
//	uint8_t last_seg_index = 0;
//	cv::Mat micro_roi_3(MICRO_ROI_HIGHT, MICRO_ROI_WIDTH, CV_8UC1);
//	for (int seg_index = 5; seg_index < max_segments; seg_index++){
//		uint16_t x_bottom = segments[seg_index-1], x_top = segments[seg_index];
//		uint16_t x_middle = x_bottom;//x_top + ((x_bottom-x_top) >> 1);
//		uint16_t micro_roi_half_width = (((uint16_t)micro_roi_width_control) >> 1);
//		uint16_t c_offset = max_lines*(seg_index-1);
//		for (uint8_t line_index = 0; line_index < max_lines; line_index++){
//			if (line_bases[line_index].active){
//				static Centroid last_centroids[max_last_centroids];
//				get_last_centroids(centroids, line_index, last_centroids, last_seg_index, max_last_centroids);
//				fixed_40b_16i m;
//				int32_t b;
//				least_squares_line(last_centroids, max_last_centroids, m, b);
//				int32_t y_temp=get_y_lineal(x_bottom, m, b);
//				if (y_temp >= RS_WIDTH) y_temp = RS_WIDTH - 1;
//				if (y_temp < 0) y_temp = 0;
//				int32_t y_left = y_temp - micro_roi_half_width, y_right = y_temp + micro_roi_half_width;
//				if(y_left < 0) y_left = 0;
//				if(y_right >= RS_WIDTH) y_right = RS_WIDTH - 1;
//				extract_micro_roi(eroded, x_top, x_bottom, (uint16_t)y_left, (uint16_t)y_right, micro_roi_3);
//				int32_t y_possible = get_y_lineal(x_middle, m, b);
//				Centroid possible_c, c;
//				possible_c.x = x_middle;
//				possible_c.y = y_possible;
//				get_centroid_sh(micro_roi_3, (uint16_t)y_left, x_top, x_bottom-x_top,(uint16_t) y_right-y_left, possible_c, c);
//				centroids[c_offset+line_index]=c;
//#if DEBUG
//				cv::circle(with_c, cv::Point(c.y,c.x), 3, color, CV_FILLED, 8, 0);
//#endif
//			}
//		}
//		micro_roi_width_control -= micro_roi_decay;
//		last_seg_index++;
//	}
//}
//
////Devuelve los centroides de la imagen a partir de las rectas encontradas con la transformación de Hough
//#if DEBUG
//	void get_centroids(LineBase line_bases[], const cv::Mat& eroded, Centroid centroids[], cv::Mat& with_c){
//#else
//	void get_centroids(LineBase line_bases[], const cv::Mat& eroded, Centroid centroids[]){
//#endif
//
//
//	//Nota: El eje vertical es el de coordenadas(x), el horizontal de ordenadas(y)
//	//Cada fila es un segmento (de 12) donde cada columna de ella es una l�nea distinta
//	//Asegurarse que cuando se calcula los primeros centroides sean igual a max_last_centroids
//	fixed_40b_16i micro_roi_width_control = CROP_WIDTH_BOTTOM;
//	fixed_40b_16i micro_roi_width_control_out;
//	static Centroid centroid_tmp[max_first_centroids];
//#if DEBUG
//	extr_half_1_cent(micro_roi_width_control, micro_roi_width_control_out, line_bases, eroded, centroids, with_c);
//	extr_half_2_cent(micro_roi_width_control_out, line_bases, eroded, centroids, with_c);
//#else
//	extr_half_1_cent(micro_roi_width_control, micro_roi_width_control_out, line_bases, eroded, centroids);
//	extr_half_2_cent(micro_roi_width_control_out, line_bases, eroded, centroids);
//#endif
//
//}
//
////Obtiene las rectas mediante mínimos cuadrados
//#if DEBUG
//	void get_lines_lsl(Centroid centroids[], LineBase line_bases[], Line final_lines[], uint8_t& lines_founded, cv::Mat& with_c){
//#else
//	void get_lines_lsl(Centroid centroids[], LineBase line_bases[], Line final_lines[], uint8_t& lines_founded){
//#endif
//
//	lines_founded = 0;
//	for (uint8_t line_index=0; line_index<max_lines; line_index++){
//		if (line_bases[line_index].active){
//			static Centroid line_centroids[max_segments-1];
//			for (uint8_t s_index=0; s_index<max_segments-1; s_index++)
//				line_centroids[s_index]=centroids[(s_index)*max_lines+line_index];
//			fixed_40b_16i m;
//			int32_t b;
//			least_squares_line(line_centroids, max_segments-1, m, b);
//			int32_t y_temp = get_y_lineal(RS_HEIGHT, m, b);
//			if ((( y_temp>=0 && y_temp<=third_1 && m<(fixed_40b_16i)(-0.16) && m>(fixed_40b_16i)(-1)))
//				||(y_temp>=third_2 && y_temp<RS_WIDTH && m>(fixed_40b_16i)(0.16) && m<1)
//				||(y_temp<third_2 && y_temp>third_1 && m<(fixed_40b_16i)(0.4) && m>(fixed_40b_16i)(-0.4))){
//				final_lines[line_index].active=true;
//				final_lines[line_index].m=m;
//				final_lines[line_index].b=b;
//				lines_founded++;
//				#if DEBUG
//					int y_0 = get_y_lineal(0, m, b);
//					int y_1 = get_y_lineal(RS_HEIGHT-1, m, b);
//					cv::line(with_c, cv::Point(y_0, 0), cv::Point(y_1, RS_HEIGHT-1), 192, 2);
//				#endif
//			} else{
//				final_lines[line_index].active=false;
//			}
//		}
//	}
//}
//
////Devuelve 1 si la posici�n enviada pertenece al cultivo, -1 si pertenece a la maleza
//int8_t is_crop_or_furrow(Line lines[], uint8_t& lines_founded, int16_t& px, uint16_t& py, uint16_t& half_crop_width){
//
//	if (lines_founded != 0){
//		static int32_t h_buffer[max_lines];
//		int32_t most_left = 0;
//		bool flag_ml = true;
//		int32_t most_right = 0;
//		bool flag_mr = true;
//		for (uint8_t line_i=0; line_i<max_lines; line_i++)
//			if (lines[line_i].active){
//				h_buffer[line_i] = get_y_lineal((int32_t)px, lines[line_i].m, lines[line_i].b);
//				int32_t c_left = h_buffer[line_i] - half_crop_width;
//				uint16_t c_right = h_buffer[line_i] + half_crop_width;
//				if (py <= c_right && py >= c_left)
//					return (1);
//				if (flag_ml || (c_left < most_left && c_left>=0)) {
//					most_left = (uint16_t)c_left;
//					flag_ml = false;
//				}
//				if (flag_mr || (c_right > most_right)) {
//					most_right = c_right;
//					flag_mr = false;
//				}
//			}
//		if (py <= most_left || py >= most_right) //Izquierda de la primera linea o derecha de la última
//			return (0);
//		return (-1);
//	} else
//		return (0);
//}
//
//void get_weed_mask(cv::Mat& weed_mask_tmp, ufixed_40b_16i crop_widh_control, Line lines[], uint8_t& lines_founded){
//
//	for(int16_t v=RS_HEIGHT-1; v>=0; v--){
//		uint16_t tmp_hw_c = (crop_widh_control>>1);
//		for(uint16_t h=0; h<RS_WIDTH; h++){
//			if(is_crop_or_furrow(lines, lines_founded, v, h, tmp_hw_c) == -1)
//				weed_mask_tmp.data[v*RS_WIDTH+h] = 255;
//			else
//				weed_mask_tmp.data[v*RS_WIDTH+h] = 0;
//		}
//		crop_widh_control -= cw_decay;
//	}
//}
//
//void get_crop_lines(const cv::Mat& bottom, const cv::Mat& eroded,  Line lines[], uint8_t& lines_founded){
//	//El calculo de segmentos se realiza offline segun la especificacion de altura que se tenga
//	//Cuando la altura cambie de manera dinamica se debe implementar en C++
//	static LineBase line_bases[max_lines];
//	static Centroid centroids[max_centroids]; //Fila: el numero de linea - Columna: El numero de centroide
//
//	//Deteccion de base de rectas de cultivo por histograma (Para la 12va parte inferior de la imagen)
//	get_line_bases(bottom, line_bases);
//	//Función que obtiene los centroides en base a las inicios de surco
//	#if DEBUG
//		cv::Mat with_c(RS_HEIGHT,RS_WIDTH,CV_8UC1);
//		eroded.copyTo(with_c);
//		get_centroids(line_bases, eroded, centroids,with_c);
//
//		//Obtencion de rectas con metodo de minimos cuadrados
//		get_lines_lsl(centroids, line_bases, lines, lines_founded, with_c);
//	#else
//		get_centroids(line_bases, eroded, centroids);
//
//		//Obtencion de rectas con metodo de minimos cuadrados
//		get_lines_lsl(centroids, line_bases, lines, lines_founded);
//	#endif
//
//	#if DEBUG
//		cv::namedWindow( "Centroides", cv::WINDOW_AUTOSIZE );// Create a window for display.
//		cv::imshow( "Centroides", with_c);
//		cv::waitKey(0);
//	#endif
//
//}
//
//void get_12th_segment(const cv::Mat& eroded, cv::Mat& bottom){
//
//	uint32_t h_offset = ((RS_HEIGHT - RS_HEIGHT_12th)*RS_WIDTH)+1;
//	for (uint16_t i = 0; i < RS_HEIGHT_12th*RS_WIDTH; i++)
//			bottom.data[i] = eroded.data[i+h_offset];
//
//}
//
//void sectors_weed_classification(const cv::Mat& weed_mask_tmp, cv::Mat& weed_mask, uint8_t& lines_founded){
//
//	if (lines_founded != 0){
//		for(uint8_t seg_index=0; seg_index<max_segments-1; seg_index++){
//			static uint16_t quadrant_space[max_lines-1];
//			static ufixed_40b_16i quadrant_weed[max_lines-1];
//			for (uint8_t i=0; i<max_lines-1; i++){
//				quadrant_space[i]=0;
//				quadrant_weed[i]=0;
//			}
//			for(uint16_t v=segments[seg_index+1]; v<segments[seg_index]; v++){
//				uint16_t quadrant_index=0;
//				uint16_t h=0;
//				while(quadrant_index<max_lines-1 && h<RS_WIDTH){
//					while(h<RS_WIDTH && weed_mask_tmp.data[v*RS_WIDTH+h]==0) h++;
//					while(h<RS_WIDTH && weed_mask_tmp.data[v*RS_WIDTH+h]>0){
//						quadrant_space[quadrant_index]++;
//						if(weed_mask.data[v*RS_WIDTH+h]>0)
//							quadrant_weed[quadrant_index]++;
//						h++;
//					}
//					quadrant_index++;
//				}
//			}
//			for(uint8_t i=0; i<lines_founded-1; i++)
//				if (quadrant_space[i] != 0)
//					quadrant_weed[i]= quadrant_weed[i]/ufixed_40b_16i(quadrant_space[i]);
//
//			//Dibujado para mostrar en pantalla, sin pantalla no es necesario
//			for(uint16_t v=segments[seg_index+1]; v<segments[seg_index]; v++){
//				uint16_t quadrant_index=0;
//				uint16_t h=0;
//				while(quadrant_index<max_lines-1 && h<RS_WIDTH){
//					while(h<RS_WIDTH && weed_mask_tmp.data[v*RS_WIDTH+h]==0) h++;
//					if(quadrant_weed[quadrant_index]>weed_threshold)
//						while(h<RS_WIDTH && weed_mask_tmp.data[v*RS_WIDTH+h]==255)
//							h++;
//					else
//						while(h<RS_WIDTH && weed_mask_tmp.data[v*RS_WIDTH+h]==255){
//							weed_mask.data[v*RS_WIDTH+h]=0;
//							h++;
//						}
//					quadrant_index++;
//				}
//			}
//		}
//	}
//}
//
//
//void img_processing_cv(const cv::Mat& img_in, cv::Mat& img_out){
//
//		cv::Mat veg_img(RS_HEIGHT,RS_WIDTH,CV_8UC1), resized(RS_HEIGHT,RS_WIDTH,CV_8UC1), segmented(RS_HEIGHT,RS_WIDTH,CV_8UC1);
//		cv::Mat eroded_0(RS_HEIGHT,RS_WIDTH,CV_8UC1), eroded_1(RS_HEIGHT,RS_WIDTH,CV_8UC1), bottom(RS_HEIGHT_12th,RS_WIDTH,CV_8UC1);
//		cv::Mat weed_mask_tmp = cv::Mat::zeros(RS_HEIGHT,RS_WIDTH,CV_8UC1);
//		cv::Mat weed_mask(RS_HEIGHT,RS_WIDTH,CV_8UC1), zero(RS_HEIGHT,RS_WIDTH,CV_8UC1);
//		cv::Mat mask_img_out(RS_HEIGHT,RS_WIDTH,CV_8UC3), rs_mask_img_out(MAX_HEIGHT,MAX_WIDTH,CV_8UC3);
//		img_out = cv::Mat::zeros(RS_HEIGHT, RS_WIDTH,CV_8UC3);
//
//		//Resize a un cuarto de la imagen
//		cv::resize(img_in, resized, resized.size(), 0, 0, cv::INTER_AREA);
//
//		//Convertir al �ndice seleccionado (Escalando a 8 bits)
//		get_vegetation_image(resized, veg_img);
//
//		//Threshold Otsu
//		segment_image(veg_img, segmented);
//
//		//Erosión para dejar cuerpos estirados verticalmente y borrar los estirados horizontalmente
//		cv::erode(segmented, eroded_0, kernel_v5);
//
//		#if DEBUG
//			cv::namedWindow( "Erosionado", cv::WINDOW_AUTOSIZE );// Create a window for display.
//			cv::imshow( "Erosionado", eroded_0 );
//			cv::waitKey(0);
//		#endif
//
//		//Erosion segun la cantidad de vegetacion que tenga
//		remark_crop_lines(eroded_0, eroded_1);
//
//		#if DEBUG
//			cv::namedWindow( "Erosionado 2 - La venganza", cv::WINDOW_AUTOSIZE );// Create a window for display.
//			cv::imshow( "Erosionado 2 - La venganza", eroded_1 );
//			cv::waitKey(0);
//		#endif
//
//		// ---------------- SEGUNDA ETAPA ---------------- //
//		// En esta etapa se detectan y seleccionan las rectas que se ajustan a los surcos
//
//		//Conseguir 12va parte inferior de la imagen
//		get_12th_segment(eroded_1, bottom);
//
//		static Line lines[max_lines];
//		uint8_t lines_founded;
//		get_crop_lines(bottom, eroded_1, lines, lines_founded);
//
//		//Creacion de las mascaras (La de cultivo no es necesaria)
//		get_weed_mask(weed_mask_tmp, cw_bottom_additioned, lines, lines_founded);
//
//		#if DEBUG
//			cv::namedWindow( "Mascara de maleza", cv::WINDOW_AUTOSIZE );// Create a window for display.
//			cv::imshow( "Mascara de maleza", weed_mask_tmp );
//			cv::waitKey(0);
//		#endif
//
//		// ---------------- TERCERA ETAPA ---------------- //
//		// En esta etapa se genera la m�scara de maleza, con la cual se clasifica seg�n la cantidad de verde en el cuadrante
//
//		//Bitwise and para generar la m�scara de maleza final
//		cv::bitwise_and(weed_mask_tmp, eroded_0, weed_mask);
//
//		//Threshold de maleza
//		sectors_weed_classification(weed_mask_tmp, weed_mask, lines_founded);
//
//		//Esta parte es para generar la imagen de salida, cuando no se necesite hay que quitarlo
//		zero = cv::Mat::zeros(zero.size(), CV_8UC1);
//
//		//Se junta en una imagen rgb
//		//Vector no existe en xfOpenCV
//		std::vector<cv::Mat> channels; //BGR
//		channels.push_back(zero);
//		channels.push_back(zero);
//		channels.push_back(weed_mask);
//		cv::merge(channels, mask_img_out);
//
//		#if DEBUG
//			cv::namedWindow( "Maleza", cv::WINDOW_AUTOSIZE );// Create a window for display.
//			cv::imshow( "Maleza", mask_img_out );
//			cv::waitKey(0);
//		#endif
//
//		//Se realiza resize para que tengan las mismas dimensiones
//		cv::resize(mask_img_out, rs_mask_img_out, rs_mask_img_out.size(), 0, 0, cv::INTER_AREA);
//
//		//Se suman las im�genes rgb
//		cv::addWeighted(rs_mask_img_out, 1, img_in, 1, 0, img_out, CV_8UC3);
//}



int main(int argc, char** argv)
{
//3, 4, 5, 6, 7, 9, 11, 17, 18, 19, 20, 22, 23, 24, 25

	// reading in the color image
	cv::Mat in_img(MAX_HEIGHT,MAX_WIDTH,CV_8UC3);
	cv::Mat img_out_sim = cv::Mat::zeros(MAX_HEIGHT,MAX_WIDTH,CV_8UC3);
	cv::Mat img_out_hls = cv::Mat::zeros(MAX_HEIGHT,MAX_WIDTH,CV_8UC3);

	in_img = cv::imread("test3.bmp");

	if (in_img.data == NULL)
	{
		fprintf(stderr,"Cannot open image\n");
		return (0);
	} else {

//		img_processing_cv(in_img, img_out_sim);

		stream_t _src,_dst;
		cvMat2AXIvideoxf<NPC1>(in_img, _src);
		ip_accel_app(_src, _dst);
		AXIvideo2cvMatxf<NPC1>(_dst, img_out_hls);

//		rgb_img_t imgInput(in_img.rows, in_img.cols);
//		rgb_img_t imgOutput(in_img.rows, in_img.cols);
//
//		imgInput.copyTo(in_img.data);
//
//		weed_detection(imgInput, imgOutput);

//		cv::namedWindow( "HLS", cv::WINDOW_AUTOSIZE );// Create a window for display.
//		cv::imshow( "HLS", img_out_hls);
//		cv::namedWindow( "SIM", cv::WINDOW_AUTOSIZE );// Create a window for display.
//		cv::imshow( "SIM", img_out_sim);
//		cv::waitKey(0);

//		cv::imwrite("sim.jpg", img_out_sim);
		cv::imwrite("hls.jpg", img_out_hls);
	}

	return (0);
}
