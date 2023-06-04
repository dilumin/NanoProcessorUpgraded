----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 05:44:06 AM
-- Design Name: 
-- Module Name: AU_7_seg_4 - Behavioral
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

entity AU_7_seg_4 is
    port (
        A : in STD_LOGIC_VECTOR (15 downto 0);
        RegSel : in STD_LOGIC_VECTOR (3 downto 0);
        Clk : in STD_LOGIC_VECTOR (3 downto 0);
        S_LED : out STD_LOGIC_VECTOR (15 downto 0);
        S_7Seg : out STD_LOGIC_VECTOR (27 downto 0);
        Zero : out STD_LOGIC_VECTOR (3 downto 0);
        Carry : out STD_LOGIC_VECTOR (3 downto 0)
    );
end AU_7_seg_4;

architecture Behavioral of AU_7_seg_4 is
component AU_7_seg
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           RegSel : in STD_LOGIC;
           Clk : in STD_LOGIC;
           S_LED : out STD_LOGIC_VECTOR (3 downto 0);
           S_7Seg : out STD_LOGIC_VECTOR (6 downto 0);
           Zero : out STD_LOGIC;
           Carry : out STD_LOGIC);
end component;
signal A0,A1,A2,A3 : STD_LOGIC_VECTOR (3 downto 0);
--signal A1 : STD_LOGIC_VECTOR (7 downto 4);
--signal A2 : STD_LOGIC_VECTOR (11 downto 8);
--signal A3 : STD_LOGIC_VECTOR (15 downto 12);
signal RegSel0, RegSel1, RegSel2, RegSel3 : STD_LOGIC;
signal Clk0, Clk1, Clk2, Clk3 : STD_LOGIC;
signal S_LED0, S_LED1, S_LED2, S_LED3 : STD_LOGIC_VECTOR (3 downto 0);
signal S_7Seg0, S_7Seg1, S_7Seg2, S_7Seg3 : STD_LOGIC_VECTOR (6 downto 0);
signal Zero0, Zero1, Zero2, Zero3 : STD_LOGIC;
signal Carry0, Carry1, Carry2, Carry3 : STD_LOGIC;

begin
    AU_7_seg_0 : AU_7_seg
        port map (
            A => A(3 downto 0),
            RegSel => RegSel(0),
            Clk => Clk(0),
            S_LED => S_LED0,
            S_7Seg => S_7Seg0,
            Zero => Zero0,
            Carry => Carry0
        );
    AU_7_seg_1 : AU_7_seg
        port map (
            A => A(7 downto 4),
            RegSel => RegSel(1),
            Clk => Clk(1),
            S_LED => S_LED1,
            S_7Seg => S_7Seg1,
            Zero => Zero1,
            Carry => Carry1
        );
        
    AU_7_seg_2 : AU_7_seg
        port map (
            A => A(11 downto 7),
            RegSel => RegSel(2),
            Clk => Clk(2),
            S_LED => S_LED2,
            S_7Seg => S_7Seg2,
            Zero => Zero2,
            Carry => Carry2
        );
        
    AU_7_seg_3 : AU_7_seg
        port map (
            A => A(15 downto 11),
            RegSel => RegSel(3),
            Clk => Clk(3),
            S_LED => S_LED3,
            S_7Seg => S_7Seg3,
            Zero => Zero3,
            Carry => Carry3
        );
        
    A0 <= A(3 downto 0);
    A1 <= A(7 downto 4);
    A2 <= A(11 downto 8);
    A3 <= A(15 downto 12);
    RegSel0 <= RegSel(0);
    RegSel1 <= RegSel(1);
    RegSel2 <= RegSel(2);
    RegSel3 <= RegSel(3);
    Clk0 <= Clk(0);
    Clk1 <= Clk(1);
    Clk2 <= Clk(2);
    Clk3 <= Clk(3);
        
    S_LED <= S_LED3 & S_LED2 & S_LED1 & S_LED0;
    S_7Seg <= S_7Seg3 & S_7Seg2 & S_7Seg1 & S_7Seg0;
    Zero <= Zero3 & Zero2 & Zero1 & Zero0;
    Carry <= Carry3 & Carry2 & Carry1 & Carry0;
end Behavioral;
