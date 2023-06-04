----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 09:52:44 AM
-- Design Name: 
-- Module Name: TB_reg_bank - Behavioral
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

entity TB_reg_bank is
--  Port ( );
end TB_reg_bank;

architecture Behavioral of TB_reg_bank is

component reg_bank
    Port ( Clk_in : in STD_LOGIC;
       Mem_in : in STD_LOGIC_VECTOR (3 downto 0);
       MO_0 : out STD_LOGIC_VECTOR (3 downto 0);
       reg_en : in STD_LOGIC_VECTOR (2 downto 0);
       MO_1 : out STD_LOGIC_VECTOR (3 downto 0);
       MO_2 : out STD_LOGIC_VECTOR (3 downto 0);
       MO_3 : out STD_LOGIC_VECTOR (3 downto 0);
       MO_4 : out STD_LOGIC_VECTOR (3 downto 0);
       MO_5 : out STD_LOGIC_VECTOR (3 downto 0);
       MO_6 : out STD_LOGIC_VECTOR (3 downto 0);
       MO_7 : out STD_LOGIC_VECTOR (3 downto 0);
       res : in STD_LOGIC
--       k : in STD_LOGIC
       );
end component;

SIGNAL Clk_in ,res : STD_LOGIC;
SIGNAL Mem_in ,MO_0 ,MO_1,MO_2,MO_3,MO_4,MO_5 , MO_6, MO_7  : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL reg_en :  STD_LOGIC_VECTOR (2 downto 0);


begin

UUT : reg_bank
port map (
    Clk_in => Clk_in,
    Mem_in => Mem_in,
    reg_en => reg_en,
    res => res,
    MO_0 => MO_0,
    MO_1 => MO_1,
    MO_2 => MO_2,
    MO_3 => MO_3,
    MO_4 => MO_4,
    MO_5 => MO_5,
    MO_6 => MO_6,
    MO_7 => MO_7
--    k => k
   
);

clk_process :process
begin
    Clk_in <= '0';
    wait for 5ns;
    Clk_in <= '1';
    wait for 5ns;
end process;

reg_process :process
begin
    res <= '0';
    reg_en <= "001";
    Mem_in <= "0001";
    wait for 10ns;
    reg_en <= "111";
    Mem_in <= "1010";
    wait for 10ns;
    reg_en <= "001";
    res <= '1';
    wait for 10ns;
    res <= '0';
    reg_en <= "111";

    wait;
end process;


end Behavioral;
