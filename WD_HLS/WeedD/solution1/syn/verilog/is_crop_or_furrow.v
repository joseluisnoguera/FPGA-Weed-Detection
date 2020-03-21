// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module is_crop_or_furrow (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        lines_address0,
        lines_ce0,
        lines_q0,
        px_read,
        py_read,
        crop_width_read,
        ap_return
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] lines_address0;
output   lines_ce0;
input  [56:0] lines_q0;
input  [8:0] px_read;
input  [8:0] py_read;
input  [4:0] crop_width_read;
output  [1:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg lines_ce0;
reg[1:0] ap_return;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [39:0] zext_ln1118_fu_151_p1;
reg   [39:0] zext_ln1118_reg_414;
wire   [31:0] zext_ln388_fu_155_p1;
reg   [31:0] zext_ln388_reg_419;
wire   [31:0] zext_ln390_fu_159_p1;
reg   [31:0] zext_ln390_reg_425;
wire   [0:0] icmp_ln385_fu_168_p2;
reg   [0:0] icmp_ln385_reg_433;
wire    ap_CS_fsm_state2;
wire   [2:0] i_fu_174_p2;
reg   [2:0] i_reg_437;
wire   [1:0] select_ln405_fu_201_p3;
wire   [0:0] trunc_ln386_fu_209_p1;
reg   [0:0] trunc_ln386_reg_452;
wire    ap_CS_fsm_state3;
reg   [31:0] tmp_reg_461;
reg   [2:0] i_0_reg_111;
wire    ap_CS_fsm_state6;
wire   [0:0] or_ln390_fu_324_p2;
wire   [32:0] select_ln851_fu_291_p3;
reg   [32:0] ap_phi_mux_p_033_0_i_phi_fu_125_p4;
wire   [0:0] p_Result_s_fu_268_p3;
wire   [32:0] ret_V_fu_257_p4;
reg   [1:0] ap_phi_mux_UnifiedRetVal_phi_fu_134_p4;
reg   [1:0] UnifiedRetVal_reg_131;
wire   [63:0] zext_ln386_fu_180_p1;
reg   [31:0] most_right_2_fu_68;
wire   [31:0] most_right_3_fu_358_p3;
wire   [0:0] flag_first_0_load_load_fu_330_p1;
wire   [31:0] most_right_fu_309_p2;
reg   [31:0] tmp_most_left_fu_72;
wire   [31:0] select_ln397_fu_344_p3;
wire   [31:0] most_left_fu_304_p2;
reg   [0:0] flag_first_0_fu_76;
wire  signed [15:0] sext_ln378_fu_147_p1;
wire   [0:0] icmp_ln402_fu_185_p2;
wire   [0:0] icmp_ln402_1_fu_190_p2;
wire   [0:0] and_ln402_fu_195_p2;
wire  signed [23:0] lines_m_V_1_load_new_fu_213_p4;
wire  signed [39:0] grp_fu_386_p2;
wire   [39:0] rhs_V_fu_240_p3;
wire  signed [40:0] lhs_V_fu_237_p1;
wire  signed [40:0] sext_ln728_fu_247_p1;
wire   [40:0] ret_V_13_fu_251_p2;
wire   [7:0] trunc_ln851_fu_276_p1;
wire   [0:0] icmp_ln851_fu_279_p2;
wire   [32:0] ret_V_12_fu_285_p2;
wire   [31:0] trunc_ln555_fu_300_p1;
wire   [0:0] icmp_ln390_fu_314_p2;
wire   [0:0] icmp_ln390_1_fu_319_p2;
wire   [0:0] icmp_ln397_fu_338_p2;
wire   [0:0] icmp_ln398_fu_352_p2;
wire   [15:0] grp_fu_386_p0;
reg   [1:0] ap_return_preg;
reg   [5:0] ap_NS_fsm;
reg    ap_condition_268;
reg    ap_condition_134;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_return_preg = 2'd0;
end

ip_accel_app_mul_Zio #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 24 ),
    .dout_WIDTH( 40 ))
ip_accel_app_mul_Zio_U478(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_386_p0),
    .din1(lines_m_V_1_load_new_fu_213_p4),
    .ce(1'b1),
    .dout(grp_fu_386_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 2'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) & ((icmp_ln385_reg_433 == 1'd1) | ((trunc_ln386_reg_452 == 1'd1) & (or_ln390_fu_324_p2 == 1'd0))))) begin
            ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_134_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln386_reg_452 == 1'd1) & (or_ln390_fu_324_p2 == 1'd0) & (icmp_ln385_reg_433 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        UnifiedRetVal_reg_131 <= 2'd1;
    end else if (((icmp_ln385_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        UnifiedRetVal_reg_131 <= select_ln405_fu_201_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((or_ln390_fu_324_p2 == 1'd1) & (trunc_ln386_reg_452 == 1'd1) & (icmp_ln385_reg_433 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        flag_first_0_fu_76 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        flag_first_0_fu_76 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (((trunc_ln386_reg_452 == 1'd0) & (icmp_ln385_reg_433 == 1'd0)) | ((or_ln390_fu_324_p2 == 1'd1) & (icmp_ln385_reg_433 == 1'd0))))) begin
        i_0_reg_111 <= i_reg_437;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_111 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_134)) begin
        if ((flag_first_0_load_load_fu_330_p1 == 1'd1)) begin
            most_right_2_fu_68 <= most_right_fu_309_p2;
        end else if ((flag_first_0_load_load_fu_330_p1 == 1'd0)) begin
            most_right_2_fu_68 <= most_right_3_fu_358_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_134)) begin
        if ((flag_first_0_load_load_fu_330_p1 == 1'd1)) begin
            tmp_most_left_fu_72 <= most_left_fu_304_p2;
        end else if ((flag_first_0_load_load_fu_330_p1 == 1'd0)) begin
            tmp_most_left_fu_72 <= select_ln397_fu_344_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_437 <= i_fu_174_p2;
        icmp_ln385_reg_433 <= icmp_ln385_fu_168_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((trunc_ln386_fu_209_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_reg_461 <= {{lines_q0[56:25]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        trunc_ln386_reg_452 <= trunc_ln386_fu_209_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        zext_ln1118_reg_414[15 : 0] <= zext_ln1118_fu_151_p1[15 : 0];
        zext_ln388_reg_419[4 : 0] <= zext_ln388_fu_155_p1[4 : 0];
        zext_ln390_reg_425[8 : 0] <= zext_ln390_fu_159_p1[8 : 0];
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state6) & ((icmp_ln385_reg_433 == 1'd1) | ((trunc_ln386_reg_452 == 1'd1) & (or_ln390_fu_324_p2 == 1'd0)))) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln386_reg_452 == 1'd1) & (or_ln390_fu_324_p2 == 1'd0) & (icmp_ln385_reg_433 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_phi_mux_UnifiedRetVal_phi_fu_134_p4 = 2'd1;
    end else begin
        ap_phi_mux_UnifiedRetVal_phi_fu_134_p4 = UnifiedRetVal_reg_131;
    end
end

always @ (*) begin
    if ((1'b1 == ap_condition_268)) begin
        if ((p_Result_s_fu_268_p3 == 1'd0)) begin
            ap_phi_mux_p_033_0_i_phi_fu_125_p4 = {{ret_V_13_fu_251_p2[40:8]}};
        end else if ((p_Result_s_fu_268_p3 == 1'd1)) begin
            ap_phi_mux_p_033_0_i_phi_fu_125_p4 = select_ln851_fu_291_p3;
        end else begin
            ap_phi_mux_p_033_0_i_phi_fu_125_p4 = 'bx;
        end
    end else begin
        ap_phi_mux_p_033_0_i_phi_fu_125_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ((icmp_ln385_reg_433 == 1'd1) | ((trunc_ln386_reg_452 == 1'd1) & (or_ln390_fu_324_p2 == 1'd0))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ((icmp_ln385_reg_433 == 1'd1) | ((trunc_ln386_reg_452 == 1'd1) & (or_ln390_fu_324_p2 == 1'd0))))) begin
        ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_134_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        lines_ce0 = 1'b1;
    end else begin
        lines_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln385_fu_168_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((trunc_ln386_fu_209_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & ((icmp_ln385_reg_433 == 1'd1) | ((trunc_ln386_reg_452 == 1'd1) & (or_ln390_fu_324_p2 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln402_fu_195_p2 = (icmp_ln402_fu_185_p2 & icmp_ln402_1_fu_190_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

always @ (*) begin
    ap_condition_134 = ((or_ln390_fu_324_p2 == 1'd1) & (trunc_ln386_reg_452 == 1'd1) & (icmp_ln385_reg_433 == 1'd0) & (1'b1 == ap_CS_fsm_state6));
end

always @ (*) begin
    ap_condition_268 = ((trunc_ln386_reg_452 == 1'd1) & (icmp_ln385_reg_433 == 1'd0) & (1'b1 == ap_CS_fsm_state6));
end

assign flag_first_0_load_load_fu_330_p1 = flag_first_0_fu_76;

assign grp_fu_386_p0 = zext_ln1118_reg_414;

assign i_fu_174_p2 = (i_0_reg_111 + 3'd1);

assign icmp_ln385_fu_168_p2 = ((i_0_reg_111 == 3'd6) ? 1'b1 : 1'b0);

assign icmp_ln390_1_fu_319_p2 = (($signed(zext_ln390_reg_425) < $signed(most_left_fu_304_p2)) ? 1'b1 : 1'b0);

assign icmp_ln390_fu_314_p2 = (($signed(zext_ln390_reg_425) > $signed(most_right_fu_309_p2)) ? 1'b1 : 1'b0);

assign icmp_ln397_fu_338_p2 = (($signed(most_left_fu_304_p2) < $signed(tmp_most_left_fu_72)) ? 1'b1 : 1'b0);

assign icmp_ln398_fu_352_p2 = (($signed(most_right_fu_309_p2) > $signed(most_right_2_fu_68)) ? 1'b1 : 1'b0);

assign icmp_ln402_1_fu_190_p2 = (($signed(zext_ln390_reg_425) < $signed(most_right_2_fu_68)) ? 1'b1 : 1'b0);

assign icmp_ln402_fu_185_p2 = (($signed(zext_ln390_reg_425) > $signed(tmp_most_left_fu_72)) ? 1'b1 : 1'b0);

assign icmp_ln851_fu_279_p2 = ((trunc_ln851_fu_276_p1 == 8'd0) ? 1'b1 : 1'b0);

assign lhs_V_fu_237_p1 = grp_fu_386_p2;

assign lines_address0 = zext_ln386_fu_180_p1;

assign lines_m_V_1_load_new_fu_213_p4 = {{lines_q0[24:1]}};

assign most_left_fu_304_p2 = (trunc_ln555_fu_300_p1 - zext_ln388_reg_419);

assign most_right_3_fu_358_p3 = ((icmp_ln398_fu_352_p2[0:0] === 1'b1) ? most_right_fu_309_p2 : most_right_2_fu_68);

assign most_right_fu_309_p2 = (trunc_ln555_fu_300_p1 + zext_ln388_reg_419);

assign or_ln390_fu_324_p2 = (icmp_ln390_fu_314_p2 | icmp_ln390_1_fu_319_p2);

assign p_Result_s_fu_268_p3 = ret_V_13_fu_251_p2[32'd40];

assign ret_V_12_fu_285_p2 = (33'd1 + ret_V_fu_257_p4);

assign ret_V_13_fu_251_p2 = ($signed(lhs_V_fu_237_p1) + $signed(sext_ln728_fu_247_p1));

assign ret_V_fu_257_p4 = {{ret_V_13_fu_251_p2[40:8]}};

assign rhs_V_fu_240_p3 = {{tmp_reg_461}, {8'd0}};

assign select_ln397_fu_344_p3 = ((icmp_ln397_fu_338_p2[0:0] === 1'b1) ? most_left_fu_304_p2 : tmp_most_left_fu_72);

assign select_ln405_fu_201_p3 = ((and_ln402_fu_195_p2[0:0] === 1'b1) ? 2'd3 : 2'd0);

assign select_ln851_fu_291_p3 = ((icmp_ln851_fu_279_p2[0:0] === 1'b1) ? ret_V_fu_257_p4 : ret_V_12_fu_285_p2);

assign sext_ln378_fu_147_p1 = $signed(px_read);

assign sext_ln728_fu_247_p1 = $signed(rhs_V_fu_240_p3);

assign trunc_ln386_fu_209_p1 = lines_q0[0:0];

assign trunc_ln555_fu_300_p1 = ap_phi_mux_p_033_0_i_phi_fu_125_p4[31:0];

assign trunc_ln851_fu_276_p1 = grp_fu_386_p2[7:0];

assign zext_ln1118_fu_151_p1 = $unsigned(sext_ln378_fu_147_p1);

assign zext_ln386_fu_180_p1 = i_0_reg_111;

assign zext_ln388_fu_155_p1 = crop_width_read;

assign zext_ln390_fu_159_p1 = py_read;

always @ (posedge ap_clk) begin
    zext_ln1118_reg_414[39:16] <= 24'b000000000000000000000000;
    zext_ln388_reg_419[31:5] <= 27'b000000000000000000000000000;
    zext_ln390_reg_425[31:9] <= 23'b00000000000000000000000;
end

endmodule //is_crop_or_furrow