// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Apr 28 17:43:35 2020
// Host        : CHRIS-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/spacewire_router/spacewire_router.srcs/sources_1/bd/design_1/ip/design_1_latch_2_0/design_1_latch_2_0_sim_netlist.v
// Design      : design_1_latch_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_latch_2_0,latch,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "latch,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_latch_2_0
   (x1_t,
    x1_f,
    x0_t,
    x0_f,
    y_ack,
    y1_t,
    y1_f,
    y0_t,
    y0_f,
    x_ack);
  input x1_t;
  input x1_f;
  input x0_t;
  input x0_f;
  input y_ack;
  output y1_t;
  output y1_f;
  output y0_t;
  output y0_f;
  output x_ack;

  wire [0:0]\U0/p_0_out__1 ;
  wire not_q0;
  wire x0_f;
  wire x0_t;
  wire x1_f;
  wire x1_t;
  wire x_ack;
  wire y0_f;
  wire y0_t;
  wire y1_f;
  wire y1_t;
  wire y_ack;

  LUT6 #(
    .INIT(64'hFFFFFBBA00000000)) 
    x_ack_INST_0
       (.I0(\U0/p_0_out__1 ),
        .I1(y_ack),
        .I2(x0_t),
        .I3(y0_t),
        .I4(y0_f),
        .I5(not_q0),
        .O(x_ack));
  LUT5 #(
    .INIT(32'hFF8F8F8E)) 
    x_ack_INST_0_i_1
       (.I0(x1_t),
        .I1(y1_t),
        .I2(y_ack),
        .I3(x1_f),
        .I4(y1_f),
        .O(\U0/p_0_out__1 ));
  LUT6 #(
    .INIT(64'hFEEEFFFEA888AAA8)) 
    x_ack_INST_0_i_2
       (.I0(not_q0),
        .I1(y0_f),
        .I2(y0_t),
        .I3(x0_t),
        .I4(y_ack),
        .I5(\U0/p_0_out__1 ),
        .O(not_q0));
  LUT3 #(
    .INIT(8'h8E)) 
    y0_f_INST_0
       (.I0(y0_f),
        .I1(x0_f),
        .I2(y_ack),
        .O(y0_f));
  LUT3 #(
    .INIT(8'h8E)) 
    y0_t_INST_0
       (.I0(y0_t),
        .I1(x0_t),
        .I2(y_ack),
        .O(y0_t));
  LUT3 #(
    .INIT(8'h8E)) 
    y1_f_INST_0
       (.I0(y1_f),
        .I1(x1_f),
        .I2(y_ack),
        .O(y1_f));
  LUT3 #(
    .INIT(8'h8E)) 
    y1_t_INST_0
       (.I0(y1_t),
        .I1(x1_t),
        .I2(y_ack),
        .O(y1_t));
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
