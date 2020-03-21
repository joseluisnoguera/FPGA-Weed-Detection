// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _duplicateMat_Loop_2_s_HH_
#define _duplicateMat_Loop_2_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "write_1.h"

namespace ap_rtl {

struct duplicateMat_Loop_2_s : public sc_module {
    // Port declarations 25
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<9> > p_dst1_rows_dout;
    sc_in< sc_logic > p_dst1_rows_empty_n;
    sc_out< sc_logic > p_dst1_rows_read;
    sc_in< sc_lv<10> > p_dst1_cols_dout;
    sc_in< sc_logic > p_dst1_cols_empty_n;
    sc_out< sc_logic > p_dst1_cols_read;
    sc_in< sc_lv<24> > dst_V_V_dout;
    sc_in< sc_logic > dst_V_V_empty_n;
    sc_out< sc_logic > dst_V_V_read;
    sc_out< sc_lv<24> > p_dst1_data_V_din;
    sc_in< sc_logic > p_dst1_data_V_full_n;
    sc_out< sc_logic > p_dst1_data_V_write;
    sc_in< sc_lv<24> > dst1_V_V_dout;
    sc_in< sc_logic > dst1_V_V_empty_n;
    sc_out< sc_logic > dst1_V_V_read;
    sc_out< sc_lv<24> > p_dst2_data_V_din;
    sc_in< sc_logic > p_dst2_data_V_full_n;
    sc_out< sc_logic > p_dst2_data_V_write;


    // Module declarations
    duplicateMat_Loop_2_s(sc_module_name name);
    SC_HAS_PROCESS(duplicateMat_Loop_2_s);

    ~duplicateMat_Loop_2_s();

    sc_trace_file* mVcdFile;

    write_1* call_ln114_write_1_fu_100;
    write_1* call_ln115_write_1_fu_108;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > p_dst1_rows_blk_n;
    sc_signal< sc_logic > p_dst1_cols_blk_n;
    sc_signal< sc_logic > dst_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln109_reg_165;
    sc_signal< sc_logic > call_ln114_write_1_fu_100_Mat_9_180_320_1_data_V_addr_blk_n;
    sc_signal< sc_logic > p_dst1_data_V_blk_n;
    sc_signal< sc_logic > dst1_V_V_blk_n;
    sc_signal< sc_logic > call_ln115_write_1_fu_108_Mat_9_180_320_1_data_V_addr_blk_n;
    sc_signal< sc_logic > p_dst2_data_V_blk_n;
    sc_signal< sc_lv<32> > j2_0_i_reg_89;
    sc_signal< sc_lv<9> > p_dst1_rows_read_reg_146;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<10> > p_dst1_cols_read_reg_151;
    sc_signal< sc_lv<1> > icmp_ln106_fu_119_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<32> > i_fu_125_p2;
    sc_signal< sc_lv<32> > i_reg_160;
    sc_signal< sc_lv<1> > icmp_ln109_fu_134_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > j_fu_140_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > call_ln114_write_1_fu_100_ap_start;
    sc_signal< sc_logic > call_ln114_write_1_fu_100_ap_done;
    sc_signal< sc_logic > call_ln114_write_1_fu_100_ap_idle;
    sc_signal< sc_logic > call_ln114_write_1_fu_100_ap_ready;
    sc_signal< sc_lv<24> > call_ln114_write_1_fu_100_Mat_9_180_320_1_data_V_addr_din;
    sc_signal< sc_logic > call_ln114_write_1_fu_100_Mat_9_180_320_1_data_V_addr_write;
    sc_signal< sc_logic > call_ln114_write_1_fu_100_ap_ce;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0_ignore_call4;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1_ignore_call4;
    sc_signal< bool > ap_block_pp0_stage0_11001_ignoreCallOp37;
    sc_signal< sc_logic > call_ln115_write_1_fu_108_ap_start;
    sc_signal< sc_logic > call_ln115_write_1_fu_108_ap_done;
    sc_signal< sc_logic > call_ln115_write_1_fu_108_ap_idle;
    sc_signal< sc_logic > call_ln115_write_1_fu_108_ap_ready;
    sc_signal< sc_lv<24> > call_ln115_write_1_fu_108_Mat_9_180_320_1_data_V_addr_din;
    sc_signal< sc_logic > call_ln115_write_1_fu_108_Mat_9_180_320_1_data_V_addr_write;
    sc_signal< sc_logic > call_ln115_write_1_fu_108_ap_ce;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0_ignore_call6;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1_ignore_call6;
    sc_signal< bool > ap_block_pp0_stage0_11001_ignoreCallOp39;
    sc_signal< sc_lv<32> > i1_0_i_reg_78;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > call_ln114_write_1_fu_100_ap_start_reg;
    sc_signal< sc_logic > call_ln115_write_1_fu_108_ap_start_reg;
    sc_signal< sc_lv<32> > sext_ln106_fu_116_p1;
    sc_signal< sc_lv<32> > sext_ln109_fu_131_p1;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state5;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_11001_ignoreCallOp37();
    void thread_ap_block_pp0_stage0_11001_ignoreCallOp39();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter0_ignore_call4();
    void thread_ap_block_state3_pp0_stage0_iter0_ignore_call6();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter1_ignore_call4();
    void thread_ap_block_state4_pp0_stage0_iter1_ignore_call6();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_ready();
    void thread_call_ln114_write_1_fu_100_ap_ce();
    void thread_call_ln114_write_1_fu_100_ap_start();
    void thread_call_ln115_write_1_fu_108_ap_ce();
    void thread_call_ln115_write_1_fu_108_ap_start();
    void thread_dst1_V_V_blk_n();
    void thread_dst1_V_V_read();
    void thread_dst_V_V_blk_n();
    void thread_dst_V_V_read();
    void thread_i_fu_125_p2();
    void thread_icmp_ln106_fu_119_p2();
    void thread_icmp_ln109_fu_134_p2();
    void thread_j_fu_140_p2();
    void thread_p_dst1_cols_blk_n();
    void thread_p_dst1_cols_read();
    void thread_p_dst1_data_V_blk_n();
    void thread_p_dst1_data_V_din();
    void thread_p_dst1_data_V_write();
    void thread_p_dst1_rows_blk_n();
    void thread_p_dst1_rows_read();
    void thread_p_dst2_data_V_blk_n();
    void thread_p_dst2_data_V_din();
    void thread_p_dst2_data_V_write();
    void thread_sext_ln106_fu_116_p1();
    void thread_sext_ln109_fu_131_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif