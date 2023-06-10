----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:27:51 PM
-- Design Name: 
-- Module Name: Program_counter - Behavioral
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

entity Program_counter is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0);
           res : in STD_LOGIC;
           Clk : in STD_LOGIC);
end Program_counter;

architecture Behavioral of Program_counter is

component D_FF
    Port ( D : in STD_LOGIC;
       Res : in STD_LOGIC;
       Clk : in STD_LOGIC;
       Q : out STD_LOGIC
);

end component;


signal D  : STD_LOGIC;

begin

    

D_FF_0 : D_FF
    port map (
        D => I(0),
        Res => res,
        Clk => Clk,
        Q => Q(0)
    );

D_FF_1 : D_FF
    port map (
        D => I(1),
        Res => res,
        Clk => Clk,
        Q => Q(1)
    );
D_FF_2 : D_FF
       port map (
           D => I(2),
           Res => res,
           Clk => Clk,
           Q => Q(2)
       );   
       
D_FF_3 : D_FF
        port map (
              D => I(3),
              Res => res,
              Clk => Clk,
              Q => Q(3)
          );   

end Behavioral;
