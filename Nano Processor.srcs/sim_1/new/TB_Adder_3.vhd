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

entity TB_Adder_4 is
--  Port ( );
end TB_Adder_4;

architecture Behavioral of TB_Adder_4 is
component Adder_bit_4
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal A, S : STD_LOGIC_VECTOR (3 downto 0);
begin
    UUT : Adder_bit_4
        PORT MAP(
        A => A,
        S => S
        );
    process
         begin
         A <= "0000";
         WAIT FOR 20ns;
          
         A <= "0010";
         WAIT FOR 20ns;
        
         A <= "0100";
         WAIT FOR 20ns;
        
         A <= "0110";
         WAIT FOR 20ns;

         A <= "1000";
         WAIT FOR 20ns;

         A <= "1010";
         WAIT FOR 20ns;
         
         A <= "1100";
         WAIT FOR 20ns;
        
         A <= "1110";
         WAIT;
     end process;

end Behavioral;
