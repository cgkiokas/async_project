----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2020 12:52:01 PM
-- Design Name: 
-- Module Name: sw_traffic_gen - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Even parity used
--  address '1'      'data'    End
-- <P0 00000001><P0 10101010><P1 01>

entity sw_traffic_gen is
    Port ( 
           ack          : in std_logic;
           data_out_t   : out std_logic;
           data_out_f   : out std_logic;
           strobe_out_t : out std_logic;
           strobe_out_f : out std_logic);
end sw_traffic_gen;

architecture Behavioral of sw_traffic_gen is


begin


end Behavioral;
