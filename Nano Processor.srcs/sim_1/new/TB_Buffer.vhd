----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/06/2023 06:55:49 AM
-- Design Name: 
-- Module Name: TB_Buffer - Behavioral
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

entity TB_Buffer is
--  Port ( );
end TB_Buffer;

architecture Behavioral of TB_Buffer is

component Buffer_4_bit
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
               O : out STD_LOGIC_VECTOR (3 downto 0);
               en : in STD_LOGIC);
end component;

signal I ,O : STD_LOGIC_VECTOR (3 downto 0);
signal en : STD_LOGIC;

begin

UUT : Buffer_4_bit
port map (
    I => I,
    O => O,
    en => en
);


process begin


en <= '1';
I <= "1001";
wait for 100ns;
I <= "1111";
en <= '0';
wait for 100ns;
en <= '1';
wait;
end process;


end Behavioral;
