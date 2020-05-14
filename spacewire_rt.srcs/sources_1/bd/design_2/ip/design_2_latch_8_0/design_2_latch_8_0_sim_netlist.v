// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue May 12 18:12:54 2020
// Host        : CHRIS-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/spacewire_rt/spacewire_rt.srcs/sources_1/bd/design_2/ip/design_2_latch_8_0/design_2_latch_8_0_sim_netlist.v
// Design      : design_2_latch_8_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_2_latch_8_0,latch,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "latch,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_2_latch_8_0
   (preset,
    x0_t,
    x0_f,
    y_ack,
    y0_t,
    y0_f,
    x_ack);
  input preset;
  input x0_t;
  input x0_f;
  input y_ack;
  output y0_t;
  output y0_f;
  output x_ack;

  wire preset;
  wire x0_f;
  wire x0_t;
  wire x_ack;
  wire y0_f;
  wire y0_t;
  wire y_ack;

  LUT6 #(
    .INIT(64'h0F0F080F080F080E)) 
    x_ack_INST_0
       (.I0(x0_t),
        .I1(y0_t),
        .I2(preset),
        .I3(y_ack),
        .I4(x0_f),
        .I5(y0_f),
        .O(x_ack));
  LUT4 #(
    .INIT(16'h008E)) 
    y0_f_INST_0
       (.I0(y0_f),
        .I1(x0_f),
        .I2(y_ack),
        .I3(preset),
        .O(y0_f));
  LUT4 #(
    .INIT(16'h008E)) 
    y0_t_INST_0
       (.I0(y0_t),
        .I1(x0_t),
        .I2(y_ack),
        .I3(preset),
        .O(y0_t));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
