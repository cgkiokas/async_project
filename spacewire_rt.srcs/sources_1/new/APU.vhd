----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/04/2020 03:33:09 PM
-- Design Name: 
-- Module Name: APU - Behavioral
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

entity APU is
  Port (
    d_t          : in std_logic;
    d_f          : in std_logic;
    
    address_out  : out std_logic
   );
end APU;

architecture Behavioral of APU is
    type state_type is (init, bit_1, bit_2, bit_3, bit_4, bit_5, bit_6, bit_7, bit_8, bit_9,
                       reset);
    signal next_state : state_type;
    signal state : state_type := init; 
    
    signal is_flow_char : boolean:= false;
    signal char : std_logic_vector(9 downto 0) := (others => '0');
    signal char_data : std_logic_vector(7 downto 0) := (others => '0');
    signal char_address : std_logic_vector(7 downto 0) := (others => '0');

    signal flow_char : std_logic_vector(1 downto 0) := (others => '0');
    signal is_new_packet : std_logic := '1';
begin

next_sate:process(d_t,d_f)
begin
    if falling_edge(d_t) or falling_edge(d_f) then
        state <= next_state;
    end if;

end process next_sate;


incoming_bit_state : process (state,d_t,d_f)
begin
  
    case (state) is
       
            
        when init =>            
            
            if d_t = '1' then
                char(0) <= '1';
            elsif d_f = '1' then
                char(0) <= '0';
            end if;
            next_state <= bit_1;
            is_flow_char <= false;

        when bit_1 =>
            if d_t = '1' then
                char(1) <= '1';
            elsif d_f = '1' then
                char(1) <= '0';

                
            end if;
        
            if d_t = '1' then
                is_flow_char <= true;
            else
                next_state <= bit_2;
            end if;
        when bit_2 =>
            if d_t = '1' then
                char(2) <= '1';
            elsif d_f = '1' then
                char(2) <= '0';
    
            end if;         
            next_state <= bit_3;
        when bit_3 =>
            
            if d_t = '1' then
                char(3) <= '1';
            elsif d_f = '1' then
                char(3) <= '0';

            end if;
            
            if is_flow_char then
                next_state <= init;
                flow_char <= char(2) & char(3);
                -- TODO:Check flow control command, as it is every flow control command is EOP
--                char <= (others => '0');
--                char_data <= (others => '0');
--                char_address <= (others => '0');
                is_new_packet <= '1';
            else
                next_state <= bit_4;
            end if;
        when bit_4 =>
             if d_t = '1' then
                char(4) <= '1';
            elsif d_f = '1' then
                char(4) <= '0';

            end if;
            next_state <= bit_5;
        when bit_5 =>
        
             if d_t = '1' then
                char(5) <= '1';
            elsif d_f = '1' then
                char(5) <= '0';
 
            end if;
            
            next_state <= bit_6;
        when bit_6 =>
        
             if d_t = '1' then
                char(6) <= '1';
            elsif d_f = '1' then
                char(6) <= '0';
 
            end if;
            
            next_state <= bit_7;
        when bit_7 =>
            if d_t = '1' then
                char(7) <= '1';
            elsif d_f = '1' then
                char(7) <= '0';

            end if;
            
            next_state <= bit_8;
        when bit_8 =>
            if d_t = '1' then
                char(8) <= '1';
            elsif d_f = '1' then
                char(8) <= '0';

            end if;
            next_state <= bit_9;
        when bit_9 =>
            if d_t = '1' then
                char(9) <= '1';
            elsif d_f = '1' then
                char(9) <= '0';
            end if;
            next_state <= init;
            
            char_data <= char(2) & char(3) & char(4) & char(5) & char(6) & char(7) & char(8) & char(9);
            if is_new_packet = '1' and (d_f = '1' or d_t = '1') then
                
                is_new_packet <= '0';
            end if;
  
        when others =>
            
    end case;
end process; 

process(is_new_packet, char)
begin
 if falling_edge(is_new_packet) then
    char_address <= char(2) & char(3) & char(4) & char(5) & char(6) & char(7) & char(8) & char(9);
 end if;
end process;


address_out <= char_address(0);


end Behavioral;
