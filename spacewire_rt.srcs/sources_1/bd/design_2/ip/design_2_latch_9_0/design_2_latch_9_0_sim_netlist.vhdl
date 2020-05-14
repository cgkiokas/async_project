-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue May 12 18:13:26 2020
-- Host        : CHRIS-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/spacewire_rt/spacewire_rt.srcs/sources_1/bd/design_2/ip/design_2_latch_9_0/design_2_latch_9_0_sim_netlist.vhdl
-- Design      : design_2_latch_9_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_latch_9_0 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_latch_9_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_latch_9_0 : entity is "design_2_latch_9_0,latch,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_2_latch_9_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_2_latch_9_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_2_latch_9_0 : entity is "latch,Vivado 2019.2";
end design_2_latch_9_0;

architecture STRUCTURE of design_2_latch_9_0 is
  signal \^y0_f\ : STD_LOGIC;
  signal \^y0_t\ : STD_LOGIC;
begin
  y0_f <= \^y0_f\;
  y0_t <= \^y0_t\;
x_ack_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F080F080F080E"
    )
        port map (
      I0 => x0_t,
      I1 => \^y0_t\,
      I2 => preset,
      I3 => y_ack,
      I4 => x0_f,
      I5 => \^y0_f\,
      O => x_ack
    );
y0_f_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008E"
    )
        port map (
      I0 => \^y0_f\,
      I1 => x0_f,
      I2 => y_ack,
      I3 => preset,
      O => \^y0_f\
    );
y0_t_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008E"
    )
        port map (
      I0 => \^y0_t\,
      I1 => x0_t,
      I2 => y_ack,
      I3 => preset,
      O => \^y0_t\
    );
end STRUCTURE;
