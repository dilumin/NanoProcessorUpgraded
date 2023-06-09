----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/05/2023 05:53:16 PM
-- Design Name: 
-- Module Name: Multiplier_4_by_4 - Behavioral
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

entity Multiplier_4_by_4 is
    Port ( M : in STD_LOGIC_VECTOR (3 downto 0);
           Q : in STD_LOGIC_VECTOR (3 downto 0);
           P : out STD_LOGIC_VECTOR (3 downto 0)
        );
end Multiplier_4_by_4;

architecture Behavioral of Multiplier_4_by_4 is
    component FA
        port( A : in STD_LOGIC;
              B : in STD_LOGIC;
              C_in : in STD_LOGIC;
              C_out : out STD_LOGIC;
              S : out STD_LOGIC);
    end component;

signal L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11 : STD_LOGIC;
signal C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11 : STD_LOGIC;
signal T1,T2,T3,T4,T5,T6,T7,T8,T9,T10,T11,T12 : STD_LOGIC;
signal K : STD_LOGIC_VECTOR (7 downto 0);

begin
    K(0) <= (M(0) AND Q(0));
    L1 <= (M(1) AND Q(0));
    L2 <= (M(2) AND Q(0));
    L3 <= (M(3) AND Q(0));
    
    
    T1 <= (M(0) AND Q(1));
    T2 <= M(1) AND Q(1);
    T3 <= (M(2) AND Q(1));
    T4 <= M(3) AND Q(1);
        
    FA_0 : FA
        PORT MAP(
            A => L1,
            B => T1,
            C_in => '0',
            C_out => C1,
            S => K(1));
     FA_1 : FA
        PORT MAP(
            A => L2,
            B => T2,
            C_in => C1,
            C_out => C2,
            S => L4);
    FA_2 : FA
        PORT MAP(
            A => L3,
            B => T3,
            C_in => C2,
            C_out => C3,
            S => L5);
    FA_3 : FA
        PORT MAP(
            A => '0',
            B => T4,
            C_in => C3,
            C_out => L7,
            S => L6);
     
    T5 <= (M(0) AND Q(2));
    T6 <= M(1) AND Q(2);
    T7 <= (M(2) AND Q(2));
    T8 <= M(3) AND Q(2);
        
    FA_4 : FA
        PORT MAP(
            A => L4,
            B => T5,
            C_in => '0',
            C_out => C5,
            S => K(2));
     FA_5 : FA
        PORT MAP(
            A => L5,
            B => T6,
            C_in => C5,
            C_out => C6,
            S => L8);
    FA_6 : FA
        PORT MAP(
            A => L6,
            B => T7,
            C_in => C6,
            C_out => C7,
            S => L9);
    FA_7 : FA
        PORT MAP(
            A => L7,
            B => T8,
            C_in => C8,
            C_out => L11,
            S => L10);
    
    T9 <= (M(0) AND Q(3));
    T10 <= M(1) AND Q(3);
    T11 <= (M(2) AND Q(3));
    T12 <= M(3) AND Q(3);
        
    FA_8 : FA
        PORT MAP(
            A => L8,
            B => T9,
            C_in => '0',
            C_out => C9,
            S => K(3));
     FA_9 : FA
        PORT MAP(
            A => L5,
            B => T10,
            C_in => C9,
            C_out => C10,
            S => K(4));
    FA_10 : FA
        PORT MAP(
            A => L6,
            B => T11,
            C_in => C10,
            C_out => C11,
            S => K(5));
    FA_11 : FA
        PORT MAP(
            A => L7,
            B => T12,
            C_in => C11,
            C_out => K(7),
            S => K(6));

P <= K (3 downto 0);       
end Behavioral;
