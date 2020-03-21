// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _duplicateMat_Block_1_HH_
#define _duplicateMat_Block_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct duplicateMat_Block_1 : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<10> > p_src_cols_load10_out_out_din;
    sc_in< sc_logic > p_src_cols_load10_out_out_full_n;
    sc_out< sc_logic > p_src_cols_load10_out_out_write;


    // Module declarations
    duplicateMat_Block_1(sc_module_name name);
    SC_HAS_PROCESS(duplicateMat_Block_1);

    ~duplicateMat_Block_1();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > p_src_cols_load10_out_out_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<10> ap_const_lv10_140;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_p_src_cols_load10_out_out_blk_n();
    void thread_p_src_cols_load10_out_out_din();
    void thread_p_src_cols_load10_out_out_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif