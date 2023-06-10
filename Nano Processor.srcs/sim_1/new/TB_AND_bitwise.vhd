----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 06:14:47 PM
-- Design Name: 
-- Module Name: TB_AND_bitwise - Behavioral
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

entity TB_AND_bitwise is
--  Port ( );
end TB_AND_bitwise;

architecture Behavioral of TB_AND_bitwise is

component AND_bitwise is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           o : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal A , B , o : STD_LOGIC_VECTOR (3 downto 0);

begin
UUT : AND_bitwise
port map (
    A => A,
    B => B,
    o => o);

process 
begin
    A <= "0101";
    B <= "1100";
    wait;
end process;


end Behavioral;
