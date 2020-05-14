----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/28/2020 03:29:35 PM
-- Design Name: 
-- Module Name: 2X2CROSS - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CROSS2X2 is
  Port (
    preset_port_1       :  in std_logic;
    preset_port_2       :  in std_logic;
    
    in_port_1_data_t    :  in std_logic;
    in_port_1_data_f    :  in std_logic;
    
    in_port_2_data_t    :  in std_logic;
    in_port_2_data_f    :  in std_logic;
    
    out_port_1_data_t   :  out std_logic;
    out_port_1_data_f   :  out std_logic;
    
    out_port_2_data_t   :  out std_logic;
    out_port_2_data_f   :  out std_logic;
    
    address_t           : in std_logic_vector(1 downto 0);
    address_f           : in std_logic_vector(1 downto 0);
    addres_ack          : out std_logic;
    
    out_port_1_ack      : in std_logic;
    out_port_2_ack      : in std_logic;
    in_port_1_ack       : out std_logic;
    in_port_2_ack       : out std_logic
    
   );
end CROSS2X2;

architecture Behavioral of CROSS2X2 is
signal port1_ack_1 : std_logic;
signal port2_ack_1 : std_logic;
signal port1_ack_2 : std_logic;
signal port2_ack_2 : std_logic;
signal address_ack_out_1 : std_logic;
signal address_ack_out_2 : std_logic;
begin

mux_1 : entity work.MUX1
port map(
    preset => preset_port_1,
    x0_t =>  in_port_1_data_t,    
    x0_f =>  in_port_1_data_f,    
    y0_t =>  in_port_2_data_t,   
    y0_f =>  in_port_2_data_f,   
    ctl_t =>  address_t(0),  
    ctl_f =>  address_f(0),   
    z_ack =>  out_port_1_ack,
      
    y_ack =>  port2_ack_1,  
    x_ack =>  port1_ack_1,   
    ctl_ack  =>  address_ack_out_1,  
    z0_t =>  out_port_1_data_t,   
    z0_f  =>  out_port_1_data_f  
);

mux_2 : entity work.MUX1
port map(
    preset => preset_port_2,  
    x0_t =>  in_port_2_data_t,    
    x0_f =>  in_port_2_data_f,      
    y0_t =>  in_port_1_data_t,   
    y0_f =>  in_port_1_data_f,   
    ctl_t =>  address_t(1),  
    ctl_f =>  address_f(1),   
    z_ack =>  out_port_2_ack,
      
    y_ack =>  port1_ack_2,  
    x_ack =>  port2_ack_2,   
    ctl_ack  =>  address_ack_out_2,   
    z0_t =>  out_port_2_data_t,   
    z0_f  =>  out_port_2_data_f  
);

    in_port_1_ack <= port1_ack_1 or port1_ack_2;
    in_port_2_ack <= port2_ack_1 or port2_ack_2;
    addres_ack <= address_ack_out_1 or address_ack_out_2;
end Behavioral;
