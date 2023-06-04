----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 06:07:36 AM
-- Design Name: 
-- Module Name: Mux_2_to_1_bit_3 - Behavioral
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

entity Mux_2_to_1_bit_3 is
    Port ( D0 : in STD_LOGIC_VECTOR (2 downto 0);
           D1 : in STD_LOGIC_VECTOR (2 downto 0);
           S : in STD_LOGIC;
           O_Mux : out STD_LOGIC_VECTOR (2 downto 0));
end Mux_2_to_1_bit_3;

architecture Behavioral of Mux_2_to_1_bit_3 is
component Mux_2_to_1
    Port( D0 : in STD_LOGIC;
          D1 : in STD_LOGIC;
          S : in STD_LOGIC;
          O : out STD_LOGIC);
end component;
begin
Mux_2_to_1_0 : Mux_2_to_1
    PORT MAP(D0 => D0(0),
             D1 => D1(0),
             S => S,
             O => O_Mux(0));

Mux_2_to_1_1 : Mux_2_to_1
    PORT MAP(D0 => D0(1),
             D1 => D1(1),
             S => S,
             O => O_Mux(1));
             
Mux_2_to_1_2 : Mux_2_to_1
    PORT MAP(D0 => D0(2),
            D1 => D1(2),
            S => S,
            O => O_Mux(2));
end Behavioral;
