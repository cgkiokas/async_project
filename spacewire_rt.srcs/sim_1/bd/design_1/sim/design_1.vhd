--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Thu May 14 17:17:43 2020
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
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=21,numReposBlks=21,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=19,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_xlconstant_0_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_1;
  component design_1_Sink_0_1 is
  port (
    DT : in STD_LOGIC;
    DF : in STD_LOGIC;
    ACK : out STD_LOGIC
  );
  end component design_1_Sink_0_1;
  component design_1_latch_0_0 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_0_0;
  component design_1_latch_2_0 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_2_0;
  component design_1_latch_0_1 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_0_1;
  component design_1_latch_1_0 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_1_0;
  component design_1_latch_1_1 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_1_1;
  component design_1_latch_1_2 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_1_2;
  component design_1_latch_1_3 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_1_3;
  component design_1_latch_1_4 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_1_4;
  component design_1_latch_1_5 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_1_5;
  component design_1_latch_0_2 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_0_2;
  component design_1_latch_0_3 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_0_3;
  component design_1_latch_10_0 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_10_0;
  component design_1_ClockGenerator_0_0 is
  port (
    ack_in : in STD_LOGIC;
    preset : out STD_LOGIC;
    d_t : out STD_LOGIC;
    d_f : out STD_LOGIC
  );
  end component design_1_ClockGenerator_0_0;
  component design_1_APU_0_0 is
  port (
    d_t : in STD_LOGIC;
    d_f : in STD_LOGIC;
    address_out : out STD_LOGIC
  );
  end component design_1_APU_0_0;
  component design_1_address_selection_0_0 is
  port (
    address_port1 : in STD_LOGIC;
    address_port2 : in STD_LOGIC;
    address_ack : in STD_LOGIC;
    address_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    address_f : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_address_selection_0_0;
  component design_1_latch_2_1 is
  port (
    preset : in STD_LOGIC;
    x0_t : in STD_LOGIC;
    x0_f : in STD_LOGIC;
    y_ack : in STD_LOGIC;
    y0_t : out STD_LOGIC;
    y0_f : out STD_LOGIC;
    x_ack : out STD_LOGIC
  );
  end component design_1_latch_2_1;
  component design_1_Sink_0_2 is
  port (
    DT : in STD_LOGIC;
    DF : in STD_LOGIC;
    ACK : out STD_LOGIC
  );
  end component design_1_Sink_0_2;
  component design_1_CROSS2X2_0_1 is
  port (
    preset_port_1 : in STD_LOGIC;
    preset_port_2 : in STD_LOGIC;
    in_port_1_data_t : in STD_LOGIC;
    in_port_1_data_f : in STD_LOGIC;
    in_port_2_data_t : in STD_LOGIC;
    in_port_2_data_f : in STD_LOGIC;
    out_port_1_data_t : out STD_LOGIC;
    out_port_1_data_f : out STD_LOGIC;
    out_port_2_data_t : out STD_LOGIC;
    out_port_2_data_f : out STD_LOGIC;
    address_t : in STD_LOGIC_VECTOR ( 1 downto 0 );
    address_f : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addres_ack : out STD_LOGIC;
    out_port_1_ack : in STD_LOGIC;
    out_port_2_ack : in STD_LOGIC;
    in_port_1_ack : out STD_LOGIC;
    in_port_2_ack : out STD_LOGIC
  );
  end component design_1_CROSS2X2_0_1;
  signal APU_0_address_f : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal APU_0_address_out : STD_LOGIC;
  signal APU_0_address_t : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CROSS2X2_0_addres_ack : STD_LOGIC;
  signal CROSS2X2_0_in_port_1_ack : STD_LOGIC;
  signal CROSS2X2_0_out_port_1_data_f : STD_LOGIC;
  signal CROSS2X2_0_out_port_1_data_t : STD_LOGIC;
  signal CROSS2X2_0_out_port_2_data_f : STD_LOGIC;
  signal CROSS2X2_0_out_port_2_data_t : STD_LOGIC;
  signal ClockGenerator_0_d_f : STD_LOGIC;
  signal ClockGenerator_0_d_t : STD_LOGIC;
  signal ClockGenerator_0_preset : STD_LOGIC;
  signal Sink_0_ACK : STD_LOGIC;
  signal Sink_1_ACK : STD_LOGIC;
  signal latch_0_x_ack : STD_LOGIC;
  signal latch_0_y0_f : STD_LOGIC;
  signal latch_0_y0_t : STD_LOGIC;
  signal latch_10_x_ack : STD_LOGIC;
  signal latch_10_y0_f : STD_LOGIC;
  signal latch_10_y0_t : STD_LOGIC;
  signal latch_11_x_ack : STD_LOGIC;
  signal latch_11_y0_f : STD_LOGIC;
  signal latch_11_y0_t : STD_LOGIC;
  signal latch_12_x_ack : STD_LOGIC;
  signal latch_12_y0_f : STD_LOGIC;
  signal latch_12_y0_t : STD_LOGIC;
  signal latch_1_x_ack : STD_LOGIC;
  signal latch_1_y0_f : STD_LOGIC;
  signal latch_1_y0_t : STD_LOGIC;
  signal latch_2_x_ack : STD_LOGIC;
  signal latch_2_y0_f : STD_LOGIC;
  signal latch_2_y0_t : STD_LOGIC;
  signal latch_3_x_ack : STD_LOGIC;
  signal latch_3_y0_f : STD_LOGIC;
  signal latch_3_y0_t : STD_LOGIC;
  signal latch_4_x_ack : STD_LOGIC;
  signal latch_4_y0_f : STD_LOGIC;
  signal latch_4_y0_t : STD_LOGIC;
  signal latch_5_x_ack : STD_LOGIC;
  signal latch_5_y0_f : STD_LOGIC;
  signal latch_5_y0_t : STD_LOGIC;
  signal latch_6_x_ack : STD_LOGIC;
  signal latch_6_y0_f : STD_LOGIC;
  signal latch_6_y0_t : STD_LOGIC;
  signal latch_7_x_ack : STD_LOGIC;
  signal latch_7_y0_f : STD_LOGIC;
  signal latch_7_y0_t : STD_LOGIC;
  signal latch_8_x_ack : STD_LOGIC;
  signal latch_8_y0_f : STD_LOGIC;
  signal latch_8_y0_t : STD_LOGIC;
  signal latch_9_x_ack : STD_LOGIC;
  signal latch_9_y0_f : STD_LOGIC;
  signal latch_9_y0_t : STD_LOGIC;
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_CROSS2X2_0_in_port_2_ack_UNCONNECTED : STD_LOGIC;
begin
APU_0: component design_1_APU_0_0
     port map (
      address_out => APU_0_address_out,
      d_f => latch_0_y0_f,
      d_t => latch_0_y0_t
    );
CROSS2X2_0: component design_1_CROSS2X2_0_1
     port map (
      addres_ack => CROSS2X2_0_addres_ack,
      address_f(1 downto 0) => APU_0_address_f(1 downto 0),
      address_t(1 downto 0) => APU_0_address_t(1 downto 0),
      in_port_1_ack => CROSS2X2_0_in_port_1_ack,
      in_port_1_data_f => latch_1_y0_f,
      in_port_1_data_t => latch_1_y0_t,
      in_port_2_ack => NLW_CROSS2X2_0_in_port_2_ack_UNCONNECTED,
      in_port_2_data_f => xlconstant_1_dout(0),
      in_port_2_data_t => xlconstant_1_dout(0),
      out_port_1_ack => latch_2_x_ack,
      out_port_1_data_f => CROSS2X2_0_out_port_1_data_f,
      out_port_1_data_t => CROSS2X2_0_out_port_1_data_t,
      out_port_2_ack => latch_12_x_ack,
      out_port_2_data_f => CROSS2X2_0_out_port_2_data_f,
      out_port_2_data_t => CROSS2X2_0_out_port_2_data_t,
      preset_port_1 => ClockGenerator_0_preset,
      preset_port_2 => ClockGenerator_0_preset
    );
ClockGenerator_0: component design_1_ClockGenerator_0_0
     port map (
      ack_in => latch_0_x_ack,
      d_f => ClockGenerator_0_d_f,
      d_t => ClockGenerator_0_d_t,
      preset => ClockGenerator_0_preset
    );
Host_0: component design_1_Sink_0_1
     port map (
      ACK => Sink_0_ACK,
      DF => latch_2_y0_f,
      DT => latch_2_y0_t
    );
Host_1: component design_1_Sink_0_2
     port map (
      ACK => Sink_1_ACK,
      DF => latch_12_y0_f,
      DT => latch_12_y0_t
    );
address_selection_0: component design_1_address_selection_0_0
     port map (
      address_ack => CROSS2X2_0_addres_ack,
      address_f(1 downto 0) => APU_0_address_f(1 downto 0),
      address_port1 => APU_0_address_out,
      address_port2 => '0',
      address_t(1 downto 0) => APU_0_address_t(1 downto 0)
    );
latch_0: component design_1_latch_0_0
     port map (
      preset => xlconstant_0_dout(0),
      x0_f => ClockGenerator_0_d_f,
      x0_t => ClockGenerator_0_d_t,
      x_ack => latch_0_x_ack,
      y0_f => latch_0_y0_f,
      y0_t => latch_0_y0_t,
      y_ack => latch_8_x_ack
    );
latch_1: component design_1_latch_0_1
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_11_y0_f,
      x0_t => latch_11_y0_t,
      x_ack => latch_1_x_ack,
      y0_f => latch_1_y0_f,
      y0_t => latch_1_y0_t,
      y_ack => CROSS2X2_0_in_port_1_ack
    );
latch_10: component design_1_latch_0_3
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_9_y0_f,
      x0_t => latch_9_y0_t,
      x_ack => latch_10_x_ack,
      y0_f => latch_10_y0_f,
      y0_t => latch_10_y0_t,
      y_ack => latch_11_x_ack
    );
latch_11: component design_1_latch_10_0
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_10_y0_f,
      x0_t => latch_10_y0_t,
      x_ack => latch_11_x_ack,
      y0_f => latch_11_y0_f,
      y0_t => latch_11_y0_t,
      y_ack => latch_1_x_ack
    );
latch_3: component design_1_latch_1_0
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_4_y0_f,
      x0_t => latch_4_y0_t,
      x_ack => latch_3_x_ack,
      y0_f => latch_3_y0_f,
      y0_t => latch_3_y0_t,
      y_ack => latch_7_x_ack
    );
latch_4: component design_1_latch_1_1
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_8_y0_f,
      x0_t => latch_8_y0_t,
      x_ack => latch_4_x_ack,
      y0_f => latch_4_y0_f,
      y0_t => latch_4_y0_t,
      y_ack => latch_3_x_ack
    );
latch_5: component design_1_latch_1_2
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_7_y0_f,
      x0_t => latch_7_y0_t,
      x_ack => latch_5_x_ack,
      y0_f => latch_5_y0_f,
      y0_t => latch_5_y0_t,
      y_ack => latch_6_x_ack
    );
latch_6: component design_1_latch_1_3
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_5_y0_f,
      x0_t => latch_5_y0_t,
      x_ack => latch_6_x_ack,
      y0_f => latch_6_y0_f,
      y0_t => latch_6_y0_t,
      y_ack => latch_9_x_ack
    );
latch_7: component design_1_latch_1_4
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_3_y0_f,
      x0_t => latch_3_y0_t,
      x_ack => latch_7_x_ack,
      y0_f => latch_7_y0_f,
      y0_t => latch_7_y0_t,
      y_ack => latch_5_x_ack
    );
latch_8: component design_1_latch_1_5
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_0_y0_f,
      x0_t => latch_0_y0_t,
      x_ack => latch_8_x_ack,
      y0_f => latch_8_y0_f,
      y0_t => latch_8_y0_t,
      y_ack => latch_4_x_ack
    );
latch_9: component design_1_latch_0_2
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => latch_6_y0_f,
      x0_t => latch_6_y0_t,
      x_ack => latch_9_x_ack,
      y0_f => latch_9_y0_f,
      y0_t => latch_9_y0_t,
      y_ack => latch_10_x_ack
    );
out_latch_0: component design_1_latch_2_0
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => CROSS2X2_0_out_port_1_data_f,
      x0_t => CROSS2X2_0_out_port_1_data_t,
      x_ack => latch_2_x_ack,
      y0_f => latch_2_y0_f,
      y0_t => latch_2_y0_t,
      y_ack => Sink_0_ACK
    );
out_latch_1: component design_1_latch_2_1
     port map (
      preset => ClockGenerator_0_preset,
      x0_f => CROSS2X2_0_out_port_2_data_f,
      x0_t => CROSS2X2_0_out_port_2_data_t,
      x_ack => latch_12_x_ack,
      y0_f => latch_12_y0_f,
      y0_t => latch_12_y0_t,
      y_ack => Sink_1_ACK
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component design_1_xlconstant_0_1
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
end STRUCTURE;
