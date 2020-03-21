#include "weed_detection.h"
#include "wd_stage_1.h"
#include "wd_stage_2.h"
#include "wd_stage_3.h"
#include "xf_resize_2.hpp"
#include "xf_duplicate_2.hpp"
#include "xf_add_2.hpp"

// --------------- Procesamiento general de imagen ---------------
void weed_detection(rgb_img_t& img_in, rgb_img_t& img_out)
{
#pragma HLS dataflow
//pragma stream depth tells tools that no buffering is needed

rgb_img_t img_in_0(MAX_HEIGHT, MAX_WIDTH);
#pragma HLS STREAM variable=img_in_0 depth=1 dim=1
rgb_img_t img_in_1(MAX_HEIGHT, MAX_WIDTH);
#pragma HLS STREAM variable=img_in_1 depth=1 dim=1

rs_rgb_img_t resized(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=resized depth=1 dim=1

rs_gray_img_t veg_img(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=veg_img depth=1 dim=1
rs_gray_img_t segmented(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=segmented depth=1 dim=1

rs_gray_img_t eroded_0a(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=eroded_0a depth=1 dim=1
rs_gray_img_t eroded_0b(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=eroded_0b depth=1 dim=1

rs_gray_img_t eroded_1(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=eroded_1 depth=1 dim=1
rs_gray_img_t eroded_1a(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=eroded_1a depth=1 dim=1
rs_gray_img_t eroded_1b(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=eroded_1b depth=1 dim=1

rs_gray_img12th_t bottom(RS_HEIGHT_12th, RS_WIDTH);
#pragma HLS STREAM variable=bottom depth=1 dim=1

rs_gray_img_t weed_mask(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=weed_mask depth=1 dim=1
rs_gray_img_t weed_mask_tmp(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=weed_mask_tmp depth=1 dim=1
rs_gray_img_t weed_mask_out(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=weed_mask_out depth=1 dim=1

rs_gray_img_t zero(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=zero depth=1 dim=1
rs_gray_img_t zero_a(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=zero_a depth=1 dim=1
rs_gray_img_t zero_b(RS_HEIGHT, RS_WIDTH);
#pragma HLS STREAM variable=zero_b depth=1 dim=1

rs_rgb_img_t mask_img_out(RS_HEIGHT,RS_WIDTH);
#pragma HLS STREAM variable=mask_img_out depth=1 dim=1
rgb_img_t rs_mask_img_out(MAX_HEIGHT, MAX_WIDTH);
#pragma HLS STREAM variable=rs_mask_img_out depth=1 dim=1

// ---------------- PRIMERA ETAPA ---------------- //

duplicateMat_2<XF_8UC3, MAX_HEIGHT, MAX_WIDTH, NPC1>(img_in, img_in_0, img_in_1);

//Resize a un cuarto de la imagen
resizeNNBilinear<XF_8UC3, MAX_HEIGHT, MAX_WIDTH, NPC1, RS_HEIGHT, RS_WIDTH, _INTERPOLATION, _MAXDOWNSCALE>(img_in_0,resized);

//Convertir al �ndice seleccionado (Escalando a 8 bits)
get_vegetation_image(resized, veg_img);

//Threshold Otsu
segment_image(veg_img, segmented);

xf::erode<XF_BORDER_CONSTANT, XF_8UC1, RS_HEIGHT, RS_WIDTH, KERNEL_SHAPE, _FILTER_SIZE, _FILTER_SIZE, _ITERATIONS, NPC1>(segmented, eroded_0a, kernel_v1);

//Erosion segun la cantidad de vegetacion que tenga
remark_crop_lines(eroded_0a, eroded_1, eroded_0b);

xf::duplicateMat<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(eroded_1, eroded_1a, eroded_1b);

// ---------------- SEGUNDA ETAPA ---------------- //
// En esta etapa se detectan y seleccionan las rectas que se ajustan a los surcos

get_12th_segment(eroded_1a, bottom);

//Deteccion de base de rectas de cultivo por histograma (Para la 12va parte inferior de la imagen)

get_crop_lines(bottom, eroded_1b, weed_mask_tmp);

// ---------------- TERCERA ETAPA ---------------- //
// En esta etapa se genera la m�scara de maleza, con la cual se clasifica seg�n la cantidad de verde en el cuadrante

sectors_weed_classification(weed_mask_tmp, weed_mask_out, eroded_0b);

	//Esta parte es para generar la imagen de salida, cuando no se necesita hay que quitarlo
	xf::zero<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1>(zero, zero);

	//Se junta en una imagen rgb
	xf::merge<XF_8UC1, XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1>(weed_mask_out, zero, zero, mask_img_out);

	//Se realiza resize para que tengan las mismas dimensiones
	resize_2<_INTERPOLATION_2, XF_8UC3, RS_HEIGHT, RS_WIDTH, MAX_HEIGHT, MAX_WIDTH, NPC1, _MAXDOWNSCALE_2>(mask_img_out, rs_mask_img_out);
	//Se suman las im�genes rgb
	xf::add_2<XF_CONVERT_POLICY_SATURATE, XF_8UC3, MAX_HEIGHT, MAX_WIDTH, NPC1>(img_in_1, rs_mask_img_out, img_out);
}


// --------------- AXI Interface ---------------
void ip_accel_app(stream_t& stream_in, stream_t& stream_out)
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
