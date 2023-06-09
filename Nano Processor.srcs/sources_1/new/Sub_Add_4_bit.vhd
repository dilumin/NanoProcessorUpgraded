----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2023 04:02:52 PM
-- Design Name: 
-- Module Name: 4_bit_Add_Sub - Behavioral
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

entity Sub_Add_4_bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           M : in STD_LOGIC;
           C : out STD_LOGIC;
           V : out STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0)
           );
end Sub_Add_4_bit;

architecture Behavioral of Sub_Add_4_bit is

component FA 
 Port (   A : in STD_LOGIC;
          B : in STD_LOGIC;
          C_in : in STD_LOGIC;
          S : out STD_LOGIC;
          C_out : out STD_LOGIC);
end component;

signal In0 ,In1 , In2 , In3 ,temp_c0,temp_c1 , temp_c2,temp_c3   : STD_LOGIC;
signal L : STD_LOGIC_VECTOR (3 downto 0);


begin

In0 <= M XOR B(0);
In1 <= M XOR B(1);
In2 <= M XOR B(2);
In3 <= M XOR B(3);

FA_0 : FA
    port map(C_in => M,
            A => A(0),
            B => In0,
            S => L(0),
            C_out => temp_c0);
FA_1 : FA 
    port map(C_in => temp_c0,
            A => A(1),
            B => In1,
            S => L(1),
            C_out => temp_c1);
FA_2 : FA 
    port map(C_in => temp_c1,
            A => A(2),
            B => In2,
            S => L(2),
            C_out => temp_c2);
FA_3 : FA 
    port map(C_in => temp_c2,
            A => A(3),
            B => In3,
            S => L(3),
            C_out => temp_c3);
            
V <= temp_c2 XOR temp_c3;
C <=   ( NOT L(0) AND NOT L(1) AND NOT L(2) AND NOT L(3) )   ;
S <= L;

end Behavioral;
