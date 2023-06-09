----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2023 11:16:35 PM
-- Design Name: 
-- Module Name: TB_Multiplicator - Behavioral
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

entity TB_Multiplicator is
--  Port ( );
end TB_Multiplicator;

architecture Behavioral of TB_Multiplicator is

component Multiplier_4_by_4
Port ( M : in STD_LOGIC_VECTOR (3 downto 0);
           Q : in STD_LOGIC_VECTOR (3 downto 0);
           P : out STD_LOGIC_VECTOR (3 downto 0)           );

end component;

signal M , Q : STD_LOGIC_VECTOR ( 3 downto 0);
signal P : STD_LOGIC_VECTOR ( 3 downto 0);

begin
UUT : Multiplier_4_by_4
    port map (
    M => M,
    Q => Q,
    P => P
    );

process begin
M <= "0010";
Q <= "0010";
wait for 100ns;
Q <= "0100";
wait;
end process;



end Behavioral;
