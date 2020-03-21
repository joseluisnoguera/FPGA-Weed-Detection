// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "merge.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic merge::ap_const_logic_0 = sc_dt::Log_0;
const bool merge::ap_const_boolean_1 = true;
const sc_logic merge::ap_const_logic_1 = sc_dt::Log_1;
const sc_lv<24> merge::ap_const_lv24_0 = "000000000000000000000000";
const sc_lv<2> merge::ap_const_lv2_0 = "00";
const sc_lv<2> merge::ap_const_lv2_1 = "1";

merge::merge(sc_module_name name) : sc_module(name), mVcdFile(0) {
    merge_Block_crit_e_U0 = new merge_Block_crit_e("merge_Block_crit_e_U0");
    merge_Block_crit_e_U0->ap_clk(ap_clk);
    merge_Block_crit_e_U0->ap_rst(ap_rst);
    merge_Block_crit_e_U0->ap_start(merge_Block_crit_e_U0_ap_start);
    merge_Block_crit_e_U0->ap_done(merge_Block_crit_e_U0_ap_done);
    merge_Block_crit_e_U0->ap_continue(merge_Block_crit_e_U0_ap_continue);
    merge_Block_crit_e_U0->ap_idle(merge_Block_crit_e_U0_ap_idle);
    merge_Block_crit_e_U0->ap_ready(merge_Block_crit_e_U0_ap_ready);
    merge_Block_crit_e_U0->p_src1_cols_load7_out_out_din(merge_Block_crit_e_U0_p_src1_cols_load7_out_out_din);
    merge_Block_crit_e_U0->p_src1_cols_load7_out_out_full_n(p_src1_cols_load7_loc_1_full_n);
    merge_Block_crit_e_U0->p_src1_cols_load7_out_out_write(merge_Block_crit_e_U0_p_src1_cols_load7_out_out_write);
    merge_Loop_Read_Mat_U0 = new merge_Loop_Read_Mat_s("merge_Loop_Read_Mat_U0");
    merge_Loop_Read_Mat_U0->ap_clk(ap_clk);
    merge_Loop_Read_Mat_U0->ap_rst(ap_rst);
    merge_Loop_Read_Mat_U0->ap_start(merge_Loop_Read_Mat_U0_ap_start);
    merge_Loop_Read_Mat_U0->start_full_n(start_for_xfChannelCombine_U0_full_n);
    merge_Loop_Read_Mat_U0->ap_done(merge_Loop_Read_Mat_U0_ap_done);
    merge_Loop_Read_Mat_U0->ap_continue(merge_Loop_Read_Mat_U0_ap_continue);
    merge_Loop_Read_Mat_U0->ap_idle(merge_Loop_Read_Mat_U0_ap_idle);
    merge_Loop_Read_Mat_U0->ap_ready(merge_Loop_Read_Mat_U0_ap_ready);
    merge_Loop_Read_Mat_U0->start_out(merge_Loop_Read_Mat_U0_start_out);
    merge_Loop_Read_Mat_U0->start_write(merge_Loop_Read_Mat_U0_start_write);
    merge_Loop_Read_Mat_U0->p_src1_cols_load7_loc_dout(p_src1_cols_load7_loc_1_dout);
    merge_Loop_Read_Mat_U0->p_src1_cols_load7_loc_empty_n(p_src1_cols_load7_loc_1_empty_n);
    merge_Loop_Read_Mat_U0->p_src1_cols_load7_loc_read(merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_read);
    merge_Loop_Read_Mat_U0->p_src1_data_V_dout(p_src1_data_V_dout);
    merge_Loop_Read_Mat_U0->p_src1_data_V_empty_n(p_src1_data_V_empty_n);
    merge_Loop_Read_Mat_U0->p_src1_data_V_read(merge_Loop_Read_Mat_U0_p_src1_data_V_read);
    merge_Loop_Read_Mat_U0->p_in1_V_V_din(merge_Loop_Read_Mat_U0_p_in1_V_V_din);
    merge_Loop_Read_Mat_U0->p_in1_V_V_full_n(p_in1_V_V_full_n);
    merge_Loop_Read_Mat_U0->p_in1_V_V_write(merge_Loop_Read_Mat_U0_p_in1_V_V_write);
    merge_Loop_Read_Mat_U0->p_src2_data_V_dout(p_src2_data_V_dout);
    merge_Loop_Read_Mat_U0->p_src2_data_V_empty_n(p_src2_data_V_empty_n);
    merge_Loop_Read_Mat_U0->p_src2_data_V_read(merge_Loop_Read_Mat_U0_p_src2_data_V_read);
    merge_Loop_Read_Mat_U0->p_in2_V_V_din(merge_Loop_Read_Mat_U0_p_in2_V_V_din);
    merge_Loop_Read_Mat_U0->p_in2_V_V_full_n(p_in2_V_V_full_n);
    merge_Loop_Read_Mat_U0->p_in2_V_V_write(merge_Loop_Read_Mat_U0_p_in2_V_V_write);
    merge_Loop_Read_Mat_U0->p_in3_V_V_din(merge_Loop_Read_Mat_U0_p_in3_V_V_din);
    merge_Loop_Read_Mat_U0->p_in3_V_V_full_n(p_in3_V_V_full_n);
    merge_Loop_Read_Mat_U0->p_in3_V_V_write(merge_Loop_Read_Mat_U0_p_in3_V_V_write);
    merge_Loop_Read_Mat_U0->p_src1_cols_load7_loc_out_din(merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_din);
    merge_Loop_Read_Mat_U0->p_src1_cols_load7_loc_out_full_n(p_src1_cols_load7_loc_full_n);
    merge_Loop_Read_Mat_U0->p_src1_cols_load7_loc_out_write(merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_write);
    xfChannelCombine_U0 = new xfChannelCombine("xfChannelCombine_U0");
    xfChannelCombine_U0->ap_clk(ap_clk);
    xfChannelCombine_U0->ap_rst(ap_rst);
    xfChannelCombine_U0->ap_start(xfChannelCombine_U0_ap_start);
    xfChannelCombine_U0->start_full_n(start_for_merge_Loop_Write_Mat_U0_full_n);
    xfChannelCombine_U0->ap_done(xfChannelCombine_U0_ap_done);
    xfChannelCombine_U0->ap_continue(xfChannelCombine_U0_ap_continue);
    xfChannelCombine_U0->ap_idle(xfChannelCombine_U0_ap_idle);
    xfChannelCombine_U0->ap_ready(xfChannelCombine_U0_ap_ready);
    xfChannelCombine_U0->start_out(xfChannelCombine_U0_start_out);
    xfChannelCombine_U0->start_write(xfChannelCombine_U0_start_write);
    xfChannelCombine_U0->p_in1_V_V_dout(p_in1_V_V_dout);
    xfChannelCombine_U0->p_in1_V_V_empty_n(p_in1_V_V_empty_n);
    xfChannelCombine_U0->p_in1_V_V_read(xfChannelCombine_U0_p_in1_V_V_read);
    xfChannelCombine_U0->p_in2_V_V_dout(p_in2_V_V_dout);
    xfChannelCombine_U0->p_in2_V_V_empty_n(p_in2_V_V_empty_n);
    xfChannelCombine_U0->p_in2_V_V_read(xfChannelCombine_U0_p_in2_V_V_read);
    xfChannelCombine_U0->p_in3_V_V_dout(p_in3_V_V_dout);
    xfChannelCombine_U0->p_in3_V_V_empty_n(p_in3_V_V_empty_n);
    xfChannelCombine_U0->p_in3_V_V_read(xfChannelCombine_U0_p_in3_V_V_read);
    xfChannelCombine_U0->p_out_V_V_din(xfChannelCombine_U0_p_out_V_V_din);
    xfChannelCombine_U0->p_out_V_V_full_n(p_out_V_V_full_n);
    xfChannelCombine_U0->p_out_V_V_write(xfChannelCombine_U0_p_out_V_V_write);
    xfChannelCombine_U0->p_src1_cols_load7_loc_dout(p_src1_cols_load7_loc_dout);
    xfChannelCombine_U0->p_src1_cols_load7_loc_empty_n(p_src1_cols_load7_loc_empty_n);
    xfChannelCombine_U0->p_src1_cols_load7_loc_read(xfChannelCombine_U0_p_src1_cols_load7_loc_read);
    merge_Loop_Write_Mat_U0 = new merge_Loop_Write_Mat("merge_Loop_Write_Mat_U0");
    merge_Loop_Write_Mat_U0->ap_clk(ap_clk);
    merge_Loop_Write_Mat_U0->ap_rst(ap_rst);
    merge_Loop_Write_Mat_U0->ap_start(merge_Loop_Write_Mat_U0_ap_start);
    merge_Loop_Write_Mat_U0->ap_done(merge_Loop_Write_Mat_U0_ap_done);
    merge_Loop_Write_Mat_U0->ap_continue(merge_Loop_Write_Mat_U0_ap_continue);
    merge_Loop_Write_Mat_U0->ap_idle(merge_Loop_Write_Mat_U0_ap_idle);
    merge_Loop_Write_Mat_U0->ap_ready(merge_Loop_Write_Mat_U0_ap_ready);
    merge_Loop_Write_Mat_U0->p_out_V_V_dout(p_out_V_V_dout);
    merge_Loop_Write_Mat_U0->p_out_V_V_empty_n(p_out_V_V_empty_n);
    merge_Loop_Write_Mat_U0->p_out_V_V_read(merge_Loop_Write_Mat_U0_p_out_V_V_read);
    merge_Loop_Write_Mat_U0->p_dst_data_V_din(merge_Loop_Write_Mat_U0_p_dst_data_V_din);
    merge_Loop_Write_Mat_U0->p_dst_data_V_full_n(p_dst_data_V_full_n);
    merge_Loop_Write_Mat_U0->p_dst_data_V_write(merge_Loop_Write_Mat_U0_p_dst_data_V_write);
    p_src1_cols_load7_loc_1_U = new fifo_w10_d2_A_x3("p_src1_cols_load7_loc_1_U");
    p_src1_cols_load7_loc_1_U->clk(ap_clk);
    p_src1_cols_load7_loc_1_U->reset(ap_rst);
    p_src1_cols_load7_loc_1_U->if_read_ce(ap_var_for_const0);
    p_src1_cols_load7_loc_1_U->if_write_ce(ap_var_for_const0);
    p_src1_cols_load7_loc_1_U->if_din(merge_Block_crit_e_U0_p_src1_cols_load7_out_out_din);
    p_src1_cols_load7_loc_1_U->if_full_n(p_src1_cols_load7_loc_1_full_n);
    p_src1_cols_load7_loc_1_U->if_write(merge_Block_crit_e_U0_p_src1_cols_load7_out_out_write);
    p_src1_cols_load7_loc_1_U->if_dout(p_src1_cols_load7_loc_1_dout);
    p_src1_cols_load7_loc_1_U->if_empty_n(p_src1_cols_load7_loc_1_empty_n);
    p_src1_cols_load7_loc_1_U->if_read(merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_read);
    p_in1_V_V_U = new fifo_w8_d2_A_x2("p_in1_V_V_U");
    p_in1_V_V_U->clk(ap_clk);
    p_in1_V_V_U->reset(ap_rst);
    p_in1_V_V_U->if_read_ce(ap_var_for_const0);
    p_in1_V_V_U->if_write_ce(ap_var_for_const0);
    p_in1_V_V_U->if_din(merge_Loop_Read_Mat_U0_p_in1_V_V_din);
    p_in1_V_V_U->if_full_n(p_in1_V_V_full_n);
    p_in1_V_V_U->if_write(merge_Loop_Read_Mat_U0_p_in1_V_V_write);
    p_in1_V_V_U->if_dout(p_in1_V_V_dout);
    p_in1_V_V_U->if_empty_n(p_in1_V_V_empty_n);
    p_in1_V_V_U->if_read(xfChannelCombine_U0_p_in1_V_V_read);
    p_in2_V_V_U = new fifo_w8_d2_A_x2("p_in2_V_V_U");
    p_in2_V_V_U->clk(ap_clk);
    p_in2_V_V_U->reset(ap_rst);
    p_in2_V_V_U->if_read_ce(ap_var_for_const0);
    p_in2_V_V_U->if_write_ce(ap_var_for_const0);
    p_in2_V_V_U->if_din(merge_Loop_Read_Mat_U0_p_in2_V_V_din);
    p_in2_V_V_U->if_full_n(p_in2_V_V_full_n);
    p_in2_V_V_U->if_write(merge_Loop_Read_Mat_U0_p_in2_V_V_write);
    p_in2_V_V_U->if_dout(p_in2_V_V_dout);
    p_in2_V_V_U->if_empty_n(p_in2_V_V_empty_n);
    p_in2_V_V_U->if_read(xfChannelCombine_U0_p_in2_V_V_read);
    p_in3_V_V_U = new fifo_w8_d2_A_x2("p_in3_V_V_U");
    p_in3_V_V_U->clk(ap_clk);
    p_in3_V_V_U->reset(ap_rst);
    p_in3_V_V_U->if_read_ce(ap_var_for_const0);
    p_in3_V_V_U->if_write_ce(ap_var_for_const0);
    p_in3_V_V_U->if_din(merge_Loop_Read_Mat_U0_p_in3_V_V_din);
    p_in3_V_V_U->if_full_n(p_in3_V_V_full_n);
    p_in3_V_V_U->if_write(merge_Loop_Read_Mat_U0_p_in3_V_V_write);
    p_in3_V_V_U->if_dout(p_in3_V_V_dout);
    p_in3_V_V_U->if_empty_n(p_in3_V_V_empty_n);
    p_in3_V_V_U->if_read(xfChannelCombine_U0_p_in3_V_V_read);
    p_src1_cols_load7_loc_U = new fifo_w10_d2_A_x3("p_src1_cols_load7_loc_U");
    p_src1_cols_load7_loc_U->clk(ap_clk);
    p_src1_cols_load7_loc_U->reset(ap_rst);
    p_src1_cols_load7_loc_U->if_read_ce(ap_var_for_const0);
    p_src1_cols_load7_loc_U->if_write_ce(ap_var_for_const0);
    p_src1_cols_load7_loc_U->if_din(merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_din);
    p_src1_cols_load7_loc_U->if_full_n(p_src1_cols_load7_loc_full_n);
    p_src1_cols_load7_loc_U->if_write(merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_write);
    p_src1_cols_load7_loc_U->if_dout(p_src1_cols_load7_loc_dout);
    p_src1_cols_load7_loc_U->if_empty_n(p_src1_cols_load7_loc_empty_n);
    p_src1_cols_load7_loc_U->if_read(xfChannelCombine_U0_p_src1_cols_load7_loc_read);
    p_out_V_V_U = new fifo_w24_d2_A_x3("p_out_V_V_U");
    p_out_V_V_U->clk(ap_clk);
    p_out_V_V_U->reset(ap_rst);
    p_out_V_V_U->if_read_ce(ap_var_for_const0);
    p_out_V_V_U->if_write_ce(ap_var_for_const0);
    p_out_V_V_U->if_din(xfChannelCombine_U0_p_out_V_V_din);
    p_out_V_V_U->if_full_n(p_out_V_V_full_n);
    p_out_V_V_U->if_write(xfChannelCombine_U0_p_out_V_V_write);
    p_out_V_V_U->if_dout(p_out_V_V_dout);
    p_out_V_V_U->if_empty_n(p_out_V_V_empty_n);
    p_out_V_V_U->if_read(merge_Loop_Write_Mat_U0_p_out_V_V_read);
    start_for_xfChann8jQ_U = new start_for_xfChann8jQ("start_for_xfChann8jQ_U");
    start_for_xfChann8jQ_U->clk(ap_clk);
    start_for_xfChann8jQ_U->reset(ap_rst);
    start_for_xfChann8jQ_U->if_read_ce(ap_var_for_const0);
    start_for_xfChann8jQ_U->if_write_ce(ap_var_for_const0);
    start_for_xfChann8jQ_U->if_din(start_for_xfChannelCombine_U0_din);
    start_for_xfChann8jQ_U->if_full_n(start_for_xfChannelCombine_U0_full_n);
    start_for_xfChann8jQ_U->if_write(merge_Loop_Read_Mat_U0_start_write);
    start_for_xfChann8jQ_U->if_dout(start_for_xfChannelCombine_U0_dout);
    start_for_xfChann8jQ_U->if_empty_n(start_for_xfChannelCombine_U0_empty_n);
    start_for_xfChann8jQ_U->if_read(xfChannelCombine_U0_ap_ready);
    start_for_merge_L9j0_U = new start_for_merge_L9j0("start_for_merge_L9j0_U");
    start_for_merge_L9j0_U->clk(ap_clk);
    start_for_merge_L9j0_U->reset(ap_rst);
    start_for_merge_L9j0_U->if_read_ce(ap_var_for_const0);
    start_for_merge_L9j0_U->if_write_ce(ap_var_for_const0);
    start_for_merge_L9j0_U->if_din(start_for_merge_Loop_Write_Mat_U0_din);
    start_for_merge_L9j0_U->if_full_n(start_for_merge_Loop_Write_Mat_U0_full_n);
    start_for_merge_L9j0_U->if_write(xfChannelCombine_U0_start_write);
    start_for_merge_L9j0_U->if_dout(start_for_merge_Loop_Write_Mat_U0_dout);
    start_for_merge_L9j0_U->if_empty_n(start_for_merge_Loop_Write_Mat_U0_empty_n);
    start_for_merge_L9j0_U->if_read(merge_Loop_Write_Mat_U0_ap_ready);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( merge_Loop_Write_Mat_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( merge_Block_crit_e_U0_ap_idle );
    sensitive << ( merge_Loop_Read_Mat_U0_ap_idle );
    sensitive << ( xfChannelCombine_U0_ap_idle );
    sensitive << ( merge_Loop_Write_Mat_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( internal_ap_ready );

    SC_METHOD(thread_ap_sync_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( merge_Loop_Write_Mat_U0_ap_done );

    SC_METHOD(thread_ap_sync_merge_Block_crit_e_U0_ap_ready);
    sensitive << ( merge_Block_crit_e_U0_ap_ready );
    sensitive << ( ap_sync_reg_merge_Block_crit_e_U0_ap_ready );

    SC_METHOD(thread_ap_sync_merge_Loop_Read_Mat_U0_ap_ready);
    sensitive << ( merge_Loop_Read_Mat_U0_ap_ready );
    sensitive << ( ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( ap_sync_merge_Block_crit_e_U0_ap_ready );
    sensitive << ( ap_sync_merge_Loop_Read_Mat_U0_ap_ready );

    SC_METHOD(thread_internal_ap_ready);
    sensitive << ( ap_sync_ready );

    SC_METHOD(thread_merge_Block_crit_e_U0_ap_continue);

    SC_METHOD(thread_merge_Block_crit_e_U0_ap_start);
    sensitive << ( real_start );
    sensitive << ( ap_sync_reg_merge_Block_crit_e_U0_ap_ready );

    SC_METHOD(thread_merge_Block_crit_e_U0_start_full_n);

    SC_METHOD(thread_merge_Block_crit_e_U0_start_write);

    SC_METHOD(thread_merge_Loop_Read_Mat_U0_ap_continue);

    SC_METHOD(thread_merge_Loop_Read_Mat_U0_ap_start);
    sensitive << ( real_start );
    sensitive << ( ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready );

    SC_METHOD(thread_merge_Loop_Write_Mat_U0_ap_continue);
    sensitive << ( ap_continue );

    SC_METHOD(thread_merge_Loop_Write_Mat_U0_ap_start);
    sensitive << ( start_for_merge_Loop_Write_Mat_U0_empty_n );

    SC_METHOD(thread_merge_Loop_Write_Mat_U0_start_full_n);

    SC_METHOD(thread_merge_Loop_Write_Mat_U0_start_write);

    SC_METHOD(thread_p_dst_data_V_din);
    sensitive << ( merge_Loop_Write_Mat_U0_p_dst_data_V_din );

    SC_METHOD(thread_p_dst_data_V_write);
    sensitive << ( merge_Loop_Write_Mat_U0_p_dst_data_V_write );

    SC_METHOD(thread_p_src1_data_V_read);
    sensitive << ( merge_Loop_Read_Mat_U0_p_src1_data_V_read );

    SC_METHOD(thread_p_src2_data_V_read);
    sensitive << ( merge_Loop_Read_Mat_U0_p_src2_data_V_read );

    SC_METHOD(thread_real_start);
    sensitive << ( ap_start );
    sensitive << ( start_full_n );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_start_for_merge_Loop_Write_Mat_U0_din);

    SC_METHOD(thread_start_for_xfChannelCombine_U0_din);

    SC_METHOD(thread_start_out);
    sensitive << ( real_start );

    SC_METHOD(thread_start_write);
    sensitive << ( real_start );
    sensitive << ( start_once_reg );

    SC_METHOD(thread_xfChannelCombine_U0_ap_continue);

    SC_METHOD(thread_xfChannelCombine_U0_ap_start);
    sensitive << ( start_for_xfChannelCombine_U0_empty_n );

    SC_THREAD(thread_ap_var_for_const0);

    start_once_reg = SC_LOGIC_0;
    ap_sync_reg_merge_Block_crit_e_U0_ap_ready = SC_LOGIC_0;
    merge_Block_crit_e_U0_ap_ready_count = "00";
    ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready = SC_LOGIC_0;
    merge_Loop_Read_Mat_U0_ap_ready_count = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "merge_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, start_full_n, "(port)start_full_n");
    sc_trace(mVcdFile, start_out, "(port)start_out");
    sc_trace(mVcdFile, start_write, "(port)start_write");
    sc_trace(mVcdFile, p_src1_data_V_dout, "(port)p_src1_data_V_dout");
    sc_trace(mVcdFile, p_src1_data_V_empty_n, "(port)p_src1_data_V_empty_n");
    sc_trace(mVcdFile, p_src1_data_V_read, "(port)p_src1_data_V_read");
    sc_trace(mVcdFile, p_src2_data_V_dout, "(port)p_src2_data_V_dout");
    sc_trace(mVcdFile, p_src2_data_V_empty_n, "(port)p_src2_data_V_empty_n");
    sc_trace(mVcdFile, p_src2_data_V_read, "(port)p_src2_data_V_read");
    sc_trace(mVcdFile, p_dst_data_V_din, "(port)p_dst_data_V_din");
    sc_trace(mVcdFile, p_dst_data_V_full_n, "(port)p_dst_data_V_full_n");
    sc_trace(mVcdFile, p_dst_data_V_write, "(port)p_dst_data_V_write");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_continue, "(port)ap_continue");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, real_start, "real_start");
    sc_trace(mVcdFile, start_once_reg, "start_once_reg");
    sc_trace(mVcdFile, internal_ap_ready, "internal_ap_ready");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_ap_start, "merge_Block_crit_e_U0_ap_start");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_ap_done, "merge_Block_crit_e_U0_ap_done");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_ap_continue, "merge_Block_crit_e_U0_ap_continue");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_ap_idle, "merge_Block_crit_e_U0_ap_idle");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_ap_ready, "merge_Block_crit_e_U0_ap_ready");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_p_src1_cols_load7_out_out_din, "merge_Block_crit_e_U0_p_src1_cols_load7_out_out_din");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_p_src1_cols_load7_out_out_write, "merge_Block_crit_e_U0_p_src1_cols_load7_out_out_write");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_ap_start, "merge_Loop_Read_Mat_U0_ap_start");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_ap_done, "merge_Loop_Read_Mat_U0_ap_done");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_ap_continue, "merge_Loop_Read_Mat_U0_ap_continue");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_ap_idle, "merge_Loop_Read_Mat_U0_ap_idle");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_ap_ready, "merge_Loop_Read_Mat_U0_ap_ready");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_start_out, "merge_Loop_Read_Mat_U0_start_out");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_start_write, "merge_Loop_Read_Mat_U0_start_write");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_read, "merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_read");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_src1_data_V_read, "merge_Loop_Read_Mat_U0_p_src1_data_V_read");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_in1_V_V_din, "merge_Loop_Read_Mat_U0_p_in1_V_V_din");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_in1_V_V_write, "merge_Loop_Read_Mat_U0_p_in1_V_V_write");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_src2_data_V_read, "merge_Loop_Read_Mat_U0_p_src2_data_V_read");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_in2_V_V_din, "merge_Loop_Read_Mat_U0_p_in2_V_V_din");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_in2_V_V_write, "merge_Loop_Read_Mat_U0_p_in2_V_V_write");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_in3_V_V_din, "merge_Loop_Read_Mat_U0_p_in3_V_V_din");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_in3_V_V_write, "merge_Loop_Read_Mat_U0_p_in3_V_V_write");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_din, "merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_din");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_write, "merge_Loop_Read_Mat_U0_p_src1_cols_load7_loc_out_write");
    sc_trace(mVcdFile, xfChannelCombine_U0_ap_start, "xfChannelCombine_U0_ap_start");
    sc_trace(mVcdFile, xfChannelCombine_U0_ap_done, "xfChannelCombine_U0_ap_done");
    sc_trace(mVcdFile, xfChannelCombine_U0_ap_continue, "xfChannelCombine_U0_ap_continue");
    sc_trace(mVcdFile, xfChannelCombine_U0_ap_idle, "xfChannelCombine_U0_ap_idle");
    sc_trace(mVcdFile, xfChannelCombine_U0_ap_ready, "xfChannelCombine_U0_ap_ready");
    sc_trace(mVcdFile, xfChannelCombine_U0_start_out, "xfChannelCombine_U0_start_out");
    sc_trace(mVcdFile, xfChannelCombine_U0_start_write, "xfChannelCombine_U0_start_write");
    sc_trace(mVcdFile, xfChannelCombine_U0_p_in1_V_V_read, "xfChannelCombine_U0_p_in1_V_V_read");
    sc_trace(mVcdFile, xfChannelCombine_U0_p_in2_V_V_read, "xfChannelCombine_U0_p_in2_V_V_read");
    sc_trace(mVcdFile, xfChannelCombine_U0_p_in3_V_V_read, "xfChannelCombine_U0_p_in3_V_V_read");
    sc_trace(mVcdFile, xfChannelCombine_U0_p_out_V_V_din, "xfChannelCombine_U0_p_out_V_V_din");
    sc_trace(mVcdFile, xfChannelCombine_U0_p_out_V_V_write, "xfChannelCombine_U0_p_out_V_V_write");
    sc_trace(mVcdFile, xfChannelCombine_U0_p_src1_cols_load7_loc_read, "xfChannelCombine_U0_p_src1_cols_load7_loc_read");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_ap_start, "merge_Loop_Write_Mat_U0_ap_start");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_ap_done, "merge_Loop_Write_Mat_U0_ap_done");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_ap_continue, "merge_Loop_Write_Mat_U0_ap_continue");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_ap_idle, "merge_Loop_Write_Mat_U0_ap_idle");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_ap_ready, "merge_Loop_Write_Mat_U0_ap_ready");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_p_out_V_V_read, "merge_Loop_Write_Mat_U0_p_out_V_V_read");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_p_dst_data_V_din, "merge_Loop_Write_Mat_U0_p_dst_data_V_din");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_p_dst_data_V_write, "merge_Loop_Write_Mat_U0_p_dst_data_V_write");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, p_src1_cols_load7_loc_1_full_n, "p_src1_cols_load7_loc_1_full_n");
    sc_trace(mVcdFile, p_src1_cols_load7_loc_1_dout, "p_src1_cols_load7_loc_1_dout");
    sc_trace(mVcdFile, p_src1_cols_load7_loc_1_empty_n, "p_src1_cols_load7_loc_1_empty_n");
    sc_trace(mVcdFile, p_in1_V_V_full_n, "p_in1_V_V_full_n");
    sc_trace(mVcdFile, p_in1_V_V_dout, "p_in1_V_V_dout");
    sc_trace(mVcdFile, p_in1_V_V_empty_n, "p_in1_V_V_empty_n");
    sc_trace(mVcdFile, p_in2_V_V_full_n, "p_in2_V_V_full_n");
    sc_trace(mVcdFile, p_in2_V_V_dout, "p_in2_V_V_dout");
    sc_trace(mVcdFile, p_in2_V_V_empty_n, "p_in2_V_V_empty_n");
    sc_trace(mVcdFile, p_in3_V_V_full_n, "p_in3_V_V_full_n");
    sc_trace(mVcdFile, p_in3_V_V_dout, "p_in3_V_V_dout");
    sc_trace(mVcdFile, p_in3_V_V_empty_n, "p_in3_V_V_empty_n");
    sc_trace(mVcdFile, p_src1_cols_load7_loc_full_n, "p_src1_cols_load7_loc_full_n");
    sc_trace(mVcdFile, p_src1_cols_load7_loc_dout, "p_src1_cols_load7_loc_dout");
    sc_trace(mVcdFile, p_src1_cols_load7_loc_empty_n, "p_src1_cols_load7_loc_empty_n");
    sc_trace(mVcdFile, p_out_V_V_full_n, "p_out_V_V_full_n");
    sc_trace(mVcdFile, p_out_V_V_dout, "p_out_V_V_dout");
    sc_trace(mVcdFile, p_out_V_V_empty_n, "p_out_V_V_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, ap_sync_reg_merge_Block_crit_e_U0_ap_ready, "ap_sync_reg_merge_Block_crit_e_U0_ap_ready");
    sc_trace(mVcdFile, ap_sync_merge_Block_crit_e_U0_ap_ready, "ap_sync_merge_Block_crit_e_U0_ap_ready");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_ap_ready_count, "merge_Block_crit_e_U0_ap_ready_count");
    sc_trace(mVcdFile, ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready, "ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready");
    sc_trace(mVcdFile, ap_sync_merge_Loop_Read_Mat_U0_ap_ready, "ap_sync_merge_Loop_Read_Mat_U0_ap_ready");
    sc_trace(mVcdFile, merge_Loop_Read_Mat_U0_ap_ready_count, "merge_Loop_Read_Mat_U0_ap_ready_count");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_start_full_n, "merge_Block_crit_e_U0_start_full_n");
    sc_trace(mVcdFile, merge_Block_crit_e_U0_start_write, "merge_Block_crit_e_U0_start_write");
    sc_trace(mVcdFile, start_for_xfChannelCombine_U0_din, "start_for_xfChannelCombine_U0_din");
    sc_trace(mVcdFile, start_for_xfChannelCombine_U0_full_n, "start_for_xfChannelCombine_U0_full_n");
    sc_trace(mVcdFile, start_for_xfChannelCombine_U0_dout, "start_for_xfChannelCombine_U0_dout");
    sc_trace(mVcdFile, start_for_xfChannelCombine_U0_empty_n, "start_for_xfChannelCombine_U0_empty_n");
    sc_trace(mVcdFile, start_for_merge_Loop_Write_Mat_U0_din, "start_for_merge_Loop_Write_Mat_U0_din");
    sc_trace(mVcdFile, start_for_merge_Loop_Write_Mat_U0_full_n, "start_for_merge_Loop_Write_Mat_U0_full_n");
    sc_trace(mVcdFile, start_for_merge_Loop_Write_Mat_U0_dout, "start_for_merge_Loop_Write_Mat_U0_dout");
    sc_trace(mVcdFile, start_for_merge_Loop_Write_Mat_U0_empty_n, "start_for_merge_Loop_Write_Mat_U0_empty_n");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_start_full_n, "merge_Loop_Write_Mat_U0_start_full_n");
    sc_trace(mVcdFile, merge_Loop_Write_Mat_U0_start_write, "merge_Loop_Write_Mat_U0_start_write");
#endif

    }
}

merge::~merge() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete merge_Block_crit_e_U0;
    delete merge_Loop_Read_Mat_U0;
    delete xfChannelCombine_U0;
    delete merge_Loop_Write_Mat_U0;
    delete p_src1_cols_load7_loc_1_U;
    delete p_in1_V_V_U;
    delete p_in2_V_V_U;
    delete p_in3_V_V_U;
    delete p_src1_cols_load7_loc_U;
    delete p_out_V_V_U;
    delete start_for_xfChann8jQ_U;
    delete start_for_merge_L9j0_U;
}

void merge::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void merge::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_sync_reg_merge_Block_crit_e_U0_ap_ready = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (real_start.read() & 
             ap_sync_ready.read()))) {
            ap_sync_reg_merge_Block_crit_e_U0_ap_ready = ap_const_logic_0;
        } else {
            ap_sync_reg_merge_Block_crit_e_U0_ap_ready = ap_sync_merge_Block_crit_e_U0_ap_ready.read();
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready = ap_const_logic_0;
    } else {
        if (esl_seteq<1,1,1>(ap_const_logic_1, (real_start.read() & 
             ap_sync_ready.read()))) {
            ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready = ap_const_logic_0;
        } else {
            ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready = ap_sync_merge_Loop_Read_Mat_U0_ap_ready.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_0, merge_Block_crit_e_U0_ap_ready.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sync_ready.read()))) {
        merge_Block_crit_e_U0_ap_ready_count = (!merge_Block_crit_e_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(merge_Block_crit_e_U0_ap_ready_count.read()) - sc_biguint<2>(ap_const_lv2_1));
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, merge_Block_crit_e_U0_ap_ready.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_0, ap_sync_ready.read()))) {
        merge_Block_crit_e_U0_ap_ready_count = (!merge_Block_crit_e_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(merge_Block_crit_e_U0_ap_ready_count.read()) + sc_biguint<2>(ap_const_lv2_1));
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sync_ready.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, merge_Loop_Read_Mat_U0_ap_ready.read()))) {
        merge_Loop_Read_Mat_U0_ap_ready_count = (!merge_Loop_Read_Mat_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(merge_Loop_Read_Mat_U0_ap_ready_count.read()) - sc_biguint<2>(ap_const_lv2_1));
    } else if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_sync_ready.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, merge_Loop_Read_Mat_U0_ap_ready.read()))) {
        merge_Loop_Read_Mat_U0_ap_ready_count = (!merge_Loop_Read_Mat_U0_ap_ready_count.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(merge_Loop_Read_Mat_U0_ap_ready_count.read()) + sc_biguint<2>(ap_const_lv2_1));
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        start_once_reg = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(real_start.read(), ap_const_logic_1) && 
             esl_seteq<1,1,1>(ap_const_logic_0, internal_ap_ready.read()))) {
            start_once_reg = ap_const_logic_1;
        } else if (esl_seteq<1,1,1>(internal_ap_ready.read(), ap_const_logic_1)) {
            start_once_reg = ap_const_logic_0;
        }
    }
}

void merge::thread_ap_done() {
    ap_done = merge_Loop_Write_Mat_U0_ap_done.read();
}

void merge::thread_ap_idle() {
    ap_idle = (merge_Block_crit_e_U0_ap_idle.read() & merge_Loop_Read_Mat_U0_ap_idle.read() & xfChannelCombine_U0_ap_idle.read() & merge_Loop_Write_Mat_U0_ap_idle.read());
}

void merge::thread_ap_ready() {
    ap_ready = internal_ap_ready.read();
}

void merge::thread_ap_sync_continue() {
    ap_sync_continue = ap_continue.read();
}

void merge::thread_ap_sync_done() {
    ap_sync_done = merge_Loop_Write_Mat_U0_ap_done.read();
}

void merge::thread_ap_sync_merge_Block_crit_e_U0_ap_ready() {
    ap_sync_merge_Block_crit_e_U0_ap_ready = (merge_Block_crit_e_U0_ap_ready.read() | ap_sync_reg_merge_Block_crit_e_U0_ap_ready.read());
}

void merge::thread_ap_sync_merge_Loop_Read_Mat_U0_ap_ready() {
    ap_sync_merge_Loop_Read_Mat_U0_ap_ready = (merge_Loop_Read_Mat_U0_ap_ready.read() | ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready.read());
}

void merge::thread_ap_sync_ready() {
    ap_sync_ready = (ap_sync_merge_Block_crit_e_U0_ap_ready.read() & ap_sync_merge_Loop_Read_Mat_U0_ap_ready.read());
}

void merge::thread_internal_ap_ready() {
    internal_ap_ready = ap_sync_ready.read();
}

void merge::thread_merge_Block_crit_e_U0_ap_continue() {
    merge_Block_crit_e_U0_ap_continue = ap_const_logic_1;
}

void merge::thread_merge_Block_crit_e_U0_ap_start() {
    merge_Block_crit_e_U0_ap_start = (real_start.read() & (ap_sync_reg_merge_Block_crit_e_U0_ap_ready.read() ^ 
  ap_const_logic_1));
}

void merge::thread_merge_Block_crit_e_U0_start_full_n() {
    merge_Block_crit_e_U0_start_full_n = ap_const_logic_1;
}

void merge::thread_merge_Block_crit_e_U0_start_write() {
    merge_Block_crit_e_U0_start_write = ap_const_logic_0;
}

void merge::thread_merge_Loop_Read_Mat_U0_ap_continue() {
    merge_Loop_Read_Mat_U0_ap_continue = ap_const_logic_1;
}

void merge::thread_merge_Loop_Read_Mat_U0_ap_start() {
    merge_Loop_Read_Mat_U0_ap_start = (real_start.read() & (ap_sync_reg_merge_Loop_Read_Mat_U0_ap_ready.read() ^ 
  ap_const_logic_1));
}

void merge::thread_merge_Loop_Write_Mat_U0_ap_continue() {
    merge_Loop_Write_Mat_U0_ap_continue = ap_continue.read();
}

void merge::thread_merge_Loop_Write_Mat_U0_ap_start() {
    merge_Loop_Write_Mat_U0_ap_start = start_for_merge_Loop_Write_Mat_U0_empty_n.read();
}

void merge::thread_merge_Loop_Write_Mat_U0_start_full_n() {
    merge_Loop_Write_Mat_U0_start_full_n = ap_const_logic_1;
}

void merge::thread_merge_Loop_Write_Mat_U0_start_write() {
    merge_Loop_Write_Mat_U0_start_write = ap_const_logic_0;
}

void merge::thread_p_dst_data_V_din() {
    p_dst_data_V_din = merge_Loop_Write_Mat_U0_p_dst_data_V_din.read();
}

void merge::thread_p_dst_data_V_write() {
    p_dst_data_V_write = merge_Loop_Write_Mat_U0_p_dst_data_V_write.read();
}

void merge::thread_p_src1_data_V_read() {
    p_src1_data_V_read = merge_Loop_Read_Mat_U0_p_src1_data_V_read.read();
}

void merge::thread_p_src2_data_V_read() {
    p_src2_data_V_read = merge_Loop_Read_Mat_U0_p_src2_data_V_read.read();
}

void merge::thread_real_start() {
    if ((esl_seteq<1,1,1>(start_full_n.read(), ap_const_logic_0) && 
         esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()))) {
        real_start = ap_const_logic_0;
    } else {
        real_start = ap_start.read();
    }
}

void merge::thread_start_for_merge_Loop_Write_Mat_U0_din() {
    start_for_merge_Loop_Write_Mat_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void merge::thread_start_for_xfChannelCombine_U0_din() {
    start_for_xfChannelCombine_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void merge::thread_start_out() {
    start_out = real_start.read();
}

void merge::thread_start_write() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, start_once_reg.read()) && 
         esl_seteq<1,1,1>(real_start.read(), ap_const_logic_1))) {
        start_write = ap_const_logic_1;
    } else {
        start_write = ap_const_logic_0;
    }
}

void merge::thread_xfChannelCombine_U0_ap_continue() {
    xfChannelCombine_U0_ap_continue = ap_const_logic_1;
}

void merge::thread_xfChannelCombine_U0_ap_start() {
    xfChannelCombine_U0_ap_start = start_for_xfChannelCombine_U0_empty_n.read();
}

}
