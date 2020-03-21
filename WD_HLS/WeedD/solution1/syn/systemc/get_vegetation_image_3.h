// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _get_vegetation_image_3_HH_
#define _get_vegetation_image_3_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct get_vegetation_image_3 : public sc_module {
    // Port declarations 11
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<29> > max_value_V_dout;
    sc_in< sc_logic > max_value_V_empty_n;
    sc_out< sc_logic > max_value_V_read;
    sc_out< sc_lv<24> > ap_return;


    // Module declarations
    get_vegetation_image_3(sc_module_name name);
    SC_HAS_PROCESS(get_vegetation_image_3);

    ~get_vegetation_image_3();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > max_value_V_blk_n;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<24> > trunc_ln700_fu_24_p1;
    sc_signal< sc_lv<24> > ap_return_preg;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_state1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<24> ap_const_lv24_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_block_state1();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_max_value_V_blk_n();
    void thread_max_value_V_read();
    void thread_trunc_ln700_fu_24_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif