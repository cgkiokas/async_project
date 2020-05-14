----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2020 12:28:07 PM
-- Design Name: 
-- Module Name: c_gate - Behavioral
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

entity c_gate is
   generic(
    constant C_INIT : std_logic := '0';
    constant WIDTH  : integer := 2
   );
   Port ( 
    preset : in std_logic;
    input  : in std_logic_vector(WIDTH-1 downto 0);
    output : out std_logic
   );
end c_gate;

architecture Behavioral of c_gate is
    signal set : std_logic := '0';
    signal reset : std_logic := '0';
    
    signal q : std_logic := '0';
    signal not_q : std_logic := '0';
begin

set_reset:process (input, preset) is
    variable set_var : std_logic;
    variable not_reset_var : std_logic;
    
    begin 
    
    set_var := '1';
    not_reset_var := '0';
    for i in WIDTH-1 downto 0 loop
        set_var := set_var and input(i);
        not_reset_var := not_reset_var or input(i);
    end loop;
     
     set <= set_var;
     reset <= not not_reset_var;
     
     if (preset = '1') then		-- Preset overrides the above
			if (C_INIT = '1') then
				set <= '1';
				reset <= '0';
			else
				set <= '0';
				reset <= '1';
			end if;		
		end if;
	end process set_reset;
	
	--Out latch
	output <= transport q after c_gate_delay;
	q <= reset nor not_q;
	not_q <= set nor q;

end Behavioral;
