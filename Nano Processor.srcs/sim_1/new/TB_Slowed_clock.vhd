----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/03/2023 11:56:18 AM
-- Design Name: 
-- Module Name: TB_Slowed_clock - Behavioral
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

entity TB_Slowed_clock is
--  Port ( );
end TB_Slowed_clock;

architecture Behavioral of TB_Slowed_clock is


component Slow_Clk
    Port ( Clk_in : in STD_LOGIC;
       Clk_out : out STD_LOGIC);
end component;

signal Clk_in : STD_LOGIC;
signal Clk_out :STD_LOGIC;

begin
    UUT : Slow_Clk 
    port map (
        Clk_in => Clk_in,
        Clk_out => Clk_out);
    process begin
    
        Clk_in <= '0';
        wait for 1ns;
        Clk_in <= '1';
        wait for 1ns;
        
    end process;

end Behavioral;
