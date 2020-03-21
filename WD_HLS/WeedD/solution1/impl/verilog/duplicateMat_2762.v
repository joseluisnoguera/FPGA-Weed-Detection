// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module duplicateMat_2762 (
        ap_start,
        start_full_n,
        start_out,
        start_write,
        p_src_cols_dout,
        p_src_cols_empty_n,
        p_src_cols_read,
        p_src_data_V_dout,
        p_src_data_V_empty_n,
        p_src_data_V_read,
        p_dst1_rows,
        p_dst1_cols,
        p_dst1_data_V_din,
        p_dst1_data_V_full_n,
        p_dst1_data_V_write,
        p_dst2_data_V_din,
        p_dst2_data_V_full_n,
        p_dst2_data_V_write,
        ap_clk,
        ap_rst,
        p_dst1_rows_ap_vld,
        p_dst1_cols_ap_vld,
        ap_done,
        ap_ready,
        ap_idle,
        ap_continue
);


input   ap_start;
input   start_full_n;
output   start_out;
output   start_write;
input  [11:0] p_src_cols_dout;
input   p_src_cols_empty_n;
output   p_src_cols_read;
input  [23:0] p_src_data_V_dout;
input   p_src_data_V_empty_n;
output   p_src_data_V_read;
input  [10:0] p_dst1_rows;
input  [11:0] p_dst1_cols;
output  [23:0] p_dst1_data_V_din;
input   p_dst1_data_V_full_n;
output   p_dst1_data_V_write;
output  [23:0] p_dst2_data_V_din;
input   p_dst2_data_V_full_n;
output   p_dst2_data_V_write;
input   ap_clk;
input   ap_rst;
input   p_dst1_rows_ap_vld;
input   p_dst1_cols_ap_vld;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;

reg start_write;

reg    real_start;
reg    start_once_reg;
wire    internal_ap_ready;
wire    duplicateMat_2_Block_U0_ap_start;
wire    duplicateMat_2_Block_U0_ap_done;
wire    duplicateMat_2_Block_U0_ap_continue;
wire    duplicateMat_2_Block_U0_ap_idle;
wire    duplicateMat_2_Block_U0_ap_ready;
wire    duplicateMat_2_Block_U0_start_out;
wire    duplicateMat_2_Block_U0_start_write;
wire    duplicateMat_2_Block_U0_p_src_cols_read;
wire   [11:0] duplicateMat_2_Block_U0_p_src_cols_load6_out_out_din;
wire    duplicateMat_2_Block_U0_p_src_cols_load6_out_out_write;
wire   [10:0] duplicateMat_2_Block_U0_p_dst1_rows_out_din;
wire    duplicateMat_2_Block_U0_p_dst1_rows_out_write;
wire   [11:0] duplicateMat_2_Block_U0_p_dst1_cols_out_din;
wire    duplicateMat_2_Block_U0_p_dst1_cols_out_write;
wire    duplicateMat_2_Loop_U0_ap_start;
wire    duplicateMat_2_Loop_U0_ap_done;
wire    duplicateMat_2_Loop_U0_ap_continue;
wire    duplicateMat_2_Loop_U0_ap_idle;
wire    duplicateMat_2_Loop_U0_ap_ready;
wire    duplicateMat_2_Loop_U0_start_out;
wire    duplicateMat_2_Loop_U0_start_write;
wire    duplicateMat_2_Loop_U0_p_src_cols_load6_loc_read;
wire    duplicateMat_2_Loop_U0_p_src_data_V_read;
wire   [23:0] duplicateMat_2_Loop_U0_src_V_V_din;
wire    duplicateMat_2_Loop_U0_src_V_V_write;
wire   [11:0] duplicateMat_2_Loop_U0_p_src_cols_load6_loc_out_din;
wire    duplicateMat_2_Loop_U0_p_src_cols_load6_loc_out_write;
wire    xFDuplicate_2_U0_ap_start;
wire    xFDuplicate_2_U0_ap_done;
wire    xFDuplicate_2_U0_ap_continue;
wire    xFDuplicate_2_U0_ap_idle;
wire    xFDuplicate_2_U0_ap_ready;
wire    xFDuplicate_2_U0_p_src_mat_V_V_read;
wire   [23:0] xFDuplicate_2_U0_p_dst1_mat_V_V_din;
wire    xFDuplicate_2_U0_p_dst1_mat_V_V_write;
wire   [23:0] xFDuplicate_2_U0_p_dst2_mat_V_V_din;
wire    xFDuplicate_2_U0_p_dst2_mat_V_V_write;
wire    xFDuplicate_2_U0_p_src_cols_load6_loc_read;
wire    duplicateMat_2_Loop_1_U0_ap_start;
wire    duplicateMat_2_Loop_1_U0_ap_done;
wire    duplicateMat_2_Loop_1_U0_ap_continue;
wire    duplicateMat_2_Loop_1_U0_ap_idle;
wire    duplicateMat_2_Loop_1_U0_ap_ready;
wire    duplicateMat_2_Loop_1_U0_p_dst1_rows_read;
wire    duplicateMat_2_Loop_1_U0_p_dst1_cols_read;
wire    duplicateMat_2_Loop_1_U0_dst_V_V_read;
wire   [23:0] duplicateMat_2_Loop_1_U0_p_dst1_data_V_din;
wire    duplicateMat_2_Loop_1_U0_p_dst1_data_V_write;
wire    duplicateMat_2_Loop_1_U0_dst1_V_V_read;
wire   [23:0] duplicateMat_2_Loop_1_U0_p_dst2_data_V_din;
wire    duplicateMat_2_Loop_1_U0_p_dst2_data_V_write;
wire    ap_sync_continue;
wire    p_src_cols_load6_loc_1_full_n;
wire   [11:0] p_src_cols_load6_loc_1_dout;
wire    p_src_cols_load6_loc_1_empty_n;
wire    p_dst1_rows_c_i_full_n;
wire   [10:0] p_dst1_rows_c_i_dout;
wire    p_dst1_rows_c_i_empty_n;
wire    p_dst1_cols_c_i_full_n;
wire   [11:0] p_dst1_cols_c_i_dout;
wire    p_dst1_cols_c_i_empty_n;
wire    src_V_V_full_n;
wire   [23:0] src_V_V_dout;
wire    src_V_V_empty_n;
wire    p_src_cols_load6_loc_s_full_n;
wire   [11:0] p_src_cols_load6_loc_s_dout;
wire    p_src_cols_load6_loc_s_empty_n;
wire    dst_V_V_full_n;
wire   [23:0] dst_V_V_dout;
wire    dst_V_V_empty_n;
wire    dst1_V_V_full_n;
wire   [23:0] dst1_V_V_dout;
wire    dst1_V_V_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_duplicateMat_2_Block_U0_ap_ready;
wire    ap_sync_duplicateMat_2_Block_U0_ap_ready;
reg   [1:0] duplicateMat_2_Block_U0_ap_ready_count;
reg    ap_sync_reg_duplicateMat_2_Loop_U0_ap_ready;
wire    ap_sync_duplicateMat_2_Loop_U0_ap_ready;
reg   [1:0] duplicateMat_2_Loop_U0_ap_ready_count;
wire   [0:0] start_for_duplicateMat_2_Loop_1_U0_din;
wire    start_for_duplicateMat_2_Loop_1_U0_full_n;
wire   [0:0] start_for_duplicateMat_2_Loop_1_U0_dout;
wire    start_for_duplicateMat_2_Loop_1_U0_empty_n;
wire   [0:0] start_for_xFDuplicate_2_U0_din;
wire    start_for_xFDuplicate_2_U0_full_n;
wire   [0:0] start_for_xFDuplicate_2_U0_dout;
wire    start_for_xFDuplicate_2_U0_empty_n;
wire    xFDuplicate_2_U0_start_full_n;
wire    xFDuplicate_2_U0_start_write;
wire    duplicateMat_2_Loop_1_U0_start_full_n;
wire    duplicateMat_2_Loop_1_U0_start_write;

// power-on initialization
initial begin
#0 start_once_reg = 1'b0;
#0 ap_sync_reg_duplicateMat_2_Block_U0_ap_ready = 1'b0;
#0 duplicateMat_2_Block_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_duplicateMat_2_Loop_U0_ap_ready = 1'b0;
#0 duplicateMat_2_Loop_U0_ap_ready_count = 2'd0;
end

duplicateMat_2_Block duplicateMat_2_Block_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(duplicateMat_2_Block_U0_ap_start),
    .start_full_n(start_for_duplicateMat_2_Loop_1_U0_full_n),
    .ap_done(duplicateMat_2_Block_U0_ap_done),
    .ap_continue(duplicateMat_2_Block_U0_ap_continue),
    .ap_idle(duplicateMat_2_Block_U0_ap_idle),
    .ap_ready(duplicateMat_2_Block_U0_ap_ready),
    .start_out(duplicateMat_2_Block_U0_start_out),
    .start_write(duplicateMat_2_Block_U0_start_write),
    .p_src_cols_dout(p_src_cols_dout),
    .p_src_cols_empty_n(p_src_cols_empty_n),
    .p_src_cols_read(duplicateMat_2_Block_U0_p_src_cols_read),
    .p_src_cols_load6_out_out_din(duplicateMat_2_Block_U0_p_src_cols_load6_out_out_din),
    .p_src_cols_load6_out_out_full_n(p_src_cols_load6_loc_1_full_n),
    .p_src_cols_load6_out_out_write(duplicateMat_2_Block_U0_p_src_cols_load6_out_out_write),
    .p_dst1_rows(p_dst1_rows),
    .p_dst1_cols(p_dst1_cols),
    .p_dst1_rows_out_din(duplicateMat_2_Block_U0_p_dst1_rows_out_din),
    .p_dst1_rows_out_full_n(p_dst1_rows_c_i_full_n),
    .p_dst1_rows_out_write(duplicateMat_2_Block_U0_p_dst1_rows_out_write),
    .p_dst1_cols_out_din(duplicateMat_2_Block_U0_p_dst1_cols_out_din),
    .p_dst1_cols_out_full_n(p_dst1_cols_c_i_full_n),
    .p_dst1_cols_out_write(duplicateMat_2_Block_U0_p_dst1_cols_out_write)
);

duplicateMat_2_Loop_s duplicateMat_2_Loop_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(duplicateMat_2_Loop_U0_ap_start),
    .start_full_n(start_for_xFDuplicate_2_U0_full_n),
    .ap_done(duplicateMat_2_Loop_U0_ap_done),
    .ap_continue(duplicateMat_2_Loop_U0_ap_continue),
    .ap_idle(duplicateMat_2_Loop_U0_ap_idle),
    .ap_ready(duplicateMat_2_Loop_U0_ap_ready),
    .start_out(duplicateMat_2_Loop_U0_start_out),
    .start_write(duplicateMat_2_Loop_U0_start_write),
    .p_src_cols_load6_loc_dout(p_src_cols_load6_loc_1_dout),
    .p_src_cols_load6_loc_empty_n(p_src_cols_load6_loc_1_empty_n),
    .p_src_cols_load6_loc_read(duplicateMat_2_Loop_U0_p_src_cols_load6_loc_read),
    .p_src_data_V_dout(p_src_data_V_dout),
    .p_src_data_V_empty_n(p_src_data_V_empty_n),
    .p_src_data_V_read(duplicateMat_2_Loop_U0_p_src_data_V_read),
    .src_V_V_din(duplicateMat_2_Loop_U0_src_V_V_din),
    .src_V_V_full_n(src_V_V_full_n),
    .src_V_V_write(duplicateMat_2_Loop_U0_src_V_V_write),
    .p_src_cols_load6_loc_out_din(duplicateMat_2_Loop_U0_p_src_cols_load6_loc_out_din),
    .p_src_cols_load6_loc_out_full_n(p_src_cols_load6_loc_s_full_n),
    .p_src_cols_load6_loc_out_write(duplicateMat_2_Loop_U0_p_src_cols_load6_loc_out_write)
);

xFDuplicate_2 xFDuplicate_2_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(xFDuplicate_2_U0_ap_start),
    .ap_done(xFDuplicate_2_U0_ap_done),
    .ap_continue(xFDuplicate_2_U0_ap_continue),
    .ap_idle(xFDuplicate_2_U0_ap_idle),
    .ap_ready(xFDuplicate_2_U0_ap_ready),
    .p_src_mat_V_V_dout(src_V_V_dout),
    .p_src_mat_V_V_empty_n(src_V_V_empty_n),
    .p_src_mat_V_V_read(xFDuplicate_2_U0_p_src_mat_V_V_read),
    .p_dst1_mat_V_V_din(xFDuplicate_2_U0_p_dst1_mat_V_V_din),
    .p_dst1_mat_V_V_full_n(dst_V_V_full_n),
    .p_dst1_mat_V_V_write(xFDuplicate_2_U0_p_dst1_mat_V_V_write),
    .p_dst2_mat_V_V_din(xFDuplicate_2_U0_p_dst2_mat_V_V_din),
    .p_dst2_mat_V_V_full_n(dst1_V_V_full_n),
    .p_dst2_mat_V_V_write(xFDuplicate_2_U0_p_dst2_mat_V_V_write),
    .p_src_cols_load6_loc_dout(p_src_cols_load6_loc_s_dout),
    .p_src_cols_load6_loc_empty_n(p_src_cols_load6_loc_s_empty_n),
    .p_src_cols_load6_loc_read(xFDuplicate_2_U0_p_src_cols_load6_loc_read)
);

duplicateMat_2_Loop_1 duplicateMat_2_Loop_1_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(duplicateMat_2_Loop_1_U0_ap_start),
    .ap_done(duplicateMat_2_Loop_1_U0_ap_done),
    .ap_continue(duplicateMat_2_Loop_1_U0_ap_continue),
    .ap_idle(duplicateMat_2_Loop_1_U0_ap_idle),
    .ap_ready(duplicateMat_2_Loop_1_U0_ap_ready),
    .p_dst1_rows_dout(p_dst1_rows_c_i_dout),
    .p_dst1_rows_empty_n(p_dst1_rows_c_i_empty_n),
    .p_dst1_rows_read(duplicateMat_2_Loop_1_U0_p_dst1_rows_read),
    .p_dst1_cols_dout(p_dst1_cols_c_i_dout),
    .p_dst1_cols_empty_n(p_dst1_cols_c_i_empty_n),
    .p_dst1_cols_read(duplicateMat_2_Loop_1_U0_p_dst1_cols_read),
    .dst_V_V_dout(dst_V_V_dout),
    .dst_V_V_empty_n(dst_V_V_empty_n),
    .dst_V_V_read(duplicateMat_2_Loop_1_U0_dst_V_V_read),
    .p_dst1_data_V_din(duplicateMat_2_Loop_1_U0_p_dst1_data_V_din),
    .p_dst1_data_V_full_n(p_dst1_data_V_full_n),
    .p_dst1_data_V_write(duplicateMat_2_Loop_1_U0_p_dst1_data_V_write),
    .dst1_V_V_dout(dst1_V_V_dout),
    .dst1_V_V_empty_n(dst1_V_V_empty_n),
    .dst1_V_V_read(duplicateMat_2_Loop_1_U0_dst1_V_V_read),
    .p_dst2_data_V_din(duplicateMat_2_Loop_1_U0_p_dst2_data_V_din),
    .p_dst2_data_V_full_n(p_dst2_data_V_full_n),
    .p_dst2_data_V_write(duplicateMat_2_Loop_1_U0_p_dst2_data_V_write)
);

fifo_w12_d2_A p_src_cols_load6_loc_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(duplicateMat_2_Block_U0_p_src_cols_load6_out_out_din),
    .if_full_n(p_src_cols_load6_loc_1_full_n),
    .if_write(duplicateMat_2_Block_U0_p_src_cols_load6_out_out_write),
    .if_dout(p_src_cols_load6_loc_1_dout),
    .if_empty_n(p_src_cols_load6_loc_1_empty_n),
    .if_read(duplicateMat_2_Loop_U0_p_src_cols_load6_loc_read)
);

fifo_w11_d4_A p_dst1_rows_c_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(duplicateMat_2_Block_U0_p_dst1_rows_out_din),
    .if_full_n(p_dst1_rows_c_i_full_n),
    .if_write(duplicateMat_2_Block_U0_p_dst1_rows_out_write),
    .if_dout(p_dst1_rows_c_i_dout),
    .if_empty_n(p_dst1_rows_c_i_empty_n),
    .if_read(duplicateMat_2_Loop_1_U0_p_dst1_rows_read)
);

fifo_w12_d4_A p_dst1_cols_c_i_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(duplicateMat_2_Block_U0_p_dst1_cols_out_din),
    .if_full_n(p_dst1_cols_c_i_full_n),
    .if_write(duplicateMat_2_Block_U0_p_dst1_cols_out_write),
    .if_dout(p_dst1_cols_c_i_dout),
    .if_empty_n(p_dst1_cols_c_i_empty_n),
    .if_read(duplicateMat_2_Loop_1_U0_p_dst1_cols_read)
);

fifo_w24_d2_A src_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(duplicateMat_2_Loop_U0_src_V_V_din),
    .if_full_n(src_V_V_full_n),
    .if_write(duplicateMat_2_Loop_U0_src_V_V_write),
    .if_dout(src_V_V_dout),
    .if_empty_n(src_V_V_empty_n),
    .if_read(xFDuplicate_2_U0_p_src_mat_V_V_read)
);

fifo_w12_d2_A p_src_cols_load6_loc_s_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(duplicateMat_2_Loop_U0_p_src_cols_load6_loc_out_din),
    .if_full_n(p_src_cols_load6_loc_s_full_n),
    .if_write(duplicateMat_2_Loop_U0_p_src_cols_load6_loc_out_write),
    .if_dout(p_src_cols_load6_loc_s_dout),
    .if_empty_n(p_src_cols_load6_loc_s_empty_n),
    .if_read(xFDuplicate_2_U0_p_src_cols_load6_loc_read)
);

fifo_w24_d2_A dst_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xFDuplicate_2_U0_p_dst1_mat_V_V_din),
    .if_full_n(dst_V_V_full_n),
    .if_write(xFDuplicate_2_U0_p_dst1_mat_V_V_write),
    .if_dout(dst_V_V_dout),
    .if_empty_n(dst_V_V_empty_n),
    .if_read(duplicateMat_2_Loop_1_U0_dst_V_V_read)
);

fifo_w24_d2_A dst1_V_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(xFDuplicate_2_U0_p_dst2_mat_V_V_din),
    .if_full_n(dst1_V_V_full_n),
    .if_write(xFDuplicate_2_U0_p_dst2_mat_V_V_write),
    .if_dout(dst1_V_V_dout),
    .if_empty_n(dst1_V_V_empty_n),
    .if_read(duplicateMat_2_Loop_1_U0_dst1_V_V_read)
);

start_for_duplicabkb start_for_duplicabkb_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_duplicateMat_2_Loop_1_U0_din),
    .if_full_n(start_for_duplicateMat_2_Loop_1_U0_full_n),
    .if_write(duplicateMat_2_Block_U0_start_write),
    .if_dout(start_for_duplicateMat_2_Loop_1_U0_dout),
    .if_empty_n(start_for_duplicateMat_2_Loop_1_U0_empty_n),
    .if_read(duplicateMat_2_Loop_1_U0_ap_ready)
);

start_for_xFDuplicud start_for_xFDuplicud_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(start_for_xFDuplicate_2_U0_din),
    .if_full_n(start_for_xFDuplicate_2_U0_full_n),
    .if_write(duplicateMat_2_Loop_U0_start_write),
    .if_dout(start_for_xFDuplicate_2_U0_dout),
    .if_empty_n(start_for_xFDuplicate_2_U0_empty_n),
    .if_read(xFDuplicate_2_U0_ap_ready)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_duplicateMat_2_Block_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_duplicateMat_2_Block_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_duplicateMat_2_Block_U0_ap_ready <= ap_sync_duplicateMat_2_Block_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_duplicateMat_2_Loop_U0_ap_ready <= 1'b0;
    end else begin
        if (((real_start & ap_sync_ready) == 1'b1)) begin
            ap_sync_reg_duplicateMat_2_Loop_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_duplicateMat_2_Loop_U0_ap_ready <= ap_sync_duplicateMat_2_Loop_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((duplicateMat_2_Block_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        duplicateMat_2_Block_U0_ap_ready_count <= (duplicateMat_2_Block_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (duplicateMat_2_Block_U0_ap_ready == 1'b1))) begin
        duplicateMat_2_Block_U0_ap_ready_count <= (duplicateMat_2_Block_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((duplicateMat_2_Loop_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        duplicateMat_2_Loop_U0_ap_ready_count <= (duplicateMat_2_Loop_U0_ap_ready_count - 2'd1);
    end else if (((ap_sync_ready == 1'b0) & (duplicateMat_2_Loop_U0_ap_ready == 1'b1))) begin
        duplicateMat_2_Loop_U0_ap_ready_count <= (duplicateMat_2_Loop_U0_ap_ready_count + 2'd1);
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end

assign ap_done = duplicateMat_2_Loop_1_U0_ap_done;

assign ap_idle = (xFDuplicate_2_U0_ap_idle & duplicateMat_2_Loop_U0_ap_idle & duplicateMat_2_Loop_1_U0_ap_idle & duplicateMat_2_Block_U0_ap_idle);

assign ap_ready = internal_ap_ready;

assign ap_sync_continue = ap_continue;

assign ap_sync_done = duplicateMat_2_Loop_1_U0_ap_done;

assign ap_sync_duplicateMat_2_Block_U0_ap_ready = (duplicateMat_2_Block_U0_ap_ready | ap_sync_reg_duplicateMat_2_Block_U0_ap_ready);

assign ap_sync_duplicateMat_2_Loop_U0_ap_ready = (duplicateMat_2_Loop_U0_ap_ready | ap_sync_reg_duplicateMat_2_Loop_U0_ap_ready);

assign ap_sync_ready = (ap_sync_duplicateMat_2_Loop_U0_ap_ready & ap_sync_duplicateMat_2_Block_U0_ap_ready);

assign duplicateMat_2_Block_U0_ap_continue = 1'b1;

assign duplicateMat_2_Block_U0_ap_start = (real_start & (ap_sync_reg_duplicateMat_2_Block_U0_ap_ready ^ 1'b1));

assign duplicateMat_2_Loop_1_U0_ap_continue = ap_continue;

assign duplicateMat_2_Loop_1_U0_ap_start = start_for_duplicateMat_2_Loop_1_U0_empty_n;

assign duplicateMat_2_Loop_1_U0_start_full_n = 1'b1;

assign duplicateMat_2_Loop_1_U0_start_write = 1'b0;

assign duplicateMat_2_Loop_U0_ap_continue = 1'b1;

assign duplicateMat_2_Loop_U0_ap_start = (real_start & (ap_sync_reg_duplicateMat_2_Loop_U0_ap_ready ^ 1'b1));

assign internal_ap_ready = ap_sync_ready;

assign p_dst1_data_V_din = duplicateMat_2_Loop_1_U0_p_dst1_data_V_din;

assign p_dst1_data_V_write = duplicateMat_2_Loop_1_U0_p_dst1_data_V_write;

assign p_dst2_data_V_din = duplicateMat_2_Loop_1_U0_p_dst2_data_V_din;

assign p_dst2_data_V_write = duplicateMat_2_Loop_1_U0_p_dst2_data_V_write;

assign p_src_cols_read = duplicateMat_2_Block_U0_p_src_cols_read;

assign p_src_data_V_read = duplicateMat_2_Loop_U0_p_src_data_V_read;

assign start_for_duplicateMat_2_Loop_1_U0_din = 1'b1;

assign start_for_xFDuplicate_2_U0_din = 1'b1;

assign start_out = real_start;

assign xFDuplicate_2_U0_ap_continue = 1'b1;

assign xFDuplicate_2_U0_ap_start = start_for_xFDuplicate_2_U0_empty_n;

assign xFDuplicate_2_U0_start_full_n = 1'b1;

assign xFDuplicate_2_U0_start_write = 1'b0;

endmodule //duplicateMat_2762