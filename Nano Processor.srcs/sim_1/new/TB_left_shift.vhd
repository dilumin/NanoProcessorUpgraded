----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 05:05:15 PM
-- Design Name: 
-- Module Name: TB_left_shift - Behavioral
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

entity TB_left_shift is
--  Port ( );
end TB_left_shift;

architecture Behavioral of TB_left_shift is

component Left_Bit_shift is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           o : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal I , o : STD_LOGIC_VECTOR (3 downto 0);


begin


UUT : Left_Bit_shift 
port map(
     I => I,
     o=> o
    );
process 
begin
I <= "0011";
wait for 50ns;
I <= "0010";
wait for 50ns;
I <= "0100";
wait for 50ns;
I <= "1000";
wait for 50ns;
end  process;

end Behavioral;
