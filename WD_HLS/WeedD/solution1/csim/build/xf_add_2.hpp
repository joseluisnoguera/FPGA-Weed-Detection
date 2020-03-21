/***************************************************************************
 Copyright (c) 2019, Xilinx, Inc.
 All rights reserved.

 Redistribution and use in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:

 1. Redistributions of source code must retain the above copyright notice,
 this list of conditions and the following disclaimer.

 2. Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.

 3. Neither the name of the copyright holder nor the names of its contributors
 may be used to endorse or promote products derived from this software
 without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 ***************************************************************************/

#ifndef _XF_ARITHM_2_HPP_
#define _XF_ARITHM_2_HPP_

#ifndef __cplusplus
#error C++ is needed to include this header
#endif
#include "hls_stream.h"
#include "common/xf_common.h"

class kernel_add_2 {
public:
	template<int DEPTH>
    static void apply(XF_PTNAME(DEPTH)& p, XF_PTNAME(DEPTH)& q, XF_PTNAME(DEPTH)& r,int _policytype) {
#pragma HLS inline
		// for the input type of 8U
		if((DEPTH == XF_8UP) ||(DEPTH == XF_24UP))
		{
			ap_uint<(XF_PIXELDEPTH(DEPTH)+1)> result_temp;
			result_temp = p+ q; // perform the addition operation on the input pixels
			if(_policytype == XF_CONVERT_POLICY_SATURATE && result_temp > 255)// handling the overflow
			{
				result_temp = 255;
			}
			r = (XF_PTNAME(DEPTH)) result_temp;
		}

		// for the input type of 16S
		else if((DEPTH == XF_16SP)||(DEPTH == XF_48SP))
		{
			ap_int<17> result_temp;
			result_temp = p + q; // perform the addition operation on the input pixels
			if(_policytype == XF_CONVERT_POLICY_SATURATE && result_temp > 32767)			// handling the overflow
			{
				result_temp = 32767;
			}
			else if(_policytype == XF_CONVERT_POLICY_SATURATE && result_temp < -32768)		// handling the overflow
			{
				result_temp = -32768;
			}
			r = (XF_PTNAME(DEPTH)) result_temp;
		}


    }
};

namespace xf {

template<int SRC_T, int ROWS, int COLS, int PLANES,int DEPTH, int NPC, int WORDWIDTH_SRC,int WORDWIDTH_DST, int COLS_TRIP,typename KERNEL, int USE_SRC2>
void xFarithm_proc_2(xf::Mat<SRC_T, ROWS, COLS, NPC> & _src1, xf::Mat<SRC_T, ROWS, COLS, NPC> & _src2, xf::Scalar<XF_CHANNELS(SRC_T,NPC), unsigned char> scl, xf::Mat<SRC_T, ROWS, COLS, NPC> & _dst,
int _policytype,uint16_t image_height,uint16_t image_width)
{
	KERNEL opr;
	int STEP;
	STEP=XF_PIXELDEPTH(DEPTH)/PLANES;
	ap_uint<13> i,j,k;
	XF_SNAME(WORDWIDTH_SRC) val_src1=0, val_src2=0;
	XF_SNAME(WORDWIDTH_DST) val_dst=0;
	XF_PTNAME(DEPTH) result, p=0 ,q=0;

	rowLoop:
	for(i = 0; i < image_height; i++)
	{
#pragma HLS LOOP_TRIPCOUNT min=ROWS max=ROWS
#pragma HLS LOOP_FLATTEN off

		colLoop:
		for(j = 0; j < image_width; j++)
		{
#pragma HLS LOOP_TRIPCOUNT min=COLS_TRIP max=COLS_TRIP
#pragma HLS pipeline
			val_src1 = (XF_SNAME(WORDWIDTH_SRC)) (_src1.read(i*image_width+j)); // reading the data from the first stream
			if (USE_SRC2) {
			val_src2 = (XF_SNAME(WORDWIDTH_SRC)) (_src2.read(i*image_width+j));
			}
			procLoop:
			for(k = 0; k < (XF_WORDDEPTH(WORDWIDTH_SRC));k += STEP)
			{
#pragma HLS unroll
				p = val_src1.range(k + (STEP - 1), k); // Get bits from certain range of positions.
				if (USE_SRC2) {
					q = val_src2.range(k + (STEP - 1), k);
				} else {
				   q = scl.val[0];
				}

				opr.template apply<DEPTH>(p, q, result, _policytype);

				val_dst.range(k + (STEP - 1), k) = result; // Set bits in a range of positions.
			}
			_dst.write(i*image_width+j, val_dst);			// writing data to the output stream
		}
	}
}

#pragma SDS data access_pattern("_src1.data":SEQUENTIAL)
#pragma SDS data access_pattern("_src2.data":SEQUENTIAL)
#pragma SDS data copy("_src1.data"[0:"_src1.size"])
#pragma SDS data copy("_src2.data"[0:"_src2.size"])
#pragma SDS data access_pattern("_dst.data":SEQUENTIAL)
#pragma SDS data copy("_dst.data"[0:"_dst.size"])
template<int POLICY_TYPE, int SRC_T, int ROWS, int COLS, int NPC>
void add_2(xf::Mat<SRC_T, ROWS, COLS, NPC> & _src1, xf::Mat<SRC_T, ROWS, COLS, NPC> & _src2,xf::Mat<SRC_T, ROWS, COLS, NPC> & _dst)
{

#pragma HLS inline off
	uint16_t image_width = _src1.cols >> XF_BITSHIFT(NPC);

	assert(((NPC == XF_NPPC1) || (NPC == XF_NPPC8)) &&
			"NPC must be XF_NPPC1 or XF_NPPC8 ");
	assert(((SRC_T == XF_8UC1) || (SRC_T == XF_16SC1) || (SRC_T == XF_8UC3) || (SRC_T == XF_8UC4) ) &&
			"TYPE must be XF_8UC1 or XF_16SC1");
	assert((POLICY_TYPE == XF_CONVERT_POLICY_SATURATE ||
			POLICY_TYPE == XF_CONVERT_POLICY_TRUNCATE)
			&& "_policytype must be 'XF_CONVERT_POLICY_SATURATE' or 'XF_CONVERT_POLICY_TRUNCATE'");
	assert((_src1.rows <= ROWS ) && "ROWS and COLS should be greater than input image");


	xFarithm_proc_2<SRC_T, ROWS,COLS,XF_CHANNELS(SRC_T,NPC), XF_DEPTH(SRC_T,NPC), NPC, XF_WORDWIDTH(SRC_T,NPC), XF_WORDWIDTH(SRC_T,NPC), (COLS>>XF_BITSHIFT(NPC)),kernel_add_2,1>
	(_src1,_src2,0,_dst,POLICY_TYPE,_src1.rows,image_width);

}


}//namespace
#endif
