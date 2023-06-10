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
           I : out STD_LOGIC_VECTOR (12 downto 0));
end ROM;

architecture Behavioral of ROM is

type rom_type is array (0 to 7) of std_logic_vector (12 downto 0);

signal Program_ROM : rom_type := (

--           "0100010000010", -- moving 1 to reg 2
--           "0100100000101", -- moving 5 to reg 2 
--           "0100110000001", -- moving 1 to reg 3
--           "0010110000000", -- negating reg 3 to -1
--           "1110010100000", -- multiplying reg 1 by reg 2 to get 1 X 5
--           "0000010110000", -- adding reg 3 to reg 1 , 5 -1
--           "0110010000000", -- if reg 1 becomes zero jump to top
           
--           "0110000000101" -- jump to 6 th instruction
           
------------------------------------           
           "0100010000101",
           "0100100000001",
           "1110010100000",
           "1000010000000",
           "1010010000000",
           "1010010000000",           
           "0100110001111",           
           "1100010110000"           
           
--           "0100010000010",
--           "0100100000101",
           
           
--             "0100010000001",
--             "0100100000001",
--             "0000000000000",  
--             "0000000000000",  
--             "0000000000000",  
--             "0000000000000",  
--             "0000000000000",  
--             "0000000000000"  
           
   
----------------------------
--            "0100010000010",
--            "0100100000100",
--            "1110010100000",
--            "0000000000000",
--            "0000000000000",
--            "0000000000000",
--            "0000000000000",
--            "0000000000000"
-----------------------



--        "0100010000100", ---best
--        "0100100000001",
--        "0010100000000",
--        "0000010100000",
--        "0000010100000",
--        "0000010100000",
--        "0000010100000",
--        "0110010000000"

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
