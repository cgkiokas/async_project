vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_6

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_6 questa_lib/msim/xlconstant_v1_1_6

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_latch_0_0/sim/design_1_latch_0_0.vhd" \
"../../../bd/design_1/ip/design_1_latch_2_0/sim/design_1_latch_2_0.vhd" \
"../../../bd/design_1/ip/design_1_ClockGenerator_0_0/sim/design_1_ClockGenerator_0_0.vhd" \

vlog -work xlconstant_v1_1_6 -64 \
"../../../../spacewire_rt.srcs/sim_1/bd/design_1/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_Sink_0_1/sim/design_1_Sink_0_1.vhd" \
"../../../bd/design_1/ip/design_1_CROSS2X2_0_1/sim/design_1_CROSS2X2_0_1.vhd" \
"../../../bd/design_1/ip/design_1_APU_0_0/sim/design_1_APU_0_0.vhd" \

vlog -work xil_defaultlib -64 \
"../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_latch_0_1/sim/design_1_latch_0_1.vhd" \
"../../../bd/design_1/ip/design_1_latch_1_0/sim/design_1_latch_1_0.vhd" \
"../../../bd/design_1/ip/design_1_latch_1_1/sim/design_1_latch_1_1.vhd" \
"../../../bd/design_1/ip/design_1_latch_1_2/sim/design_1_latch_1_2.vhd" \
"../../../bd/design_1/ip/design_1_latch_1_3/sim/design_1_latch_1_3.vhd" \
"../../../bd/design_1/ip/design_1_latch_1_4/sim/design_1_latch_1_4.vhd" \
"../../../bd/design_1/ip/design_1_latch_1_5/sim/design_1_latch_1_5.vhd" \
"../../../bd/design_1/ip/design_1_latch_0_2/sim/design_1_latch_0_2.vhd" \
"../../../bd/design_1/ip/design_1_latch_0_3/sim/design_1_latch_0_3.vhd" \
"../../../bd/design_1/ip/design_1_latch_10_0/sim/design_1_latch_10_0.vhd" \
"../../../bd/design_1/ip/design_1_address_selection_0_0/sim/design_1_address_selection_0_0.vhd" \
"../../../bd/design_1/ip/design_1_latch_2_1/sim/design_1_latch_2_1.vhd" \
"../../../bd/design_1/ip/design_1_Sink_0_2/sim/design_1_Sink_0_2.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

