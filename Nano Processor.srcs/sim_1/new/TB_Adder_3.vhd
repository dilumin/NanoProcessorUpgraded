----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 05:27:36 AM
-- Design Name: 
-- Module Name: TB_Adder_3 - Behavioral
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

entity TB_Adder_3 is
--  Port ( );
end TB_Adder_3;

architecture Behavioral of TB_Adder_3 is
component Adder_bit_3
    Port ( A : in STD_LOGIC_VECTOR (2 downto 0);
           S : out STD_LOGIC_VECTOR (2 downto 0));
end component;
signal A, S : STD_LOGIC_VECTOR (2 downto 0);
begin
    UUT : Adder_bit_3
        PORT MAP(
        A => A,
        S => S
        );
    process
         begin
         A <= "000";
         WAIT FOR 20ns;
          
         A <= "001";
         WAIT FOR 20ns;
        
         A <= "010";
         WAIT FOR 20ns;
        
         A <= "011";
         WAIT FOR 20ns;

         A <= "100";
         WAIT FOR 20ns;

         A <= "101";
         WAIT FOR 20ns;
         
         A <= "110";
         WAIT FOR 20ns;
        
         A <= "111";
         WAIT;
     end process;

end Behavioral;
