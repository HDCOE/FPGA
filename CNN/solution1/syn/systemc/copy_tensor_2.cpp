// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "copy_tensor_2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic copy_tensor_2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic copy_tensor_2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<5> copy_tensor_2::ap_ST_fsm_state1 = "1";
const sc_lv<5> copy_tensor_2::ap_ST_fsm_state2 = "10";
const sc_lv<5> copy_tensor_2::ap_ST_fsm_state3 = "100";
const sc_lv<5> copy_tensor_2::ap_ST_fsm_state4 = "1000";
const sc_lv<5> copy_tensor_2::ap_ST_fsm_state5 = "10000";
const sc_lv<32> copy_tensor_2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> copy_tensor_2::ap_const_lv32_1 = "1";
const sc_lv<1> copy_tensor_2::ap_const_lv1_0 = "0";
const sc_lv<32> copy_tensor_2::ap_const_lv32_2 = "10";
const sc_lv<32> copy_tensor_2::ap_const_lv32_3 = "11";
const sc_lv<2> copy_tensor_2::ap_const_lv2_0 = "00";
const sc_lv<1> copy_tensor_2::ap_const_lv1_1 = "1";
const sc_lv<32> copy_tensor_2::ap_const_lv32_4 = "100";
const sc_lv<2> copy_tensor_2::ap_const_lv2_2 = "10";
const sc_lv<2> copy_tensor_2::ap_const_lv2_1 = "1";
const bool copy_tensor_2::ap_const_boolean_1 = true;

copy_tensor_2::copy_tensor_2(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_132_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_i_phi_fu_119_p4);
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_ap_phi_mux_j_phi_fu_107_p4);
    sensitive << ( j_reg_102 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_132_p2 );

    SC_METHOD(thread_exitcond2_fu_132_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( k_reg_79 );

    SC_METHOD(thread_i_cast2_fu_168_p1);
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_in1_V_address0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( tmp_8_fu_177_p1 );

    SC_METHOD(thread_in1_V_ce0);
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_in1_V_d0);
    sensitive << ( in2_V_load_phi_reg_215 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_in1_V_we0);
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_phi_mux_i_phi_fu_119_p4 );

    SC_METHOD(thread_in2_V_load_phi_fu_148_p3);
    sensitive << ( p_read );
    sensitive << ( p_read1 );
    sensitive << ( tmp_23_fu_144_p1 );

    SC_METHOD(thread_j_cast3_fu_154_p1);
    sensitive << ( j_reg_102 );

    SC_METHOD(thread_k_1_fu_138_p2);
    sensitive << ( k_reg_79 );

    SC_METHOD(thread_next_mul_fu_127_p2);
    sensitive << ( size1_y );
    sensitive << ( phi_mul_reg_90 );

    SC_METHOD(thread_tmp3_fu_164_p1);
    sensitive << ( size1_x );
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_tmp3_fu_164_p2);
    sensitive << ( tmp_reg_220 );
    sensitive << ( tmp3_fu_164_p1 );

    SC_METHOD(thread_tmp_23_fu_144_p1);
    sensitive << ( k_reg_79 );

    SC_METHOD(thread_tmp_7_fu_172_p2);
    sensitive << ( tmp3_reg_225 );
    sensitive << ( i_cast2_fu_168_p1 );

    SC_METHOD(thread_tmp_8_fu_177_p1);
    sensitive << ( tmp_7_fu_172_p2 );

    SC_METHOD(thread_tmp_fu_158_p2);
    sensitive << ( phi_mul_reg_90 );
    sensitive << ( j_cast3_fu_154_p1 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( exitcond2_fu_132_p2 );
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( ap_phi_mux_j_phi_fu_107_p4 );
    sensitive << ( ap_CS_fsm_state5 );
    sensitive << ( ap_phi_mux_i_phi_fu_119_p4 );

    ap_CS_fsm = "00001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "copy_tensor_2_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, in1_V_address0, "(port)in1_V_address0");
    sc_trace(mVcdFile, in1_V_ce0, "(port)in1_V_ce0");
    sc_trace(mVcdFile, in1_V_we0, "(port)in1_V_we0");
    sc_trace(mVcdFile, in1_V_d0, "(port)in1_V_d0");
    sc_trace(mVcdFile, p_read, "(port)p_read");
    sc_trace(mVcdFile, p_read1, "(port)p_read1");
    sc_trace(mVcdFile, size1_x, "(port)size1_x");
    sc_trace(mVcdFile, size1_y, "(port)size1_y");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, next_mul_fu_127_p2, "next_mul_fu_127_p2");
    sc_trace(mVcdFile, next_mul_reg_202, "next_mul_reg_202");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, k_1_fu_138_p2, "k_1_fu_138_p2");
    sc_trace(mVcdFile, k_1_reg_210, "k_1_reg_210");
    sc_trace(mVcdFile, in2_V_load_phi_fu_148_p3, "in2_V_load_phi_fu_148_p3");
    sc_trace(mVcdFile, in2_V_load_phi_reg_215, "in2_V_load_phi_reg_215");
    sc_trace(mVcdFile, exitcond2_fu_132_p2, "exitcond2_fu_132_p2");
    sc_trace(mVcdFile, tmp_fu_158_p2, "tmp_fu_158_p2");
    sc_trace(mVcdFile, tmp_reg_220, "tmp_reg_220");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, ap_phi_mux_j_phi_fu_107_p4, "ap_phi_mux_j_phi_fu_107_p4");
    sc_trace(mVcdFile, tmp3_fu_164_p2, "tmp3_fu_164_p2");
    sc_trace(mVcdFile, tmp3_reg_225, "tmp3_reg_225");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, k_reg_79, "k_reg_79");
    sc_trace(mVcdFile, phi_mul_reg_90, "phi_mul_reg_90");
    sc_trace(mVcdFile, j_reg_102, "j_reg_102");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, ap_phi_mux_i_phi_fu_119_p4, "ap_phi_mux_i_phi_fu_119_p4");
    sc_trace(mVcdFile, i_reg_115, "i_reg_115");
    sc_trace(mVcdFile, tmp_8_fu_177_p1, "tmp_8_fu_177_p1");
    sc_trace(mVcdFile, tmp_23_fu_144_p1, "tmp_23_fu_144_p1");
    sc_trace(mVcdFile, j_cast3_fu_154_p1, "j_cast3_fu_154_p1");
    sc_trace(mVcdFile, tmp3_fu_164_p1, "tmp3_fu_164_p1");
    sc_trace(mVcdFile, i_cast2_fu_168_p1, "i_cast2_fu_168_p1");
    sc_trace(mVcdFile, tmp_7_fu_172_p2, "tmp_7_fu_172_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

copy_tensor_2::~copy_tensor_2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void copy_tensor_2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_reg_115 = ap_const_lv1_0;
    } else if ((esl_seteq<1,1,1>(ap_phi_mux_i_phi_fu_119_p4.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        i_reg_115 = ap_const_lv1_1;
    }
    if ((esl_seteq<1,1,1>(ap_phi_mux_i_phi_fu_119_p4.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        j_reg_102 = ap_const_lv1_1;
    } else if ((esl_seteq<1,1,1>(exitcond2_fu_132_p2.read(), ap_const_lv1_0) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        j_reg_102 = ap_const_lv1_0;
    }
    if ((esl_seteq<1,1,1>(ap_phi_mux_j_phi_fu_107_p4.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        k_reg_79 = k_1_reg_210.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        k_reg_79 = ap_const_lv2_0;
    }
    if ((esl_seteq<1,1,1>(ap_phi_mux_j_phi_fu_107_p4.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        phi_mul_reg_90 = next_mul_reg_202.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        phi_mul_reg_90 = ap_const_lv32_0;
    }
    if ((esl_seteq<1,1,1>(exitcond2_fu_132_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        in2_V_load_phi_reg_215 = in2_V_load_phi_fu_148_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        k_1_reg_210 = k_1_fu_138_p2.read();
        next_mul_reg_202 = next_mul_fu_127_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        tmp3_reg_225 = tmp3_fu_164_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_phi_mux_j_phi_fu_107_p4.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
        tmp_reg_220 = tmp_fu_158_p2.read();
    }
}

void copy_tensor_2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void copy_tensor_2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void copy_tensor_2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void copy_tensor_2::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void copy_tensor_2::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void copy_tensor_2::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(exitcond2_fu_132_p2.read(), ap_const_lv1_1) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void copy_tensor_2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void copy_tensor_2::thread_ap_phi_mux_i_phi_fu_119_p4() {
    ap_phi_mux_i_phi_fu_119_p4 = i_reg_115.read();
}

void copy_tensor_2::thread_ap_phi_mux_j_phi_fu_107_p4() {
    ap_phi_mux_j_phi_fu_107_p4 = j_reg_102.read();
}

void copy_tensor_2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(exitcond2_fu_132_p2.read(), ap_const_lv1_1) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void copy_tensor_2::thread_exitcond2_fu_132_p2() {
    exitcond2_fu_132_p2 = (!k_reg_79.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(k_reg_79.read() == ap_const_lv2_2);
}

void copy_tensor_2::thread_i_cast2_fu_168_p1() {
    i_cast2_fu_168_p1 = esl_zext<32,1>(i_reg_115.read());
}

void copy_tensor_2::thread_in1_V_address0() {
    in1_V_address0 =  (sc_lv<5>) (tmp_8_fu_177_p1.read());
}

void copy_tensor_2::thread_in1_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        in1_V_ce0 = ap_const_logic_1;
    } else {
        in1_V_ce0 = ap_const_logic_0;
    }
}

void copy_tensor_2::thread_in1_V_d0() {
    in1_V_d0 = in2_V_load_phi_reg_215.read();
}

void copy_tensor_2::thread_in1_V_we0() {
    if ((esl_seteq<1,1,1>(ap_phi_mux_i_phi_fu_119_p4.read(), ap_const_lv1_0) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        in1_V_we0 = ap_const_logic_1;
    } else {
        in1_V_we0 = ap_const_logic_0;
    }
}

void copy_tensor_2::thread_in2_V_load_phi_fu_148_p3() {
    in2_V_load_phi_fu_148_p3 = (!tmp_23_fu_144_p1.read()[0].is_01())? sc_lv<16>(): ((tmp_23_fu_144_p1.read()[0].to_bool())? p_read1.read(): p_read.read());
}

void copy_tensor_2::thread_j_cast3_fu_154_p1() {
    j_cast3_fu_154_p1 = esl_zext<32,1>(j_reg_102.read());
}

void copy_tensor_2::thread_k_1_fu_138_p2() {
    k_1_fu_138_p2 = (!k_reg_79.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(k_reg_79.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void copy_tensor_2::thread_next_mul_fu_127_p2() {
    next_mul_fu_127_p2 = (!phi_mul_reg_90.read().is_01() || !size1_y.read().is_01())? sc_lv<32>(): (sc_biguint<32>(phi_mul_reg_90.read()) + sc_biguint<32>(size1_y.read()));
}

void copy_tensor_2::thread_tmp3_fu_164_p1() {
    tmp3_fu_164_p1 = size1_x.read();
}

void copy_tensor_2::thread_tmp3_fu_164_p2() {
    tmp3_fu_164_p2 = (!tmp_reg_220.read().is_01() || !tmp3_fu_164_p1.read().is_01())? sc_lv<32>(): sc_bigint<32>(tmp_reg_220.read()) * sc_bigint<32>(tmp3_fu_164_p1.read());
}

void copy_tensor_2::thread_tmp_23_fu_144_p1() {
    tmp_23_fu_144_p1 = k_reg_79.read().range(1-1, 0);
}

void copy_tensor_2::thread_tmp_7_fu_172_p2() {
    tmp_7_fu_172_p2 = (!i_cast2_fu_168_p1.read().is_01() || !tmp3_reg_225.read().is_01())? sc_lv<32>(): (sc_biguint<32>(i_cast2_fu_168_p1.read()) + sc_biguint<32>(tmp3_reg_225.read()));
}

void copy_tensor_2::thread_tmp_8_fu_177_p1() {
    tmp_8_fu_177_p1 = esl_sext<64,32>(tmp_7_fu_172_p2.read());
}

void copy_tensor_2::thread_tmp_fu_158_p2() {
    tmp_fu_158_p2 = (!j_cast3_fu_154_p1.read().is_01() || !phi_mul_reg_90.read().is_01())? sc_lv<32>(): (sc_biguint<32>(j_cast3_fu_154_p1.read()) + sc_biguint<32>(phi_mul_reg_90.read()));
}

void copy_tensor_2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(exitcond2_fu_132_p2.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            if ((esl_seteq<1,1,1>(ap_phi_mux_j_phi_fu_107_p4.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read()))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state4;
            }
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            if ((esl_seteq<1,1,1>(ap_phi_mux_i_phi_fu_119_p4.read(), ap_const_lv1_1) && esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
                ap_NS_fsm = ap_ST_fsm_state3;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        default : 
            ap_NS_fsm = "XXXXX";
            break;
    }
}

}
