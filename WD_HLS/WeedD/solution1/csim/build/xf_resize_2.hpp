
#ifndef _XF_RESIZE_2_
#define _XF_RESIZE_2_

#include "hls_stream.h"
#include "ap_int.h"
#include "common/xf_common.h"
#include "common/xf_utility.h"

#define POW16		65536
#define POW32	4294967296   // 2^32

#include "hls_stream.h"
#include "ap_int.h"
#include "common/xf_common.h"
#include "core/xf_math.h"
#include "common/xf_utility.h"

////#define POW16		65536
//
///*
// * Core Processing Block
// *
// *  PixelValue = Wx0*Wy0*data0[0] + Wx1*Wy0*data0[1] + Wx2*Wy0*data0[2] + Wx3*Wy0*data0[3] + Wx4*Wy0*data0[4] +
// *  			 Wx0*Wy1*data1[0] + Wx1*Wy1*data1[1] + Wx2*Wy1*data1[2] + Wx3*Wy1*data1[3] + Wx4*Wy1*data1[4] +
// *  			 Wx0*Wy2*data2[0] + Wx1*Wy2*data2[1] + Wx2*Wy2*data2[2] + Wx3*Wy2*data2[3] + Wx4*Wy2*data2[4] +
// *  			 Wx0*Wy3*data3[0] + Wx1*Wy3*data3[1] + Wx2*Wy3*data3[2] + Wx3*Wy3*data3[3] + Wx4*Wy3*data3[4] +
// *  			 Wx0*Wy4*data4[0] + Wx1*Wy4*data4[1] + Wx2*Wy4*data4[2] + Wx3*Wy4*data4[3] +; Wx4*Wy4*data4[4] +
// */
//template<int PLANES>
//static void CoreProcessDownArea_2(ap_uint<24> *data0,ap_uint<24> *data1,ap_uint<24> *data2,ap_uint<24> *data3,ap_uint<24> *data4,uint16_t *Wx,uint16_t *Wy,ap_uint<24> *pixel,int ioffset,int joffset)
//{
////#pragma HLS PIPELINE
//	uint32_t W[5],temp0,temp1,temp2,temp3,temp4;
//#pragma HLS ARRAY_PARTITION variable=W complete dim=1
//	uchar_t i;
//	int16_t joffset0,joffset1,joffset2,joffset3,joffset4;
//
//	joffset0 = joffset;
//	joffset1 = joffset + 1;
//	joffset2 = joffset + 2;
//	joffset3 = joffset + 3;
//	joffset4 = joffset + 4;
//	//int ic = 0;
//	double sum = 0;
//	// if(ic == 0)
//	// {
//		// for(int j=0; j<5;j++)
//		// {
//			// cout << "Wx[" << joffset+j << "] "<< float(Wx[joffset+j])*1.0/(65536) << endl;
//			// sum +=  float(Wx[joffset+j])*1.0/(65536);
//		// }
//		// cout << "Sum: " << sum << endl;
//		// sum = 0;
//		// for(int j=0; j<5;j++)
//		// {
//			// cout << "Wy[" << j << "] "<< float(Wy[j])*1.0/(65536) << endl;
//			// sum +=  float(Wy[j])*1.0/(65536);
//		// }
//		// cout << "Sum: " << sum << endl;
//	// }
//
//	//ic++;
//	for(ap_uint<5> c=0,k=0;c<PLANES;c++,k+=8)
//	{
//#pragma HLS UNROLL
//	temp0 = (Wx[joffset0]*data0[joffset].range(k+7,k) + Wx[joffset1]*data0[joffset1].range(k+7,k) + Wx[joffset2]*data0[joffset2].range(k+7,k) + Wx[joffset3]*data0[joffset3].range(k+7,k) + Wx[joffset4]*data0[joffset4].range(k+7,k));
//	W[0] = (temp0 >>8) * Wy[0];
//
//	temp1 = (Wx[joffset0]*data1[joffset].range(k+7,k) + Wx[joffset1]*data1[joffset1].range(k+7,k) + Wx[joffset2]*data1[joffset2].range(k+7,k) + Wx[joffset3]*data1[joffset3].range(k+7,k) + Wx[joffset4]*data1[joffset4].range(k+7,k));
//	W[1] = (temp1 >>8) * Wy[1];
//
//	temp2 = (Wx[joffset0]*data2[joffset].range(k+7,k) + Wx[joffset1]*data2[joffset1].range(k+7,k) + Wx[joffset2]*data2[joffset2].range(k+7,k) + Wx[joffset3]*data2[joffset3].range(k+7,k) + Wx[joffset4]*data2[joffset4].range(k+7,k));
//	W[2] = (temp2 >>8)* Wy[2];
//
//	temp3 = (Wx[joffset0]*data3[joffset].range(k+7,k) + Wx[joffset1]*data3[joffset1].range(k+7,k) + Wx[joffset2]*data3[joffset2].range(k+7,k) + Wx[joffset3]*data3[joffset3].range(k+7,k) + Wx[joffset4]*data3[joffset4].range(k+7,k));
//	W[3] = (temp3 >>8)* Wy[3];
//
//	temp4 = (Wx[joffset0]*data4[joffset].range(k+7,k) + Wx[joffset1]*data4[joffset1].range(k+7,k) + Wx[joffset2]*data4[joffset2].range(k+7,k) + Wx[joffset3]*data4[joffset3].range(k+7,k) + Wx[joffset4]*data4[joffset4].range(k+7,k));
//	W[4] = (temp4 >>8)* Wy[4];
//
//
//	pixel[ioffset].range(k+7,k) = (uchar_t)((W[0] + W[1] + W[2] + W[3] + W[4])>>24);
//	}
//}
///*
// * Processes the 8 pixel block
// * outputs 8 pixles packed into 64-bit
// */
//template<int DEPTH,int NPC,int WORDWIDTH, int DST_COLS,int PLANES>
//static XF_TNAME(DEPTH,NPC) ProcessBlockArea_2(ap_uint<13> *HOffset,uint16_t HWeight[DST_COLS][5],uint16_t *Hreq,uint16_t *Wy,XF_TNAME(DEPTH,NPC) *D0,XF_TNAME(DEPTH,NPC) *D1,XF_TNAME(DEPTH,NPC) *D2,XF_TNAME(DEPTH,NPC) *D3,XF_TNAME(DEPTH,NPC) *D4,ap_uint<13> blockstart,ap_uint<13> ind)
//{
//#pragma HLS INLINE
//	XF_PTUNAME(DEPTH) line0[5<<XF_BITSHIFT(NPC)],line1[5<<XF_BITSHIFT(NPC)],line2[5<<XF_BITSHIFT(NPC)],line3[5<<XF_BITSHIFT(NPC)],line4[5<<XF_BITSHIFT(NPC)];
//#pragma HLS ARRAY_PARTITION variable=line0 complete dim=1
//#pragma HLS ARRAY_PARTITION variable=line1 complete dim=1
//#pragma HLS ARRAY_PARTITION variable=line2 complete dim=1
//#pragma HLS ARRAY_PARTITION variable=line3 complete dim=1
//#pragma HLS ARRAY_PARTITION variable=line4 complete dim=1
//
//	//uchar_t data0[5<<XF_BITSHIFT(NPC)],data1[5<<XF_BITSHIFT(NPC)],data2[5<<XF_BITSHIFT(NPC)],data3[5<<XF_BITSHIFT(NPC)],data4[5<<XF_BITSHIFT(NPC)];
//	ap_uint<24> data0[5<<XF_BITSHIFT(NPC)*PLANES],data1[5<<XF_BITSHIFT(NPC)*PLANES],data2[5<<XF_BITSHIFT(NPC)*PLANES],data3[5<<XF_BITSHIFT(NPC)*PLANES],data4[5<<XF_BITSHIFT(NPC)*PLANES];
//#pragma HLS ARRAY_PARTITION variable=data0 complete dim=1
//#pragma HLS ARRAY_PARTITION variable=data1 complete dim=1
//#pragma HLS ARRAY_PARTITION variable=data2 complete dim=1
//#pragma HLS ARRAY_PARTITION variable=data3 complete dim=1
//#pragma HLS ARRAY_PARTITION variable=data4 complete dim=1
//
//	uint16_t Wx[5<<XF_BITSHIFT(NPC)];
//#pragma HLS ARRAY_PARTITION variable=Wx complete dim=1
//	ap_uint<24> Pixel[8];
//#pragma HLS ARRAY_PARTITION variable=Pixel complete dim=1
//
//	uchar_t i,j,k,input_read;
//	uint16_t block_start_ind,index_offset=0,xreq=0;
//
//	block_start_ind = (blockstart>>XF_BITSHIFT(NPC))<<XF_BITSHIFT(NPC);
//
//	for(i=0;i<5;i++){
//#pragma HLS unroll
//		xfExtractPixels<NPC,WORDWIDTH,XF_DEPTH(DEPTH,NPC)>(line0,D0[i],i<<XF_BITSHIFT(NPC));
//		xfExtractPixels<NPC,WORDWIDTH,XF_DEPTH(DEPTH,NPC)>(line1,D1[i],i<<XF_BITSHIFT(NPC));
//		xfExtractPixels<NPC,WORDWIDTH,XF_DEPTH(DEPTH,NPC)>(line2,D2[i],i<<XF_BITSHIFT(NPC));
//		xfExtractPixels<NPC,WORDWIDTH,XF_DEPTH(DEPTH,NPC)>(line3,D3[i],i<<XF_BITSHIFT(NPC));
//		xfExtractPixels<NPC,WORDWIDTH,XF_DEPTH(DEPTH,NPC)>(line4,D4[i],i<<XF_BITSHIFT(NPC));
//	}
//
//	if(ind != 0)
//		index_offset = Hreq[ind-1];
//	else
//		index_offset = 0;
//
//	XF_TNAME(DEPTH,NPC) val =0;
//	int shift = 0;
//
//	process_block_loop:for(i=0,j=0;i<((1<<XF_BITSHIFT(NPC)));i++,j=j+5)
//	{
//#pragma HLS UNROLL
//		xreq = Hreq[ind+i] - index_offset;
//		//input_read = (NPC==XF_NPPC1)?0:HOffset[index_offset] - block_start_ind;
//
//		if(NPC==XF_NPPC1)
//		{
//			input_read = 0;
//		}else
//		{
//			input_read = HOffset[index_offset] - block_start_ind;
//		}
////	for(int c=0,w=0;c<PLANES;c++,w+=8)
////	{
////	#pragma HLS UNROLL
//		for(k=0;k<5;k++)
//		{
//			#pragma HLS UNROLL
//			if(k < xreq)
//			{
//				data0[j + k] = line0[input_read + k];//.range(w+7,w);
//				data1[j + k] = line1[input_read + k];//.range(w+7,w);
//				data2[j + k] = line2[input_read + k];//.range(w+7,w);
//				data3[j + k] = line3[input_read + k];//.range(w+7,w);
//				data4[j + k] = line4[input_read + k];//.range(w+7,w);
//				Wx[j+k] = HWeight[ind+i][k];
//			}
//			else
//			{	// filling the remaining with zeros
//				data0[j + k] = 0;
//				data1[j + k] = 0;
//				data2[j + k] = 0;
//				data3[j + k] = 0;
//				data4[j + k] = 0;
//				Wx[j+k] = 0;
//			}
//		}
//		index_offset = Hreq[ind+i];
//
//		CoreProcessDownArea_2<PLANES>(data0,data1,data2,data3,data4,Wx,Wy,Pixel,i,j);
////		if(PLANES!=1)
////		{
//			val = Pixel[i];
////		}
////		else
////		{
////			shift = i<<XF_BITSHIFT(NPC);
////			val.range(shift+7,shift) = Pixel[i];
////		}
//
//
//	}
////	}
//	return val;
//}
//
///**
// * Stream implementation of resizing the image using area interpolation technique.
// */
//
//static uint32_t xFUdivResizeDownArea_2(unsigned short in_n, unsigned short in_d)
// {
//	 uint32_t out_div= uint32_t(in_n)*POW16/in_d;
//	 return out_div;
// }
//
//template<int SRC_ROWS,int SRC_COLS,int PLANES,int DEPTH,int NPC,int WORDWIDTH,int DST_ROWS,int DST_COLS,int SRC_TC,int DST_TC>
//void xFResizeAreaDownScale_2(xf::Mat<DEPTH, SRC_ROWS, SRC_COLS, NPC> &stream_in, xf::Mat<DEPTH, DST_ROWS, DST_COLS, NPC> &resize_out, unsigned short height, unsigned short width, unsigned short out_height, unsigned short out_width)
//{
//#pragma HLS ALLOCATION instances=xf::Inverse limit=1 function
//#pragma HLS ALLOCATION instances=xFUdivResizeDownArea_2 limit=1 function
//
//	XF_TNAME(DEPTH,NPC) lbuf_in[6][(SRC_COLS>>XF_BITSHIFT(NPC))];
//#pragma HLS ARRAY_PARTITION variable=lbuf_in complete dim=1
//#pragma HLS RESOURCE variable=lbuf_in core=RAM_T2P_BRAM
//
//	ap_uint<13> Hoffset[(SRC_COLS<<1)];
//	if (NPC!=XF_NPPC1)
//	{
//#pragma HLS ARRAY_PARTITION variable=Hoffset cyclic factor=8 dim=1
//	}
//	uint16_t Hweight[DST_COLS][5],Vweight[(SRC_ROWS<<1)];
//#pragma HLS ARRAY_PARTITION variable=Hweight complete dim=2
//	if (NPC!=XF_NPPC1)
//	{
//#pragma HLS ARRAY_PARTITION variable=Hweight cyclic factor=8 dim=1
//#pragma HLS ARRAY_PARTITION variable=Vweight cyclic factor=4 dim=1
//	}
//	uint16_t Hstart[DST_COLS],Vstart[DST_ROWS];
//
//	uint16_t Hreq[DST_COLS],Vreq[DST_ROWS];
//#pragma HLS ARRAY_PARTITION variable=Hreq cyclic factor=8 dim=1
//
//	XF_TNAME(DEPTH,NPC) D0[5],D1[5],D2[5],D3[5],D4[5];
//#pragma HLS ARRAY_PARTITION variable=D0 complete
//#pragma HLS ARRAY_PARTITION variable=D1 complete
//#pragma HLS ARRAY_PARTITION variable=D2 complete
//#pragma HLS ARRAY_PARTITION variable=D3 complete
//#pragma HLS ARRAY_PARTITION variable=D4 complete
//
//	uint16_t Wy[5];
//#pragma HLS ARRAY_PARTITION variable=Wy complete dim=1
//
//	char N;
//	ap_uint<13> x=0,i=0,j,k=0, out_i=0, out_j=0;
//	ap_int<14> Yoffset=0;
//	uint16_t start_index=0,count=0;
//	int32_t offset_temp0,offset_temp1;
//	uint32_t offset_temp0_fixed,offset_temp1_fixed;
//	uint32_t Xscale,Yscale;
//	uint32_t cellWidth,inv_cellWidth,overlaptemp;
//	int32_t Xtemp0 = 0,Xtemp1 = 0,Ytemp0 = 0,Ytemp1 = 0,temp;
//
//	ap_uint<13> block_start,read_offset;
//	uint16_t weight_index = 0, ylimit;
//	int read_index = 0, write_index = 0;
//
//	//float Xscale_float = (width<<XF_BITSHIFT(NPC))/(float)(out_width<<XF_BITSHIFT(NPC));
//	// Xscale = ((width<<XF_BITSHIFT(NPC))*POW16 / (out_width<<XF_BITSHIFT(NPC)) );
//	Xscale = xFUdivResizeDownArea_2((width<<XF_BITSHIFT(NPC)) , (out_width<<XF_BITSHIFT(NPC)) );
//
//	//float Yscale_float = height/(float)out_height;
//	// Yscale = (height*POW16 / out_height );
//	Yscale = xFUdivResizeDownArea_2(height , out_height );
//
//	Hoffset[0] = 0;
//	Hweight[0][0] = 0;Vweight[0] = 0;
//	Hstart[0] = 0;
//	Hoffset_loop:for(x=0;x<(out_width<<XF_BITSHIFT(NPC));x++)
//	{
//#pragma HLS LOOP_TRIPCOUNT min=1 max=DST_TC
//		int wind=0;
//		Xtemp0 = (uint64_t)x*Xscale;			//Xtemp0 (16.16)  Xscale (16.16)
//		Xtemp1 = Xtemp0 + Xscale;				//Xtemp0 (16.16)  Xtemp1 (16.16)
//		cellWidth = (Xscale < (((width<<XF_BITSHIFT(NPC))<<16) - Xtemp0) ? Xscale : (((width<<XF_BITSHIFT(NPC))<<16) - Xtemp0));
//		// (WIDTH<<16)-16.16   Xscale (16.16)
//		inv_cellWidth = (xf::Inverse((uint16_t)(cellWidth>> 4),4,&N)>>(N-16));
//		// shifting cellWidth by 4 to convert t0 (4.12) , inv_cellwidth is (0.16)
//
//		offset_temp0 = (Xtemp0>>16) + ((Xtemp0 & 0x0000FFFF)>0?1:0);	// Ceil(Xtemp0)
//		offset_temp1 = (Xtemp1>>16);									// floor(Xtemp1)
//
//		offset_temp1 = offset_temp1 < ((width<<XF_BITSHIFT(NPC))-1)? offset_temp1 : ((width<<XF_BITSHIFT(NPC))-1);
//		offset_temp0 = offset_temp0 < offset_temp1 ? offset_temp0 : offset_temp1;
//
//		offset_temp0_fixed = (offset_temp0<<16);	// offset_temp0 (16.0)  offset_temp0_fixed (16.16)
//		offset_temp1_fixed = (offset_temp1<<16);
//
//		if( (offset_temp0_fixed - Xtemp0) > 0x41)   // 1e-3 is 0x41 in (0.16)
//		{
//			Hoffset[k] = offset_temp0-1;
//			temp = (int64_t)( offset_temp0_fixed - Xtemp0)*inv_cellWidth;	//temp (16.32)
//			Hweight[x][wind] = (uint16_t)(temp >> 16);							// Hweight[k] (0.16)
//			k++;
//			wind++;
//			count++;
//			start_index = offset_temp0 - 1;
//		}
//		else
//			start_index = offset_temp0;
//
//		for(i=offset_temp0;i<offset_temp1;i++)
//		{
//#pragma HLS LOOP_TRIPCOUNT min=1 max=4
//			Hoffset[k] = i;
//			Hweight[x][wind] = (uint16_t)inv_cellWidth;		//0.16
//			wind++;
//			k++;
//			count++;
//		}
//		if((Xtemp1 - offset_temp1_fixed) >  0x41)   // 1e-3 is 0x41 in (0.16)
//		{
//			Hoffset[k] = offset_temp1;
//			overlaptemp = (Xtemp1 - offset_temp1_fixed)< 0x10000 ? (Xtemp1 - offset_temp1_fixed):0x10000;  //0x10000 = 1 in (1.16)
//			overlaptemp = overlaptemp < cellWidth ? overlaptemp : cellWidth;
//			Hweight[x][wind] = (uint16_t)(((uint64_t)overlaptemp * inv_cellWidth)>>16);  //Hweight[k] 0.16, (16.32) is >> 16 --> (16.16)  typecasting it gives (0.16)
//			wind++;
//			k++;
//			count++;
//		}
//		Hreq[x] = count;
//		Hstart[x] = start_index;
//	}
//
//	Vstart[0] = 0;k=0;count = 0;
//	Voffset_loop:for(x=0;x<out_height;x++)
//	{
//#pragma HLS LOOP_TRIPCOUNT min=1 max=DST_ROWS
//		count = 0;
//		Ytemp0 = ((uint64_t)(x)*Yscale);
//		Ytemp1 = (uint64_t)Ytemp0 + Yscale;
//		cellWidth = (Yscale < ((height<<16) - Ytemp0) ? Yscale : ((height<<16) - Ytemp0));
//		inv_cellWidth = (xf::Inverse((uint16_t)(cellWidth>> 4),4,&N) >> (N-16));
//
//		offset_temp0 = (Ytemp0>>16) + ((Ytemp0 & 0x0000FFFF)>0?1:0);
//		offset_temp1 = (Ytemp1>>16);
//
//		offset_temp1 = offset_temp1 < (height-1)? offset_temp1 : (height-1);
//		offset_temp0 = offset_temp0 < offset_temp1 ? offset_temp0 : offset_temp1;
//
//		offset_temp0_fixed = (offset_temp0<<16);
//		offset_temp1_fixed = (offset_temp1<<16);
//
//		if( offset_temp0_fixed - Ytemp0 >  0x41)
//		{
//			temp = (int64_t)( offset_temp0_fixed - Ytemp0)*inv_cellWidth;
//			Vweight[k] = (uint16_t)(temp >> 16);
//
//			k++;
//			count++;
//			start_index = offset_temp0 - 1;
//		}
//		else
//			start_index = offset_temp0;
//
//		for(i=offset_temp0;i<offset_temp1;i++)
//		{
//#pragma HLS LOOP_TRIPCOUNT min=1 max=4
//			Vweight[k] = (uint16_t)inv_cellWidth;
//			k++;
//			count++;
//		}
//		if((Ytemp1 - offset_temp1_fixed) >  0x41)
//		{
//			overlaptemp = (Ytemp1 - offset_temp1_fixed)< 0x10000 ? (Ytemp1 - offset_temp1_fixed):0x10000;
//			overlaptemp = overlaptemp < cellWidth ? overlaptemp : cellWidth;
//			Vweight[k] = (uint16_t)(((uint64_t)overlaptemp * inv_cellWidth)>>16);
//
//			k++;
//			count++;
//		}
//		Vreq[x] = count;
//		Vstart[x] = start_index;
//	}
//
//	uint16_t start_index_in_buffer = 0;
//	bool read_flag = 0, process_flag = 0;
//	for (int p=0;p<5;p++)
//	{
//		for (x=0;x<width;x++){
//#pragma HLS PIPELINE
//#pragma HLS LOOP_FLATTEN off
//#pragma HLS LOOP_TRIPCOUNT min=1 max=SRC_TC
//			lbuf_in[5][x] = stream_in.read(read_index++);
//			for(i=0;i<5;i++)
//			{
//			#pragma HLS UNROLL
//				lbuf_in[i][x] = lbuf_in[i+1][x];
//			}
//		}
//	}
//	XF_TNAME(DEPTH,NPC) buf_read_area_win[5][5];
//#pragma HLS ARRAY_PARTITION variable=buf_read_area_win complete dim=1
//#pragma HLS ARRAY_PARTITION variable=buf_read_area_win complete dim=2
//	outerloop:for(j=0;j<height;j++)
//	{
//#pragma HLS LOOP_TRIPCOUNT min=1 max=SRC_ROWS
//
//		if(out_j < out_height)
//		{
//			Yoffset = Vstart[out_j];
//			ylimit = Vreq[out_j];
//		}
//		else
//		{
//			Yoffset = -1;
//			ylimit = Vreq[out_j];
//		}
//		if (Yoffset != start_index_in_buffer && Yoffset != start_index_in_buffer+1)
//		{
//			process_flag = 0;
//		}
//		else
//		{
//			process_flag = 1;
//		}
//		if (Vstart[out_j] != start_index_in_buffer)
//		{
//			read_flag = 1;
//		}
//		else
//		{
//			read_flag = 0;
//		}
//		Vweightsloop:for(k=0;k<5;k++)
//		{
//#pragma HLS UNROLL
//			if(k < ylimit)
//				Wy[k] = Vweight[weight_index+k];
//			else
//				Wy[k] = 0;
//		}
//		// cout << "j: " << j << " out_j: " << out_j << " read_flag: " << read_flag << " process_flag: " << process_flag << " Yoffset: " << Yoffset << " start_index_in_buffer: " << start_index_in_buffer << endl;
//		innerloop:for(i=0;i<(width<<XF_BITSHIFT(NPC))+(5<<XF_BITSHIFT(NPC));i=i+(1<<XF_BITSHIFT(NPC)))    /// processing 8 pixels at a time
//		{
//#pragma HLS DEPENDENCE variable=lbuf_in inter false
//#pragma HLS DEPENDENCE variable=lbuf_in intra false
//#pragma HLS LOOP_FLATTEN off
//#pragma HLS PIPELINE ii=1
//#pragma HLS LOOP_TRIPCOUNT min=1 max=SRC_TC
//			XF_TNAME(DEPTH,NPC) col_buf[5];
//			if(read_flag)
//			{
//				if(i<(width<<XF_BITSHIFT(NPC)) && j<=height-5)
//				{
//					XF_TNAME(DEPTH,NPC) read_word = stream_in.read(read_index++);
//					lbuf_in[5][i>>XF_BITSHIFT(NPC)] = read_word;
//					for(int bufi=0;bufi<4;bufi++)
//					{
//					#pragma HLS UNROLL
//						XF_TNAME(DEPTH,NPC) temp_read = lbuf_in[bufi+1][i>>XF_BITSHIFT(NPC)];
//					    col_buf[bufi] = temp_read;
//						lbuf_in[bufi][i>>XF_BITSHIFT(NPC)] = temp_read;
//					}
//					lbuf_in[4][i>>XF_BITSHIFT(NPC)] = read_word;
//					col_buf[4] = read_word;
//				}
//				else
//				{
//					if(i<(width<<XF_BITSHIFT(NPC)))
//					{
//						for(int bufi=0;bufi<5;bufi++)
//						{
//						#pragma HLS UNROLL
//							XF_TNAME(DEPTH,NPC) temp_read = lbuf_in[bufi+1][i>>XF_BITSHIFT(NPC)];
//							col_buf[bufi] = temp_read;
//							lbuf_in[bufi][i>>XF_BITSHIFT(NPC)] = temp_read;
//						}
//					}
//				}
//				for(int bufi=0;bufi<5;bufi++)
//				{
//				#pragma HLS UNROLL
//					if(i<(width<<XF_BITSHIFT(NPC)))
//					{
//						buf_read_area_win[bufi][4] = col_buf[bufi];
//					}
//					else
//					{
//						buf_read_area_win[bufi][4] = 0;
//					}
//				}
//			}
//			else
//			{
//				for(int bufi=0;bufi<5;bufi++)
//				{
//				#pragma HLS UNROLL
//					if(i<(width<<XF_BITSHIFT(NPC)))
//					{
//						buf_read_area_win[bufi][4] = lbuf_in[bufi][i>>XF_BITSHIFT(NPC)];
//					}
//					else
//					{
//						buf_read_area_win[bufi][4] = 0;
//					}
//				}
//			}
//			block_start = Hstart[out_i];
//			read_offset = (block_start >> XF_BITSHIFT(NPC));
//
//			if(process_flag && out_i < (out_width<<XF_BITSHIFT(NPC)) && (read_offset+4) == i>>XF_BITSHIFT(NPC))
//			{
//
//				for(k=0;k<5;k++)
//				{
//	#pragma HLS UNROLL
//					if((read_offset+k) < width)
//					{
//						D0[k] = buf_read_area_win[0][k];
//						D1[k] = buf_read_area_win[1][k];
//						D2[k] = buf_read_area_win[2][k];
//						D3[k] = buf_read_area_win[3][k];
//						D4[k] = buf_read_area_win[4][k];
//					}else{
//						D0[k] = 0;
//						D1[k] = 0;
//						D2[k] = 0;
//						D3[k] = 0;
//						D4[k] = 0;
//					}
//				}
//				XF_TNAME(DEPTH,NPC) out_pix = ProcessBlockArea_2<DEPTH,NPC,WORDWIDTH,DST_COLS,PLANES>(Hoffset,Hweight,Hreq,Wy,D0,D1,D2,D3,D4,block_start,out_i);
//				resize_out.write(write_index++,out_pix);
//				out_i += 1<<XF_BITSHIFT(NPC);
//			}
//			for(int bufi=0;bufi<5;bufi++)
//			{
//				for(int bufj=0;bufj<4;bufj++)
//				{
//				#pragma HLS UNROLL
//					buf_read_area_win[bufi][bufj] = buf_read_area_win[bufi][bufj+1];
//				}
//			}
//		}
//		if(process_flag)
//		{
//			weight_index += ylimit;
//			out_i = 0;
//			out_j++;
//		}
//		if(read_flag)
//		{
//			start_index_in_buffer++;
//		}
//	}
//}

static void CoreProcessUpArea_2(uchar_t A0,uchar_t B0,uchar_t A1,uchar_t B1,uint32_t Wx,uint32_t Wy,uchar_t *pixel)
{
#pragma HLS PIPELINE
	uint32_t Wxy;
	int16_t val0,val1,val2;
	int64_t P1,P2,P3,P4;

	Wxy = ((uint64_t)Wx*Wy)>>32;   // Wx - 0.32, Wy-0.32  (Wx*Wy-0.64)  Wxy - 0.32
	val0 = (A0+B1-(B0+A1));
	val1 = (B0-A0);
	val2 = (A1-A0);

	P1 = ((int64_t)val0*Wxy);		// val0(16.0) * Wxy(0.32) = P1(16.32)
	P2 = ((int64_t)val1*Wx);		// val1(16.0) * Wx(0.32) = P2(16.32)
	P3 = ((int64_t)val2*Wy);		// val1(16.0) * Wy(0.32) = P3(16.32)
	P4 = ((int64_t)A0<<32);			// A0(8.0) P4(8.32)

	*pixel = (uchar_t)((P1  + P2 + P3 + P4)>>32);	// to get only integer part from sum of 8.32's , right shift by 32
}

/*
 * Processes the 8 pixel block
 * outputs 8 pixles packed into 64-bit
 */
template<int DEPTH,int NPC,int WORDWIDTH,int PLANES>
static XF_TNAME(DEPTH,NPC) ProcessBlockAreaUp_2(ap_uint<13> Offset[],uint32_t Weight[],uint32_t Yweight,XF_TNAME(DEPTH,NPC) *D0,XF_TNAME(DEPTH,NPC) *D1,ap_uint<13> blockstart,ap_uint<13> indoffset)
{
#pragma HLS INLINE
	XF_PTUNAME(DEPTH) line0[4<<XF_BITSHIFT(NPC)],line1[4<<XF_BITSHIFT(NPC)];		// holds the unpacked pixeldata
#pragma HLS ARRAY_PARTITION variable=line0 complete dim=1
#pragma HLS ARRAY_PARTITION variable=line1 complete dim=1

	uchar_t i,input_read,Pixels;
	uint16_t block_start_ind = (blockstart>>XF_BITSHIFT(NPC))<<XF_BITSHIFT(NPC);

	for(i=0;i<2;i++){
#pragma HLS unroll
		xfExtractPixels<NPC,WORDWIDTH,XF_DEPTH(DEPTH,NPC)>(line0,D0[i],i<<XF_BITSHIFT(NPC));
		xfExtractPixels<NPC,WORDWIDTH,XF_DEPTH(DEPTH,NPC)>(line1,D1[i],i<<XF_BITSHIFT(NPC));
	}

	XF_TNAME(DEPTH,NPC) val = 0;
	int shift = 0;
	process_block_loop:for(i=0;i<(1<<XF_BITSHIFT(NPC));i++)
	{
#pragma HLS UNROLL
		//input_read = (NPC == XF_NPPC1) ?0:Offset[indoffset+i] - block_start_ind;

		if(NPC == XF_NPPC1)
		{
			input_read =0;
		}
		else
		{
			input_read = Offset[indoffset+i] - block_start_ind;
		}
		for(ap_uint<5> c=0,k=0;c<3;c++,k+=8)
		{

		if(PLANES!=1)
		{
			CoreProcessUpArea_2(line0[input_read].range(k+7,k),line0[input_read+1].range(k+7,k),line1[input_read].range(k+7,k),line1[input_read+1].range(k+7,k),Weight[indoffset+i],Yweight,&Pixels);
			val.range(k+7,k) = Pixels;
		}
		else
		{
			CoreProcessUpArea_2(line0[input_read],line0[input_read+1],line1[input_read],line1[input_read+1],Weight[indoffset+i],Yweight,&Pixels);
			shift = i<<XF_BITSHIFT(NPC);
			val.range(shift+7,shift) = Pixels;
		}
		}
	}
	return val;
}
static uint64_t xFUDivAreaUp_2 (uint64_t in_n, unsigned short in_d)
{
	#pragma HLS INLINE OFF
	uint64_t out_res = in_n/in_d;
	return out_res;
}

/**
 * Upscaling - Area Interpolation
 */
template<int SRC_ROWS,int SRC_COLS,int PLANES,int DEPTH,int NPC,int WORDWIDTH,int DST_ROWS,int DST_COLS,int SRC_TC,int DST_TC>
void xFResizeAreaUpScale_2(xf::Mat<DEPTH, SRC_ROWS, SRC_COLS, NPC> &stream_in, xf::Mat<DEPTH, DST_ROWS, DST_COLS, NPC> &resize_out, unsigned short height, unsigned short width, unsigned short out_height, unsigned short out_width)
{
	XF_TNAME(DEPTH,NPC) lbuf_in0[SRC_COLS>>XF_BITSHIFT(NPC)];		// input buffers (ping pong)
	XF_TNAME(DEPTH,NPC) lbuf_in1[SRC_COLS>>XF_BITSHIFT(NPC)];		// input buffers (ping pong)
	XF_TNAME(DEPTH,NPC) lbuf_in2[SRC_COLS>>XF_BITSHIFT(NPC)];		// input buffers (ping pong)
	ap_uint<13> Hoffset[DST_COLS],Voffset[DST_ROWS];			// offset buffers which indicate from where the data is to be read
if (NPC!=XF_NPPC1)
{
#pragma HLS ARRAY_PARTITION variable=Hoffset cyclic factor=8 dim=1
}
	uint32_t Hweight[DST_COLS],Vweight[DST_ROWS+1];		// buffers which hold the weights for each corresponding input pixels
if (NPC!=XF_NPPC1)
{
#pragma HLS ARRAY_PARTITION variable=Hweight cyclic factor=8 dim=1
}
	uchar_t idx=0,repcount=0,datacount=0;
	uint16_t Hstart[(DST_COLS>>XF_BITSHIFT(NPC)) + 1];						// Buffers holding the starting offset for each 8pixel block
	ap_uint<13> x,read_line,block_ind,block_start,bufferIndex;
	ap_uint<13> prev_y=-1,j=0,i=0,k,ii=0,Yoffset,offset_temp,prev_offset_temp=0;
	uint32_t Xscale,Yscale,Yweight;
	uint64_t inv_Xscale,inv_Yscale;
	int64_t Xtemp = 0,Ytemp = 0;
	int read_index = 0, write_index = 0;
	//float Xscale_float,Yscale_float,inv_Xscale_float,inv_Yscale_float;
	XF_TNAME(DEPTH,NPC) D0[2],D1[2];			// Holds the packed pixels required for processing

//	Xscale_float = (width<<XF_BITSHIFT(NPC))/(float)(out_width<<XF_BITSHIFT(NPC));
//	Yscale_float = height/(float)out_height;
//	inv_Xscale_float = (out_width<<XF_BITSHIFT(NPC))/(float)(width<<XF_BITSHIFT(NPC));
//	inv_Yscale_float = out_height/(float)height;

#pragma HLS ALLOCATION instances=xFUDivAreaUp_2 limit=1 function
	Xscale = xFUDivAreaUp_2( (uint64_t)(width<<XF_BITSHIFT(NPC))*POW32 , (out_width<<XF_BITSHIFT(NPC)));
	Yscale = xFUDivAreaUp_2( (uint64_t)height*POW32 , out_height);
	inv_Xscale = xFUDivAreaUp_2( (uint64_t)(out_width<<XF_BITSHIFT(NPC))*POW32 , (width<<XF_BITSHIFT(NPC)));
	inv_Yscale = xFUDivAreaUp_2( (uint64_t)out_height*POW32 , height);

	/* Calculating required Horizontal parameters*/
	Hstart[0] = 0;
	Hoffset_loop:for(x=0,ii=0;x<(out_width<<XF_BITSHIFT(NPC));x++)
	{
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min=1 max=DST_COLS
		offset_temp = ((uint64_t)x*Xscale+429496)>>32;					 		// Extracting only the integer part,x(16.0) Xscale(0.32)
		Xtemp = ((uint64_t)(x+1)<<32) - (offset_temp + 1)*inv_Xscale;			//inv_Xscale 32.32
		if(Xtemp < 0)
			Hweight[x] = 0;
		else
			Hweight[x] = (uint32_t)(Xtemp & 0xFFFFFFFF); // Extracting fractional part

		repcount++;
		if(prev_offset_temp != offset_temp){
			datacount = datacount + repcount;
			repcount = 0;
		}
		if(datacount >= (1<<XF_BITSHIFT(NPC)))
		{
			datacount = datacount - (1<<XF_BITSHIFT(NPC));
			//Hstart[ii+1] = datacount>0?prev_offset_temp:(prev_offset_temp+1);
			if(datacount > 0)
			{
				Hstart[ii+1] = prev_offset_temp;
			}
			else
			{
				Hstart[ii+1] = prev_offset_temp + 1;
			}
			ii++;
		}
		Hoffset[x] = offset_temp;
		prev_offset_temp = offset_temp;
	}

	/* Calculating required Vertical parameters*/
	Voffset_loop:for(x=0;x<out_height;x++)
	{
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min=1 max=DST_ROWS

		offset_temp = ((uint64_t)x*Yscale+429496)>>32;				// Yscale(0.32)  Extracting only the integer part
		Ytemp = ((uint64_t)(x+1)<<32) - (offset_temp + 1)*inv_Yscale;
		if(Ytemp < 0)
			Vweight[x] = 0;
		else
			Vweight[x] = offset_temp<(height-1)?(uint32_t)(Ytemp & 0xFFFFFFFF):0;

		//Voffset[x] = (offset_temp+1)<(height)?(offset_temp+1):height;

		if((offset_temp)<height)
		{
			Voffset[x] = (offset_temp);
		}
		else
		{
			Voffset[x] = height-1;
		}
	}

	idx=0;

	bool read_flag=0;
	ap_uint<2> l0=0,l1=1,l2=2,read_into=2;
	ap_uint<16> lind0=0,lind1=1,lind2=65535,out_j=0;
	for (x=0;x<width;x++){
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min=1 max = SRC_TC
		XF_TNAME(DEPTH,NPC) tmp_in = stream_in.read(read_index++);
		lbuf_in0[x] = tmp_in;
	}
	out_j++;
	for (x=0;x<width;x++){
#pragma HLS pipeline
#pragma HLS LOOP_TRIPCOUNT min=1 max = SRC_TC
		XF_TNAME(DEPTH,NPC) tmp_in = stream_in.read(read_index++);
		lbuf_in1[x] = tmp_in;
	}
	out_j++;

	outerloop:for(j=0;j<out_height;j++)
	{
#pragma HLS LOOP_TRIPCOUNT min=1 max = DST_ROWS
		if(read_flag)
		{
			if(read_into==2)
			{
				lind2 = out_j;
			}
			else if(read_into==1)
			{
				lind1 = out_j;
			}
			else
			{
				lind0 = out_j;
			}
			out_j++;
		}
		Yoffset = Voffset[j];		// row to be read
		Yweight = Vweight[j];		// weight of the next row

		if(Yoffset == lind0 && (Yoffset+1) == lind1)
		{
			read_into = 2;
			l0 = 0;
			l1 = 1;
		}
		else if(Yoffset == lind1 && (Yoffset+1) == lind2)
		{
			read_into = 0;
			l0 = 1;
			l1 = 2;
		}
		else if(Yoffset == lind2 && (Yoffset+1) == lind0)
		{
			read_into = 1;
			l0 = 2;
			l1 = 0;
		}

		if(j < out_height-1)
		{
			if(Voffset[j+1] != 	Voffset[j])
			{
				read_flag = 1;
			}
			else
			{
				read_flag = 0;
			}
		}
		else
		{
			read_flag = 0;
		}

		innerloop:for(i=0;i<(out_width<<XF_BITSHIFT(NPC));i=i+(1<<XF_BITSHIFT(NPC)))    ///loop on column  --  processing 8 pixels at a time
		{
#pragma HLS PIPELINE
#pragma HLS LOOP_FLATTEN OFF
#pragma HLS LOOP_TRIPCOUNT min=1 max=DST_TC avg=DST_TC
			block_ind = i >> XF_BITSHIFT(NPC);
			block_start = (NPC == XF_NPPC1) ? (ap_uint<13>)Hoffset[block_ind]:(ap_uint<13>)Hstart[block_ind];	// block_start is index of the input pixel to be read in image dimesions
			bufferIndex = block_start>>XF_BITSHIFT(NPC);
			if(read_flag && i<width<<XF_BITSHIFT(NPC) && out_j < height)
			{
				if(read_into==0)
				{
					lbuf_in0[i>>XF_BITSHIFT(NPC)] = stream_in.read(read_index++);
					for(k=0;k<2;k++)
					{
		#pragma HLS UNROLL
						if((k+bufferIndex) < width)
						{
							D0[k] = lbuf_in1[bufferIndex+k];
							D1[k] = lbuf_in2[bufferIndex+k];
						}
						else
						{
							D0[k] = 0;
							D1[k] = 0;
						}
					}
				}
				else if(read_into==1)
				{
					lbuf_in1[i>>XF_BITSHIFT(NPC)] = stream_in.read(read_index++);
					for(k=0;k<2;k++)
					{
		#pragma HLS UNROLL
						if((k+bufferIndex) < width)
						{
							D0[k] = lbuf_in2[bufferIndex+k];
							D1[k] = lbuf_in0[bufferIndex+k];
						}
						else
						{
							D0[k] = 0;
							D1[k] = 0;
						}
					}
				}
				else
				{
					lbuf_in2[i>>XF_BITSHIFT(NPC)] = stream_in.read(read_index++);
					for(k=0;k<2;k++)
					{
		#pragma HLS UNROLL
						if((k+bufferIndex) < width)
						{
							D0[k] = lbuf_in0[bufferIndex+k];
							D1[k] = lbuf_in1[bufferIndex+k];
						}
						else
						{
							D0[k] = 0;
							D1[k] = 0;
						}
					}
				}
			}
			else
			{
				for(k=0;k<2;k++)
				{
	#pragma HLS UNROLL
					if((k+bufferIndex) < width)
					{
						if(l0==0)
						{
							D0[k] = lbuf_in0[bufferIndex+k];
							if(l1==1)
								D1[k] = lbuf_in1[bufferIndex+k];
							else
								D1[k] = lbuf_in2[bufferIndex+k];
						}
						else if(l0==1)
						{
							D0[k] = lbuf_in1[bufferIndex+k];
							if(l1==0)
								D1[k] = lbuf_in0[bufferIndex+k];
							else
								D1[k] = lbuf_in2[bufferIndex+k];
						}
						else
						{
							D0[k] = lbuf_in2[bufferIndex+k];
							if(l1==0)
								D1[k] = lbuf_in0[bufferIndex+k];
							else
								D1[k] = lbuf_in1[bufferIndex+k];
						}
					}
					else
					{
						D0[k] = 0;
						D1[k] = 0;
					}
				}
			}
			XF_TNAME(DEPTH,NPC) out_pix = ProcessBlockAreaUp_2<DEPTH,NPC,WORDWIDTH,PLANES>(Hoffset,Hweight,Yweight,D0,D1,block_start,i);
			resize_out.write(write_index++,out_pix);
		}
	}
}

/**
 * Image resizing function.
 */

#pragma SDS data mem_attribute("_src.data":NON_CACHEABLE|PHYSICAL_CONTIGUOUS)
#pragma SDS data mem_attribute("_dst.data":NON_CACHEABLE|PHYSICAL_CONTIGUOUS)
#pragma SDS data access_pattern("_src.data":SEQUENTIAL, "_dst.data":SEQUENTIAL)
//#pragma SDS data data_mover("_src.data":AXIDMA_SIMPLE)
//#pragma SDS data data_mover("_dst.data":AXIDMA_SIMPLE)
#pragma SDS data copy("_src.data"[0:"_src.size"], "_dst.data"[0:"_dst.size"])
template<int INTERPOLATION_TYPE, int TYPE, int SRC_ROWS, int SRC_COLS, int DST_ROWS, int DST_COLS, int NPC, int MAX_DOWN_SCALE>
void resize_2(xf::Mat<TYPE, SRC_ROWS, SRC_COLS, NPC> & _src, xf::Mat<TYPE, DST_ROWS, DST_COLS, NPC> & _dst)
{
#pragma HLS INLINE OFF

	assert(  ((INTERPOLATION_TYPE == XF_INTERPOLATION_BILINEAR)
			||(INTERPOLATION_TYPE == XF_INTERPOLATION_AREA)) && "Incorrect parameters interpolation type");

	if(INTERPOLATION_TYPE == XF_INTERPOLATION_AREA)
		assert( (NPC == XF_NPPC1)  && "Supported Operation Mode for Area Interpolation is XF_NPPC1. XF_NPPC2, XF_NPPC4 and XF_NPPC8 are not supported ");
	else
		assert( ((NPC == XF_NPPC8) || (NPC == XF_NPPC4) || (NPC == XF_NPPC2) || (NPC == XF_NPPC1) )  && "Supported Operation Modes XF_NPPC8, XF_NPPC4, XF_NPPC2 and XF_NPPC1");

	if(NPC == XF_NPPC2)
		assert((((_src.cols & 1) == 0) && ((_dst.cols & 1) == 0)) && "Input and ouput image widths should be multiples of 2 in NPPC2 mode");
	if(NPC == XF_NPPC4)
		assert((((_src.cols & 3) == 0) && ((_dst.cols & 3) == 0)) && "Input and ouput image widths should be multiples of 4 in NPPC4 mode");
	if(NPC == XF_NPPC8)
		assert((((_src.cols & 7) == 0) && ((_dst.cols & 7) == 0)) && "Input and ouput image widths should be multiples of 8 in NPPC8 mode");

	if(INTERPOLATION_TYPE == XF_INTERPOLATION_AREA)
	{

		assert(((_src.rows <= SRC_ROWS ) && (_src.cols <= SRC_COLS)) && "SRC_ROWS and SRC_COLS should be greater than input image");

		assert(((_dst.rows <= DST_ROWS ) && (_dst.cols <= DST_COLS)) && "DST_ROWS and DST_COLS should be greater than output image");
		unsigned short input_height = _src.rows;
		unsigned short input_width = _src.cols >> XF_BITSHIFT(NPC);
		unsigned short output_height = _dst.rows;
		unsigned short output_width = _dst.cols >> XF_BITSHIFT(NPC);

		if ((SRC_ROWS < DST_ROWS) || (SRC_COLS < DST_COLS)){
			xFResizeAreaUpScale_2<SRC_ROWS,SRC_COLS,XF_CHANNELS(TYPE,NPC),TYPE,NPC,XF_WORDWIDTH(TYPE,NPC),   \
			DST_ROWS,DST_COLS,(SRC_COLS>>XF_BITSHIFT(NPC)),(DST_COLS>>XF_BITSHIFT(NPC))> \
			(_src,_dst, input_height, input_width, output_height, output_width);
		}
		return;
	}
}
#endif
