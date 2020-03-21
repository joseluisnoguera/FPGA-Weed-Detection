-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity get_max_from_channel is
port (
    r_channel_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    r_channel_data_V_empty_n : IN STD_LOGIC;
    r_channel_data_V_read : OUT STD_LOGIC;
    g_channel_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    g_channel_data_V_empty_n : IN STD_LOGIC;
    g_channel_data_V_read : OUT STD_LOGIC;
    b_channel_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    b_channel_data_V_empty_n : IN STD_LOGIC;
    b_channel_data_V_read : OUT STD_LOGIC;
    max_r_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    max_r_out_full_n : IN STD_LOGIC;
    max_r_out_write : OUT STD_LOGIC;
    max_g_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    max_g_out_full_n : IN STD_LOGIC;
    max_g_out_write : OUT STD_LOGIC;
    max_b_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    max_b_out_full_n : IN STD_LOGIC;
    max_b_out_write : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of get_max_from_channel is 
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal minMaxLoc435_U0_ap_start : STD_LOGIC;
    signal minMaxLoc435_U0_ap_done : STD_LOGIC;
    signal minMaxLoc435_U0_ap_continue : STD_LOGIC;
    signal minMaxLoc435_U0_ap_idle : STD_LOGIC;
    signal minMaxLoc435_U0_ap_ready : STD_LOGIC;
    signal minMaxLoc435_U0_p_src_data_V_read : STD_LOGIC;
    signal minMaxLoc435_U0_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_channel_done_max_r_dc_channel : STD_LOGIC;
    signal max_r_dc_channel_full_n : STD_LOGIC;
    signal minMaxLoc436_U0_ap_start : STD_LOGIC;
    signal minMaxLoc436_U0_ap_done : STD_LOGIC;
    signal minMaxLoc436_U0_ap_continue : STD_LOGIC;
    signal minMaxLoc436_U0_ap_idle : STD_LOGIC;
    signal minMaxLoc436_U0_ap_ready : STD_LOGIC;
    signal minMaxLoc436_U0_p_src_data_V_read : STD_LOGIC;
    signal minMaxLoc436_U0_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_channel_done_max_g_dc_channel : STD_LOGIC;
    signal max_g_dc_channel_full_n : STD_LOGIC;
    signal minMaxLoc_U0_ap_start : STD_LOGIC;
    signal minMaxLoc_U0_ap_done : STD_LOGIC;
    signal minMaxLoc_U0_ap_continue : STD_LOGIC;
    signal minMaxLoc_U0_ap_idle : STD_LOGIC;
    signal minMaxLoc_U0_ap_ready : STD_LOGIC;
    signal minMaxLoc_U0_p_src_data_V_read : STD_LOGIC;
    signal minMaxLoc_U0_ap_return : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_channel_done_max_b_dc_channel : STD_LOGIC;
    signal max_b_dc_channel_full_n : STD_LOGIC;
    signal p_prop_ret_max_b_dc_U0_ap_start : STD_LOGIC;
    signal p_prop_ret_max_b_dc_U0_ap_done : STD_LOGIC;
    signal p_prop_ret_max_b_dc_U0_ap_continue : STD_LOGIC;
    signal p_prop_ret_max_b_dc_U0_ap_idle : STD_LOGIC;
    signal p_prop_ret_max_b_dc_U0_ap_ready : STD_LOGIC;
    signal p_prop_ret_max_b_dc_U0_max_b_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal p_prop_ret_max_b_dc_U0_max_b_out_write : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal p_prop_ret_max_g_dc_U0_ap_start : STD_LOGIC;
    signal p_prop_ret_max_g_dc_U0_ap_done : STD_LOGIC;
    signal p_prop_ret_max_g_dc_U0_ap_continue : STD_LOGIC;
    signal p_prop_ret_max_g_dc_U0_ap_idle : STD_LOGIC;
    signal p_prop_ret_max_g_dc_U0_ap_ready : STD_LOGIC;
    signal p_prop_ret_max_g_dc_U0_max_g_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal p_prop_ret_max_g_dc_U0_max_g_out_write : STD_LOGIC;
    signal p_prop_ret_max_r_dc_U0_ap_start : STD_LOGIC;
    signal p_prop_ret_max_r_dc_U0_ap_done : STD_LOGIC;
    signal p_prop_ret_max_r_dc_U0_ap_continue : STD_LOGIC;
    signal p_prop_ret_max_r_dc_U0_ap_idle : STD_LOGIC;
    signal p_prop_ret_max_r_dc_U0_ap_ready : STD_LOGIC;
    signal p_prop_ret_max_r_dc_U0_max_r_out_din : STD_LOGIC_VECTOR (31 downto 0);
    signal p_prop_ret_max_r_dc_U0_max_r_out_write : STD_LOGIC;
    signal max_r_dc_channel_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal max_r_dc_channel_empty_n : STD_LOGIC;
    signal max_g_dc_channel_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal max_g_dc_channel_empty_n : STD_LOGIC;
    signal max_b_dc_channel_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal max_b_dc_channel_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_minMaxLoc435_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_minMaxLoc435_U0_ap_ready : STD_LOGIC;
    signal minMaxLoc435_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sync_reg_minMaxLoc436_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_minMaxLoc436_U0_ap_ready : STD_LOGIC;
    signal minMaxLoc436_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sync_reg_minMaxLoc_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_minMaxLoc_U0_ap_ready : STD_LOGIC;
    signal minMaxLoc_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal minMaxLoc435_U0_start_full_n : STD_LOGIC;
    signal minMaxLoc435_U0_start_write : STD_LOGIC;
    signal minMaxLoc436_U0_start_full_n : STD_LOGIC;
    signal minMaxLoc436_U0_start_write : STD_LOGIC;
    signal minMaxLoc_U0_start_full_n : STD_LOGIC;
    signal minMaxLoc_U0_start_write : STD_LOGIC;
    signal p_prop_ret_max_b_dc_U0_start_full_n : STD_LOGIC;
    signal p_prop_ret_max_b_dc_U0_start_write : STD_LOGIC;
    signal p_prop_ret_max_g_dc_U0_start_full_n : STD_LOGIC;
    signal p_prop_ret_max_g_dc_U0_start_write : STD_LOGIC;
    signal p_prop_ret_max_r_dc_U0_start_full_n : STD_LOGIC;
    signal p_prop_ret_max_r_dc_U0_start_write : STD_LOGIC;

    component minMaxLoc435 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_src_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_V_empty_n : IN STD_LOGIC;
        p_src_data_V_read : OUT STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component minMaxLoc436 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_src_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_V_empty_n : IN STD_LOGIC;
        p_src_data_V_read : OUT STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component minMaxLoc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_src_data_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        p_src_data_V_empty_n : IN STD_LOGIC;
        p_src_data_V_read : OUT STD_LOGIC;
        ap_return : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component p_prop_ret_max_b_dc_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (31 downto 0);
        max_b_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        max_b_out_full_n : IN STD_LOGIC;
        max_b_out_write : OUT STD_LOGIC );
    end component;


    component p_prop_ret_max_g_dc_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (31 downto 0);
        max_g_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        max_g_out_full_n : IN STD_LOGIC;
        max_g_out_write : OUT STD_LOGIC );
    end component;


    component p_prop_ret_max_r_dc_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (31 downto 0);
        max_r_out_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        max_r_out_full_n : IN STD_LOGIC;
        max_r_out_write : OUT STD_LOGIC );
    end component;


    component fifo_w32_d2_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    minMaxLoc435_U0 : component minMaxLoc435
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => minMaxLoc435_U0_ap_start,
        ap_done => minMaxLoc435_U0_ap_done,
        ap_continue => minMaxLoc435_U0_ap_continue,
        ap_idle => minMaxLoc435_U0_ap_idle,
        ap_ready => minMaxLoc435_U0_ap_ready,
        p_src_data_V_dout => r_channel_data_V_dout,
        p_src_data_V_empty_n => r_channel_data_V_empty_n,
        p_src_data_V_read => minMaxLoc435_U0_p_src_data_V_read,
        ap_return => minMaxLoc435_U0_ap_return);

    minMaxLoc436_U0 : component minMaxLoc436
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => minMaxLoc436_U0_ap_start,
        ap_done => minMaxLoc436_U0_ap_done,
        ap_continue => minMaxLoc436_U0_ap_continue,
        ap_idle => minMaxLoc436_U0_ap_idle,
        ap_ready => minMaxLoc436_U0_ap_ready,
        p_src_data_V_dout => g_channel_data_V_dout,
        p_src_data_V_empty_n => g_channel_data_V_empty_n,
        p_src_data_V_read => minMaxLoc436_U0_p_src_data_V_read,
        ap_return => minMaxLoc436_U0_ap_return);

    minMaxLoc_U0 : component minMaxLoc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => minMaxLoc_U0_ap_start,
        ap_done => minMaxLoc_U0_ap_done,
        ap_continue => minMaxLoc_U0_ap_continue,
        ap_idle => minMaxLoc_U0_ap_idle,
        ap_ready => minMaxLoc_U0_ap_ready,
        p_src_data_V_dout => b_channel_data_V_dout,
        p_src_data_V_empty_n => b_channel_data_V_empty_n,
        p_src_data_V_read => minMaxLoc_U0_p_src_data_V_read,
        ap_return => minMaxLoc_U0_ap_return);

    p_prop_ret_max_b_dc_U0 : component p_prop_ret_max_b_dc_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => p_prop_ret_max_b_dc_U0_ap_start,
        ap_done => p_prop_ret_max_b_dc_U0_ap_done,
        ap_continue => p_prop_ret_max_b_dc_U0_ap_continue,
        ap_idle => p_prop_ret_max_b_dc_U0_ap_idle,
        ap_ready => p_prop_ret_max_b_dc_U0_ap_ready,
        p_read => max_b_dc_channel_dout,
        max_b_out_din => p_prop_ret_max_b_dc_U0_max_b_out_din,
        max_b_out_full_n => max_b_out_full_n,
        max_b_out_write => p_prop_ret_max_b_dc_U0_max_b_out_write);

    p_prop_ret_max_g_dc_U0 : component p_prop_ret_max_g_dc_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => p_prop_ret_max_g_dc_U0_ap_start,
        ap_done => p_prop_ret_max_g_dc_U0_ap_done,
        ap_continue => p_prop_ret_max_g_dc_U0_ap_continue,
        ap_idle => p_prop_ret_max_g_dc_U0_ap_idle,
        ap_ready => p_prop_ret_max_g_dc_U0_ap_ready,
        p_read => max_g_dc_channel_dout,
        max_g_out_din => p_prop_ret_max_g_dc_U0_max_g_out_din,
        max_g_out_full_n => max_g_out_full_n,
        max_g_out_write => p_prop_ret_max_g_dc_U0_max_g_out_write);

    p_prop_ret_max_r_dc_U0 : component p_prop_ret_max_r_dc_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => p_prop_ret_max_r_dc_U0_ap_start,
        ap_done => p_prop_ret_max_r_dc_U0_ap_done,
        ap_continue => p_prop_ret_max_r_dc_U0_ap_continue,
        ap_idle => p_prop_ret_max_r_dc_U0_ap_idle,
        ap_ready => p_prop_ret_max_r_dc_U0_ap_ready,
        p_read => max_r_dc_channel_dout,
        max_r_out_din => p_prop_ret_max_r_dc_U0_max_r_out_din,
        max_r_out_full_n => max_r_out_full_n,
        max_r_out_write => p_prop_ret_max_r_dc_U0_max_r_out_write);

    max_r_dc_channel_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => minMaxLoc435_U0_ap_return,
        if_full_n => max_r_dc_channel_full_n,
        if_write => minMaxLoc435_U0_ap_done,
        if_dout => max_r_dc_channel_dout,
        if_empty_n => max_r_dc_channel_empty_n,
        if_read => p_prop_ret_max_r_dc_U0_ap_ready);

    max_g_dc_channel_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => minMaxLoc436_U0_ap_return,
        if_full_n => max_g_dc_channel_full_n,
        if_write => minMaxLoc436_U0_ap_done,
        if_dout => max_g_dc_channel_dout,
        if_empty_n => max_g_dc_channel_empty_n,
        if_read => p_prop_ret_max_g_dc_U0_ap_ready);

    max_b_dc_channel_U : component fifo_w32_d2_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => minMaxLoc_U0_ap_return,
        if_full_n => max_b_dc_channel_full_n,
        if_write => minMaxLoc_U0_ap_done,
        if_dout => max_b_dc_channel_dout,
        if_empty_n => max_b_dc_channel_empty_n,
        if_read => p_prop_ret_max_b_dc_U0_ap_ready);





    ap_sync_reg_minMaxLoc435_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_minMaxLoc435_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_minMaxLoc435_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_minMaxLoc435_U0_ap_ready <= ap_sync_minMaxLoc435_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_minMaxLoc436_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_minMaxLoc436_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_minMaxLoc436_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_minMaxLoc436_U0_ap_ready <= ap_sync_minMaxLoc436_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_minMaxLoc_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_minMaxLoc_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_minMaxLoc_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_minMaxLoc_U0_ap_ready <= ap_sync_minMaxLoc_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    minMaxLoc435_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((minMaxLoc435_U0_ap_ready = ap_const_logic_0) and (ap_sync_ready = ap_const_logic_1))) then 
                minMaxLoc435_U0_ap_ready_count <= std_logic_vector(unsigned(minMaxLoc435_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_sync_ready = ap_const_logic_0) and (minMaxLoc435_U0_ap_ready = ap_const_logic_1))) then 
                minMaxLoc435_U0_ap_ready_count <= std_logic_vector(unsigned(minMaxLoc435_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;

    minMaxLoc436_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((minMaxLoc436_U0_ap_ready = ap_const_logic_0) and (ap_sync_ready = ap_const_logic_1))) then 
                minMaxLoc436_U0_ap_ready_count <= std_logic_vector(unsigned(minMaxLoc436_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_sync_ready = ap_const_logic_0) and (minMaxLoc436_U0_ap_ready = ap_const_logic_1))) then 
                minMaxLoc436_U0_ap_ready_count <= std_logic_vector(unsigned(minMaxLoc436_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;

    minMaxLoc_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((minMaxLoc_U0_ap_ready = ap_const_logic_0) and (ap_sync_ready = ap_const_logic_1))) then 
                minMaxLoc_U0_ap_ready_count <= std_logic_vector(unsigned(minMaxLoc_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_sync_ready = ap_const_logic_0) and (minMaxLoc_U0_ap_ready = ap_const_logic_1))) then 
                minMaxLoc_U0_ap_ready_count <= std_logic_vector(unsigned(minMaxLoc_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;
    ap_channel_done_max_b_dc_channel <= minMaxLoc_U0_ap_done;
    ap_channel_done_max_g_dc_channel <= minMaxLoc436_U0_ap_done;
    ap_channel_done_max_r_dc_channel <= minMaxLoc435_U0_ap_done;
    ap_done <= ap_sync_done;
    ap_idle <= (p_prop_ret_max_r_dc_U0_ap_idle and p_prop_ret_max_g_dc_U0_ap_idle and p_prop_ret_max_b_dc_U0_ap_idle and minMaxLoc_U0_ap_idle and minMaxLoc436_U0_ap_idle and minMaxLoc435_U0_ap_idle and (max_b_dc_channel_empty_n xor ap_const_logic_1) and (max_g_dc_channel_empty_n xor ap_const_logic_1) and (max_r_dc_channel_empty_n xor ap_const_logic_1));
    ap_ready <= ap_sync_ready;
    ap_sync_continue <= (ap_sync_done and ap_continue);
    ap_sync_done <= (p_prop_ret_max_r_dc_U0_ap_done and p_prop_ret_max_g_dc_U0_ap_done and p_prop_ret_max_b_dc_U0_ap_done);
    ap_sync_minMaxLoc435_U0_ap_ready <= (minMaxLoc435_U0_ap_ready or ap_sync_reg_minMaxLoc435_U0_ap_ready);
    ap_sync_minMaxLoc436_U0_ap_ready <= (minMaxLoc436_U0_ap_ready or ap_sync_reg_minMaxLoc436_U0_ap_ready);
    ap_sync_minMaxLoc_U0_ap_ready <= (minMaxLoc_U0_ap_ready or ap_sync_reg_minMaxLoc_U0_ap_ready);
    ap_sync_ready <= (ap_sync_minMaxLoc_U0_ap_ready and ap_sync_minMaxLoc436_U0_ap_ready and ap_sync_minMaxLoc435_U0_ap_ready);
    b_channel_data_V_read <= minMaxLoc_U0_p_src_data_V_read;
    g_channel_data_V_read <= minMaxLoc436_U0_p_src_data_V_read;
    max_b_out_din <= p_prop_ret_max_b_dc_U0_max_b_out_din;
    max_b_out_write <= p_prop_ret_max_b_dc_U0_max_b_out_write;
    max_g_out_din <= p_prop_ret_max_g_dc_U0_max_g_out_din;
    max_g_out_write <= p_prop_ret_max_g_dc_U0_max_g_out_write;
    max_r_out_din <= p_prop_ret_max_r_dc_U0_max_r_out_din;
    max_r_out_write <= p_prop_ret_max_r_dc_U0_max_r_out_write;
    minMaxLoc435_U0_ap_continue <= max_r_dc_channel_full_n;
    minMaxLoc435_U0_ap_start <= ((ap_sync_reg_minMaxLoc435_U0_ap_ready xor ap_const_logic_1) and ap_start);
    minMaxLoc435_U0_start_full_n <= ap_const_logic_1;
    minMaxLoc435_U0_start_write <= ap_const_logic_0;
    minMaxLoc436_U0_ap_continue <= max_g_dc_channel_full_n;
    minMaxLoc436_U0_ap_start <= ((ap_sync_reg_minMaxLoc436_U0_ap_ready xor ap_const_logic_1) and ap_start);
    minMaxLoc436_U0_start_full_n <= ap_const_logic_1;
    minMaxLoc436_U0_start_write <= ap_const_logic_0;
    minMaxLoc_U0_ap_continue <= max_b_dc_channel_full_n;
    minMaxLoc_U0_ap_start <= ((ap_sync_reg_minMaxLoc_U0_ap_ready xor ap_const_logic_1) and ap_start);
    minMaxLoc_U0_start_full_n <= ap_const_logic_1;
    minMaxLoc_U0_start_write <= ap_const_logic_0;
    p_prop_ret_max_b_dc_U0_ap_continue <= ap_sync_continue;
    p_prop_ret_max_b_dc_U0_ap_start <= max_b_dc_channel_empty_n;
    p_prop_ret_max_b_dc_U0_start_full_n <= ap_const_logic_1;
    p_prop_ret_max_b_dc_U0_start_write <= ap_const_logic_0;
    p_prop_ret_max_g_dc_U0_ap_continue <= ap_sync_continue;
    p_prop_ret_max_g_dc_U0_ap_start <= max_g_dc_channel_empty_n;
    p_prop_ret_max_g_dc_U0_start_full_n <= ap_const_logic_1;
    p_prop_ret_max_g_dc_U0_start_write <= ap_const_logic_0;
    p_prop_ret_max_r_dc_U0_ap_continue <= ap_sync_continue;
    p_prop_ret_max_r_dc_U0_ap_start <= max_r_dc_channel_empty_n;
    p_prop_ret_max_r_dc_U0_start_full_n <= ap_const_logic_1;
    p_prop_ret_max_r_dc_U0_start_write <= ap_const_logic_0;
    r_channel_data_V_read <= minMaxLoc435_U0_p_src_data_V_read;
end behav;