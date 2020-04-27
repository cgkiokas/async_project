----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2020 01:24:52 PM
-- Design Name: 
-- Module Name: testbench - Behavioral
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

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is
 signal preset : std_logic;
  signal input  : std_logic_vector(1 downto 0);
  signal output : std_logic;
  
      
    signal x1_t    :  std_logic := '0';
    signal x1_f    :  std_logic := '0';
    signal x0_t    :  std_logic := '0';
    signal x0_f    :  std_logic := '0';
    signal y_ack   :  std_logic := '0';
    
    signal y1_t    :  std_logic;
    signal y1_f    :  std_logic;
    signal y0_t    :  std_logic;
    signal y0_f    :  std_logic;
    signal x_ack   :  std_logic;
begin

--c_gate : entity work.c_gate
--generic map (
--C_INIT => '0',
--WIDTH => 2
--)
--port map (
--preset => preset,
--input => input,
--output => output
--);

c_latch : entity work.latch
port map
(
    x1_t =>  x1_t,
    x1_f =>  x1_f,
    x0_t =>  x0_t,
    x0_f =>  x0_f,
    y_ack => y_ack,
      
    y1_t => y1_t,  
    y1_f => y1_f,  
    y0_t =>  y0_t,
    y0_f => y0_f, 
    x_ack => x_ack
);

test:process
begin
preset <= '0';

--input(0) <= '0';
--input(1) <= '0';
wait for 1ns;  
x1_t <= '1';
x1_f <= '0';
x0_f <= '1';
x0_t <= '0';
wait for 1ns; 
y_ack <= '1';
wait for 1ns;
y_ack <= '0';
x1_t <= '0';
x1_f <= '0';
x0_f <= '0';
x0_t <= '0';  
wait for 1ns;
x1_t <= '0';
x1_f <= '1';
x0_f <= '0';
x0_t <= '1';
wait for 1ns;
y_ack <= '1';  
end process;


end Behavioral;
