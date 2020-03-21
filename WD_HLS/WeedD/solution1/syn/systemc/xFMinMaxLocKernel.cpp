// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "xFMinMaxLocKernel.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic xFMinMaxLocKernel::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic xFMinMaxLocKernel::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> xFMinMaxLocKernel::ap_ST_fsm_state1 = "1";
const sc_lv<4> xFMinMaxLocKernel::ap_ST_fsm_state2 = "10";
const sc_lv<4> xFMinMaxLocKernel::ap_ST_fsm_pp0_stage0 = "100";
const sc_lv<4> xFMinMaxLocKernel::ap_ST_fsm_state5 = "1000";
const bool xFMinMaxLocKernel::ap_const_boolean_1 = true;
const sc_lv<32> xFMinMaxLocKernel::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> xFMinMaxLocKernel::ap_const_lv32_2 = "10";
const bool xFMinMaxLocKernel::ap_const_boolean_0 = false;
const sc_lv<1> xFMinMaxLocKernel::ap_const_lv1_0 = "0";
const sc_lv<32> xFMinMaxLocKernel::ap_const_lv32_1 = "1";
const sc_lv<1> xFMinMaxLocKernel::ap_const_lv1_1 = "1";
const sc_lv<8> xFMinMaxLocKernel::ap_const_lv8_0 = "00000000";
const sc_lv<32> xFMinMaxLocKernel::ap_const_lv32_3 = "11";
const sc_lv<9> xFMinMaxLocKernel::ap_const_lv9_0 = "000000000";
const sc_lv<32> xFMinMaxLocKernel::ap_const_lv32_FFFFFF80 = "11111111111111111111111110000000";
const sc_lv<8> xFMinMaxLocKernel::ap_const_lv8_B4 = "10110100";
const sc_lv<8> xFMinMaxLocKernel::ap_const_lv8_1 = "1";
const sc_lv<9> xFMinMaxLocKernel::ap_const_lv9_140 = "101000000";
const sc_lv<9> xFMinMaxLocKernel::ap_const_lv9_1 = "1";

xFMinMaxLocKernel::xFMinMaxLocKernel(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln1597_fu_133_p2);
    sensitive << ( t_V_5_reg_77 );

    SC_METHOD(thread_ap_CS_fsm_pp0_stage0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_block_pp0_stage0);

    SC_METHOD(thread_ap_block_pp0_stage0_11001);
    sensitive << ( p_src_data_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln111_reg_205 );

    SC_METHOD(thread_ap_block_pp0_stage0_subdone);
    sensitive << ( p_src_data_V_empty_n );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln111_reg_205 );

    SC_METHOD(thread_ap_block_state3_pp0_stage0_iter0);

    SC_METHOD(thread_ap_block_state4_pp0_stage0_iter1);
    sensitive << ( p_src_data_V_empty_n );
    sensitive << ( icmp_ln111_reg_205 );

    SC_METHOD(thread_ap_condition_pp0_exit_iter0_state3);
    sensitive << ( icmp_ln111_fu_127_p2 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln887_fu_98_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_enable_pp0);
    sensitive << ( ap_idle_pp0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_idle_pp0);
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( icmp_ln887_fu_98_p2 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( icmp_ln887_fu_98_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( p_maxval_0_fu_52 );
    sensitive << ( icmp_ln196_fu_113_p2 );

    SC_METHOD(thread_i_V_fu_104_p2);
    sensitive << ( t_V_reg_66 );

    SC_METHOD(thread_icmp_ln111_fu_127_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( t_V_5_reg_77 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( ap_enable_reg_pp0_iter0 );

    SC_METHOD(thread_icmp_ln196_fu_113_p2);
    sensitive << ( icmp_ln887_fu_98_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( p_maxval_0_fu_52 );

    SC_METHOD(thread_icmp_ln887_fu_98_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( t_V_reg_66 );

    SC_METHOD(thread_icmp_ln895_fu_154_p2);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln111_reg_205 );
    sensitive << ( ap_block_pp0_stage0_11001 );
    sensitive << ( max_val_tmp_0_0_fu_56 );
    sensitive << ( min_val_tmp_0_fu_146_p1 );

    SC_METHOD(thread_max_val_tmp_0_1_fu_160_p3);
    sensitive << ( icmp_ln895_fu_154_p2 );
    sensitive << ( zext_ln131_fu_150_p1 );
    sensitive << ( trunc_ln1597_fu_142_p1 );

    SC_METHOD(thread_min_val_tmp_0_fu_146_p1);
    sensitive << ( p_src_data_V_dout );

    SC_METHOD(thread_p_src_data_V_blk_n);
    sensitive << ( p_src_data_V_empty_n );
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( ap_block_pp0_stage0 );
    sensitive << ( icmp_ln111_reg_205 );

    SC_METHOD(thread_p_src_data_V_read);
    sensitive << ( ap_CS_fsm_pp0_stage0 );
    sensitive << ( ap_enable_reg_pp0_iter1 );
    sensitive << ( icmp_ln111_reg_205 );
    sensitive << ( ap_block_pp0_stage0_11001 );

    SC_METHOD(thread_trunc_ln1597_fu_142_p1);
    sensitive << ( max_val_tmp_0_0_fu_56 );

    SC_METHOD(thread_zext_ln131_fu_150_p1);
    sensitive << ( p_src_data_V_dout );

    SC_METHOD(thread_zext_ln895_fu_168_p1);
    sensitive << ( max_val_tmp_0_1_fu_160_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( icmp_ln887_fu_98_p2 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln111_fu_127_p2 );
    sensitive << ( ap_enable_reg_pp0_iter0 );
    sensitive << ( ap_block_pp0_stage0_subdone );

    ap_CS_fsm = "0001";
    ap_enable_reg_pp0_iter1 = SC_LOGIC_0;
    ap_enable_reg_pp0_iter0 = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "xFMinMaxLocKernel_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, p_src_data_V_dout, "(port)p_src_data_V_dout");
    sc_trace(mVcdFile, p_src_data_V_empty_n, "(port)p_src_data_V_empty_n");
    sc_trace(mVcdFile, p_src_data_V_read, "(port)p_src_data_V_read");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, p_src_data_V_blk_n, "p_src_data_V_blk_n");
    sc_trace(mVcdFile, ap_CS_fsm_pp0_stage0, "ap_CS_fsm_pp0_stage0");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter1, "ap_enable_reg_pp0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0, "ap_block_pp0_stage0");
    sc_trace(mVcdFile, icmp_ln111_reg_205, "icmp_ln111_reg_205");
    sc_trace(mVcdFile, t_V_5_reg_77, "t_V_5_reg_77");
    sc_trace(mVcdFile, icmp_ln887_fu_98_p2, "icmp_ln887_fu_98_p2");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, i_V_fu_104_p2, "i_V_fu_104_p2");
    sc_trace(mVcdFile, i_V_reg_200, "i_V_reg_200");
    sc_trace(mVcdFile, icmp_ln111_fu_127_p2, "icmp_ln111_fu_127_p2");
    sc_trace(mVcdFile, ap_block_state3_pp0_stage0_iter0, "ap_block_state3_pp0_stage0_iter0");
    sc_trace(mVcdFile, ap_block_state4_pp0_stage0_iter1, "ap_block_state4_pp0_stage0_iter1");
    sc_trace(mVcdFile, ap_block_pp0_stage0_11001, "ap_block_pp0_stage0_11001");
    sc_trace(mVcdFile, add_ln1597_fu_133_p2, "add_ln1597_fu_133_p2");
    sc_trace(mVcdFile, ap_enable_reg_pp0_iter0, "ap_enable_reg_pp0_iter0");
    sc_trace(mVcdFile, ap_block_pp0_stage0_subdone, "ap_block_pp0_stage0_subdone");
    sc_trace(mVcdFile, ap_condition_pp0_exit_iter0_state3, "ap_condition_pp0_exit_iter0_state3");
    sc_trace(mVcdFile, t_V_reg_66, "t_V_reg_66");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, p_maxval_0_fu_52, "p_maxval_0_fu_52");
    sc_trace(mVcdFile, zext_ln895_fu_168_p1, "zext_ln895_fu_168_p1");
    sc_trace(mVcdFile, max_val_tmp_0_0_fu_56, "max_val_tmp_0_0_fu_56");
    sc_trace(mVcdFile, icmp_ln196_fu_113_p2, "icmp_ln196_fu_113_p2");
    sc_trace(mVcdFile, min_val_tmp_0_fu_146_p1, "min_val_tmp_0_fu_146_p1");
    sc_trace(mVcdFile, icmp_ln895_fu_154_p2, "icmp_ln895_fu_154_p2");
    sc_trace(mVcdFile, zext_ln131_fu_150_p1, "zext_ln131_fu_150_p1");
    sc_trace(mVcdFile, trunc_ln1597_fu_142_p1, "trunc_ln1597_fu_142_p1");
    sc_trace(mVcdFile, max_val_tmp_0_1_fu_160_p3, "max_val_tmp_0_1_fu_160_p3");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_idle_pp0, "ap_idle_pp0");
    sc_trace(mVcdFile, ap_enable_pp0, "ap_enable_pp0");
#endif

    }
}

xFMinMaxLocKernel::~xFMinMaxLocKernel() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void xFMinMaxLocKernel::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
             esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_0;
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(icmp_ln887_fu_98_p2.read(), ap_const_lv1_1))) {
            ap_enable_reg_pp0_iter0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_enable_reg_pp0_iter1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && 
             esl_seteq<1,1,1>(ap_const_logic_1, ap_condition_pp0_exit_iter0_state3.read()))) {
            ap_enable_reg_pp0_iter1 = (ap_condition_pp0_exit_iter0_state3.read() ^ ap_const_logic_1);
        } else if (esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0)) {
            ap_enable_reg_pp0_iter1 = ap_enable_reg_pp0_iter0.read();
        } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                    esl_seteq<1,1,1>(icmp_ln887_fu_98_p2.read(), ap_const_lv1_1))) {
            ap_enable_reg_pp0_iter1 = ap_const_logic_0;
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln111_reg_205.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        max_val_tmp_0_0_fu_56 = zext_ln895_fu_168_p1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        max_val_tmp_0_0_fu_56 = ap_const_lv32_FFFFFF80;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln111_reg_205.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        p_maxval_0_fu_52 = zext_ln895_fu_168_p1.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        p_maxval_0_fu_52 = ap_const_lv32_FFFFFF80;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln111_fu_127_p2.read()))) {
        t_V_5_reg_77 = add_ln1597_fu_133_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
                esl_seteq<1,1,1>(icmp_ln887_fu_98_p2.read(), ap_const_lv1_1))) {
        t_V_5_reg_77 = ap_const_lv9_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        t_V_reg_66 = i_V_reg_200.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        t_V_reg_66 = ap_const_lv8_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        i_V_reg_200 = i_V_fu_104_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        icmp_ln111_reg_205 = icmp_ln111_fu_127_p2.read();
    }
}

void xFMinMaxLocKernel::thread_add_ln1597_fu_133_p2() {
    add_ln1597_fu_133_p2 = (!t_V_5_reg_77.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(t_V_5_reg_77.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void xFMinMaxLocKernel::thread_ap_CS_fsm_pp0_stage0() {
    ap_CS_fsm_pp0_stage0 = ap_CS_fsm.read()[2];
}

void xFMinMaxLocKernel::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void xFMinMaxLocKernel::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void xFMinMaxLocKernel::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[3];
}

void xFMinMaxLocKernel::thread_ap_block_pp0_stage0() {
    ap_block_pp0_stage0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void xFMinMaxLocKernel::thread_ap_block_pp0_stage0_11001() {
    ap_block_pp0_stage0_11001 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(icmp_ln111_reg_205.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, p_src_data_V_empty_n.read()));
}

void xFMinMaxLocKernel::thread_ap_block_pp0_stage0_subdone() {
    ap_block_pp0_stage0_subdone = (esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && esl_seteq<1,1,1>(icmp_ln111_reg_205.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, p_src_data_V_empty_n.read()));
}

void xFMinMaxLocKernel::thread_ap_block_state3_pp0_stage0_iter0() {
    ap_block_state3_pp0_stage0_iter0 = !esl_seteq<1,1,1>(ap_const_boolean_1, ap_const_boolean_1);
}

void xFMinMaxLocKernel::thread_ap_block_state4_pp0_stage0_iter1() {
    ap_block_state4_pp0_stage0_iter1 = (esl_seteq<1,1,1>(icmp_ln111_reg_205.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_0, p_src_data_V_empty_n.read()));
}

void xFMinMaxLocKernel::thread_ap_condition_pp0_exit_iter0_state3() {
    if (esl_seteq<1,1,1>(icmp_ln111_fu_127_p2.read(), ap_const_lv1_1)) {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_1;
    } else {
        ap_condition_pp0_exit_iter0_state3 = ap_const_logic_0;
    }
}

void xFMinMaxLocKernel::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln887_fu_98_p2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void xFMinMaxLocKernel::thread_ap_enable_pp0() {
    ap_enable_pp0 = (ap_idle_pp0.read() ^ ap_const_logic_1);
}

void xFMinMaxLocKernel::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void xFMinMaxLocKernel::thread_ap_idle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_enable_reg_pp0_iter1.read()))) {
        ap_idle_pp0 = ap_const_logic_1;
    } else {
        ap_idle_pp0 = ap_const_logic_0;
    }
}

void xFMinMaxLocKernel::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln887_fu_98_p2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void xFMinMaxLocKernel::thread_ap_return() {
    ap_return = (!icmp_ln196_fu_113_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_ln196_fu_113_p2.read()[0].to_bool())? p_maxval_0_fu_52.read(): p_maxval_0_fu_52.read());
}

void xFMinMaxLocKernel::thread_i_V_fu_104_p2() {
    i_V_fu_104_p2 = (!t_V_reg_66.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_biguint<8>(t_V_reg_66.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void xFMinMaxLocKernel::thread_icmp_ln111_fu_127_p2() {
    icmp_ln111_fu_127_p2 = (!t_V_5_reg_77.read().is_01() || !ap_const_lv9_140.is_01())? sc_lv<1>(): sc_lv<1>(t_V_5_reg_77.read() == ap_const_lv9_140);
}

void xFMinMaxLocKernel::thread_icmp_ln196_fu_113_p2() {
    icmp_ln196_fu_113_p2 = (!p_maxval_0_fu_52.read().is_01() || !ap_const_lv32_FFFFFF80.is_01())? sc_lv<1>(): (sc_bigint<32>(p_maxval_0_fu_52.read()) > sc_bigint<32>(ap_const_lv32_FFFFFF80));
}

void xFMinMaxLocKernel::thread_icmp_ln887_fu_98_p2() {
    icmp_ln887_fu_98_p2 = (!t_V_reg_66.read().is_01() || !ap_const_lv8_B4.is_01())? sc_lv<1>(): (sc_biguint<8>(t_V_reg_66.read()) < sc_biguint<8>(ap_const_lv8_B4));
}

void xFMinMaxLocKernel::thread_icmp_ln895_fu_154_p2() {
    icmp_ln895_fu_154_p2 = (!min_val_tmp_0_fu_146_p1.read().is_01() || !max_val_tmp_0_0_fu_56.read().is_01())? sc_lv<1>(): (sc_bigint<32>(min_val_tmp_0_fu_146_p1.read()) > sc_bigint<32>(max_val_tmp_0_0_fu_56.read()));
}

void xFMinMaxLocKernel::thread_max_val_tmp_0_1_fu_160_p3() {
    max_val_tmp_0_1_fu_160_p3 = (!icmp_ln895_fu_154_p2.read()[0].is_01())? sc_lv<31>(): ((icmp_ln895_fu_154_p2.read()[0].to_bool())? zext_ln131_fu_150_p1.read(): trunc_ln1597_fu_142_p1.read());
}

void xFMinMaxLocKernel::thread_min_val_tmp_0_fu_146_p1() {
    min_val_tmp_0_fu_146_p1 = esl_zext<32,8>(p_src_data_V_dout.read());
}

void xFMinMaxLocKernel::thread_p_src_data_V_blk_n() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0.read(), ap_const_boolean_0) && 
         esl_seteq<1,1,1>(icmp_ln111_reg_205.read(), ap_const_lv1_0))) {
        p_src_data_V_blk_n = p_src_data_V_empty_n.read();
    } else {
        p_src_data_V_blk_n = ap_const_logic_1;
    }
}

void xFMinMaxLocKernel::thread_p_src_data_V_read() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_pp0_stage0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter1.read()) && 
         esl_seteq<1,1,1>(icmp_ln111_reg_205.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_block_pp0_stage0_11001.read(), ap_const_boolean_0))) {
        p_src_data_V_read = ap_const_logic_1;
    } else {
        p_src_data_V_read = ap_const_logic_0;
    }
}

void xFMinMaxLocKernel::thread_trunc_ln1597_fu_142_p1() {
    trunc_ln1597_fu_142_p1 = max_val_tmp_0_0_fu_56.read().range(31-1, 0);
}

void xFMinMaxLocKernel::thread_zext_ln131_fu_150_p1() {
    zext_ln131_fu_150_p1 = esl_zext<31,8>(p_src_data_V_dout.read());
}

void xFMinMaxLocKernel::thread_zext_ln895_fu_168_p1() {
    zext_ln895_fu_168_p1 = esl_zext<32,31>(max_val_tmp_0_1_fu_160_p3.read());
}

void xFMinMaxLocKernel::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, icmp_ln887_fu_98_p2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 4 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln111_fu_127_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_enable_reg_pp0_iter0.read()) && esl_seteq<1,1,1>(ap_block_pp0_stage0_subdone.read(), ap_const_boolean_0) && esl_seteq<1,1,1>(icmp_ln111_fu_127_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state5;
            } else {
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXX";
            break;
    }
}

}
