// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _xfUDivResize_HH_
#define _xfUDivResize_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "ip_accel_app_udivdEe.h"

namespace ap_rtl {

struct xfUDivResize : public sc_module {
    // Port declarations 9
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<40> > in_n;
    sc_in< sc_lv<10> > in_d;
    sc_out< sc_lv<32> > ap_return;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    xfUDivResize(sc_module_name name);
    SC_HAS_PROCESS(xfUDivResize);

    ~xfUDivResize();

    sc_trace_file* mVcdFile;

    ip_accel_app_udivdEe<1,44,40,16,32>* ip_accel_app_udivdEe_U54;
    sc_signal< sc_lv<44> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<16> > in_d_cast_fu_20_p1;
    sc_signal< sc_lv<16> > grp_fu_28_p1;
    sc_signal< sc_lv<32> > grp_fu_28_p2;
    sc_signal< sc_logic > ap_CS_fsm_state44;
    sc_signal< sc_logic > grp_fu_28_ap_start;
    sc_signal< sc_logic > grp_fu_28_ap_done;
    sc_signal< sc_lv<32> > out_res_fu_34_p1;
    sc_signal< sc_lv<32> > ap_return_preg;
    sc_signal< sc_lv<44> > ap_NS_fsm;
    sc_signal< sc_lv<40> > grp_fu_28_p10;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<44> ap_ST_fsm_state1;
    static const sc_lv<44> ap_ST_fsm_state2;
    static const sc_lv<44> ap_ST_fsm_state3;
    static const sc_lv<44> ap_ST_fsm_state4;
    static const sc_lv<44> ap_ST_fsm_state5;
    static const sc_lv<44> ap_ST_fsm_state6;
    static const sc_lv<44> ap_ST_fsm_state7;
    static const sc_lv<44> ap_ST_fsm_state8;
    static const sc_lv<44> ap_ST_fsm_state9;
    static const sc_lv<44> ap_ST_fsm_state10;
    static const sc_lv<44> ap_ST_fsm_state11;
    static const sc_lv<44> ap_ST_fsm_state12;
    static const sc_lv<44> ap_ST_fsm_state13;
    static const sc_lv<44> ap_ST_fsm_state14;
    static const sc_lv<44> ap_ST_fsm_state15;
    static const sc_lv<44> ap_ST_fsm_state16;
    static const sc_lv<44> ap_ST_fsm_state17;
    static const sc_lv<44> ap_ST_fsm_state18;
    static const sc_lv<44> ap_ST_fsm_state19;
    static const sc_lv<44> ap_ST_fsm_state20;
    static const sc_lv<44> ap_ST_fsm_state21;
    static const sc_lv<44> ap_ST_fsm_state22;
    static const sc_lv<44> ap_ST_fsm_state23;
    static const sc_lv<44> ap_ST_fsm_state24;
    static const sc_lv<44> ap_ST_fsm_state25;
    static const sc_lv<44> ap_ST_fsm_state26;
    static const sc_lv<44> ap_ST_fsm_state27;
    static const sc_lv<44> ap_ST_fsm_state28;
    static const sc_lv<44> ap_ST_fsm_state29;
    static const sc_lv<44> ap_ST_fsm_state30;
    static const sc_lv<44> ap_ST_fsm_state31;
    static const sc_lv<44> ap_ST_fsm_state32;
    static const sc_lv<44> ap_ST_fsm_state33;
    static const sc_lv<44> ap_ST_fsm_state34;
    static const sc_lv<44> ap_ST_fsm_state35;
    static const sc_lv<44> ap_ST_fsm_state36;
    static const sc_lv<44> ap_ST_fsm_state37;
    static const sc_lv<44> ap_ST_fsm_state38;
    static const sc_lv<44> ap_ST_fsm_state39;
    static const sc_lv<44> ap_ST_fsm_state40;
    static const sc_lv<44> ap_ST_fsm_state41;
    static const sc_lv<44> ap_ST_fsm_state42;
    static const sc_lv<44> ap_ST_fsm_state43;
    static const sc_lv<44> ap_ST_fsm_state44;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2B;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state44();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_grp_fu_28_ap_start();
    void thread_grp_fu_28_p1();
    void thread_grp_fu_28_p10();
    void thread_in_d_cast_fu_20_p1();
    void thread_out_res_fu_34_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif