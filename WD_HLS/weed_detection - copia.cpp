#include "weed_detection.h"
#include "wd_stage_1.h"
#include "wd_stage_2.h"
#include "wd_stage_3.h"
#include "xf_resize_2.hpp"
#include "xf_duplicate_2.hpp"

// --------------- Procesamiento general de imagen ---------------
void weed_detection(rgb_img_t& img_in, rgb_img_t& img_out)
{
	#pragma HLS dataflow
	//pragma stream depth tells tools that no buffering is needed

	rs_rgb_img_t resized(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=resized depth=1 dim=1
	rs_rgb_img_t resized_0(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=resized_0 depth=1 dim=1
	rs_rgb_img_t resized_1(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=resized_1 depth=1 dim=1

	rs_gray_img_t veg_img(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=veg_img depth=1 dim=1
	rs_gray_img_t segmented(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=segmented depth=1 dim=1

	rs_gray_img_t eroded_0(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=eroded_0 depth=1 dim=1

	rs_gray_img_t eroded_1(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=eroded_1 depth=1 dim=1
	rs_gray_img_t eroded_1a(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=eroded_1a depth=1 dim=1
	rs_gray_img_t eroded_1b(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=eroded_1b depth=1 dim=1

	rs_gray_img_t eroded_2(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=eroded_2 depth=1 dim=1

	rs_gray_img12th_t bottom(RS_HEIGHT_12th, RS_WIDTH);
	#pragma HLS STREAM variable=bottom depth=1 dim=1

	rs_gray_img_t weed_mask(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=weed_mask depth=1 dim=1
	rs_gray_img_t weed_mask_tmp(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=weed_mask_tmp depth=1 dim=1
	rs_gray_img_t weed_mask_tmp_2(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=weed_mask_tmp_2 depth=1 dim=1

	rs_gray_img_t zero(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=zero depth=1 dim=1
	rs_gray_img_t zero_a(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=zero_a depth=1 dim=1
	rs_gray_img_t zero_b(RS_HEIGHT, RS_WIDTH);
	#pragma HLS STREAM variable=zero_b depth=1 dim=1

	rs_rgb_img_t mask_img_out(RS_HEIGHT,RS_WIDTH);
	#pragma HLS STREAM variable=mask_img_out depth=1 dim=1
	rs_rgb_img_t rs_img_output(RS_HEIGHT,RS_WIDTH);
	#pragma HLS STREAM variable=rs_img_output depth=1 dim=1

	// ---------------- PRIMERA ETAPA ---------------- //

	//Resize a un cuarto de la imagen
	xf::resize<_INTERPOLATION_2, XF_8UC3, MAX_HEIGHT, MAX_WIDTH, RS_HEIGHT, RS_WIDTH, NPC1, _MAXDOWNSCALE_2>(img_in, resized);

	xf::duplicateMat_2<XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1>(resized, resized_0, resized_1);

	//Convertir al �ndice seleccionado (Escalando a 8 bits)
	get_vegetation_image(resized_0, veg_img);

	//Threshold Otsu
	segment_image(veg_img, segmented);

	xf::erode<XF_BORDER_CONSTANT, XF_8UC1 , RS_HEIGHT, RS_WIDTH, KERNEL_SHAPE, _FILTER_SIZE, _FILTER_SIZE, _ITERATIONS, NPC1>(segmented, eroded_0, kernel_v1);

	//Erosion segun la cantidad de vegetacion que tenga
	remark_crop_lines(eroded_0, eroded_1, eroded_2);

	xf::duplicateMat<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(eroded_1, eroded_1a, eroded_1b);

	// ---------------- SEGUNDA ETAPA ---------------- //
	// En esta etapa se detectan y seleccionan las rectas que se ajustan a los surcos

	get_12th_segment(eroded_1a, bottom);

	//Deteccion de base de rectas de cultivo por histograma (Para la 12va parte inferior de la imagen)

	get_crop_lines(bottom, eroded_1b, weed_mask_tmp);

	// ---------------- TERCERA ETAPA ---------------- //
	// En esta etapa se genera la m�scara de maleza, con la cual se clasifica seg�n la cantidad de verde en el cuadrante

	sectors_weed_classification(weed_mask_tmp, weed_mask_tmp_2, eroded_2);

	//Esta parte es para generar la imagen de salida, cuando no se necesita hay que quitarlo
	xf::zero<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(zero, zero);

//	xf::duplicateMat<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(zero, zero_a, zero_b);

	//Se junta en una imagen rgb
	xf::merge<XF_8UC1, XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1>(weed_mask_tmp_2, zero, zero, mask_img_out);

	//Se suman las im�genes rgb
	xf::add<XF_CONVERT_POLICY_SATURATE, XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1>(resized_1, mask_img_out, rs_img_output);

	//Se realiza resize para que tengan las mismas dimensiones
	resize_2<_INTERPOLATION, XF_8UC3, RS_HEIGHT, RS_WIDTH, MAX_HEIGHT, MAX_WIDTH, NPC1, _MAXDOWNSCALE>(rs_img_output, img_out);

//	resize_2<_INTERPOLATION, XF_8UC3, RS_HEIGHT, RS_WIDTH, MAX_HEIGHT, MAX_WIDTH, NPC1, _MAXDOWNSCALE>(mask_img_out, img_out);

//	rs_rgb_img_t tmp(RS_HEIGHT, RS_WIDTH);
//	#pragma HLS STREAM variable=tmp depth=1 dim=1;
//	xf::gray2rgb<XF_8UC1, XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1>(weed_mask_tmp, tmp);
//	resize_2<_INTERPOLATION, XF_8UC3, RS_HEIGHT, RS_WIDTH, MAX_HEIGHT, MAX_WIDTH, NPC1, _MAXDOWNSCALE>(mask_img_out, img_out);

}


// --------------- AXI Interface ---------------
void ip_accel_app(stream_t& stream_in, stream_t& stream_out/*, fixed_16b_4& ground_distance, fixed_16b_4& angle*/)
{
	#pragma HLS dataflow
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
