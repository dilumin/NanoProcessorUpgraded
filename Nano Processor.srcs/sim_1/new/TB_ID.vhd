----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 11:11:10 PM
-- Design Name: 
-- Module Name: TB_ID - Behavioral
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

entity TB_ID is
--  Port ( );
end TB_ID;

architecture Behavioral of TB_ID is

component Instruction_Decoder
    Port ( Instr : in STD_LOGIC_VECTOR (12 downto 0);
       Reg_en : out STD_LOGIC_VECTOR (2 downto 0);
       Reg_check_j : in STD_LOGIC_VECTOR (3 downto 0);
       L_sel : out STD_LOGIC_VECTOR (2 downto 0);
       Val : out STD_LOGIC_VECTOR (3 downto 0);
       Reg_sel_0 : out STD_LOGIC_VECTOR (2 downto 0);
       Reg_sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
       Add_Sub_sel : out STD_LOGIC;
       J_flag : out STD_LOGIC;
       Address_j : out STD_LOGIC_VECTOR (3 downto 0)
       );
end component;
signal Instr : STD_LOGIC_VECTOR (12 downto 0);
signal Reg_en ,Reg_sel_0 , Reg_sel_1 ,L_sel   : STD_LOGIC_VECTOR (2 downto 0);
signal Reg_check_j , Val  ,Address_j : STD_LOGIC_VECTOR (3 downto 0);
signal J_flag , Add_Sub_sel  : STD_LOGIC;

begin
UUT : Instruction_Decoder 
port map (
    Instr => Instr,
    Reg_en => Reg_en,
    Reg_check_j => Reg_check_j,
    L_sel => L_sel,
    Val => Val,
    Reg_sel_0 => Reg_sel_0,
    Reg_sel_1 => Reg_sel_1,
    Add_Sub_sel => Add_Sub_sel,
    J_flag => J_flag,
    Address_j => Address_j
    );

process
begin
 Reg_check_j <= "1001";
 

 Instr <= "1000100000100";
 wait for 100ns;
 
 Instr <= "1001000000110";
 wait for 100ns;
 
 Instr <= "0000101000000";
 wait ;
 



end process;




end Behavioral;
