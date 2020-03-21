// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module xFMinMaxLocKernel (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_src_data_V_dout,
        p_src_data_V_empty_n,
        p_src_data_V_read,
        ap_return
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_pp0_stage0 = 4'd4;
parameter    ap_ST_fsm_state5 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] p_src_data_V_dout;
input   p_src_data_V_empty_n;
output   p_src_data_V_read;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_src_data_V_read;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    p_src_data_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] icmp_ln111_reg_205;
reg   [8:0] t_V_5_reg_77;
wire   [0:0] icmp_ln887_fu_98_p2;
wire    ap_CS_fsm_state2;
wire   [7:0] i_V_fu_104_p2;
reg   [7:0] i_V_reg_200;
wire   [0:0] icmp_ln111_fu_127_p2;
wire    ap_block_state3_pp0_stage0_iter0;
reg    ap_block_state4_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [8:0] add_ln1597_fu_133_p2;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg   [7:0] t_V_reg_66;
wire    ap_CS_fsm_state5;
reg   [31:0] p_maxval_0_fu_52;
wire   [31:0] zext_ln895_fu_168_p1;
reg   [31:0] max_val_tmp_0_0_fu_56;
wire   [0:0] icmp_ln196_fu_113_p2;
wire   [31:0] min_val_tmp_0_fu_146_p1;
wire   [0:0] icmp_ln895_fu_154_p2;
wire   [30:0] zext_ln131_fu_150_p1;
wire   [30:0] trunc_ln1597_fu_142_p1;
wire   [30:0] max_val_tmp_0_1_fu_160_p3;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln887_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state3))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((icmp_ln887_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln111_reg_205 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        max_val_tmp_0_0_fu_56 <= zext_ln895_fu_168_p1;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        max_val_tmp_0_0_fu_56 <= 32'd4294967168;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln111_reg_205 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_maxval_0_fu_52 <= zext_ln895_fu_168_p1;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_maxval_0_fu_52 <= 32'd4294967168;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln111_fu_127_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        t_V_5_reg_77 <= add_ln1597_fu_133_p2;
    end else if (((icmp_ln887_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        t_V_5_reg_77 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        t_V_reg_66 <= i_V_reg_200;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        t_V_reg_66 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_V_reg_200 <= i_V_fu_104_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln111_reg_205 <= icmp_ln111_fu_127_p2;
    end
end

always @ (*) begin
    if ((icmp_ln111_fu_127_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln887_fu_98_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln887_fu_98_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln111_reg_205 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_V_blk_n = p_src_data_V_empty_n;
    end else begin
        p_src_data_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln111_reg_205 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_src_data_V_read = 1'b1;
    end else begin
        p_src_data_V_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln887_fu_98_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln111_fu_127_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln111_fu_127_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1597_fu_133_p2 = (t_V_5_reg_77 + 9'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((icmp_ln111_reg_205 == 1'd0) & (p_src_data_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((icmp_ln111_reg_205 == 1'd0) & (p_src_data_V_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_pp0_stage0_iter1 = ((icmp_ln111_reg_205 == 1'd0) & (p_src_data_V_empty_n == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return = ((icmp_ln196_fu_113_p2[0:0] === 1'b1) ? p_maxval_0_fu_52 : p_maxval_0_fu_52);

assign i_V_fu_104_p2 = (t_V_reg_66 + 8'd1);

assign icmp_ln111_fu_127_p2 = ((t_V_5_reg_77 == 9'd320) ? 1'b1 : 1'b0);

assign icmp_ln196_fu_113_p2 = (($signed(p_maxval_0_fu_52) > $signed(32'd4294967168)) ? 1'b1 : 1'b0);

assign icmp_ln887_fu_98_p2 = ((t_V_reg_66 < 8'd180) ? 1'b1 : 1'b0);

assign icmp_ln895_fu_154_p2 = (($signed(min_val_tmp_0_fu_146_p1) > $signed(max_val_tmp_0_0_fu_56)) ? 1'b1 : 1'b0);

assign max_val_tmp_0_1_fu_160_p3 = ((icmp_ln895_fu_154_p2[0:0] === 1'b1) ? zext_ln131_fu_150_p1 : trunc_ln1597_fu_142_p1);

assign min_val_tmp_0_fu_146_p1 = p_src_data_V_dout;

assign trunc_ln1597_fu_142_p1 = max_val_tmp_0_0_fu_56[30:0];

assign zext_ln131_fu_150_p1 = p_src_data_V_dout;

assign zext_ln895_fu_168_p1 = max_val_tmp_0_1_fu_160_p3;

endmodule //xFMinMaxLocKernel