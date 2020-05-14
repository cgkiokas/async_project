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
use work.delays.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sink is
    Port ( 
--           preset : in std_logic;
           DT : in STD_LOGIC;
           DF : in STD_LOGIC;
           ACK : out STD_LOGIC := '0');
           -- data and strobe. just to display them on the simulation
           --DATA : in STD_LOGIC;
           --STROBE : in std_logic);
end Sink;

architecture Behavioral of Sink is
    signal preset : std_logic := '0';
    signal received : std_logic := '0';
begin

--c_gate_x_ack : entity work.c_gate
--    generic map (
--    C_INIT => '0',
--    WIDTH => 2
--    )
--    port map (
--    preset => preset,
--    input(0) => DT,
--    input(1) => DF,
--    output => ACK
--);

process(DT,DF)
begin
    if DT = '1' or DF = '1' then
        preset <= '0';
        received <= '1';
     elsif DT = '0' or DF = '0' then
        received <= '0';
     else 
        received <= '0';
     end if;
end process;    
 ACK <= transport received after sink_delay;
end Behavioral;
