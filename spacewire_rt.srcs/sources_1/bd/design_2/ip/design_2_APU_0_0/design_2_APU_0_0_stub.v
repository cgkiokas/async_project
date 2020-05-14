// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 12 18:06:06 2020
// Host        : CHRIS-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/spacewire_rt/spacewire_rt.srcs/sources_1/bd/design_2/ip/design_2_APU_0_0/design_2_APU_0_0_stub.v
// Design      : design_2_APU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "APU,Vivado 2019.2" *)
module design_2_APU_0_0(d_t, d_f, address_ack, address_t, address_f)
/* synthesis syn_black_box black_box_pad_pin="d_t,d_f,address_ack,address_t[1:0],address_f[1:0]" */;
  input d_t;
  input d_f;
  input address_ack;
  output [1:0]address_t;
  output [1:0]address_f;
endmodule
