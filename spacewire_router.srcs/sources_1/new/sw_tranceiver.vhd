----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2020 12:18:34 PM
-- Design Name: 
-- Module Name: sw_tranceiver - Behavioral
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

entity sw_tranceiver is
    Port ( data_in : in STD_LOGIC;
           strobe_in : in STD_LOGIC;
           data_out : out STD_LOGIC;
           strobe_out : out STD_LOGIC);
end sw_tranceiver;

architecture Behavioral of sw_tranceiver is

begin


end Behavioral;
