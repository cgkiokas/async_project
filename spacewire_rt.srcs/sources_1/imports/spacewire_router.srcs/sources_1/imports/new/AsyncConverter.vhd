----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2020 13:26:57
-- Design Name: 
-- Module Name: AsyncConverter - Behavioral
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

entity AsyncConverter is
    Port ( DATA : in STD_LOGIC;
           STROBE : in STD_LOGIC;
           DT : out STD_LOGIC;
           DF : out STD_LOGIC;
           ACK : in STD_LOGIC);
end AsyncConverter;

architecture Behavioral of AsyncConverter is
begin
    process
        variable d : std_logic := '0';
        variable s : std_logic := '0';
    begin
        loop
            wait on DATA, STROBE;           -- wait for event on either DATA or STROBE
            if DATA = d and STROBE = not s then                -- detect if DATA or STROBE transitioned
                DT <= '0';
                DF <= '1';
            elsif DATA = D and STROBE = s then  -- no transitions = no new data incoming
                DT <= '0';
                DF <= '0';
            else
                DT <= '1';
                DF <= '0';
            end if;
            s := STROBE;
            d := DATA;                      -- store last value of data (not synthesizable, probably)
            
            wait until ACK = '1';           -- handshake phase 2
            wait for 2 ns;
            DT <= '0';                      -- handshake phase 3
            DF <= '0';                      
            wait until ACK = '0';           -- handshake phase 4
        end loop;
    end process;
end Behavioral;
