----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:20:42 PM
-- Design Name: 
-- Module Name: TB_Decoder_2_to_4 - Behavioral
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

entity TB_Decoder_2_to_4 is
--  Port ( );
end TB_Decoder_2_to_4;

architecture Behavioral of TB_Decoder_2_to_4 is
component Decoder_2_to_4
    PORT( I : in STD_LOGIC_VECTOR (1 downto 0);
          EN : in STD_LOGIC;
          Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;
signal g0,g1,g2 : STD_LOGIC;
signal Y0,Y1,Y2,Y3 : STD_LOGIC;
begin
    UUT: Decoder_2_to_4 PORT MAP(
    I(0) => g0, 
    I(1) => g1, 
    EN => g2, 
    Y(0) => Y0,
    Y(1) => Y1,
    Y(2) => Y2,
    Y(3) => Y3
     );
    process
      begin
      g0 <= '0'; -- set initial values
      g1 <= '0';
      g2 <= '0';
      WAIT FOR 100 ns; -- after 100 ns change inputs
      
      g2 <= '1';
      WAIT FOR 100 ns; --change again
      
      g1 <= '1';
      g2 <= '0';
      WAIT FOR 100 ns; --change again
      
      g2 <= '1';
      WAIT FOR 100 ns; --change again
      
      g0 <= '1';
      g1 <= '0';
      g2 <= '0';
      WAIT FOR 100 ns; --change again
      
      g2 <= '1';
      WAIT FOR 100 ns; --change again
      
      g1 <= '1';
      g2 <= '0';
      WAIT FOR 100 ns; --change again
      
      g2 <= '1';
      WAIT; -- will wait forever
      end process;

end Behavioral;
