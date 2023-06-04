----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/02/2023 06:53:28 AM
-- Design Name: 
-- Module Name: TB_processor - Behavioral
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

entity TB_processor is
--  Port ( );
end TB_processor;

architecture Behavioral of TB_processor is

component Processor
    Port(
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Zero : out STD_LOGIC;
    overflow : out STD_LOGIC;
    segment_out : out STD_LOGIC_VECTOR (6 downto 0)

--    test_mem_in : out STD_LOGIC_VECTOR;
--    adder_in : out STD_LOGIC_VECTOR (2 downto 0);
--    test_val_1 : out STD_LOGIC_VECTOR (3 downto 0);
--    test_val_2 : out STD_LOGIC_VECTOR (3 downto 0);
--    test_sum : out STD_LOGIC_VECTOR (3 downto 0);
--        test_ls : out STD_LOGIC;
--            test_r2 : out STD_LOGIC_VECTOR (3 downto 0)



    




);
end component;

signal Clk , Reset , Zero , overflow : STD_LOGIC;
signal segment_out :  STD_LOGIC_VECTOR (6 downto 0);
--signal test_mem_in : STD_LOGIC_VECTOR (3 downto 0);
--signal adder_in  : STD_LOGIC_VECTOR (2 downto 0);
--signal test_val_1 , test_val_2 : STD_LOGIC_VECTOR (3 downto 0);
--signal test_sum , test_r2:  STD_LOGIC_VECTOR (3 downto 0);


begin
UUT : Processor
port map (
    Clk => Clk,
    Reset => Reset,
    Zero => Zero,
    overflow => overflow,
    segment_out => segment_out
--    test_mem_in => test_mem_in,
--    adder_in =>  adder_in,
--    test_val_1 => test_val_1,
--    test_val_2 => test_val_2,
--    test_sum => test_sum,
--    test_ls => test_ls,
--    test_r2 => test_r2
    
    );

process_clk : process
begin 
    Clk <= '0';
    wait for 1ns;
    Clk <= '1';
    wait for 1ns;
end process;

process
begin
Reset <= '1';
wait for 45ns;
Reset <= '0';
wait for 4000ns;
end process;


end Behavioral;
