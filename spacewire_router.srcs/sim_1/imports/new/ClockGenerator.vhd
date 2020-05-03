----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.04.2020 12:34:14
-- Design Name: 
-- Module Name: ClockGenerator - sim
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

entity ClockGenerator is
--  Port ( );
end ClockGenerator;

architecture sim of ClockGenerator is
    -- clock
    constant        ClockFrequency      : Integer   := 100e6;  --100 MHz
    constant        ClockPeriod         : time      := 1000ms / ClockFrequency;
    signal          CLK                 : std_logic := '1';
    
    -- data signal
    signal          DOUT                : std_logic := '0';
    
    -- df/dt/ack
    signal          DT                  : std_logic := '0';
    signal          DF                  : std_logic := '0';
    signal          ACK                 : std_logic := '0';
    
    -- data/strobe (tmp, can be deleted
    --signal          DATA                : std_logic;
    --signal          STROBE              : std_logic;
    
    -- testing packages
    type            packageT is array (0 to 3) of std_logic_vector(0 to 23);
    signal packages : packageT := 
      (--PDAAAAAAAAPDCCCCCCCCPEOP
        "100000000110000000100101", -- package 0: sending 2 to address 1
        "100000001000000010100101", -- package 1: sending 5 to address 2
        "000000001100000000000101", -- package 2: sending 0 to address 3
        "000000000000111111110101"  -- package 3: sending 255 to address 0
        );
    
begin
    -- UUT
    InputToDualRail : entity work.InputToDualRail(Behavioral)
        port map(
            CLK => CLK,
            DIN => DOUT,
            DT => DT,
            DF => DF,
            ACK => ACK
            --DATA => DATA,
            --STROBE => STROBE
            );
            
    -- add a sink to generate ACKs. This will be replaced with the router
    Sink : entity work.Sink(Behavioral)
        port map(
            DT => DT,
            DF => DF,
            ACK => ACK
            --DATA => DATA,
            --STROBE => STROBE
            );
        
    -- Create clock
    CLK <= NOT CLK after ClockPeriod / 2;
    
    -- Testbench sequence
    process is
    begin
        -- loop through packages
        for pckg in 0 to 3 loop
            -- loop through bits in package
            for idx in 0 to 23 loop
                DOUT <= packages(pckg)(idx);
                wait for ClockPeriod;
            end loop;
            DOUT <= '0';
            wait for 10 * ClockPeriod;
        end loop;
        wait;
    end process;
end sim;