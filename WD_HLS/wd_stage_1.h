#ifndef _XF_STAGE_1_H_
#define _XF_STAGE_1_H_

#include "weed_detection.h"

//Extrae como RGB pero es BGR
void extract_channels(rs_rgb_img_t& img_in_0, rs_rgb_img_t& img_in_1, rs_rgb_img_t& img_in_2,
		rs_gray_img_t& r_channel, rs_gray_img_t& g_channel, rs_gray_img_t& b_channel){

	#pragma HLS dataflow
	xf::extractChannel<XF_8UC3, XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(img_in_0, b_channel, XF_EXTRACT_CH_R);
	xf::extractChannel<XF_8UC3, XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(img_in_1, g_channel, XF_EXTRACT_CH_G);
	xf::extractChannel<XF_8UC3, XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(img_in_2, r_channel, XF_EXTRACT_CH_B);
}

void get_max_from_channels(rs_gray_img_t& r_channel, rs_gray_img_t& g_channel, rs_gray_img_t& b_channel,
		int32_t& max_r, int32_t& max_g, int32_t& max_b){

	#pragma HLS dataflow
	//Variables no usadas que requiere la funci�n
	int32_t r_min_value, g_min_value, b_min_value;
	uint16_t r_min_locx, r_min_locy, r_max_locx, r_max_locy;
	uint16_t g_min_locx, g_min_locy, g_max_locx, g_max_locy;
	uint16_t b_min_locx, b_min_locy, b_max_locx, b_max_locy;
	//Buscar el maximo en cada canal
	xf::minMaxLoc<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(r_channel, &r_min_value, &max_r, &r_min_locx, &r_min_locy, &r_max_locx, &r_max_locy);
	xf::minMaxLoc<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(g_channel, &g_min_value, &max_g, &g_min_locx, &g_min_locy, &g_max_locx, &g_max_locy);
	xf::minMaxLoc<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(b_channel, &b_min_value, &max_b, &b_min_locx, &b_min_locy, &b_max_locx, &b_max_locy);

}

void get_exg_image(rs_gray_img_t& r_channel, rs_gray_img_t& g_channel, rs_gray_img_t& b_channel,
		int32_t& max_r, int32_t& max_g, int32_t& max_b, rs_gray_float_img_t& veg_img,
		fixed_88b_64i& min_value, fixed_88b_64i& max_value){

//	#pragma HLS pipeline
	max_value = 0, min_value = 32760;
	fixed_32b_16i denominator;
	fixed_88b_64i temp;
	get_exg_image_label4:for (uint32_t i=0; i<RS_HEIGHT*RS_WIDTH; i++ ){

		denominator = (fixed_32b_16i)(r_channel.data[i]/max_r
								+ g_channel.data[i]/max_g
								+ b_channel.data[i]/max_b);
		if (denominator == 0) denominator = 1;
		temp = 2*((fixed_88b_64i)g_channel.data[i]/denominator)
				- ((fixed_88b_64i)r_channel.data[i]/denominator)
				- ((fixed_88b_64i)b_channel.data[i]/denominator);
		veg_img.data[i] = (float)temp;
		if (max_value < temp) max_value = temp;
		if (min_value > temp) min_value = temp;
	}
}

void convert_fp_to_8b(fixed_88b_64i& min_value, fixed_88b_64i _d, rs_gray_float_img_t& veg, rs_gray_img_t& img_out){

	#pragma HL7S dataflow
	fixed_32b_16i scalar = 255/_d;
	convert_fp_to_8b_label1:for (uint16_t i=0; i<RS_HEIGHT*RS_WIDTH; i++ ){
		img_out.data[i] = (uint8_t)((fixed_88b_64i(veg.data[i])-min_value)*scalar); //Sin invertir
	}
}

//Devuelve una imagen de 8b de profundidad utilizando el indice de vegetacion seleccionado
void get_vegetation_image(rs_rgb_img_t& img_in, rs_gray_img_t& img_out){

	#pragma HLS dataflow
	rs_gray_img_t r_channel(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=r_channel depth=1 dim=1
	rs_gray_img_t g_channel(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=g_channel depth=1 dim=1
	rs_gray_img_t b_channel(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=b_channel depth=1 dim=1

	rs_gray_float_img_t veg_temp(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=veg_temp depth=1 dim=1

	rs_rgb_img_t img_in_0(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=img_in_0 depth=1 dim=1
	rs_rgb_img_t img_in_1(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=img_in_1 depth=1 dim=1
	rs_rgb_img_t img_in_2(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=img_in_2 depth=1 dim=1
	rs_rgb_img_t img_in_3(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=img_in_3 depth=1 dim=1

	xf::duplicateMat<XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1>(img_in, img_in_0, img_in_1);
	xf::duplicateMat<XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1>(img_in_0, img_in_2, img_in_3);
	extract_channels(img_in_1, img_in_2, img_in_3, r_channel, g_channel, b_channel);

	//Buscar m�ximos en cada canal
	int32_t max_r, max_g, max_b;
	get_max_from_channels(r_channel, g_channel, b_channel, max_r, max_g, max_b);
	if (max_r == 0) max_r = 1;
	if (max_g == 0) max_g = 1;
	if (max_b == 0) max_b = 1;
	fixed_88b_64i max_value=0, min_value=32760; // ~2 a la 15
	get_exg_image(r_channel, g_channel, b_channel, max_r, max_g, max_b, veg_temp, min_value, max_value);

	//Escalar a 0-255  ... ((a - min)/(max-min)) * 255
	convert_fp_to_8b(min_value, max_value - min_value, veg_temp, img_out);
}

//Para binarizar la imagen en vegetacion y no vegetacion
void segment_image(rs_gray_img_t& img_in, rs_gray_img_t& img_out){

//	#pragma HLS dataflow
	unsigned char otsuValue;
//	rs_gray_img_t img_in_th_0(RS_HEIGHT, RS_WIDTH);
//	rs_gray_img_t img_in_th_1(RS_HEIGHT, RS_WIDTH);
//	xf::duplicateMat<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(img_in, img_in_th_0, img_in_th_1);
	xf::OtsuThreshold<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(img_in, otsuValue);
	xf::Threshold<THRESH_TYPE,XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(img_in, img_out, otsuValue, 255);
}

//Devuelve el porcentaje de vegetacion en la imagen
ufixed_32b_16i get_total_vegetation(rs_gray_img_t& img_in){

	#pragma HLS dataflow
	const uint16_t loop_bound = (RS_HEIGHT*RS_WIDTH)>>1;
	ufixed_32b_16i total1 = 0, total2 = 0;
	get_total_vegetation_label0:for (uint16_t i=0; i<loop_bound; i++)
		if (img_in.data[i]>0)
			total1++;
	get_total_vegetation_label1:for (uint16_t i=loop_bound; i<RS_HEIGHT*RS_WIDTH; i++ )
		if (img_in.data[i]>0)
			total2++;
	return ((total1 + total2) / (ufixed_32b_16i)rs_size);
}

void remark_crop_lines(rs_gray_img_t& eroded_0, rs_gray_img_t& eroded_1, rs_gray_img_t& eroded_2){
//	#pragma HLS dataflow
	rs_gray_img_t eroded_tmp(RS_HEIGHT, RS_WIDTH);
//	#pragma HLS STREAM variable=eroded_tmp depth=1 dim=1
	xf::duplicateMat<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(eroded_0, eroded_tmp, eroded_2);
	//Erosiï¿½n con kernel vertical para destacar rectas
	if (get_total_vegetation(eroded_tmp) >= th_total_vegetation){
		xf::erode<XF_BORDER_CONSTANT, XF_8UC1 , RS_HEIGHT, RS_WIDTH, KERNEL_SHAPE, _FILTER_SIZE, _FILTER_SIZE, _ITERATIONS, NPC1>(eroded_tmp, eroded_1, kernel_v1);
	} else {
		eroded_tmp.copyTo(eroded_1.data);
	}
}

#endif
