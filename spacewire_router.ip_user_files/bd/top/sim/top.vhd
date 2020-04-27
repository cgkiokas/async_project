--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Mon Apr 27 12:58:10 2020
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
  component top_c_gate_0_0 is
  port (
    preset : in STD_LOGIC;
    input : in STD_LOGIC_VECTOR ( 1 downto 0 );
    output : out STD_LOGIC
  );
  end component top_c_gate_0_0;
  signal NLW_c_gate_0_output_UNCONNECTED : STD_LOGIC;
begin
c_gate_0: component top_c_gate_0_0
     port map (
      input(1 downto 0) => B"00",
      output => NLW_c_gate_0_output_UNCONNECTED,
      preset => '0'
    );
end STRUCTURE;
