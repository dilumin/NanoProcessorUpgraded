----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 03:04:44 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1_bit_4 - Behavioral
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

entity TB_Mux_8_to_1_bit_4 is
--  Port ( );
end TB_Mux_8_to_1_bit_4;

architecture Behavioral of TB_Mux_8_to_1_bit_4 is
component Mux_8_to_1_bit_4
    PORT(  R0 : in STD_LOGIC_VECTOR (3 downto 0);
           R1 : in STD_LOGIC_VECTOR (3 downto 0);
           R2 : in STD_LOGIC_VECTOR (3 downto 0);
           R3 : in STD_LOGIC_VECTOR (3 downto 0);
           R4 : in STD_LOGIC_VECTOR (3 downto 0);
           R5 : in STD_LOGIC_VECTOR (3 downto 0);
           R6 : in STD_LOGIC_VECTOR (3 downto 0);
           R7 : in STD_LOGIC_VECTOR (3 downto 0);
           RS : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0)
    );
    
    
end component;
signal R0 , R1,R2,R3,R4,R5,R6,R7,o : STD_LOGIC_VECTOR (3 downto 0);
signal RS : STD_LOGIC_VECTOR (2 downto 0);

begin
UUT : Mux_8_to_1_bit_4
port map (
    R0 => R0,
    R1 => R1,
    R2 => R2,
    R3 => R3,
    R4 => R4,
    R5 => R5,
    R6 => R6,
    R7 => R7,
    RS => RS,
    o => o

);

process begin

R0 <= "0000";
R1<= "0001";
R2 <= "0010";
R3 <= "0011";
R4 <= "0100";
R5 <= "0101";
R6 <= "1110";
R7 <=  "1111";

RS <= "000";
wait for 50ns;
RS <= "001";
wait for  50ns;
RS <= "111";
wait;
end process;

end Behavioral;
