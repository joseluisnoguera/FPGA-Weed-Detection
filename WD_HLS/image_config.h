#include "common/xf_axi_sdata.h"
#include "hls_math.h"
#include "common/xf_common.h"
#include "common/xf_infra.h"

//Software abstractization of the AXI-Stream interface
typedef hls::stream< ap_axiu<32,1,1,1> > stream_t;

//Definicion para tipo de punto fijo
typedef ap_fixed<24,16> fixed_40b_16i;
typedef ap_ufixed<24,16> ufixed_32b_16i;
typedef ap_ufixed<16,8> ufixed_24b_8i;
typedef ap_fixed<24,16> fixed_32b_16i;
typedef ap_fixed<56,48> fixed_88b_64i;

// y=m*x+b
struct Line{
	bool active;
	fixed_40b_16i m;
	int32_t b;
};

struct Centroid{
	uint16_t x;
	int32_t y;
};

struct LineBase{
	uint16_t y;
	bool active;
};

/* Optimization type */
#define RO 0 // Resource Optimized (8-pixel implementation)
#define NO 1 // Normal Operation (1-pixel implementation)

#if RO
	#define NPC1 XF_NPPC8
#endif
#if NO
	#define NPC1 XF_NPPC1
#endif

#define XF_USE_URAM true


//Frame resolution
#define MAX_HEIGHT 720
#define MAX_WIDTH 1280

//Rescaled (Tama�o debe ser define ya que son para templates de xfOpenCV)
#define RS_HEIGHT 180 // MAX_HEIGHT * 0,25
#define RS_WIDTH 320 // MAX_WIDTH * 0,25
static const uint16_t rs_h_middle = (uint16_t)(RS_HEIGHT>>1);
static const uint32_t rs_size = RS_HEIGHT*(uint32_t)RS_WIDTH;

//max down scale factor 2 for all 1-pixel modes, and for upscale in x direction
#define _MAXDOWNSCALE_2 4
#define _MAXDOWNSCALE 2
// 0 - Nearest Neighbor Interpolation, 1 - Bilinear Interpolation, 2 - AREA Interpolation
#define _INTERPOLATION	1
#define _INTERPOLATION_2 2

//Bottom ROI
#define RS_HEIGHT_12th 23 // El segmento más grande: (RS_HEIGHT/2)/4

//Crop lines
static const uint8_t max_lines = 6;

//Estos valores deber�an calcularse con el �ngulo, la altura y el ancho en cm
//Line Bases
#define CROP_WIDTH_BOTTOM 32
static const uint16_t crop_width_top = 10;

static const uint16_t win_size = (CROP_WIDTH_BOTTOM>>1); // div 2
static const uint16_t win_mid_size = (win_size>>1);
static const uint16_t min_dist = CROP_WIDTH_BOTTOM*1.6;
static const uint16_t mid_cw_bottom = (CROP_WIDTH_BOTTOM>>1);

//Threshold
#define THRESH_TYPE XF_THRESHOLD_TYPE_BINARY

//Erode, Dilate and Filter2D
#define KERNEL_SHAPE XF_SHAPE_CROSS
#define _ITERATIONS 1
#define _FILTER_SIZE 3

//Custom convolution (bordes verticales)
#define SHIFT 0

//Lines selection
static const uint16_t third_1 = (uint16_t)RS_WIDTH/3;
static const uint16_t third_2 = (uint16_t)((ufixed_32b_16i)(RS_WIDTH<<1)/3);
//static const uint16_t third_1 = (uint16_t)RS_WIDTH/4;
//static const uint16_t third_2 = (uint16_t)((ufixed_40b_16i)(RS_WIDTH*3)>>2);

//Segmentos calculados mediante algoritmo con una altura de RS_HEIGHT
static const uint8_t max_segments = 13;
static const uint16_t segments[max_segments] = {180, 161, 134, 111, 90, 68, 51, 36, 24, 14, 7, 2, 0};
static const uint16_t max_seg_distance = segments[0]-segments[1];

//MicroROIs
#define MICRO_ROI_HIGHT RS_HEIGHT_12th // Igual a 12th inferior
#define MICRO_ROI_WIDTH CROP_WIDTH_BOTTOM //Mismo que el ancho del surco en la base de la imagen
static const uint8_t max_centroids = max_lines * (max_segments-1);

//Decaimiento en el ancho de los microROI
static const ufixed_24b_8i micro_roi_decay = ((ufixed_32b_16i)CROP_WIDTH_BOTTOM - (ufixed_32b_16i)crop_width_top)/(ufixed_32b_16i)max_segments;
static const uint8_t max_last_centroids = 4;

//Anchos del surco con el adicional
#define ADDITION_PERCETAGE 1.6 //100% line plus 80%
static const uint8_t cw_bottom_additioned = (uint8_t)(CROP_WIDTH_BOTTOM*ADDITION_PERCETAGE);
static const ufixed_24b_8i cw_decay = ((ufixed_32b_16i)cw_bottom_additioned-(ufixed_32b_16i)(crop_width_top*ADDITION_PERCETAGE))/(ufixed_32b_16i)RS_HEIGHT;

//Porcentaje de vegetaci�n que debe tener el cuadrante para ser clasificado como con maleza
static const ufixed_24b_8i weed_threshold = 0.002;

//Mat type for OpenCV functions
typedef xf::Mat<XF_8UC3, MAX_HEIGHT, MAX_WIDTH, NPC1> rgb_img_t;
typedef xf::Mat<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1> gray_img_t;
typedef xf::Mat<XF_32FC1, RS_HEIGHT, RS_WIDTH, NPC1> rs_gray_float_img_t;
typedef xf::Mat<XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1> rs_rgb_img_t;
typedef xf::Mat<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1> rs_gray_img_t;
typedef xf::Mat<XF_8UC1, RS_HEIGHT_12th, RS_WIDTH, NPC1> rs_gray_img12th_t;
typedef xf::Mat<XF_8UC1, MICRO_ROI_HIGHT, MICRO_ROI_WIDTH, NPC1> micro_roi_t;

//Lo dejo as� para que se puedan agregar m�s �ndices
static const int EXG = 0;
static const int CIVE = 1;

//Porcentaje de vegetaci�n en la imagen para que se use erosi�n
static const ufixed_24b_8i th_total_vegetation = 0.25;
