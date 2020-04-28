----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2020 06:29:22 PM
-- Design Name: 
-- Module Name: MUX1 - Behavioral
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

entity MUX1 is
  Port (    
    x1_t    : in std_logic;
    x1_f    : in std_logic;
    x0_t    : in std_logic;
    x0_f    : in std_logic;
    y1_t    : in std_logic;
    y1_f    : in std_logic;
    y0_t    : in std_logic;
    y0_f    : in std_logic;
    ctl_t   : in std_logic;
    ctl_f   : in std_logic;
    z_ack   : in std_logic;
    
    y_ack   : out std_logic;
    x_ack   : out std_logic;
    ctl_ack : out std_logic;
    z1_t    : out std_logic;
    z1_f    : out std_logic;
    z0_t    : out std_logic;
    z0_f    : out std_logic
       
     );
end MUX1;

architecture Behavioral of MUX1 is
signal preset : std_logic := '0';

signal x0 : std_logic;
signal x1 : std_logic;
signal y0 : std_logic;
signal y1 : std_logic;

signal x_ack_out : std_logic;
signal y_ack_out : std_logic;

signal z1_t_out : std_logic;
signal z1_f_out : std_logic;
signal z0_t_out : std_logic;
signal z0_f_out : std_logic;

signal x1_t_out   : std_logic;
signal x1_f_out   : std_logic;
signal x0_t_out   : std_logic;
signal x0_f_out   : std_logic;

signal y1_t_out   : std_logic;
signal y1_f_out   : std_logic;
signal y0_t_out   : std_logic;
signal y0_f_out   : std_logic;

begin

------- X C-elements
c_gate_x1_t : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => ctl_f,
input(1) => x1_t,
output => x1_t_out
);

c_gate_x1_f : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => ctl_f,
input(1) => x1_f,
output => x1_f_out
);

c_gate_x0_t : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => ctl_f,
input(1) => x0_t,
output => x0_t_out
);

c_gate_x0_f : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => ctl_f,
input(1) => x0_f,
output => x0_f_out
);

-------------Y C-elements
c_gate_y1_t : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => ctl_t,
input(1) => y1_t,
output => y1_t_out
);

c_gate_y1_f : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => ctl_t,
input(1) => y1_f,
output => y1_f_out
);

c_gate_y0_t : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => ctl_t,
input(1) => y0_t,
output => y0_t_out
);

c_gate_y0_f : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => ctl_t,
input(1) => y0_f,
output => y0_f_out
);


z1_t_out <= x1_t_out or y1_t_out;
z1_f_out <= x1_f_out or y1_f_out;
z0_t_out <= x0_t_out or y0_t_out;
z0_f_out <= x0_f_out or y0_f_out;

x1 <= x1_t_out or x1_f_out;
x0 <=  x0_t_out or x0_f_out;
y1 <= y1_t_out or y1_f_out;
y0 <=  y0_t_out or y0_f_out;

c_gate_x : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => x1,
input(1) => x0,
output => x_ack_out
);

c_gate_y : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => y1,
input(1) => y0,
output => y_ack_out
);


c_gate_xack : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => x_ack_out,
input(1) => z_ack,
output => x_ack
);

c_gate_yack : entity work.c_gate
generic map (
WIDTH => 2
)
port map (
preset => preset,
input(0) => y_ack_out,
input(1) => z_ack,
output => y_ack
);

ctl_ack <= z_ack;

end Behavioral;
