-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity is_crop_or_furrow is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    lines_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    lines_ce0 : OUT STD_LOGIC;
    lines_q0 : IN STD_LOGIC_VECTOR (56 downto 0);
    px_read : IN STD_LOGIC_VECTOR (8 downto 0);
    py_read : IN STD_LOGIC_VECTOR (8 downto 0);
    crop_width_read : IN STD_LOGIC_VECTOR (4 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of is_crop_or_furrow is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv3_6 : STD_LOGIC_VECTOR (2 downto 0) := "110";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_18 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011000";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv32_38 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111000";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_28 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101000";
    constant ap_const_lv33_1 : STD_LOGIC_VECTOR (32 downto 0) := "000000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal zext_ln1118_fu_151_p1 : STD_LOGIC_VECTOR (39 downto 0);
    signal zext_ln1118_reg_414 : STD_LOGIC_VECTOR (39 downto 0);
    signal zext_ln388_fu_155_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln388_reg_419 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln390_fu_159_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln390_reg_425 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln385_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln385_reg_433 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_174_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal i_reg_437 : STD_LOGIC_VECTOR (2 downto 0);
    signal select_ln405_fu_201_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal trunc_ln386_fu_209_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln386_reg_452 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal tmp_reg_461 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_0_reg_111 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal or_ln390_fu_324_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln851_fu_291_p3 : STD_LOGIC_VECTOR (32 downto 0);
    signal ap_phi_mux_p_033_0_i_phi_fu_125_p4 : STD_LOGIC_VECTOR (32 downto 0);
    signal p_Result_s_fu_268_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_V_fu_257_p4 : STD_LOGIC_VECTOR (32 downto 0);
    signal ap_phi_mux_UnifiedRetVal_phi_fu_134_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal UnifiedRetVal_reg_131 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln386_fu_180_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal most_right_2_fu_68 : STD_LOGIC_VECTOR (31 downto 0);
    signal most_right_3_fu_358_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal flag_first_0_load_load_fu_330_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal most_right_fu_309_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_most_left_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln397_fu_344_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal most_left_fu_304_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal flag_first_0_fu_76 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_ln378_fu_147_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln402_fu_185_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln402_1_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln402_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal lines_m_V_1_load_new_fu_213_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_386_p2 : STD_LOGIC_VECTOR (39 downto 0);
    signal rhs_V_fu_240_p3 : STD_LOGIC_VECTOR (39 downto 0);
    signal lhs_V_fu_237_p1 : STD_LOGIC_VECTOR (40 downto 0);
    signal sext_ln728_fu_247_p1 : STD_LOGIC_VECTOR (40 downto 0);
    signal ret_V_13_fu_251_p2 : STD_LOGIC_VECTOR (40 downto 0);
    signal trunc_ln851_fu_276_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal icmp_ln851_fu_279_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ret_V_12_fu_285_p2 : STD_LOGIC_VECTOR (32 downto 0);
    signal trunc_ln555_fu_300_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln390_fu_314_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln390_1_fu_319_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln397_fu_338_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln398_fu_352_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_386_p0 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_return_preg : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_condition_268 : BOOLEAN;
    signal ap_condition_134 : BOOLEAN;

    component ip_accel_app_mul_Zio IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (23 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (39 downto 0) );
    end component;



begin
    ip_accel_app_mul_Zio_U478 : component ip_accel_app_mul_Zio
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 24,
        dout_WIDTH => 40)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => grp_fu_386_p0,
        din1 => lines_m_V_1_load_new_fu_213_p4,
        ce => ap_const_logic_1,
        dout => grp_fu_386_p2);





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


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv2_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and ((icmp_ln385_reg_433 = ap_const_lv1_1) or ((trunc_ln386_reg_452 = ap_const_lv1_1) and (or_ln390_fu_324_p2 = ap_const_lv1_0))))) then 
                    ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_134_p4;
                end if; 
            end if;
        end if;
    end process;


    UnifiedRetVal_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln386_reg_452 = ap_const_lv1_1) and (or_ln390_fu_324_p2 = ap_const_lv1_0) and (icmp_ln385_reg_433 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                UnifiedRetVal_reg_131 <= ap_const_lv2_1;
            elsif (((icmp_ln385_fu_168_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                UnifiedRetVal_reg_131 <= select_ln405_fu_201_p3;
            end if; 
        end if;
    end process;

    flag_first_0_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((or_ln390_fu_324_p2 = ap_const_lv1_1) and (trunc_ln386_reg_452 = ap_const_lv1_1) and (icmp_ln385_reg_433 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                flag_first_0_fu_76 <= ap_const_lv1_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                flag_first_0_fu_76 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    i_0_reg_111_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (((trunc_ln386_reg_452 = ap_const_lv1_0) and (icmp_ln385_reg_433 = ap_const_lv1_0)) or ((or_ln390_fu_324_p2 = ap_const_lv1_1) and (icmp_ln385_reg_433 = ap_const_lv1_0))))) then 
                i_0_reg_111 <= i_reg_437;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_111 <= ap_const_lv3_0;
            end if; 
        end if;
    end process;

    most_right_2_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_134)) then
                if ((flag_first_0_load_load_fu_330_p1 = ap_const_lv1_1)) then 
                    most_right_2_fu_68 <= most_right_fu_309_p2;
                elsif ((flag_first_0_load_load_fu_330_p1 = ap_const_lv1_0)) then 
                    most_right_2_fu_68 <= most_right_3_fu_358_p3;
                end if;
            end if; 
        end if;
    end process;

    tmp_most_left_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_134)) then
                if ((flag_first_0_load_load_fu_330_p1 = ap_const_lv1_1)) then 
                    tmp_most_left_fu_72 <= most_left_fu_304_p2;
                elsif ((flag_first_0_load_load_fu_330_p1 = ap_const_lv1_0)) then 
                    tmp_most_left_fu_72 <= select_ln397_fu_344_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_437 <= i_fu_174_p2;
                icmp_ln385_reg_433 <= icmp_ln385_fu_168_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((trunc_ln386_fu_209_p1 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                tmp_reg_461 <= lines_q0(56 downto 25);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                trunc_ln386_reg_452 <= trunc_ln386_fu_209_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    zext_ln1118_reg_414(15 downto 0) <= zext_ln1118_fu_151_p1(15 downto 0);
                    zext_ln388_reg_419(4 downto 0) <= zext_ln388_fu_155_p1(4 downto 0);
                    zext_ln390_reg_425(8 downto 0) <= zext_ln390_fu_159_p1(8 downto 0);
            end if;
        end if;
    end process;
    zext_ln1118_reg_414(39 downto 16) <= "000000000000000000000000";
    zext_ln388_reg_419(31 downto 5) <= "000000000000000000000000000";
    zext_ln390_reg_425(31 downto 9) <= "00000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln385_fu_168_p2, icmp_ln385_reg_433, ap_CS_fsm_state2, trunc_ln386_fu_209_p1, trunc_ln386_reg_452, ap_CS_fsm_state3, ap_CS_fsm_state6, or_ln390_fu_324_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln385_fu_168_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if (((trunc_ln386_fu_209_p1 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and ((icmp_ln385_reg_433 = ap_const_lv1_1) or ((trunc_ln386_reg_452 = ap_const_lv1_1) and (or_ln390_fu_324_p2 = ap_const_lv1_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    and_ln402_fu_195_p2 <= (icmp_ln402_fu_185_p2 and icmp_ln402_1_fu_190_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_condition_134_assign_proc : process(icmp_ln385_reg_433, trunc_ln386_reg_452, ap_CS_fsm_state6, or_ln390_fu_324_p2)
    begin
                ap_condition_134 <= ((or_ln390_fu_324_p2 = ap_const_lv1_1) and (trunc_ln386_reg_452 = ap_const_lv1_1) and (icmp_ln385_reg_433 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6));
    end process;


    ap_condition_268_assign_proc : process(icmp_ln385_reg_433, trunc_ln386_reg_452, ap_CS_fsm_state6)
    begin
                ap_condition_268 <= ((trunc_ln386_reg_452 = ap_const_lv1_1) and (icmp_ln385_reg_433 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, icmp_ln385_reg_433, trunc_ln386_reg_452, ap_CS_fsm_state6, or_ln390_fu_324_p2)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state6) and ((icmp_ln385_reg_433 = ap_const_lv1_1) or ((trunc_ln386_reg_452 = ap_const_lv1_1) and (or_ln390_fu_324_p2 = ap_const_lv1_0)))) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_UnifiedRetVal_phi_fu_134_p4_assign_proc : process(icmp_ln385_reg_433, trunc_ln386_reg_452, ap_CS_fsm_state6, or_ln390_fu_324_p2, UnifiedRetVal_reg_131)
    begin
        if (((trunc_ln386_reg_452 = ap_const_lv1_1) and (or_ln390_fu_324_p2 = ap_const_lv1_0) and (icmp_ln385_reg_433 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_phi_mux_UnifiedRetVal_phi_fu_134_p4 <= ap_const_lv2_1;
        else 
            ap_phi_mux_UnifiedRetVal_phi_fu_134_p4 <= UnifiedRetVal_reg_131;
        end if; 
    end process;


    ap_phi_mux_p_033_0_i_phi_fu_125_p4_assign_proc : process(select_ln851_fu_291_p3, p_Result_s_fu_268_p3, ret_V_13_fu_251_p2, ap_condition_268)
    begin
        if ((ap_const_boolean_1 = ap_condition_268)) then
            if ((p_Result_s_fu_268_p3 = ap_const_lv1_0)) then 
                ap_phi_mux_p_033_0_i_phi_fu_125_p4 <= ret_V_13_fu_251_p2(40 downto 8);
            elsif ((p_Result_s_fu_268_p3 = ap_const_lv1_1)) then 
                ap_phi_mux_p_033_0_i_phi_fu_125_p4 <= select_ln851_fu_291_p3;
            else 
                ap_phi_mux_p_033_0_i_phi_fu_125_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            ap_phi_mux_p_033_0_i_phi_fu_125_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln385_reg_433, trunc_ln386_reg_452, ap_CS_fsm_state6, or_ln390_fu_324_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and ((icmp_ln385_reg_433 = ap_const_lv1_1) or ((trunc_ln386_reg_452 = ap_const_lv1_1) and (or_ln390_fu_324_p2 = ap_const_lv1_0))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(icmp_ln385_reg_433, trunc_ln386_reg_452, ap_CS_fsm_state6, or_ln390_fu_324_p2, ap_phi_mux_UnifiedRetVal_phi_fu_134_p4, ap_return_preg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) and ((icmp_ln385_reg_433 = ap_const_lv1_1) or ((trunc_ln386_reg_452 = ap_const_lv1_1) and (or_ln390_fu_324_p2 = ap_const_lv1_0))))) then 
            ap_return <= ap_phi_mux_UnifiedRetVal_phi_fu_134_p4;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    flag_first_0_load_load_fu_330_p1 <= flag_first_0_fu_76;
    grp_fu_386_p0 <= zext_ln1118_reg_414(16 - 1 downto 0);
    i_fu_174_p2 <= std_logic_vector(unsigned(i_0_reg_111) + unsigned(ap_const_lv3_1));
    icmp_ln385_fu_168_p2 <= "1" when (i_0_reg_111 = ap_const_lv3_6) else "0";
    icmp_ln390_1_fu_319_p2 <= "1" when (signed(zext_ln390_reg_425) < signed(most_left_fu_304_p2)) else "0";
    icmp_ln390_fu_314_p2 <= "1" when (signed(zext_ln390_reg_425) > signed(most_right_fu_309_p2)) else "0";
    icmp_ln397_fu_338_p2 <= "1" when (signed(most_left_fu_304_p2) < signed(tmp_most_left_fu_72)) else "0";
    icmp_ln398_fu_352_p2 <= "1" when (signed(most_right_fu_309_p2) > signed(most_right_2_fu_68)) else "0";
    icmp_ln402_1_fu_190_p2 <= "1" when (signed(zext_ln390_reg_425) < signed(most_right_2_fu_68)) else "0";
    icmp_ln402_fu_185_p2 <= "1" when (signed(zext_ln390_reg_425) > signed(tmp_most_left_fu_72)) else "0";
    icmp_ln851_fu_279_p2 <= "1" when (trunc_ln851_fu_276_p1 = ap_const_lv8_0) else "0";
        lhs_V_fu_237_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(grp_fu_386_p2),41));

    lines_address0 <= zext_ln386_fu_180_p1(3 - 1 downto 0);

    lines_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            lines_ce0 <= ap_const_logic_1;
        else 
            lines_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    lines_m_V_1_load_new_fu_213_p4 <= lines_q0(24 downto 1);
    most_left_fu_304_p2 <= std_logic_vector(unsigned(trunc_ln555_fu_300_p1) - unsigned(zext_ln388_reg_419));
    most_right_3_fu_358_p3 <= 
        most_right_fu_309_p2 when (icmp_ln398_fu_352_p2(0) = '1') else 
        most_right_2_fu_68;
    most_right_fu_309_p2 <= std_logic_vector(unsigned(trunc_ln555_fu_300_p1) + unsigned(zext_ln388_reg_419));
    or_ln390_fu_324_p2 <= (icmp_ln390_fu_314_p2 or icmp_ln390_1_fu_319_p2);
    p_Result_s_fu_268_p3 <= ret_V_13_fu_251_p2(40 downto 40);
    ret_V_12_fu_285_p2 <= std_logic_vector(unsigned(ap_const_lv33_1) + unsigned(ret_V_fu_257_p4));
    ret_V_13_fu_251_p2 <= std_logic_vector(signed(lhs_V_fu_237_p1) + signed(sext_ln728_fu_247_p1));
    ret_V_fu_257_p4 <= ret_V_13_fu_251_p2(40 downto 8);
    rhs_V_fu_240_p3 <= (tmp_reg_461 & ap_const_lv8_0);
    select_ln397_fu_344_p3 <= 
        most_left_fu_304_p2 when (icmp_ln397_fu_338_p2(0) = '1') else 
        tmp_most_left_fu_72;
    select_ln405_fu_201_p3 <= 
        ap_const_lv2_3 when (and_ln402_fu_195_p2(0) = '1') else 
        ap_const_lv2_0;
    select_ln851_fu_291_p3 <= 
        ret_V_fu_257_p4 when (icmp_ln851_fu_279_p2(0) = '1') else 
        ret_V_12_fu_285_p2;
        sext_ln378_fu_147_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(px_read),16));

        sext_ln728_fu_247_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(rhs_V_fu_240_p3),41));

    trunc_ln386_fu_209_p1 <= lines_q0(1 - 1 downto 0);
    trunc_ln555_fu_300_p1 <= ap_phi_mux_p_033_0_i_phi_fu_125_p4(32 - 1 downto 0);
    trunc_ln851_fu_276_p1 <= grp_fu_386_p2(8 - 1 downto 0);
    zext_ln1118_fu_151_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(sext_ln378_fu_147_p1),40));
    zext_ln386_fu_180_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_reg_111),64));
    zext_ln388_fu_155_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(crop_width_read),32));
    zext_ln390_fu_159_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(py_read),32));
end behav;