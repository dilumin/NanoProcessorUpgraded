----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 08:02:20 AM
-- Design Name: 
-- Module Name: TB_Mux_2_to_1 - Behavioral
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

entity TB_Mux_2_to_1 is
--  Port ( );
end TB_Mux_2_to_1;

architecture Behavioral of TB_Mux_2_to_1 is

component Mux_2_to_1_bit_4
    Port ( D0 : in STD_LOGIC_VECTOR (3 downto 0);
               D1 : in STD_LOGIC_VECTOR (3 downto 0);
               S : in STD_LOGIC;
               O_Mux : out STD_LOGIC_VECTOR (3 downto 0));
 end component;
 
 signal D0 : STD_LOGIC_VECTOR (3 downto 0);
 signal D1, O_Mux : STD_LOGIC_VECTOR (3 downto 0);
 signal S : STD_LOGIC;
 

begin

UUT : Mux_2_to_1_bit_4
port map (
    D0 => D0,
    D1 => D1,
    S => S,
    O_Mux => O_Mux
);

process
begin
D0 <= "1111";
D1 <= "0000";
S <= '0';
wait for 100ns;
S <= '1';
wait for 100ns;
D0 <= "1010";
S <= '0';

wait;
end process;



end Behavioral;
