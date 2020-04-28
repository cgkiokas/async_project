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
    in_port_1_data_t    :  in std_logic;
    in_port_1_data_f    :  in std_logic;
    in_port_1_strobe_t  :  in std_logic;
    in_port_1_strobe_f  :  in std_logic;
    
    in_port_2_data_t    :  in std_logic;
    in_port_2_data_f    :  in std_logic;
    in_port_2_strobe_t  :  in std_logic;
    in_port_2_strobe_f  :  in std_logic;
    
    out_port_1_data_t   :  out std_logic;
    out_port_1_data_f   :  out std_logic;
    out_port_1_strobe_t :  out std_logic;
    out_port_1_strobe_f :  out std_logic;
    
    out_port_2_data_t   :  out std_logic;
    out_port_2_data_f   :  out std_logic;
    out_port_2_strobe_t :  out std_logic;
    out_port_2_strobe_f :  out std_logic;
    
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

begin

mux_1 : entity work.MUX1
port map(
    x1_t =>  in_port_1_data_t,
    x1_f =>  in_port_1_data_f,  
    x0_t =>  in_port_1_strobe_t,    
    x0_f =>  in_port_1_strobe_f,   
    y1_t =>  in_port_2_data_t,   
    y1_f =>  in_port_2_data_f,   
    y0_t =>  in_port_2_strobe_t,   
    y0_f =>  in_port_2_strobe_f,   
    ctl_t =>  address_t(0),  
    ctl_f =>  address_f(0),   
    z_ack =>  out_port_1_ack,
      
    y_ack =>  in_port_2_ack,  
    x_ack =>  in_port_1_ack,   
    ctl_ack  =>  addres_ack,
    z1_t  =>  out_port_1_data_t,   
    z1_f  =>  out_port_1_data_f,   
    z0_t =>  out_port_1_strobe_t,   
    z0_f  =>  out_port_1_strobe_f  
);

mux_2 : entity work.MUX1
port map(
    x1_t =>  in_port_2_data_t,
    x1_f =>  in_port_2_data_f,  
    x0_t =>  in_port_2_strobe_t,    
    x0_f =>  in_port_2_strobe_f,   
    y1_t =>  in_port_1_data_t,   
    y1_f =>  in_port_1_data_f,   
    y0_t =>  in_port_1_strobe_t,   
    y0_f =>  in_port_1_strobe_f,   
    ctl_t =>  address_t(1),  
    ctl_f =>  address_t(1),   
    z_ack =>  out_port_2_ack,
      
    y_ack =>  in_port_1_ack,  
    x_ack =>  in_port_2_ack,   
    ctl_ack  =>  addres_ack,
    z1_t  =>  out_port_2_data_t,   
    z1_f  =>  out_port_2_data_f,   
    z0_t =>  out_port_2_strobe_t,   
    z0_f  =>  out_port_2_strobe_f  
);

end Behavioral;
