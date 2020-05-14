----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2020 04:30:52 PM
-- Design Name: 
-- Module Name: address_selection - Behavioral
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

entity address_selection is
  Port (
        address_port1 : in std_logic;
        address_port2 : in std_logic;
        address_ack : in std_logic;
        address_t : out std_logic_vector(1 downto 0);
        address_f : out std_logic_vector(1 downto 0)
   );
end address_selection;

architecture Behavioral of address_selection is

begin

process(address_ack,address_port1)
begin
    if address_ack = '1' then
        address_t <= (others => '0');
        address_f <= (others => '0');
    else
        if address_port1 = '0' then
            address_t <= (others => '0');
            address_f <= (others => '1');
        elsif address_port1 = '1' then
            address_t <= (others => '1');
            address_f <= (others => '0');
        end if;
    end if;
end process;

end Behavioral;
