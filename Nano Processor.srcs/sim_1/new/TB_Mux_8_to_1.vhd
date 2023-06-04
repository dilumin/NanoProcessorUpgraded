----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:31:14 PM
-- Design Name: 
-- Module Name: TB_Mux_8_to_1 - Behavioral
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

entity TB_Mux_8_to_1 is
--  Port ( );
end TB_Mux_8_to_1;

architecture Behavioral of TB_Mux_8_to_1 is
COMPONENT Mux_8_to_1
   Port ( S : in STD_LOGIC_VECTOR (2 downto 0);
          D : in STD_LOGIC_VECTOR (7 downto 0);
          EN : in STD_LOGIC;
          Y : out STD_LOGIC);
END COMPONENT;
--SIGNAL g0,g1,g2,g3,Y0,Y1,Y2,Y3,y4,y5,y6,y7: std_logic;
signal g : std_logic_vector (2 downto 0);
signal Y : std_logic_vector (7 downto 0);
SIGNAL Y_OUT : std_logic;
begin
    UUT: Mux_8_to_1  
        PORT MAP(
            S => g,
            EN=>'1', 
            D => Y,
            Y=>Y_OUT
             );
process
   begin
--   g0<='0'; -- set initial values
--   g1<='0';
--   g2<='0';
--   g3<='1';
--   Y0<='1';
--   Y1<='0';
--   Y2<='0';
--   Y3<='0';
--   Y4<='0';
--   Y5<='0';
--   Y6<='0';
--   Y7<='0';
--   WAIT FOR 100 ns; -- after 100 ns change inputs
--   g0<='1';
--   g1<='1';
--   g2<='0';
--   Y0<='0';
--   Y4<='1';
--   WAIT FOR 100 ns; --change again
--   g2<='1';
--   Y4<='0';
--   Y2<='1';
--   WAIT FOR 100 ns; --change again
--   g1<='0';
--   Y2<='0';
--   Y6<='1';
--   WAIT FOR 100 ns; --change again
--   g0<='0';
--   g1<='1';
--   g2<='0';
--   Y6<='0';
--   Y1<='1';
--   WAIT FOR 100 ns; --change again
--   g0<='1';
--   g2<='0';
--   Y1<='0';
--   Y5<='1';
--   WAIT FOR 100 ns; --change again
--   g0<='0';
--   g2<='1';
--   Y5<='0';
--   Y3<='1';
--   WAIT; -- will wait forever
Y <= "00000101";
g <= "000";
wait for 50ns;
g <= "001";
wait for 50ns;
g <= "010";
wait;

end process;
end Behavioral;