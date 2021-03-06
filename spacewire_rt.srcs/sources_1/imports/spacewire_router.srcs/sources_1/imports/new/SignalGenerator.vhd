----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2020 12:38:20
-- Design Name: 
-- Module Name: SignalGenerator - Behavioral
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

entity SignalGenerator is
    Port ( CLK : in STD_LOGIC;
           DIN : in STD_LOGIC;
           DATA : buffer STD_LOGIC := '0';
           STROBE : buffer STD_LOGIC := '0';
           stop : in boolean
           );
           
end SignalGenerator;

architecture Behavioral of SignalGenerator is
begin
    process(CLK, DIN,stop) is
    begin
        if rising_edge(CLK) then
            if DIN = '1' and not stop then
                DATA <= NOT DATA;
            elsif DIN = '0' and not stop then
                STROBE <= NOT STROBE;
            else
                DATA <= '0';
                STROBE <= '0';
            end if;
        end if;
    end process;


end Behavioral;
