----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2020 05:12:04 PM
-- Design Name: 
-- Module Name: latch - Behavioral
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

entity latch is
  Port (
    x1_t    : in std_logic;
    x1_f    : in std_logic;
    x0_t    : in std_logic;
    x0_f    : in std_logic;
    y_ack   : in std_logic;
    
    y1_t    : out std_logic;
    y1_f    : out std_logic;
    y0_t    : out std_logic;
    y0_f    : out std_logic;
    x_ack   : out std_logic
   
   );
end latch;

architecture Behavioral of latch is

signal y_ack_not : std_logic;
signal preset : std_logic := '0';

signal y1_t_out : std_logic;
signal y1_f_out : std_logic;
signal y0_t_out : std_logic;
signal y0_f_out : std_logic;

signal y1 : std_logic;
signal y0 : std_logic;

begin

y_ack_not <= not y_ack;

c_gate_x1_t : entity work.c_gate
generic map (
C_INIT => '0',
WIDTH => 2
)
port map (
preset => preset,
input(0) => y_ack_not,
input(1) => x1_t,
output => y1_t_out
);

c_gate_x1_f : entity work.c_gate
generic map (
C_INIT => '0',
WIDTH => 2
)
port map (
preset => preset,
input(0) => y_ack_not,
input(1) => x1_f,
output => y1_f_out
);

c_gate_x0_t : entity work.c_gate
generic map (
C_INIT => '0',
WIDTH => 2
)
port map (
preset => preset,
input(0) => y_ack_not,
input(1) => x0_t,
output => y0_t_out
);

c_gate_x0_f : entity work.c_gate
generic map (
C_INIT => '0',
WIDTH => 2
)
port map (
preset => preset,
input(0) => y_ack_not,
input(1) => x0_f,
output => y0_f_out
);

c_gate_x_ack : entity work.c_gate
generic map (
C_INIT => '0',
WIDTH => 2
)
port map (
preset => preset,
input(0) => y1,
input(1) => y0,
output => x_ack
);


 y1 <= y1_t_out or y1_f_out;
 y0 <= y0_t_out or y0_f_out;

 y1_t <= y1_t_out;
 y1_f <= y1_f_out;
 y0_t <= y0_t_out;
 y0_f <= y0_f_out;
 
end Behavioral;
