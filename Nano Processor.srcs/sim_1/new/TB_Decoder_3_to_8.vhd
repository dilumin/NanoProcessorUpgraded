----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:34:26 PM
-- Design Name: 
-- Module Name: TB_Decoder_3_to_8 - Behavioral
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

entity TB_Decoder_3_to_8 is
--  Port ( );
end TB_Decoder_3_to_8;

architecture Behavioral of TB_Decoder_3_to_8 is
COMPONENT Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;
     SIGNAL g : STD_LOGIC_VECTOR (2 downto 0);
     SIGNAL Y : STD_LOGIC_VECTOR (7 downto 0);
     signal En : STD_LOGIC;
begin
UUT: Decoder_3_to_8 PORT MAP(
    I => g,
    EN => En, 
    Y => Y);
process
begin
    g(0) <= '0'; -- set initial values
    g(1) <= '0';
    g(2) <= '0';
    En <= '1';
    WAIT FOR 100 ns; -- after 100 ns change inputs
    g(0) <= '1'; -- set initial values
    g(1) <= '1';
    g(2) <= '0';
    WAIT FOR 100 ns; -- after 100 ns change inputs
    g(2) <= '1'; 
    WAIT FOR 100 ns; --change again
    g(1) <= '0';
    WAIT FOR 100 ns; -- after 100 ns change inputs
    g(0) <= '0'; -- set initial values
    g(1) <= '1';
    g(2) <= '0';
    WAIT FOR 100 ns; -- after 100 ns change inputs
    g(0) <= '1'; -- set initial values
    g(2) <= '0';
    WAIT FOR 100 ns; -- after 100 ns change inputs
    g(0) <= '0'; -- set initial values
    g(2) <= '1';
    WAIT; -- will wait forever     
end process;
end Behavioral;