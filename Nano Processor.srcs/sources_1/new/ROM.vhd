----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/31/2023 02:56:49 PM
-- Design Name: 
-- Module Name: ROM - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( Mem_S : in STD_LOGIC_VECTOR (2 downto 0);
           I : out STD_LOGIC_VECTOR (11 downto 0));
end ROM;

architecture Behavioral of ROM is

type rom_type is array (0 to 7) of std_logic_vector (11 downto 0);

signal Program_ROM : rom_type := (

        "100010000011", 
        "100100000001",
        "010100000000",
        "000010100000",
        "000010100000",
        "000010100000",
        "110010000000", --jump to 000 if 0
        "100010001111"



--        "100010000100", ---best
--        "100100000001",
--        "010100000000",
--        "000010100000",
--        "000010100000",
--        "000010100000",
--        "000010100000",
--        "110010000000"

--          "100010000010",
--          "100100000001",
--          "010100000000",
--          "000010100000",
--          "000000000000",
--          "000000000000",
--          "000000000000",
--          "000000000000"
          
        
   
                );
begin


I <= Program_ROM(to_integer(unsigned(Mem_S)));

end Behavioral;
