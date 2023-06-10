----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 08:24:08 AM
-- Design Name: 
-- Module Name: Adder_bit_3 - Behavioral
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

entity Adder_bit_4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0));
end Adder_bit_4;

architecture Behavioral of Adder_bit_4 is
component FA
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C_in : in STD_LOGIC;
           S : out STD_LOGIC;
           C_out : out STD_LOGIC);
end component;

signal c1,c2,c3 ,c4: STD_LOGIC;

begin

FA_0 : FA 
port map (
    A => A(0),
    B => '1',
    C_in => '0',
    S => S(0),
    C_out => c1
    
    );
FA_1 : FA 
    port map (
        A => A(1),
        B => '0',
        C_in => c1 ,
        S => S(1),
        C_out => c2
);
    
FA_2 : FA 
    port map (
        A => A(2),
        B => '0',
        C_in => c2 ,
        S => S(2),
        C_out => c3
);

FA_3 : FA 
    port map (
        A => A(3),
        B => '0',
        C_in => c3 ,
        S => S(3),
        C_out => c4
);
    


end Behavioral;