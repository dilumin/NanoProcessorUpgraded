----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 01:07:23 PM
-- Design Name: 
-- Module Name: TB_Sub_Add_4_bit - Behavioral
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

entity TB_Sub_Add_4_bit is
--  Port ( );
end TB_Sub_Add_4_bit;

architecture Behavioral of TB_Sub_Add_4_bit is
component Sub_Add_4_bit
    PORT( A : in STD_LOGIC_VECTOR (3 downto 0);
          B : in STD_LOGIC_VECTOR (3 downto 0);
          M : in STD_LOGIC;
          C : out STD_LOGIC;
          V : out STD_LOGIC;
          S : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal a :STD_LOGIC_VECTOR (3 downto 0);
signal b: STD_LOGIC_VECTOR (3 downto 0);
signal s: STD_LOGIC_VECTOR (3 downto 0);
signal m,v,c: STD_LOGIC;
begin 
UUT : Sub_Add_4_bit
    PORT MAP( A => a,
              B => b,
              C => c,
              M => m,
              V => v,
              S => s
    );
    process
        begin
            m <= '0';
            a <= "1010";
            b <= "1110";      
            WAIT FOR 100ns;
            
            m <= '1';
            a <= "1010";
            b <= "1110";      
            WAIT FOR 100ns;
            
    end process;   

end Behavioral;
