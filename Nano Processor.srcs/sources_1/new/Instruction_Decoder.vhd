----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 09:44:21 PM
-- Design Name: 
-- Module Name: Instruction_Decoder - Behavioral
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

entity Instruction_Decoder is
    Port ( Instr : in STD_LOGIC_VECTOR (12 downto 0);
           Reg_en : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_check_j : in STD_LOGIC_VECTOR (3 downto 0);
           L_sel : out STD_LOGIC_VECTOR (1 downto 0);
           Val : out STD_LOGIC_VECTOR (3 downto 0);
           Reg_sel_0 : out STD_LOGIC_VECTOR (2 downto 0);
           Reg_sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
           Add_Sub_sel : out STD_LOGIC;
           J_flag : out STD_LOGIC;
           Address_j : out STD_LOGIC_VECTOR (2 downto 0)
           );
end Instruction_Decoder;


architecture Behavioral of Instruction_Decoder is

--component Decoder_2_to_4
--    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
--       EN : in STD_LOGIC;
--       Y : out STD_LOGIC_VECTOR (3 downto 0));
--end component;
component Decoder_3_to_8
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Mux_2_to_1_bit_4
    Port ( D0 : in STD_LOGIC_VECTOR (3 downto 0);
       D1 : in STD_LOGIC_VECTOR (3 downto 0);
       S : in STD_LOGIC;
       O_Mux : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal k : STD_LOGIC_VECTOR (12 downto 10);
signal l : STD_LOGIC_VECTOR (3 downto 0 );
signal en , Q , D : STD_LOGIC ;
signal kk :std_logic_vector (1 downto 0);
signal Y1 : STD_LOGIC_VECTOR (7 downto 0 );


begin
k <= Instr (12 downto 10);

Decoder_0 : Decoder_3_to_8
    port map(
        I => k,
        EN => '1',
        Y => Y1
    );
Reg_en <= Instr (9 downto 7);
--L_sel <=
kk(0)  <= NOT (Y1(2));
kk(1) <= '0';

L_sel<= kk when NOT (Instr (12) = '1') else  "11";



--L_sel <=  (Y1(2) OR Y1(3)) AND ( NOT Instr(11)) ;

Val <= Instr (3 downto 0);

Reg_sel_0 <= Instr (9 downto 7) ;
Reg_sel_1 <= Instr (6 downto 4) ;
--Reg_sel_0 <= Instr (6 downto 4) ;
--Reg_sel_1 <= Instr (9 downto 7) ;

Add_Sub_sel <= ( Y1(0) OR Y1(1) ) AND Instr(10) ;


J_flag <= Y1 (3) AND ( NOT  Reg_check_j(0)) AND ( NOT  Reg_check_j(1)) AND ( NOT  Reg_check_j(2)) AND ( NOT  Reg_check_j(3));
Address_j <= Instr (2 downto 0);










end Behavioral;
