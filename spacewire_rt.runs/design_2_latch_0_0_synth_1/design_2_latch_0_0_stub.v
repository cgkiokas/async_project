// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 12 18:28:49 2020
// Host        : CHRIS-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_2_latch_0_0_stub.v
// Design      : design_2_latch_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "latch,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(preset, x0_t, x0_f, y_ack, y0_t, y0_f, x_ack)
/* synthesis syn_black_box black_box_pad_pin="preset,x0_t,x0_f,y_ack,y0_t,y0_f,x_ack" */;
  input preset;
  input x0_t;
  input x0_f;
  input y_ack;
  output y0_t;
  output y0_f;
  output x_ack;
endmodule
