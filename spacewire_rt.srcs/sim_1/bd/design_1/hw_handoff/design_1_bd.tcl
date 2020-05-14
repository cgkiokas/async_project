
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# APU, CROSS2X2, ClockGenerator, Sink, Sink, address_selection, latch, latch, latch, latch, latch, latch, latch, latch, latch, latch, latch, latch, latch

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
   set_property BOARD_PART digilentinc.com:basys3:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports

  # Create instance: APU_0, and set properties
  set block_name APU
  set block_cell_name APU_0
  if { [catch {set APU_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $APU_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: CROSS2X2_0, and set properties
  set block_name CROSS2X2
  set block_cell_name CROSS2X2_0
  if { [catch {set CROSS2X2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $CROSS2X2_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ClockGenerator_0, and set properties
  set block_name ClockGenerator
  set block_cell_name ClockGenerator_0
  if { [catch {set ClockGenerator_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ClockGenerator_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Host_0, and set properties
  set block_name Sink
  set block_cell_name Host_0
  if { [catch {set Host_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Host_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Host_1, and set properties
  set block_name Sink
  set block_cell_name Host_1
  if { [catch {set Host_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Host_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: address_selection_0, and set properties
  set block_name address_selection
  set block_cell_name address_selection_0
  if { [catch {set address_selection_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $address_selection_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_0, and set properties
  set block_name latch
  set block_cell_name latch_0
  if { [catch {set latch_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_1, and set properties
  set block_name latch
  set block_cell_name latch_1
  if { [catch {set latch_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_3, and set properties
  set block_name latch
  set block_cell_name latch_3
  if { [catch {set latch_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_4, and set properties
  set block_name latch
  set block_cell_name latch_4
  if { [catch {set latch_4 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_4 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_5, and set properties
  set block_name latch
  set block_cell_name latch_5
  if { [catch {set latch_5 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_5 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_6, and set properties
  set block_name latch
  set block_cell_name latch_6
  if { [catch {set latch_6 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_6 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_7, and set properties
  set block_name latch
  set block_cell_name latch_7
  if { [catch {set latch_7 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_7 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_8, and set properties
  set block_name latch
  set block_cell_name latch_8
  if { [catch {set latch_8 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_8 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_9, and set properties
  set block_name latch
  set block_cell_name latch_9
  if { [catch {set latch_9 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_9 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_10, and set properties
  set block_name latch
  set block_cell_name latch_10
  if { [catch {set latch_10 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_10 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: latch_11, and set properties
  set block_name latch
  set block_cell_name latch_11
  if { [catch {set latch_11 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $latch_11 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: out_latch_0, and set properties
  set block_name latch
  set block_cell_name out_latch_0
  if { [catch {set out_latch_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $out_latch_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: out_latch_1, and set properties
  set block_name latch
  set block_cell_name out_latch_1
  if { [catch {set out_latch_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $out_latch_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create port connections
  connect_bd_net -net APU_0_address_f [get_bd_pins CROSS2X2_0/address_f] [get_bd_pins address_selection_0/address_f]
  connect_bd_net -net APU_0_address_out [get_bd_pins APU_0/address_out] [get_bd_pins address_selection_0/address_port1]
  connect_bd_net -net APU_0_address_t [get_bd_pins CROSS2X2_0/address_t] [get_bd_pins address_selection_0/address_t]
  connect_bd_net -net CROSS2X2_0_addres_ack [get_bd_pins CROSS2X2_0/addres_ack] [get_bd_pins address_selection_0/address_ack]
  connect_bd_net -net CROSS2X2_0_in_port_1_ack [get_bd_pins CROSS2X2_0/in_port_1_ack] [get_bd_pins latch_1/y_ack]
  connect_bd_net -net CROSS2X2_0_out_port_1_data_f [get_bd_pins CROSS2X2_0/out_port_1_data_f] [get_bd_pins out_latch_0/x0_f]
  connect_bd_net -net CROSS2X2_0_out_port_1_data_t [get_bd_pins CROSS2X2_0/out_port_1_data_t] [get_bd_pins out_latch_0/x0_t]
  connect_bd_net -net CROSS2X2_0_out_port_2_data_f [get_bd_pins CROSS2X2_0/out_port_2_data_f] [get_bd_pins out_latch_1/x0_f]
  connect_bd_net -net CROSS2X2_0_out_port_2_data_t [get_bd_pins CROSS2X2_0/out_port_2_data_t] [get_bd_pins out_latch_1/x0_t]
  connect_bd_net -net ClockGenerator_0_d_f [get_bd_pins ClockGenerator_0/d_f] [get_bd_pins latch_0/x0_f]
  connect_bd_net -net ClockGenerator_0_d_t [get_bd_pins ClockGenerator_0/d_t] [get_bd_pins latch_0/x0_t]
  connect_bd_net -net ClockGenerator_0_preset [get_bd_pins CROSS2X2_0/preset_port_1] [get_bd_pins CROSS2X2_0/preset_port_2] [get_bd_pins ClockGenerator_0/preset] [get_bd_pins latch_1/preset] [get_bd_pins latch_10/preset] [get_bd_pins latch_11/preset] [get_bd_pins latch_3/preset] [get_bd_pins latch_4/preset] [get_bd_pins latch_5/preset] [get_bd_pins latch_6/preset] [get_bd_pins latch_7/preset] [get_bd_pins latch_8/preset] [get_bd_pins latch_9/preset] [get_bd_pins out_latch_0/preset] [get_bd_pins out_latch_1/preset]
  connect_bd_net -net Sink_0_ACK [get_bd_pins Host_0/ACK] [get_bd_pins out_latch_0/y_ack]
  connect_bd_net -net Sink_1_ACK [get_bd_pins Host_1/ACK] [get_bd_pins out_latch_1/y_ack]
  connect_bd_net -net latch_0_x_ack [get_bd_pins ClockGenerator_0/ack_in] [get_bd_pins latch_0/x_ack]
  connect_bd_net -net latch_0_y0_f [get_bd_pins APU_0/d_f] [get_bd_pins latch_0/y0_f] [get_bd_pins latch_8/x0_f]
  connect_bd_net -net latch_0_y0_t [get_bd_pins APU_0/d_t] [get_bd_pins latch_0/y0_t] [get_bd_pins latch_8/x0_t]
  connect_bd_net -net latch_10_x_ack [get_bd_pins latch_10/x_ack] [get_bd_pins latch_9/y_ack]
  connect_bd_net -net latch_10_y0_f [get_bd_pins latch_10/y0_f] [get_bd_pins latch_11/x0_f]
  connect_bd_net -net latch_10_y0_t [get_bd_pins latch_10/y0_t] [get_bd_pins latch_11/x0_t]
  connect_bd_net -net latch_11_x_ack [get_bd_pins latch_10/y_ack] [get_bd_pins latch_11/x_ack]
  connect_bd_net -net latch_11_y0_f [get_bd_pins latch_1/x0_f] [get_bd_pins latch_11/y0_f]
  connect_bd_net -net latch_11_y0_t [get_bd_pins latch_1/x0_t] [get_bd_pins latch_11/y0_t]
  connect_bd_net -net latch_12_x_ack [get_bd_pins CROSS2X2_0/out_port_2_ack] [get_bd_pins out_latch_1/x_ack]
  connect_bd_net -net latch_12_y0_f [get_bd_pins Host_1/DF] [get_bd_pins out_latch_1/y0_f]
  connect_bd_net -net latch_12_y0_t [get_bd_pins Host_1/DT] [get_bd_pins out_latch_1/y0_t]
  connect_bd_net -net latch_1_x_ack [get_bd_pins latch_1/x_ack] [get_bd_pins latch_11/y_ack]
  connect_bd_net -net latch_1_y0_f [get_bd_pins CROSS2X2_0/in_port_1_data_f] [get_bd_pins latch_1/y0_f]
  connect_bd_net -net latch_1_y0_t [get_bd_pins CROSS2X2_0/in_port_1_data_t] [get_bd_pins latch_1/y0_t]
  connect_bd_net -net latch_2_x_ack [get_bd_pins CROSS2X2_0/out_port_1_ack] [get_bd_pins out_latch_0/x_ack]
  connect_bd_net -net latch_2_y0_f [get_bd_pins Host_0/DF] [get_bd_pins out_latch_0/y0_f]
  connect_bd_net -net latch_2_y0_t [get_bd_pins Host_0/DT] [get_bd_pins out_latch_0/y0_t]
  connect_bd_net -net latch_3_x_ack [get_bd_pins latch_3/x_ack] [get_bd_pins latch_4/y_ack]
  connect_bd_net -net latch_3_y0_f [get_bd_pins latch_3/y0_f] [get_bd_pins latch_7/x0_f]
  connect_bd_net -net latch_3_y0_t [get_bd_pins latch_3/y0_t] [get_bd_pins latch_7/x0_t]
  connect_bd_net -net latch_4_x_ack [get_bd_pins latch_4/x_ack] [get_bd_pins latch_8/y_ack]
  connect_bd_net -net latch_4_y0_f [get_bd_pins latch_3/x0_f] [get_bd_pins latch_4/y0_f]
  connect_bd_net -net latch_4_y0_t [get_bd_pins latch_3/x0_t] [get_bd_pins latch_4/y0_t]
  connect_bd_net -net latch_5_x_ack [get_bd_pins latch_5/x_ack] [get_bd_pins latch_7/y_ack]
  connect_bd_net -net latch_5_y0_f [get_bd_pins latch_5/y0_f] [get_bd_pins latch_6/x0_f]
  connect_bd_net -net latch_5_y0_t [get_bd_pins latch_5/y0_t] [get_bd_pins latch_6/x0_t]
  connect_bd_net -net latch_6_x_ack [get_bd_pins latch_5/y_ack] [get_bd_pins latch_6/x_ack]
  connect_bd_net -net latch_6_y0_f [get_bd_pins latch_6/y0_f] [get_bd_pins latch_9/x0_f]
  connect_bd_net -net latch_6_y0_t [get_bd_pins latch_6/y0_t] [get_bd_pins latch_9/x0_t]
  connect_bd_net -net latch_7_x_ack [get_bd_pins latch_3/y_ack] [get_bd_pins latch_7/x_ack]
  connect_bd_net -net latch_7_y0_f [get_bd_pins latch_5/x0_f] [get_bd_pins latch_7/y0_f]
  connect_bd_net -net latch_7_y0_t [get_bd_pins latch_5/x0_t] [get_bd_pins latch_7/y0_t]
  connect_bd_net -net latch_8_x_ack [get_bd_pins latch_0/y_ack] [get_bd_pins latch_8/x_ack]
  connect_bd_net -net latch_8_y0_f [get_bd_pins latch_4/x0_f] [get_bd_pins latch_8/y0_f]
  connect_bd_net -net latch_8_y0_t [get_bd_pins latch_4/x0_t] [get_bd_pins latch_8/y0_t]
  connect_bd_net -net latch_9_x_ack [get_bd_pins latch_6/y_ack] [get_bd_pins latch_9/x_ack]
  connect_bd_net -net latch_9_y0_f [get_bd_pins latch_10/x0_f] [get_bd_pins latch_9/y0_f]
  connect_bd_net -net latch_9_y0_t [get_bd_pins latch_10/x0_t] [get_bd_pins latch_9/y0_t]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins latch_0/preset] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins CROSS2X2_0/in_port_2_data_f] [get_bd_pins CROSS2X2_0/in_port_2_data_t] [get_bd_pins xlconstant_1/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


