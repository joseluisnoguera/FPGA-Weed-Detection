//#include "common/xf_common.h"
#include "common/xf_structs.h"
#include "common/xf_params.h"
#include "common/xf_types.h"
#include "common/xf_axi_sdata.h"
#include "common/xf_infra.h"

//Software abstractization of the AXI-Stream interface
typedef hls::stream< ap_axiu<24,1,1,1> > stream_t;

//Definicion para tipo de punto fijo
typedef ap_ufixed<40,24> ufixed_40b_24i;
typedef ap_fixed<40,24> fixed_40b_24i;
typedef ap_fixed<40,16> fixed_40b_16i;
typedef ap_ufixed<32,12> ufixed_32b_12i;
typedef ap_fixed<32,12> fixed_32b_12i;

// y=m*x+b
struct Line{
	bool active;
	fixed_32b_12i m;
	int32_t b;
	uint16_t veg_amount;
};

struct Centroid{
	uint16_t x;
	uint16_t y;
};


/* Optimization type */
#define RO 0 // Resource Optimized (8-pixel implementation)
#define NO 1 // Normal Operation (1-pixel implementation)

#if RO
	#define NPC1 XF_NPPC8
#endif
#if NO
	#define NPC1 XF_NPPC1
#endif/

#define XF_USE_URAM false


//Frame resolution
#define MAX_HEIGHT 1080
#define MAX_WIDTH 1920

//Rescaled (Tama�o debe ser define ya que son para templates de xfOpenCV)
#define RS_HEIGHT 270 // (MAX_HEIGHT * 0,5)
#define RS_WIDTH 480 // MAX_WIDTH * 0,5
static uint16_t rs_h_middle = (uint16_t)(RS_HEIGHT>>1);
static uint16_t rs_size = RS_HEIGHT*RS_WIDTH;

//max down scale factor 2 for all 1-pixel modes, and for upscale in x direction
#define MAXDOWNSCALE 4
// 0 - Nearest Neighbor Interpolation, 1 - Bilinear Interpolation, 2 - AREA Interpolation
#define INTERPOLATION	2

//Bottom ROI
#define RS_HEIGHT_12th 22 // RS_HEIGHT/12

//Crop lines
static uint8_t max_lines = 12;

//Estos valores deber�an calcularse con el �ngulo, la altura y el ancho en cm
//Line Bases
#define CROP_WIDTH_BOTTOM 56
static uint16_t crop_width_top = 16;

static uint16_t win_size = (CROP_WIDTH_BOTTOM>>1); // div 2
static uint16_t win_mid_size = (win_size>>1);
static uint16_t min_dist = CROP_WIDTH_BOTTOM*1.6;
static uint16_t mid_cw_bottom = (CROP_WIDTH_BOTTOM>>1);

//Threshold
#define THRESH_TYPE XF_THRESHOLD_TYPE_BINARY

//Erode, Dilate and Filter2D
#define KERNEL_SHAPE XF_SHAPE_CROSS
#define ITERATIONS 1
#define FILTER_SIZE 3

//Custom convolution (bordes verticales)
#define SHIFT 0

//Hough configuration
#define RHOSTEP 18
#define THETASTEP 2 // 6.1 format
#define LINESMAX 512
#define DIAGVAL 41 //cvRound((sqrt(WIDTH*WIDTH + HEIGHT*HEIGHT)) / RHOSTEP); 1968 //40
#define MINTHETA 0
#define MAXTHETA 180
static short threshold_hough = 20;

//Lines selection
static uint16_t third_1 = (uint16_t)RS_WIDTH/3;
static uint16_t third_2 = (uint16_t)RS_WIDTH*(2/3);

//Angle l�mits
static ufixed_32b_12i max_ang_th1 = 0.49;
static ufixed_32b_12i min_ang_th1 = 0.2;
static ufixed_32b_12i max_ang_th2 = 2.92;
static ufixed_32b_12i min_ang_th2 = 2.65;
static ufixed_32b_12i max_ang_th3 = 0.39;
static ufixed_32b_12i min_ang_th3 = 2.75;

//Segmentos calculados mediante algoritmo con una altura de RS_HEIGHT
static uint16_t segments[12]={270, 241, 202, 167, 135, 102, 76, 54, 36, 21, 10, 3, 0};
static uint8_t max_segments = 12;

//MicroROIs
#define MICRO_ROI_HIGHT RS_HEIGHT_12th // Igual a 12th inferior
#define MICRO_ROI_WIDTH CROP_WIDTH_BOTTOM //Mismo que el ancho del surco en la base de la imagen
static uint8_t max_centroides = max_lines * max_segments;

//Decaimiento en el ancho de los microROI
static ufixed_32b_12i micro_roi_decay = ((ufixed_32b_12i)CROP_WIDTH_BOTTOM - (ufixed_32b_12i)crop_width_top)/(ufixed_32b_12i)max_segments;
static uint8_t max_centroids = 4;

//Anchos del surco con el adicional
#define ADDITION_PERCETAGE 1.8 //100% line plus 80%
static uint16_t cw_bottom_additioned = (uint16_t)(CROP_WIDTH_BOTTOM*ADDITION_PERCETAGE);
static ufixed_32b_12i cw_decay = ((ufixed_32b_12i)cw_bottom_additioned-(ufixed_32b_12i)(crop_width_top*ADDITION_PERCETAGE))/(ufixed_32b_12i)RS_HEIGHT;

//Porcentaje de vegetaci�n que debe tener el cuadrante para ser clasificado como con maleza
static ufixed_32b_12i weed_threshold = 0.08;

//Mat type for OpenCV functions
typedef xf::Mat<XF_8UC3, MAX_HEIGHT, MAX_WIDTH, NPC1> rgb_img_t;
typedef xf::Mat<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPC1> gray_img_t;
typedef xf::Mat<XF_32FC1, MAX_HEIGHT, MAX_WIDTH, NPC1> gray_float_img_t;
typedef xf::Mat<XF_8UC3, RS_HEIGHT, RS_WIDTH, NPC1> rs_rgb_img_t;
typedef xf::Mat<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1> rs_gray_img_t;
typedef xf::Mat<XF_8UC1, RS_HEIGHT_12th, RS_WIDTH, NPC1> rs_gray_img12th_t;
typedef xf::Mat<XF_8UC1, MICRO_ROI_HIGHT, MICRO_ROI_WIDTH, NPC1> micro_roi_t;

//Lo dejo as� para que se puedan agregar m�s �ndices
static uint8_t EXG = 0;
static uint8_t CIVE = 1;

//Porcentaje de vegetaci�n en la imagen para que se use erosi�n
static fixed_40b_24i th_total_vegetation = 0.15;
