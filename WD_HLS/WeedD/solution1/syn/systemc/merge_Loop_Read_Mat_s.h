// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _merge_Loop_Read_Mat_s_HH_
#define _merge_Loop_Read_Mat_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "read_r.h"
#include "ip_accel_app_mul_7jG.h"

namespace ap_rtl {

struct merge_Loop_Read_Mat_s : public sc_module {
    // Port declarations 31
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<10> > p_src1_cols_load7_loc_dout;
    sc_in< sc_logic > p_src1_cols_load7_loc_empty_n;
    sc_out< sc_logic > p_src1_cols_load7_loc_read;
    sc_in< sc_lv<8> > p_src1_data_V_dout;
    sc_in< sc_logic > p_src1_data_V_empty_n;
    sc_out< sc_logic > p_src1_data_V_read;
    sc_out< sc_lv<8> > p_in1_V_V_din;
    sc_in< sc_logic > p_in1_V_V_full_n;
    sc_out< sc_logic > p_in1_V_V_write;
    sc_in< sc_lv<8> > p_src2_data_V_dout;
    sc_in< sc_logic > p_src2_data_V_empty_n;
    sc_out< sc_logic > p_src2_data_V_read;
    sc_out< sc_lv<8> > p_in2_V_V_din;
    sc_in< sc_logic > p_in2_V_V_full_n;
    sc_out< sc_logic > p_in2_V_V_write;
    sc_out< sc_lv<8> > p_in3_V_V_din;
    sc_in< sc_logic > p_in3_V_V_full_n;
    sc_out< sc_logic > p_in3_V_V_write;
    sc_out< sc_lv<10> > p_src1_cols_load7_loc_out_din;
    sc_in< sc_logic > p_src1_cols_load7_loc_out_full_n;
    sc_out< sc_logic > p_src1_cols_load7_loc_out_write;


    // Module declarations
    merge_Loop_Read_Mat_s(sc_module_name name);
    SC_HAS_PROCESS(merge_Loop_Read_Mat_s);

    ~merge_Loop_Read_Mat_s();

    sc_trace_file* mVcdFile;

    read_r* grp_read_r_fu_112;
    read_r* tmp_V_4_read_r_fu_118;
    ip_accel_app_mul_7jG<1,4,10,9,18>* ip_accel_app_mul_7jG_U506;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > p_src1_cols_load7_loc_blk_n;
    sc_signal< sc_logic > grp_read_r_fu_112_Mat_0_180_320_1_data_V_addr_blk_n;
    sc_signal< sc_logic > p_src1_data_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<1> > icmp_ln317_reg_157;
    sc_signal< sc_logic > p_in1_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > tmp_V_4_read_r_fu_118_Mat_0_180_320_1_data_V_addr_blk_n;
    sc_signal< sc_logic > p_src2_data_V_blk_n;
    sc_signal< sc_logic > p_in2_V_V_blk_n;
    sc_signal< sc_logic > p_in3_V_V_blk_n;
    sc_signal< sc_logic > p_src1_cols_load7_loc_out_blk_n;
    sc_signal< sc_lv<18> > indvar_flatten_reg_101;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<18> > grp_fu_141_p2;
    sc_signal< sc_lv<18> > bound_reg_152;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln317_fu_130_p2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<18> > add_ln317_fu_135_p2;
    sc_signal< sc_lv<18> > add_ln317_reg_161;
    sc_signal< sc_lv<8> > grp_read_r_fu_112_ap_return;
    sc_signal< sc_lv<8> > tmp_V_reg_166;
    sc_signal< bool > ap_block_state6_pp0_stage1_iter0;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<8> > tmp_V_4_read_r_fu_118_ap_return;
    sc_signal< sc_lv<8> > tmp_V_4_reg_171;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state5;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_logic > grp_read_r_fu_112_ap_start;
    sc_signal< sc_logic > grp_read_r_fu_112_ap_done;
    sc_signal< sc_logic > grp_read_r_fu_112_ap_idle;
    sc_signal< sc_logic > grp_read_r_fu_112_ap_ready;
    sc_signal< sc_lv<8> > grp_read_r_fu_112_Mat_0_180_320_1_data_V_addr_dout;
    sc_signal< sc_logic > grp_read_r_fu_112_Mat_0_180_320_1_data_V_addr_empty_n;
    sc_signal< sc_logic > grp_read_r_fu_112_Mat_0_180_320_1_data_V_addr_read;
    sc_signal< sc_logic > grp_read_r_fu_112_ap_ce;
    sc_signal< bool > ap_block_state6_pp0_stage1_iter0_ignore_call4;
    sc_signal< bool > ap_block_pp0_stage1_11001_ignoreCallOp28;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter0_ignore_call8;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter1_ignore_call8;
    sc_signal< bool > ap_block_pp0_stage0_11001_ignoreCallOp36;
    sc_signal< sc_logic > tmp_V_4_read_r_fu_118_ap_start;
    sc_signal< sc_logic > tmp_V_4_read_r_fu_118_ap_done;
    sc_signal< sc_logic > tmp_V_4_read_r_fu_118_ap_idle;
    sc_signal< sc_logic > tmp_V_4_read_r_fu_118_ap_ready;
    sc_signal< sc_logic > tmp_V_4_read_r_fu_118_Mat_0_180_320_1_data_V_addr_read;
    sc_signal< sc_logic > tmp_V_4_read_r_fu_118_ap_ce;
    sc_signal< bool > ap_block_state6_pp0_stage1_iter0_ignore_call6;
    sc_signal< bool > ap_block_pp0_stage1_11001_ignoreCallOp29;
    sc_signal< sc_lv<18> > ap_phi_mux_indvar_flatten_phi_fu_105_p4;
    sc_signal< sc_logic > grp_read_r_fu_112_ap_start_reg;
    sc_signal< sc_logic > tmp_V_4_read_r_fu_118_ap_start_reg;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<10> > grp_fu_141_p0;
    sc_signal< sc_lv<9> > grp_fu_141_p1;
    sc_signal< sc_logic > grp_fu_141_ce;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<18> > grp_fu_141_p00;
    sc_signal< bool > ap_condition_90;
    sc_signal< bool > ap_condition_107;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_pp0_stage0;
    static const sc_lv<7> ap_ST_fsm_pp0_stage1;
    static const sc_lv<7> ap_ST_fsm_state8;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<18> ap_const_lv18_0;
    static const sc_lv<18> ap_const_lv18_1;
    static const sc_lv<18> ap_const_lv18_B4;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_6;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln317_fu_135_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_11001_ignoreCallOp36();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_11001_ignoreCallOp28();
    void thread_ap_block_pp0_stage1_11001_ignoreCallOp29();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state5_pp0_stage0_iter0();
    void thread_ap_block_state5_pp0_stage0_iter0_ignore_call8();
    void thread_ap_block_state6_pp0_stage1_iter0();
    void thread_ap_block_state6_pp0_stage1_iter0_ignore_call4();
    void thread_ap_block_state6_pp0_stage1_iter0_ignore_call6();
    void thread_ap_block_state7_pp0_stage0_iter1();
    void thread_ap_block_state7_pp0_stage0_iter1_ignore_call8();
    void thread_ap_condition_107();
    void thread_ap_condition_90();
    void thread_ap_condition_pp0_exit_iter0_state5();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_indvar_flatten_phi_fu_105_p4();
    void thread_ap_ready();
    void thread_grp_fu_141_ce();
    void thread_grp_fu_141_p0();
    void thread_grp_fu_141_p00();
    void thread_grp_fu_141_p1();
    void thread_grp_read_r_fu_112_Mat_0_180_320_1_data_V_addr_dout();
    void thread_grp_read_r_fu_112_Mat_0_180_320_1_data_V_addr_empty_n();
    void thread_grp_read_r_fu_112_ap_ce();
    void thread_grp_read_r_fu_112_ap_start();
    void thread_icmp_ln317_fu_130_p2();
    void thread_internal_ap_ready();
    void thread_p_in1_V_V_blk_n();
    void thread_p_in1_V_V_din();
    void thread_p_in1_V_V_write();
    void thread_p_in2_V_V_blk_n();
    void thread_p_in2_V_V_din();
    void thread_p_in2_V_V_write();
    void thread_p_in3_V_V_blk_n();
    void thread_p_in3_V_V_din();
    void thread_p_in3_V_V_write();
    void thread_p_src1_cols_load7_loc_blk_n();
    void thread_p_src1_cols_load7_loc_out_blk_n();
    void thread_p_src1_cols_load7_loc_out_din();
    void thread_p_src1_cols_load7_loc_out_write();
    void thread_p_src1_cols_load7_loc_read();
    void thread_p_src1_data_V_blk_n();
    void thread_p_src1_data_V_read();
    void thread_p_src2_data_V_blk_n();
    void thread_p_src2_data_V_read();
    void thread_real_start();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_V_4_read_r_fu_118_ap_ce();
    void thread_tmp_V_4_read_r_fu_118_ap_start();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif