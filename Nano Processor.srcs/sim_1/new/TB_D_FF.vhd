----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 10:17:44 AM
-- Design Name: 
-- Module Name: TB_D_FF - Behavioral
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

entity TB_D_FF is
--  Port ( );
end TB_D_FF;

architecture Behavioral of TB_D_FF is

component D_FF
    Port ( D : in STD_LOGIC;
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC
);
end component;

signal D , Res , Clk , Q : STD_LOGIC;

begin

UUT : D_FF 
port map (
    D => D,
    Res => Res ,
    Clk => Clk,
    Q => Q);
    
Clk_process :process
    begin
    Clk <= '0';
    wait for 10ns;
    Clk <= '1';
    wait for 10ns;
end process;


D_FF_process : process
begin
    Res <= '0';
    D <= '1';
    wait for 40ns;
    D <= '0';
    wait for 40ns;
    D <= '1';
    wait for 80ns;
    Res <= '1';
    wait;
end process;



end Behavioral;
