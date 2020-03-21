-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity convert_fp_to_8b770 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    min_value_V_c17_dout : IN STD_LOGIC_VECTOR (27 downto 0);
    min_value_V_c17_empty_n : IN STD_LOGIC;
    min_value_V_c17_read : OUT STD_LOGIC;
    sub_ln703_cast_loc_c : IN STD_LOGIC_VECTOR (23 downto 0);
    veg_temp_data_V_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    veg_temp_data_V_empty_n : IN STD_LOGIC;
    veg_temp_data_V_read : OUT STD_LOGIC;
    img_out_data_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
    img_out_data_V_full_n : IN STD_LOGIC;
    img_out_data_V_write : OUT STD_LOGIC );
end;


architecture behav of convert_fp_to_8b770 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (23 downto 0) := "000000000001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (23 downto 0) := "000000000010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (23 downto 0) := "000000000100000000000000";
    constant ap_ST_fsm_state16 : STD_LOGIC_VECTOR (23 downto 0) := "000000001000000000000000";
    constant ap_ST_fsm_state17 : STD_LOGIC_VECTOR (23 downto 0) := "000000010000000000000000";
    constant ap_ST_fsm_state18 : STD_LOGIC_VECTOR (23 downto 0) := "000000100000000000000000";
    constant ap_ST_fsm_state19 : STD_LOGIC_VECTOR (23 downto 0) := "000001000000000000000000";
    constant ap_ST_fsm_state20 : STD_LOGIC_VECTOR (23 downto 0) := "000010000000000000000000";
    constant ap_ST_fsm_state21 : STD_LOGIC_VECTOR (23 downto 0) := "000100000000000000000000";
    constant ap_ST_fsm_state22 : STD_LOGIC_VECTOR (23 downto 0) := "001000000000000000000000";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (23 downto 0) := "010000000000000000000000";
    constant ap_ST_fsm_state25 : STD_LOGIC_VECTOR (23 downto 0) := "100000000000000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_15 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010101";
    constant ap_const_lv32_16 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010110";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv24_FF00 : STD_LOGIC_VECTOR (23 downto 0) := "000000001111111100000000";
    constant ap_const_lv24_8 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000001000";
    constant ap_const_lv16_E100 : STD_LOGIC_VECTOR (15 downto 0) := "1110000100000000";
    constant ap_const_lv16_1 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal min_value_V_c17_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state22 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state22 : signal is "none";
    signal veg_temp_data_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln59_reg_232 : STD_LOGIC_VECTOR (0 downto 0);
    signal img_out_data_V_blk_n : STD_LOGIC;
    signal i_0_i_i_i_reg_97 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal sext_ln59_fu_120_p1 : STD_LOGIC_VECTOR (64 downto 0);
    signal sext_ln59_reg_222 : STD_LOGIC_VECTOR (64 downto 0);
    signal sext_ln703_fu_124_p1 : STD_LOGIC_VECTOR (41 downto 0);
    signal sext_ln703_reg_227 : STD_LOGIC_VECTOR (41 downto 0);
    signal icmp_ln59_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state23_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state24_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_fu_134_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state23 : STD_LOGIC;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal grp_fu_108_p0 : STD_LOGIC_VECTOR (17 downto 0);
    signal grp_fu_108_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal scalar_V_fu_114_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal p_Val2_36_fu_140_p3 : STD_LOGIC_VECTOR (39 downto 0);
    signal zext_ln703_fu_148_p1 : STD_LOGIC_VECTOR (41 downto 0);
    signal ret_V_fu_152_p2 : STD_LOGIC_VECTOR (41 downto 0);
    signal r_V_fu_161_p0 : STD_LOGIC_VECTOR (41 downto 0);
    signal r_V_fu_161_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal r_V_fu_161_p2 : STD_LOGIC_VECTOR (64 downto 0);
    signal trunc_ln851_fu_174_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln23_i_fu_184_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln851_fu_178_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln851_fu_194_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_Result_s_fu_166_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln851_fu_200_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_108_ap_start : STD_LOGIC;
    signal grp_fu_108_ap_done : STD_LOGIC;
    signal grp_fu_108_ce : STD_LOGIC;
    signal ap_CS_fsm_state25 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state25 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component ip_accel_app_sdivrcU IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        start : IN STD_LOGIC;
        done : OUT STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (17 downto 0);
        din1 : IN STD_LOGIC_VECTOR (23 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;



begin
    ip_accel_app_sdivrcU_U203 : component ip_accel_app_sdivrcU
    generic map (
        ID => 1,
        NUM_STAGE => 22,
        din0_WIDTH => 18,
        din1_WIDTH => 24,
        dout_WIDTH => 24)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        start => grp_fu_108_ap_start,
        done => grp_fu_108_ap_done,
        din0 => grp_fu_108_p0,
        din1 => sub_ln703_cast_loc_c,
        ce => grp_fu_108_ce,
        dout => grp_fu_108_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state25)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state23) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((min_value_V_c17_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state22))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state23) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state23);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((min_value_V_c17_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state22))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_i_i_reg_97_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln59_fu_128_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                i_0_i_i_i_reg_97 <= i_fu_134_p2;
            elsif (((min_value_V_c17_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state22))) then 
                i_0_i_i_i_reg_97 <= ap_const_lv16_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln59_reg_232 <= icmp_ln59_fu_128_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((min_value_V_c17_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state22))) then
                    sext_ln59_reg_222(64 downto 8) <= sext_ln59_fu_120_p1(64 downto 8);
                sext_ln703_reg_227 <= sext_ln703_fu_124_p1;
            end if;
        end if;
    end process;
    sext_ln59_reg_222(7 downto 0) <= "00000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, min_value_V_c17_empty_n, ap_CS_fsm_state22, icmp_ln59_fu_128_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state9;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state11;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                ap_NS_fsm <= ap_ST_fsm_state13;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                ap_NS_fsm <= ap_ST_fsm_state15;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state16;
            when ap_ST_fsm_state16 => 
                ap_NS_fsm <= ap_ST_fsm_state17;
            when ap_ST_fsm_state17 => 
                ap_NS_fsm <= ap_ST_fsm_state18;
            when ap_ST_fsm_state18 => 
                ap_NS_fsm <= ap_ST_fsm_state19;
            when ap_ST_fsm_state19 => 
                ap_NS_fsm <= ap_ST_fsm_state20;
            when ap_ST_fsm_state20 => 
                ap_NS_fsm <= ap_ST_fsm_state21;
            when ap_ST_fsm_state21 => 
                ap_NS_fsm <= ap_ST_fsm_state22;
            when ap_ST_fsm_state22 => 
                if (((min_value_V_c17_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state22))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state22;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln59_fu_128_p2 = ap_const_lv1_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln59_fu_128_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state25;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state25 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXXXXXXXXXXX";
        end case;
    end process;
    add_ln851_fu_194_p2 <= std_logic_vector(unsigned(ap_const_lv8_1) + unsigned(trunc_ln23_i_fu_184_p4));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(22);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state22 <= ap_CS_fsm(21);
    ap_CS_fsm_state25 <= ap_CS_fsm(23);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(veg_temp_data_V_empty_n, img_out_data_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln59_reg_232)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln59_reg_232 = ap_const_lv1_0) and (img_out_data_V_full_n = ap_const_logic_0)) or ((icmp_ln59_reg_232 = ap_const_lv1_0) and (veg_temp_data_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(veg_temp_data_V_empty_n, img_out_data_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln59_reg_232)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln59_reg_232 = ap_const_lv1_0) and (img_out_data_V_full_n = ap_const_logic_0)) or ((icmp_ln59_reg_232 = ap_const_lv1_0) and (veg_temp_data_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(veg_temp_data_V_empty_n, img_out_data_V_full_n, ap_enable_reg_pp0_iter1, icmp_ln59_reg_232)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln59_reg_232 = ap_const_lv1_0) and (img_out_data_V_full_n = ap_const_logic_0)) or ((icmp_ln59_reg_232 = ap_const_lv1_0) and (veg_temp_data_V_empty_n = ap_const_logic_0))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0));
    end process;

        ap_block_state23_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state24_pp0_stage0_iter1_assign_proc : process(veg_temp_data_V_empty_n, img_out_data_V_full_n, icmp_ln59_reg_232)
    begin
                ap_block_state24_pp0_stage0_iter1 <= (((icmp_ln59_reg_232 = ap_const_lv1_0) and (img_out_data_V_full_n = ap_const_logic_0)) or ((icmp_ln59_reg_232 = ap_const_lv1_0) and (veg_temp_data_V_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_pp0_exit_iter0_state23_assign_proc : process(icmp_ln59_fu_128_p2)
    begin
        if ((icmp_ln59_fu_128_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state23 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state23 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state25)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state25)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state25)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state25)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_108_ap_start_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1)
    begin
        if ((not(((ap_done_reg = ap_const_logic_1) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            grp_fu_108_ap_start <= ap_const_logic_1;
        else 
            grp_fu_108_ap_start <= ap_const_logic_0;
        end if; 
    end process;


    grp_fu_108_ce_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_CS_fsm_state25)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) or (ap_const_logic_1 = ap_CS_fsm_state25))) then 
            grp_fu_108_ce <= ap_const_logic_0;
        else 
            grp_fu_108_ce <= ap_const_logic_1;
        end if; 
    end process;

    grp_fu_108_p0 <= ap_const_lv24_FF00(18 - 1 downto 0);
    i_fu_134_p2 <= std_logic_vector(unsigned(i_0_i_i_i_reg_97) + unsigned(ap_const_lv16_1));
    icmp_ln59_fu_128_p2 <= "1" when (i_0_i_i_i_reg_97 = ap_const_lv16_E100) else "0";
    icmp_ln851_fu_178_p2 <= "1" when (trunc_ln851_fu_174_p1 = ap_const_lv16_0) else "0";

    img_out_data_V_blk_n_assign_proc : process(img_out_data_V_full_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln59_reg_232)
    begin
        if (((icmp_ln59_reg_232 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            img_out_data_V_blk_n <= img_out_data_V_full_n;
        else 
            img_out_data_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    img_out_data_V_din <= 
        select_ln851_fu_200_p3 when (p_Result_s_fu_166_p3(0) = '1') else 
        trunc_ln23_i_fu_184_p4;

    img_out_data_V_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln59_reg_232, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln59_reg_232 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            img_out_data_V_write <= ap_const_logic_1;
        else 
            img_out_data_V_write <= ap_const_logic_0;
        end if; 
    end process;


    min_value_V_c17_blk_n_assign_proc : process(min_value_V_c17_empty_n, ap_CS_fsm_state22)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state22)) then 
            min_value_V_c17_blk_n <= min_value_V_c17_empty_n;
        else 
            min_value_V_c17_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    min_value_V_c17_read_assign_proc : process(min_value_V_c17_empty_n, ap_CS_fsm_state22)
    begin
        if (((min_value_V_c17_empty_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state22))) then 
            min_value_V_c17_read <= ap_const_logic_1;
        else 
            min_value_V_c17_read <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_s_fu_166_p3 <= r_V_fu_161_p2(64 downto 64);
    p_Val2_36_fu_140_p3 <= (veg_temp_data_V_dout & ap_const_lv8_0);
    r_V_fu_161_p0 <= ret_V_fu_152_p2;
    r_V_fu_161_p1 <= sext_ln59_reg_222(24 - 1 downto 0);
    r_V_fu_161_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(r_V_fu_161_p0) * signed(r_V_fu_161_p1))), 65));
    ret_V_fu_152_p2 <= std_logic_vector(unsigned(zext_ln703_fu_148_p1) - unsigned(sext_ln703_reg_227));
    scalar_V_fu_114_p2 <= std_logic_vector(shift_left(unsigned(grp_fu_108_p2),to_integer(unsigned('0' & ap_const_lv24_8(24-1 downto 0)))));
    select_ln851_fu_200_p3 <= 
        trunc_ln23_i_fu_184_p4 when (icmp_ln851_fu_178_p2(0) = '1') else 
        add_ln851_fu_194_p2;
        sext_ln59_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(scalar_V_fu_114_p2),65));

        sext_ln703_fu_124_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(min_value_V_c17_dout),42));

    trunc_ln23_i_fu_184_p4 <= r_V_fu_161_p2(23 downto 16);
    trunc_ln851_fu_174_p1 <= r_V_fu_161_p2(16 - 1 downto 0);

    veg_temp_data_V_blk_n_assign_proc : process(veg_temp_data_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln59_reg_232)
    begin
        if (((icmp_ln59_reg_232 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            veg_temp_data_V_blk_n <= veg_temp_data_V_empty_n;
        else 
            veg_temp_data_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    veg_temp_data_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln59_reg_232, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln59_reg_232 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            veg_temp_data_V_read <= ap_const_logic_1;
        else 
            veg_temp_data_V_read <= ap_const_logic_0;
        end if; 
    end process;

    zext_ln703_fu_148_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_Val2_36_fu_140_p3),42));
end behav;