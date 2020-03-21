#ifndef _XF_WEED_DETECTION_H_
#define _XF_WEED_DETECTION_H_

#include "image_config.h"

#include "imgproc/xf_erosion.hpp"
#include "imgproc/xf_resize_nn_bilinear.hpp"
#include "imgproc/xf_otsuthreshold.hpp"
#include "imgproc/xf_threshold.hpp"
#include "imgproc/xf_channel_extract.hpp"
#include "imgproc/xf_channel_combine.hpp"
#include "core/xf_min_max_loc.hpp"
#include "core/xf_arithm.hpp"
#include "imgproc/xf_accumulate_image.hpp"
#include "imgproc/xf_duplicateimage.hpp"

//Nota: h=horizontal v=vertical

//Image processing
void weed_detection(rgb_img_t& img_in, rgb_img_t& img_out);

//AXI interface
void ip_accel_app(stream_t& stream_in, stream_t& stream_out/*, fixed_16b_4& ground_distance, fixed_16b_4& angle*/);


//--------------- Variables utiles ---------------
static unsigned char kernel_v1[_FILTER_SIZE*_FILTER_SIZE] = {0, 1, 0, 0, 1, 0, 0, 1, 0};

#endif
