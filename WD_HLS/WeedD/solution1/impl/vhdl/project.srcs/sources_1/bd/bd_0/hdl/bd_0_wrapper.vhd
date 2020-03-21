--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Wed Mar 18 11:40:45 2020
--Host        : LAPTOP-OEOHUQ1P running 64-bit major release  (build 9200)
--Command     : generate_target bd_0_wrapper.bd
--Design      : bd_0_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0_wrapper is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    stream_in_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_in_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_in_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_tready : out STD_LOGIC;
    stream_in_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_in_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_tvalid : in STD_LOGIC;
    stream_out_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_out_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_tready : in STD_LOGIC;
    stream_out_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_tvalid : out STD_LOGIC
  );
end bd_0_wrapper;

architecture STRUCTURE of bd_0_wrapper is
  component bd_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    stream_in_tvalid : in STD_LOGIC;
    stream_in_tready : out STD_LOGIC;
    stream_in_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_in_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_in_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_in_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_tvalid : out STD_LOGIC;
    stream_out_tready : in STD_LOGIC;
    stream_out_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_out_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_tdest : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_0;
begin
bd_0_i: component bd_0
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      stream_in_tdata(31 downto 0) => stream_in_tdata(31 downto 0),
      stream_in_tdest(0) => stream_in_tdest(0),
      stream_in_tid(0) => stream_in_tid(0),
      stream_in_tkeep(3 downto 0) => stream_in_tkeep(3 downto 0),
      stream_in_tlast(0) => stream_in_tlast(0),
      stream_in_tready => stream_in_tready,
      stream_in_tstrb(3 downto 0) => stream_in_tstrb(3 downto 0),
      stream_in_tuser(0) => stream_in_tuser(0),
      stream_in_tvalid => stream_in_tvalid,
      stream_out_tdata(31 downto 0) => stream_out_tdata(31 downto 0),
      stream_out_tdest(0) => stream_out_tdest(0),
      stream_out_tid(0) => stream_out_tid(0),
      stream_out_tkeep(3 downto 0) => stream_out_tkeep(3 downto 0),
      stream_out_tlast(0) => stream_out_tlast(0),
      stream_out_tready => stream_out_tready,
      stream_out_tstrb(3 downto 0) => stream_out_tstrb(3 downto 0),
      stream_out_tuser(0) => stream_out_tuser(0),
      stream_out_tvalid => stream_out_tvalid
    );
end STRUCTURE;
