#ifndef _XF_STAGE_3_H_
#define _XF_STAGE_3_H_

#include "weed_detection.h"

void sectors_weed_classification(rs_gray_img_t& weed_mask_tmp,rs_gray_img_t& weed_mask_out, rs_gray_img_t& opened){

	#pragma HLS inline recursive
	//Bitwise and para generar la m�scara de maleza final
	xf::bitwise_and<XF_8UC1, RS_HEIGHT, RS_WIDTH, NPC1> (weed_mask_tmp, opened, weed_mask_out);

	//Threshold de maleza
	sectors_weed_classification_label0:for(uint8_t seg_index=0; seg_index<max_segments-1; seg_index++){
		uint16_t quadrant_space[max_lines-1];
		ufixed_32b_16i quadrant_weed[max_lines-1];
		sectors_weed_classification_label1:for (uint8_t i=0; i<max_lines-1; i++){
			quadrant_space[i]=0;
			quadrant_weed[i]=0;
		}
		uint8_t v_limit = segments[seg_index];
		sectors_weed_classification_label7:for (uint8_t _v=0; _v<max_seg_distance; _v++){
			uint8_t v = _v + segments[seg_index+1];
			if (v < v_limit){
				uint8_t quadrant_index = 0;
				bool flag_quadrant = false;
				for (uint16_t h=0; h<RS_WIDTH; h++){
					if (quadrant_index<max_lines-1){
						if (weed_mask_tmp.data[v*RS_WIDTH+h]>0){
							flag_quadrant=true;
							quadrant_space[quadrant_index]++;
							if(weed_mask_out.data[v*RS_WIDTH+h]>0)
								quadrant_weed[quadrant_index]++;
						} else {
							if(flag_quadrant){
								quadrant_index++;
								flag_quadrant=false;
							}
						}
					}
				}
			}
		}

		sectors_weed_classification_label16:for(uint8_t i=0; i<max_lines-1; i++)
			if (quadrant_space[i] != 0)
				quadrant_weed[i]=quadrant_weed[i]/(ufixed_32b_16i)quadrant_space[i];

		//Dibujado para mostrar en pantalla, sin pantalla no es necesario
		sectors_weed_classification_label8:for (uint8_t _v=0; _v<max_seg_distance; _v++){
			uint8_t v = _v + segments[seg_index+1];
			if (v < v_limit){
				uint8_t quadrant_index=0;
				bool flag_quadrant=false;
				for (uint16_t h=0; h<RS_WIDTH; h++){
					if (quadrant_index<max_lines-1){
						if (weed_mask_tmp.data[v*RS_WIDTH+h]>0){
							flag_quadrant=true;
							if(quadrant_weed[quadrant_index]<weed_threshold &&  weed_mask_tmp.data[v*RS_WIDTH+h]==255)
								weed_mask_out.data[v*RS_WIDTH+h]=0;
						} else {
							if(flag_quadrant){
								quadrant_index++;
								flag_quadrant=false;
							}
						}
					}
				}
			}
		}
	}
}

#endif
