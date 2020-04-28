-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:MUX1:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY top_MUX1_0_0 IS
  PORT (
    x1_t : IN STD_LOGIC;
    x1_f : IN STD_LOGIC;
    x0_t : IN STD_LOGIC;
    x0_f : IN STD_LOGIC;
    y1_t : IN STD_LOGIC;
    y1_f : IN STD_LOGIC;
    y0_t : IN STD_LOGIC;
    y0_f : IN STD_LOGIC;
    ctl_t : IN STD_LOGIC;
    ctl_f : IN STD_LOGIC;
    z_ack : IN STD_LOGIC;
    y_ack : OUT STD_LOGIC;
    x_ack : OUT STD_LOGIC;
    ctl_ack : OUT STD_LOGIC;
    z1_t : OUT STD_LOGIC;
    z1_f : OUT STD_LOGIC;
    z0_t : OUT STD_LOGIC;
    z0_f : OUT STD_LOGIC
  );
END top_MUX1_0_0;

ARCHITECTURE top_MUX1_0_0_arch OF top_MUX1_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF top_MUX1_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT MUX1 IS
    PORT (
      x1_t : IN STD_LOGIC;
      x1_f : IN STD_LOGIC;
      x0_t : IN STD_LOGIC;
      x0_f : IN STD_LOGIC;
      y1_t : IN STD_LOGIC;
      y1_f : IN STD_LOGIC;
      y0_t : IN STD_LOGIC;
      y0_f : IN STD_LOGIC;
      ctl_t : IN STD_LOGIC;
      ctl_f : IN STD_LOGIC;
      z_ack : IN STD_LOGIC;
      y_ack : OUT STD_LOGIC;
      x_ack : OUT STD_LOGIC;
      ctl_ack : OUT STD_LOGIC;
      z1_t : OUT STD_LOGIC;
      z1_f : OUT STD_LOGIC;
      z0_t : OUT STD_LOGIC;
      z0_f : OUT STD_LOGIC
    );
  END COMPONENT MUX1;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF top_MUX1_0_0_arch: ARCHITECTURE IS "MUX1,Vivado 2019.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF top_MUX1_0_0_arch : ARCHITECTURE IS "top_MUX1_0_0,MUX1,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF top_MUX1_0_0_arch: ARCHITECTURE IS "top_MUX1_0_0,MUX1,{x_ipProduct=Vivado 2019.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=MUX1,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF top_MUX1_0_0_arch: ARCHITECTURE IS "module_ref";
BEGIN
  U0 : MUX1
    PORT MAP (
      x1_t => x1_t,
      x1_f => x1_f,
      x0_t => x0_t,
      x0_f => x0_f,
      y1_t => y1_t,
      y1_f => y1_f,
      y0_t => y0_t,
      y0_f => y0_f,
      ctl_t => ctl_t,
      ctl_f => ctl_f,
      z_ack => z_ack,
      y_ack => y_ack,
      x_ack => x_ack,
      ctl_ack => ctl_ack,
      z1_t => z1_t,
      z1_f => z1_f,
      z0_t => z0_t,
      z0_f => z0_f
    );
END top_MUX1_0_0_arch;