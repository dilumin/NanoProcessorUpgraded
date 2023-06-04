----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 09:24:49 AM
-- Design Name: 
-- Module Name: TB_reg - Behavioral
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

entity TB_reg is
--  Port ( );
end TB_reg;

architecture Behavioral of TB_reg is

component reg
    Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
       en : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR (3 downto 0);
       Res : in STD_LOGIC);
end component;

signal D,Q : STD_LOGIC_VECTOR (3 downto 0);
signal en , Clk , Res : STD_LOGIC;

begin

UUT: reg
port map(
    D => D,
    en => en,
    Clk => Clk,
    Q => Q,
    Res => Res
    );
    
clk_process :process
begin
    Clk <= '0';
    wait for 10ns;
    Clk <= '1';
    wait for 10ns;
end process;

process
begin

    Res <= '0';
    en <= '1';
    D <= "1001";
    wait for 20ns;
    Res <= '1';
    wait for 20ns;
    en <= '0';
    wait for 20ns;
    Res <= '0';
    
    wait;
end process;
    
    



end Behavioral;
