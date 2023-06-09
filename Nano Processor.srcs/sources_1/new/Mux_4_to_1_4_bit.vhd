----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/07/2023 07:35:40 AM
-- Design Name: 
-- Module Name: Mux_4_to_1_4_bit - Behavioral
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

entity Mux_4_to_1_4_bit is
    Port ( A0 : in STD_LOGIC_VECTOR (3 downto 0);
           A1 : in STD_LOGIC_VECTOR (3 downto 0);
           A2 : in STD_LOGIC_VECTOR (3 downto 0);
           A3 : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0);
           con : in STD_LOGIC_VECTOR (1 downto 0));
end Mux_4_to_1_4_bit;

architecture Behavioral of Mux_4_to_1_4_bit is

component Buffer_4_bit
port (I : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0);
           en : in STD_LOGIC
);
end component;

component Decoder_2_to_4 is
    Port ( I : in STD_LOGIC_VECTOR (1 downto 0);
           EN : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal select_buff :STD_LOGIC_VECTOR (3 downto 0);

begin

Decoder :Decoder_2_to_4
port map ( I => con,
           EN => '1',
           Y => select_buff);
           
buffer_0 : Buffer_4_bit
port map (
    I => A0,
    en => select_buff(0),
    O => O);
buffer_1 : Buffer_4_bit
    port map (
        I => A1,
        en => select_buff(1),
        O => O);
buffer_2 : Buffer_4_bit
        port map (
            I => A2,
            en => select_buff(2),
            O => O);
buffer_3 : Buffer_4_bit
        port map (
           I => A3,
           en => select_buff(3),
           O => O);        

    
-------------



end Behavioral;
