-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue May 12 18:06:06 2020
-- Host        : CHRIS-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/spacewire_rt/spacewire_rt.srcs/sources_1/bd/design_2/ip/design_2_APU_0_0/design_2_APU_0_0_sim_netlist.vhdl
-- Design      : design_2_APU_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_APU_0_0 is
  port (
    d_t : in STD_LOGIC;
    d_f : in STD_LOGIC;
    address_ack : in STD_LOGIC;
    address_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    address_f : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_2_APU_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_2_APU_0_0 : entity is "design_2_APU_0_0,APU,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_2_APU_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_2_APU_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_2_APU_0_0 : entity is "APU,Vivado 2019.2";
end design_2_APU_0_0;

architecture STRUCTURE of design_2_APU_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^address_f\ : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  address_f(1) <= \^address_f\(1);
  address_f(0) <= \^address_f\(1);
  address_t(1) <= \<const0>\;
  address_t(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\address_f[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => address_ack,
      O => \^address_f\(1)
    );
end STRUCTURE;
