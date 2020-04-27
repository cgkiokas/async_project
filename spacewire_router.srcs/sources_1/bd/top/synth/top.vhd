--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Mon Apr 27 18:01:00 2020
--Host        : CHRIS-PC running 64-bit major release  (build 9200)
--Command     : generate_target top.bd
--Design      : top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top : entity is "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top : entity is "top.hwdef";
end top;

architecture STRUCTURE of top is
  component top_latch_0_0 is
  port (
    x1_t : in STD_LOGIC;
    x1_f : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y1_t : out STD_LOGIC;
    y1_f : out STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component top_latch_0_0;
  signal NLW_latch_0_x_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_0_y0_f_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_0_y0_t_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_0_y1_f_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_0_y1_t_UNCONNECTED : STD_LOGIC;
begin
latch_0: component top_latch_0_0
     port map (
      x0_f => '0',
      x0_t => '0',
      x1_f => '0',
      x1_t => '0',
      x_ack => NLW_latch_0_x_ack_UNCONNECTED,
      y0_f => NLW_latch_0_y0_f_UNCONNECTED,
      y0_t => NLW_latch_0_y0_t_UNCONNECTED,
      y1_f => NLW_latch_0_y1_f_UNCONNECTED,
      y1_t => NLW_latch_0_y1_t_UNCONNECTED,
      y_ack => '0'
    );
end STRUCTURE;
