----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:35:36 PM
-- Design Name: 
-- Module Name: TB_Program_counter - Behavioral
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

entity TB_Program_counter is
--  Port ( );
end TB_Program_counter;

architecture Behavioral of TB_Program_counter is

component Program_counter
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
       Q : out STD_LOGIC_VECTOR (3 downto 0);
       res : in STD_LOGIC;
       Clk : in STD_LOGIC);
end component;

signal I , Q : STD_LOGIC_VECTOR (3 downto 0);
signal res , Clk : STD_LOGIC;

begin

UUT : Program_counter
port map (
    I => I,
    Q => Q,
    res => res,
    Clk => Clk);

clk_process : process
    begin
    Clk <= '0';
    wait for 2ns;
    Clk <= '1';
    wait for 2ns;
end process;

pc_process : process
    begin
    res <= '0';
    I <= "1010";
    wait for 10ns;
    I <= "1110";
    wait for 10ns;
    I <= "0100";
    wait for 10ns;
    I <= "1100";
    res <= '1';
    wait for 20ns;
    res <= '0';
    wait;    
end process;


end Behavioral;
