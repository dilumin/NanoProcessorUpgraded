----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/30/2023 02:45:01 PM
-- Design Name: 
-- Module Name: reg_bank - Behavioral
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

entity reg_bank is
    Port ( Clk_in : in STD_LOGIC;
           Mem_in : in STD_LOGIC_VECTOR (3 downto 0);
           MO_0 : out STD_LOGIC_VECTOR (3 downto 0);
           reg_en : in STD_LOGIC_VECTOR (2 downto 0);
           MO_1 : out STD_LOGIC_VECTOR (3 downto 0);
           MO_2 : out STD_LOGIC_VECTOR (3 downto 0);
           MO_3 : out STD_LOGIC_VECTOR (3 downto 0);
           MO_4 : out STD_LOGIC_VECTOR (3 downto 0);
           MO_5 : out STD_LOGIC_VECTOR (3 downto 0);
           MO_6 : out STD_LOGIC_VECTOR (3 downto 0);
           MO_7 : out STD_LOGIC_VECTOR (3 downto 0);
           res : in STD_LOGIC
--           k : in STD_LOGIC
           );
end reg_bank;

architecture Behavioral of reg_bank is

component reg
Port ( D : in STD_LOGIC_VECTOR (3 downto 0);
           en : in STD_LOGIC;
           Clk : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (3 downto 0);
           Res : in STD_LOGIC);
end component;

--component Slow_Clk
--Port ( Clk_in : in STD_LOGIC;
--       Clk_out : out STD_LOGIC);
--end component;


component Decoder_3_to_8
Port (     I : in STD_LOGIC_VECTOR (2 downto 0);
           Y : out STD_LOGIC_VECTOR (7 downto 0);
           EN : in STD_LOGIC);
end component;

signal Enable_reg : STD_LOGIC_VECTOR (7 downto 0);     
--signal slowed_clk : STD_LOGIC;

begin

--slow_down_Clk : Slow_Clk
--port map(
--    Clk_in => Clk_in,
--    Clk_out => slowed_clk);

decoder : Decoder_3_to_8
port map(
    I => reg_en,
    Y => Enable_reg,
    EN => '1'
    );




--reg_0 : reg
--port map(
--    D => Mem_in,
--    en => Enable_reg(0),
--    Clk => Clk_in,
--    Q => MO_0,
--    Res => res    
--);
MO_0 <= "0000";

reg_1 : reg
port map(
    D => Mem_in,
    en => Enable_reg(1),
    Clk => Clk_in,
    Q => MO_1,
    Res => res    
    
);
reg_2 : reg
port map(
    D => Mem_in,
    en => Enable_reg(2),
    Clk => Clk_in,
    Q => MO_2,
    Res => res    
);
reg_3 : reg
port map(
    D => Mem_in,
    en => Enable_reg(3),
    Clk => Clk_in,
    Q => MO_3,
    Res => res    
);
reg_4 : reg
port map(
    D => Mem_in,
    en => Enable_reg(4),
    Clk => Clk_in,
    Q => MO_4,
    Res => res    
);
reg_5 : reg
port map(
    D => Mem_in,
    en => Enable_reg(5),
    Clk => Clk_in,
    Q => MO_5,
    Res => res    
);
reg_6 : reg
port map(
    D => Mem_in,
    en => Enable_reg(6),
    Clk => Clk_in,
    Q => MO_6,
    Res => res    
);
reg_7 : reg
port map(
    D => Mem_in,
    en => Enable_reg(7),
    Clk => Clk_in,
    Q => MO_7,
    Res => res    
);




end Behavioral;
