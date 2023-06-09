----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/09/2023 01:52:22 PM
-- Design Name: 
-- Module Name: TB_MUX_4_buf - Behavioral
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

entity TB_MUX_4_buf is
--  Port ( );
end TB_MUX_4_buf;

architecture Behavioral of TB_MUX_4_buf is

component Mux_4_to_1_4_bit is
    Port ( A0 : in STD_LOGIC_VECTOR (3 downto 0);
           A1 : in STD_LOGIC_VECTOR (3 downto 0);
           A2 : in STD_LOGIC_VECTOR (3 downto 0);
           A3 : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0);
           con : in STD_LOGIC_VECTOR (1 downto 0));
end component;

signal A0 , A1 , A2 , A3 , O : STD_LOGIC_VECTOR (3 downto 0);
signal con : STD_LOGIC_vector (1 downto 0);

begin
UUT :Mux_4_to_1_4_bit
port map (
    A0 => A0 ,
    A1 => A1,
    A2 => A2,
    A3 => A3,
    O => O,
    con => con);
    process begin
    A0 <= "0001";
    A1 <= "0010";
    A2 <= "0100";
    A3 <= "1111";
    con <= "00";
    wait for 50ns;
        con <= "00";
 wait for 50ns;
               con <= "01";
 wait for 50ns;
                      con <= "10";
 wait for 50ns;
                             con <= "11";
                             wait;
                             end process;

    


end Behavioral;
