//#include "common/xf_infra.h"

#define DEBUG 0

//typedef ap_fixed<40,16> fixed_40b_16i;
//typedef ap_ufixed<40,16> ufixed_40b_16i;
//typedef ap_fixed<88,64> fixed_88b_64i;

//typedef hls::stream< ap_axiu<24,1,1,1> > stream_t;

// y=m*x+b
//struct Line{
//	bool active;
//	fixed_40b_16i m;
//	int32_t b;
//};
//
//struct Centroid{
//	uint16_t x;
//	int32_t y;
//};
//
//struct LineBase{
//	uint16_t y;
//	bool active;
//};

//Frame resolution
//#define MAX_HEIGHT 720
//#define MAX_WIDTH 1280

//Rescaled (Tama�o debe ser define ya que son para templates de xfOpenCV)
//#define RS_HEIGHT 180 // (MAX_HEIGHT * 0,5)
//#define RS_WIDTH 320 // MAX_WIDTH * 0,5
//static const uint16_t rs_h_middle = (uint16_t)(RS_HEIGHT>>1);
//static const uint32_t rs_size = RS_HEIGHT*(uint32_t)RS_WIDTH;

//Bottom ROI
//#define RS_HEIGHT_12th 23 // (RS_HEIGHT/2)/4

//Crop lines
//static const uint8_t max_lines = 12;

//Estos valores deber�an calcularse con el �ngulo, la altura y el ancho en cm
//Line Bases
//#define CROP_WIDTH_BOTTOM 38
//static const uint16_t crop_width_top = 12;
//
//static const uint16_t win_size = (CROP_WIDTH_BOTTOM>>1); // div 2
//static const uint16_t win_mid_size = (win_size>>1);
//static const uint16_t min_dist = CROP_WIDTH_BOTTOM;
//static const uint16_t mid_cw_bottom = (CROP_WIDTH_BOTTOM>>1);
//
////Lines selection
//static const uint16_t third_1 = (uint16_t)RS_WIDTH/3;
//static const uint16_t third_2 = (uint16_t)((ufixed_40b_16i)(RS_WIDTH<<1)/(ufixed_40b_16i)3);
//static const uint16_t third_1 = (uint16_t)RS_WIDTH/4;
//static const uint16_t third_2 = (uint16_t)((ufixed_40b_16i)(RS_WIDTH*3)>>2);

//Constantes para exg
//static const fixed_40b_16i exg_r_const = 0.441, exg_g_const = 0.811, exg_b_const = 0.385, exg_c_const = 18.78745;

//Segmentos y máxima cantidad de ellos
//static const uint8_t max_segments = 13;
//static const uint16_t segments[max_segments] = {180, 161, 134, 111, 90, 68, 51, 36, 24, 14, 7, 2, 0};

//MicroROIs
//#define MICRO_ROI_HIGHT RS_HEIGHT_12th // Igual a 12th inferior
//#define MICRO_ROI_WIDTH CROP_WIDTH_BOTTOM //Mismo que el ancho del surco en la base de la imagen
//static const uint8_t max_first_centroids = max_lines * (max_segments-9); //Para los primeros 4 centroides
//static const uint8_t max_centroids = max_lines * (max_segments-1);

//Decaimiento en el ancho de los microROI
//static const ufixed_40b_16i micro_roi_decay = ((ufixed_40b_16i)CROP_WIDTH_BOTTOM - (ufixed_40b_16i)crop_width_top)/(ufixed_40b_16i)max_segments;
//static const uint8_t max_last_centroids = 4;

//Anchos del surco con el adicional
//#define ADDITION_PERCETAGE 1.6 //100% line plus 60%
//static const uint16_t cw_bottom_additioned = (uint16_t)(CROP_WIDTH_BOTTOM*ADDITION_PERCETAGE);
//static const ufixed_40b_16i cw_decay = ((ufixed_40b_16i)cw_bottom_additioned-(ufixed_40b_16i)(crop_width_top*ADDITION_PERCETAGE))/(ufixed_40b_16i)RS_HEIGHT;

//Porcentaje de vegetaci�n que debe tener el cuadrante para ser clasificado como con maleza
//static const ufixed_40b_16i weed_threshold = 0.002;

//Lo dejo as� para que se puedan agregar m�s �ndices
//static const uint8_t EXG = 0;

//Porcentaje de vegetaci�n en la imagen para que se use erosi�n
//static const ufixed_40b_16i th_total_vegetation = 0.25;
