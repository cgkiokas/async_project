--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu May 14 16:52:29 2020
--Host        : CHRIS-PC running 64-bit major release  (build 9200)
--Command     : generate_target design_2.bd
--Design      : design_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2 is
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_2 : entity is "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_2 : entity is "design_2.hwdef";
end design_2;

architecture STRUCTURE of design_2 is
  component design_2_latch_0_0 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_2_latch_0_0;
  component design_2_APU_0_0 is
  port (
    d_t : in STD_LOGIC;
    d_f : in STD_LOGIC;
    address_out : out STD_LOGIC
  );
  end component design_2_APU_0_0;
  signal latch_0_y0_f : STD_LOGIC;
  signal latch_0_y0_t : STD_LOGIC;
  signal NLW_APU_0_address_out_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_0_x_ack_UNCONNECTED : STD_LOGIC;
begin
APU_0: component design_2_APU_0_0
     port map (
      address_out => NLW_APU_0_address_out_UNCONNECTED,
      d_f => latch_0_y0_f,
      d_t => latch_0_y0_t
    );
latch_0: component design_2_latch_0_0
     port map (
      preset => '0',
      x0_f => '0',
      x0_t => '0',
      x_ack => NLW_latch_0_x_ack_UNCONNECTED,
      y0_f => latch_0_y0_f,
      y0_t => latch_0_y0_t,
      y_ack => '0'
    );
end STRUCTURE;
