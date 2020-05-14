-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue May 12 18:13:26 2020
-- Host        : CHRIS-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               g:/spacewire_rt/spacewire_rt.srcs/sources_1/bd/design_2/ip/design_2_latch_9_0/design_2_latch_9_0_stub.vhdl
-- Design      : design_2_latch_9_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_2_latch_9_0 is
  Port ( 
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );

end design_2_latch_9_0;

architecture stub of design_2_latch_9_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "preset,x0_t,x0_f,y_ack,y0_t,y0_f,x_ack";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "latch,Vivado 2019.2";
begin
end;
