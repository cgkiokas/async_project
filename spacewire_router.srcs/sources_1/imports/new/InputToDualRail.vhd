----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.05.2020 13:32:09
-- Design Name: 
-- Module Name: InputToDualRail - Behavioral
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

entity InputToDualRail is
    Port ( CLK : in STD_LOGIC;
           DIN : in STD_LOGIC;
           DT  : out STD_LOGIC;
           DF  : out STD_LOGIC;
           ACK : in STD_LOGIC);
           -- tmp DATA and STROBE as outputs to show in simulation
           -- DATA : buffer STD_LOGIC;
           -- STROBE: buffer STD_LOGIC);
end InputToDualRail;

architecture Behavioral of InputToDualRail is
    component SignalGenerator
        Port (  CLK : in STD_LOGIC;
                DIN : in STD_LOGIC;
                DATA : buffer STD_LOGIC := '0';
                STROBE : buffer STD_LOGIC := '0');
    end component;
    
    component AsyncConverter
        Port (  DATA : in STD_LOGIC;
                STROBE : in STD_LOGIC;
                DT : out STD_LOGIC := '0';
                DF : out STD_LOGIC := '0';
                ACK : in STD_LOGIC);
    end component;
    
    -- internal signals are data and strobe
    signal STROBE: std_logic;
    signal DATA: std_logic;
    
begin
    -- define connections of SignalGenerator (which is actually a signal converter :/ )
    -- The signal is generated in the test bench, outside of this component
    sgLink: SignalGenerator
        port map (
            CLK => CLK,
            DIN => DIN,
            DATA => DATA,
            STROBE => STROBE);
    
    -- define connections of AsyncConverter    
    acLink: AsyncConverter
        port map (
            DATA => DATA,
            STROBE => STROBE,
            DT => DT,
            DF => DF,
            ACK => ACK);
end Behavioral;
