----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/06/2023 06:51:11 AM
-- Design Name: 
-- Module Name: Buffer_4_bit - Behavioral
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

entity Buffer_4_bit is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0);
           en : in STD_LOGIC);
end Buffer_4_bit;

architecture Behavioral of Buffer_4_bit is
signal a : std_logic_vector (3 downto 0);

begin

O <= I when en = '1' else "ZZZZ";
--a <= "1111";
--O <= a;

--    process (en, I)
--    begin
--        if (en = '1') then
--            O <= I;
--        else
--            O <= "ZZZZ"; -- Ensure a defined output when enable is '0'
--        end if;
--    end process;

end Behavioral;
