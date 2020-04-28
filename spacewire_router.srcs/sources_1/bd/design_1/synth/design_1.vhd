--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Tue Apr 28 17:41:12 2020
--Host        : CHRIS-PC running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_CROSS2X2_0_0 is
  port (
    in_port_1_data_t : in STD_LOGIC;
    in_port_1_data_f : in STD_LOGIC;
    in_port_1_strobe_t : in STD_LOGIC;
    in_port_1_strobe_f : in STD_LOGIC;
    in_port_2_data_t : in STD_LOGIC;
    in_port_2_data_f : in STD_LOGIC;
    in_port_2_strobe_t : in STD_LOGIC;
    in_port_2_strobe_f : in STD_LOGIC;
    out_port_1_data_t : out STD_LOGIC;
    out_port_1_data_f : out STD_LOGIC;
    out_port_1_strobe_t : out STD_LOGIC;
    out_port_1_strobe_f : out STD_LOGIC;
    out_port_2_data_t : out STD_LOGIC;
    out_port_2_data_f : out STD_LOGIC;
    out_port_2_strobe_t : out STD_LOGIC;
    out_port_2_strobe_f : out STD_LOGIC;
    address_t : in STD_LOGIC_VECTOR ( 1 downto 0 );
    address_f : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addres_ack : out STD_LOGIC;
    out_port_1_ack : in STD_LOGIC;
    out_port_2_ack : in STD_LOGIC;
    in_port_1_ack : out STD_LOGIC;
    in_port_2_ack : out STD_LOGIC
  );
  end component design_1_CROSS2X2_0_0;
  component design_1_latch_0_0 is
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
  end component design_1_latch_0_0;
  component design_1_latch_0_1 is
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
  end component design_1_latch_0_1;
  component design_1_latch_1_0 is
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
  end component design_1_latch_1_0;
  component design_1_latch_2_0 is
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
  end component design_1_latch_2_0;
  signal CROSS2X2_0_in_port_1_ack : STD_LOGIC;
  signal CROSS2X2_0_in_port_2_ack : STD_LOGIC;
  signal CROSS2X2_0_out_port_1_data_f : STD_LOGIC;
  signal CROSS2X2_0_out_port_1_data_t : STD_LOGIC;
  signal CROSS2X2_0_out_port_1_strobe_f : STD_LOGIC;
  signal CROSS2X2_0_out_port_1_strobe_t : STD_LOGIC;
  signal CROSS2X2_0_out_port_2_data_f : STD_LOGIC;
  signal CROSS2X2_0_out_port_2_data_t : STD_LOGIC;
  signal CROSS2X2_0_out_port_2_strobe_f : STD_LOGIC;
  signal CROSS2X2_0_out_port_2_strobe_t : STD_LOGIC;
  signal latch_0_y0_f : STD_LOGIC;
  signal latch_0_y0_t : STD_LOGIC;
  signal latch_0_y1_f : STD_LOGIC;
  signal latch_0_y1_t : STD_LOGIC;
  signal latch_1_y0_f : STD_LOGIC;
  signal latch_1_y0_t : STD_LOGIC;
  signal latch_1_y1_f : STD_LOGIC;
  signal latch_1_y1_t : STD_LOGIC;
  signal latch_2_x_ack : STD_LOGIC;
  signal latch_3_x_ack : STD_LOGIC;
  signal NLW_CROSS2X2_0_addres_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_0_x_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_1_x_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_2_y0_f_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_2_y0_t_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_2_y1_f_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_2_y1_t_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_3_y0_f_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_3_y0_t_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_3_y1_f_UNCONNECTED : STD_LOGIC;
  signal NLW_latch_3_y1_t_UNCONNECTED : STD_LOGIC;
begin
CROSS2X2_0: component design_1_CROSS2X2_0_0
     port map (
      addres_ack => NLW_CROSS2X2_0_addres_ack_UNCONNECTED,
      address_f(1 downto 0) => B"00",
      address_t(1 downto 0) => B"00",
      in_port_1_ack => CROSS2X2_0_in_port_1_ack,
      in_port_1_data_f => latch_0_y1_f,
      in_port_1_data_t => latch_0_y1_t,
      in_port_1_strobe_f => latch_0_y0_f,
      in_port_1_strobe_t => latch_0_y0_t,
      in_port_2_ack => CROSS2X2_0_in_port_2_ack,
      in_port_2_data_f => latch_1_y1_f,
      in_port_2_data_t => latch_1_y1_t,
      in_port_2_strobe_f => latch_1_y0_f,
      in_port_2_strobe_t => latch_1_y0_t,
      out_port_1_ack => latch_2_x_ack,
      out_port_1_data_f => CROSS2X2_0_out_port_1_data_f,
      out_port_1_data_t => CROSS2X2_0_out_port_1_data_t,
      out_port_1_strobe_f => CROSS2X2_0_out_port_1_strobe_f,
      out_port_1_strobe_t => CROSS2X2_0_out_port_1_strobe_t,
      out_port_2_ack => latch_3_x_ack,
      out_port_2_data_f => CROSS2X2_0_out_port_2_data_f,
      out_port_2_data_t => CROSS2X2_0_out_port_2_data_t,
      out_port_2_strobe_f => CROSS2X2_0_out_port_2_strobe_f,
      out_port_2_strobe_t => CROSS2X2_0_out_port_2_strobe_t
    );
latch_0: component design_1_latch_0_0
     port map (
      x0_f => '0',
      x0_t => '0',
      x1_f => '0',
      x1_t => '0',
      x_ack => NLW_latch_0_x_ack_UNCONNECTED,
      y0_f => latch_0_y0_f,
      y0_t => latch_0_y0_t,
      y1_f => latch_0_y1_f,
      y1_t => latch_0_y1_t,
      y_ack => CROSS2X2_0_in_port_1_ack
    );
latch_1: component design_1_latch_0_1
     port map (
      x0_f => '0',
      x0_t => '0',
      x1_f => '0',
      x1_t => '0',
      x_ack => NLW_latch_1_x_ack_UNCONNECTED,
      y0_f => latch_1_y0_f,
      y0_t => latch_1_y0_t,
      y1_f => latch_1_y1_f,
      y1_t => latch_1_y1_t,
      y_ack => CROSS2X2_0_in_port_2_ack
    );
latch_2: component design_1_latch_1_0
     port map (
      x0_f => CROSS2X2_0_out_port_1_strobe_f,
      x0_t => CROSS2X2_0_out_port_1_strobe_t,
      x1_f => CROSS2X2_0_out_port_1_data_f,
      x1_t => CROSS2X2_0_out_port_1_data_t,
      x_ack => latch_2_x_ack,
      y0_f => NLW_latch_2_y0_f_UNCONNECTED,
      y0_t => NLW_latch_2_y0_t_UNCONNECTED,
      y1_f => NLW_latch_2_y1_f_UNCONNECTED,
      y1_t => NLW_latch_2_y1_t_UNCONNECTED,
      y_ack => '0'
    );
latch_3: component design_1_latch_2_0
     port map (
      x0_f => CROSS2X2_0_out_port_2_strobe_f,
      x0_t => CROSS2X2_0_out_port_2_strobe_t,
      x1_f => CROSS2X2_0_out_port_2_data_f,
      x1_t => CROSS2X2_0_out_port_2_data_t,
      x_ack => latch_3_x_ack,
      y0_f => NLW_latch_3_y0_f_UNCONNECTED,
      y0_t => NLW_latch_3_y0_t_UNCONNECTED,
      y1_f => NLW_latch_3_y1_f_UNCONNECTED,
      y1_t => NLW_latch_3_y1_t_UNCONNECTED,
      y_ack => '0'
    );
end STRUCTURE;
