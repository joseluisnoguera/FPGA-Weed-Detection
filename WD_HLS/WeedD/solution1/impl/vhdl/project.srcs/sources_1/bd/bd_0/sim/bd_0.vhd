--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
--Date        : Wed Mar 18 11:40:45 2020
--Host        : LAPTOP-OEOHUQ1P running 64-bit major release  (build 9200)
--Command     : generate_target bd_0.bd
--Design      : bd_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_0 : entity is "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_0 : entity is "bd_0.hwdef";
end bd_0;

architecture STRUCTURE of bd_0 is
  component bd_0_hls_inst_0 is
  port (
    stream_in_TVALID : in STD_LOGIC;
    stream_in_TREADY : out STD_LOGIC;
    stream_in_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_in_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_in_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_in_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TVALID : out STD_LOGIC;
    stream_out_TREADY : in STD_LOGIC;
    stream_out_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_out_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC
  );
  end component bd_0_hls_inst_0;
  signal ap_clk_0_1 : STD_LOGIC;
  signal ap_rst_n_0_1 : STD_LOGIC;
  signal hls_inst_stream_out_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal hls_inst_stream_out_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_stream_out_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_stream_out_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hls_inst_stream_out_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_stream_out_TREADY : STD_LOGIC;
  signal hls_inst_stream_out_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hls_inst_stream_out_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hls_inst_stream_out_TVALID : STD_LOGIC;
  signal stream_in_0_1_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal stream_in_0_1_TDEST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal stream_in_0_1_TID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal stream_in_0_1_TKEEP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stream_in_0_1_TLAST : STD_LOGIC_VECTOR ( 0 to 0 );
  signal stream_in_0_1_TREADY : STD_LOGIC;
  signal stream_in_0_1_TSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal stream_in_0_1_TUSER : STD_LOGIC_VECTOR ( 0 to 0 );
  signal stream_in_0_1_TVALID : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_BUSIF stream_in:stream_out, ASSOCIATED_RESET ap_rst_n, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 20000000.0, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 RST.AP_RST_N RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME RST.AP_RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of stream_in_tready : signal is "xilinx.com:interface:axis:1.0 stream_in ";
  attribute X_INTERFACE_INFO of stream_in_tvalid : signal is "xilinx.com:interface:axis:1.0 stream_in ";
  attribute X_INTERFACE_INFO of stream_out_tready : signal is "xilinx.com:interface:axis:1.0 stream_out ";
  attribute X_INTERFACE_INFO of stream_out_tvalid : signal is "xilinx.com:interface:axis:1.0 stream_out ";
  attribute X_INTERFACE_INFO of stream_in_tdata : signal is "xilinx.com:interface:axis:1.0 stream_in ";
  attribute X_INTERFACE_PARAMETER of stream_in_tdata : signal is "XIL_INTERFACENAME stream_in, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 20000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of stream_in_tdest : signal is "xilinx.com:interface:axis:1.0 stream_in ";
  attribute X_INTERFACE_INFO of stream_in_tid : signal is "xilinx.com:interface:axis:1.0 stream_in ";
  attribute X_INTERFACE_INFO of stream_in_tkeep : signal is "xilinx.com:interface:axis:1.0 stream_in ";
  attribute X_INTERFACE_INFO of stream_in_tlast : signal is "xilinx.com:interface:axis:1.0 stream_in ";
  attribute X_INTERFACE_INFO of stream_in_tstrb : signal is "xilinx.com:interface:axis:1.0 stream_in ";
  attribute X_INTERFACE_INFO of stream_in_tuser : signal is "xilinx.com:interface:axis:1.0 stream_in ";
  attribute X_INTERFACE_INFO of stream_out_tdata : signal is "xilinx.com:interface:axis:1.0 stream_out ";
  attribute X_INTERFACE_PARAMETER of stream_out_tdata : signal is "XIL_INTERFACENAME stream_out, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 20000000.0, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 1, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.000, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1";
  attribute X_INTERFACE_INFO of stream_out_tdest : signal is "xilinx.com:interface:axis:1.0 stream_out ";
  attribute X_INTERFACE_INFO of stream_out_tid : signal is "xilinx.com:interface:axis:1.0 stream_out ";
  attribute X_INTERFACE_INFO of stream_out_tkeep : signal is "xilinx.com:interface:axis:1.0 stream_out ";
  attribute X_INTERFACE_INFO of stream_out_tlast : signal is "xilinx.com:interface:axis:1.0 stream_out ";
  attribute X_INTERFACE_INFO of stream_out_tstrb : signal is "xilinx.com:interface:axis:1.0 stream_out ";
  attribute X_INTERFACE_INFO of stream_out_tuser : signal is "xilinx.com:interface:axis:1.0 stream_out ";
begin
  ap_clk_0_1 <= ap_clk;
  ap_rst_n_0_1 <= ap_rst_n;
  hls_inst_stream_out_TREADY <= stream_out_tready;
  stream_in_0_1_TDATA(31 downto 0) <= stream_in_tdata(31 downto 0);
  stream_in_0_1_TDEST(0) <= stream_in_tdest(0);
  stream_in_0_1_TID(0) <= stream_in_tid(0);
  stream_in_0_1_TKEEP(3 downto 0) <= stream_in_tkeep(3 downto 0);
  stream_in_0_1_TLAST(0) <= stream_in_tlast(0);
  stream_in_0_1_TSTRB(3 downto 0) <= stream_in_tstrb(3 downto 0);
  stream_in_0_1_TUSER(0) <= stream_in_tuser(0);
  stream_in_0_1_TVALID <= stream_in_tvalid;
  stream_in_tready <= stream_in_0_1_TREADY;
  stream_out_tdata(31 downto 0) <= hls_inst_stream_out_TDATA(31 downto 0);
  stream_out_tdest(0) <= hls_inst_stream_out_TDEST(0);
  stream_out_tid(0) <= hls_inst_stream_out_TID(0);
  stream_out_tkeep(3 downto 0) <= hls_inst_stream_out_TKEEP(3 downto 0);
  stream_out_tlast(0) <= hls_inst_stream_out_TLAST(0);
  stream_out_tstrb(3 downto 0) <= hls_inst_stream_out_TSTRB(3 downto 0);
  stream_out_tuser(0) <= hls_inst_stream_out_TUSER(0);
  stream_out_tvalid <= hls_inst_stream_out_TVALID;
hls_inst: component bd_0_hls_inst_0
     port map (
      ap_clk => ap_clk_0_1,
      ap_rst_n => ap_rst_n_0_1,
      stream_in_TDATA(31 downto 0) => stream_in_0_1_TDATA(31 downto 0),
      stream_in_TDEST(0) => stream_in_0_1_TDEST(0),
      stream_in_TID(0) => stream_in_0_1_TID(0),
      stream_in_TKEEP(3 downto 0) => stream_in_0_1_TKEEP(3 downto 0),
      stream_in_TLAST(0) => stream_in_0_1_TLAST(0),
      stream_in_TREADY => stream_in_0_1_TREADY,
      stream_in_TSTRB(3 downto 0) => stream_in_0_1_TSTRB(3 downto 0),
      stream_in_TUSER(0) => stream_in_0_1_TUSER(0),
      stream_in_TVALID => stream_in_0_1_TVALID,
      stream_out_TDATA(31 downto 0) => hls_inst_stream_out_TDATA(31 downto 0),
      stream_out_TDEST(0) => hls_inst_stream_out_TDEST(0),
      stream_out_TID(0) => hls_inst_stream_out_TID(0),
      stream_out_TKEEP(3 downto 0) => hls_inst_stream_out_TKEEP(3 downto 0),
      stream_out_TLAST(0) => hls_inst_stream_out_TLAST(0),
      stream_out_TREADY => hls_inst_stream_out_TREADY,
      stream_out_TSTRB(3 downto 0) => hls_inst_stream_out_TSTRB(3 downto 0),
      stream_out_TUSER(0) => hls_inst_stream_out_TUSER(0),
      stream_out_TVALID => hls_inst_stream_out_TVALID
    );
end STRUCTURE;
