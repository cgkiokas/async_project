library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cgate_test is
--  Port ( );
end cgate_test;

architecture Behavioral of cgate_test is
 signal preset : std_logic := '0';
  signal input  : std_logic_vector(1 downto 0);
  signal output : std_logic;
  
      
    signal x1_t    :  std_logic := '0';
    signal x1_f    :  std_logic := '0';

    signal x_ack   :  std_logic;
    signal y_ack   : std_logic;
begin


c_gate_x_ack : entity work.c_gate
    generic map (
    C_INIT => '0',
    WIDTH => 2
    )
    port map (
    preset => preset,
    input(0) => x1_t,
    input(1) => y_ack,
    output => x_ack
);

test:process
begin
preset <= '0';

--input(0) <= '0';
--input(1) <= '0';
wait for 1ns;  
x1_t <= '1';
x1_f <= '0';

wait for 1ns; 
y_ack <= '1';
wait for 1ns;

x1_t <= '0';
x1_f <= '0';
y_ack <= '0';
wait for 1ns;
x1_t <= '0';
x1_f <= '1';

wait for 1ns;
y_ack <= '1';
end process;


end Behavioral;