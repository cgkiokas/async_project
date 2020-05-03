----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2020 13:28:12
-- Design Name: 
-- Module Name: Sink - Behavioral
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

entity Sink is
    Port ( DT : in STD_LOGIC;
           DF : in STD_LOGIC;
           ACK : out STD_LOGIC := '0');
           -- data and strobe. just to display them on the simulation
           --DATA : in STD_LOGIC;
           --STROBE : in std_logic);
end Sink;

architecture Behavioral of Sink is
begin
    process
    begin
        loop
            wait until DT = '1' or DF = '1';        -- Handshake phase 1
            wait for 2 ns;
            ACK <= '1';                             -- Handshake phase 2
            
            wait until DT = '0' and DF = '0';       -- Handshake phase 3
            wait for 2 ns;
            ACK <= '0';                             -- Handshake phase 4
            
        end loop;
    end process;
end Behavioral;
