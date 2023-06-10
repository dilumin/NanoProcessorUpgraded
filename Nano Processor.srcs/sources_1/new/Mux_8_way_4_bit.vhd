----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2023 02:37:48 PM
-- Design Name: 
-- Module Name: Mux_8_to_1_bit_4 - Behavioral
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

entity  Mux_8_to_1_bit_4 is
    Port ( R0 : in STD_LOGIC_VECTOR (3 downto 0);
           R1 : in STD_LOGIC_VECTOR (3 downto 0);
           R2 : in STD_LOGIC_VECTOR (3 downto 0);
           R3 : in STD_LOGIC_VECTOR (3 downto 0);
           R4 : in STD_LOGIC_VECTOR (3 downto 0);
           R5 : in STD_LOGIC_VECTOR (3 downto 0);
           R6 : in STD_LOGIC_VECTOR (3 downto 0);
           R7 : in STD_LOGIC_VECTOR (3 downto 0);
           RS : in STD_LOGIC_VECTOR (2 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0));
end  Mux_8_to_1_bit_4;

architecture Behavioral of  Mux_8_to_1_bit_4 is

component Buffer_4_bit
port (I : in STD_LOGIC_VECTOR (3 downto 0);
           O : out STD_LOGIC_VECTOR (3 downto 0);
           en : in STD_LOGIC
);
end component;

component Decoder_3_to_8 is
    Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
       EN : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal select_buff :STD_LOGIC_VECTOR (7 downto 0);

begin

 Decoder :Decoder_3_to_8
port map ( I => RS,
           EN => '1',
           Y => select_buff);
           
buffer_0 : Buffer_4_bit
port map (
    I => R0,
    en => select_buff(0),
    O => O);
 
buffer_1 : Buffer_4_bit
    port map (
        I => R1,
        en => select_buff(1),
        O => O); 
buffer_2 : Buffer_4_bit
        port map (
            I => R2,
            en => select_buff(2),
            O => O);       
buffer_3 : Buffer_4_bit
            port map (
                I => R3,
                en => select_buff(3),
                O => O);
                
buffer_4 : Buffer_4_bit
                port map (
                    I => R4,
                    en => select_buff(4),
                    O => O);
buffer_5 : Buffer_4_bit
                    port map (
                        I => R5,
                        en => select_buff(5),
                        O => O);          
buffer_6 : Buffer_4_bit
                     port map (
                        I => R6,
                        en => select_buff(6),
                         O => O);                          
buffer_7 : Buffer_4_bit
                     port map (
                        I => R7,
                        en => select_buff(7),
                        O => O);                          
                                                        
end Behavioral;
