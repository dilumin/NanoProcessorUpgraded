----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/10/2023 05:03:14 PM
-- Design Name: 
-- Module Name: Left_Bit_shift - Behavioral
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

entity Left_Bit_shift is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           o : out STD_LOGIC_VECTOR (3 downto 0));
end Left_Bit_shift;

architecture Behavioral of Left_Bit_shift is
signal temp : STD_LOGIC_VECTOR (3 downto 0);


begin
temp(3 downto 1) <= I(2 downto 0);
temp(0) <= '0';   

o <= temp;

end Behavioral;
