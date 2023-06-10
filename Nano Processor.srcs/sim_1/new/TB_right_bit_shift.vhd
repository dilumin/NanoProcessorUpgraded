----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 04:55:32 PM
-- Design Name: 
-- Module Name: TB_right_bit_shift - Behavioral
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

entity TB_right_bit_shift is
--  Port ( );
end TB_right_bit_shift;

architecture Behavioral of TB_right_bit_shift is

component Right_Bit_shift is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           o : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal I , o : STD_LOGIC_VECTOR (3 downto 0);

begin

UUT : Right_Bit_shift 
port map(
     I => I,
     o=> o
    );
process 
begin
I <= "0001";
wait for 50ns;
I <= "0010";
wait for 50ns;
I <= "0100";
wait for 50ns;
I <= "1000";
wait for 50ns;
end  process;


end Behavioral;
