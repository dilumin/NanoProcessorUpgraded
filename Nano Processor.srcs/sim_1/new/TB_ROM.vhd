----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 03:35:59 PM
-- Design Name: 
-- Module Name: TB_ROM - Behavioral
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

entity TB_ROM is
--  Port ( );
end TB_ROM;

architecture Behavioral of TB_ROM is

component ROM
    Port ( Mem_S : in STD_LOGIC_VECTOR (2 downto 0);
       I : out STD_LOGIC_VECTOR (11 downto 0));
end component;

signal Mem_S : STD_LOGIC_VECTOR (2 downto 0);
signal I : STD_LOGIC_VECTOR (11 downto 0);

begin
UUT : ROM 
port map(
    Mem_S => Mem_S,
    I => I
);

process
begin

    Mem_S <= "000";
    wait for 50ns;
    Mem_S <= "001";
    wait for 50ns;
    Mem_S <= "010";
    wait;
end process;

end Behavioral;
