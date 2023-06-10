----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/01/2023 10:07:23 PM
-- Design Name: 
-- Module Name: Processor - Behavioral
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

entity Processor is
    Port(
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Zero : out STD_LOGIC;
    overflow : out STD_LOGIC;
    Anode : out STD_LOGIC_VECTOR (3 downto 0);
    reg_out : out STD_LOGIC_VECTOR (3 downto 0);
    segment_out : out STD_LOGIC_VECTOR (6 downto 0)


    );
end Processor;

architecture Behavioral of Processor is

--component Mux_4_to_1_4_bit
--    Port ( A0 : in STD_LOGIC_VECTOR (3 downto 0);
--       A1 : in STD_LOGIC_VECTOR (3 downto 0);
--       A2 : in STD_LOGIC_VECTOR (3 downto 0);
--       A3 : in STD_LOGIC_VECTOR (3 downto 0);
--       O : out STD_LOGIC_VECTOR (3 downto 0);
--       con : in STD_LOGIC_VECTOR (1 downto 0));

--end component;


component Instruction_Decoder
    Port( Instr : in STD_LOGIC_VECTOR (12 downto 0);
          Reg_en : out STD_LOGIC_VECTOR (2 downto 0);
          Reg_check_j : in STD_LOGIC_VECTOR (3 downto 0);
          L_sel : out STD_LOGIC_VECTOR (2 downto 0);
          Val : out STD_LOGIC_VECTOR (3 downto 0);
          Reg_sel_0 : out STD_LOGIC_VECTOR (2 downto 0);
          Reg_sel_1 : out STD_LOGIC_VECTOR (2 downto 0);
          Add_Sub_sel : out STD_LOGIC;
          J_flag : out STD_LOGIC;
          Address_j : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component Multiplier_4_by_4
    Port ( M : in STD_LOGIC_VECTOR (3 downto 0);
       Q : in STD_LOGIC_VECTOR (3 downto 0);
       P : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

component Right_Bit_shift is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           o : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Left_Bit_shift is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           o : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component AND_bitwise is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           o : out STD_LOGIC_VECTOR (3 downto 0));
end component;


component ROM
    Port ( Mem_S : in STD_LOGIC_VECTOR (2 downto 0);
           I : out STD_LOGIC_VECTOR (12 downto 0));
end component;

component Slow_Clk
     Port ( Clk_in : in STD_LOGIC;
          Clk_out : out STD_LOGIC);
end component;

component Adder_bit_3
     Port(A : in STD_LOGIC_VECTOR (2 downto 0);
          S : out STD_LOGIC_VECTOR (2 downto 0));
end component;

component reg_bank
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
       res : in STD_LOGIC);
end component;

component Mux_2_to_1_bit_4
    Port ( D0 : in STD_LOGIC_VECTOR (3 downto 0);
       D1 : in STD_LOGIC_VECTOR (3 downto 0);
       S : in STD_LOGIC;
       O_Mux : out STD_LOGIC_VECTOR (3 downto 0));
end component;

component Mux_2_to_1_bit_3
    Port( D0 : in STD_LOGIC_VECTOR (2 downto 0);
          D1 : in STD_LOGIC_VECTOR (2 downto 0);
          S : in STD_LOGIC;
          O_Mux : out STD_LOGIC_VECTOR (2 downto 0));
 end component;
 
 component Sub_Add_4_bit
    Port(A : in STD_LOGIC_VECTOR (3 downto 0);
        B : in STD_LOGIC_VECTOR (3 downto 0);
        M : in STD_LOGIC;
        C : out STD_LOGIC;
        V : out STD_LOGIC;
        S : out STD_LOGIC_VECTOR (3 downto 0));
 end component;
 
 
 component Program_counter
     Port ( I : in STD_LOGIC_VECTOR (2 downto 0);
           Q : out STD_LOGIC_VECTOR (2 downto 0);
           res : in STD_LOGIC;
           Clk : in STD_LOGIC);
 end component;
 
 component Mux_8_to_1_bit_4
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
  end component;
  
  component LUT_16_7_segment
      Port ( address : in STD_LOGIC_VECTOR (3 downto 0);
         data : out STD_LOGIC_VECTOR (6 downto 0));
  end component;

signal Instruction_Bus : STD_LOGIC_VECTOR(12 downto 0);
signal Mux_3_out, pc_out, regi_en_bus,Adder_out,Address_to_jump,reg_sel_0,reg_sel_1 : STD_LOGIC_VECTOR (2 downto 0);
signal M0,M1,M2,M3,M4,M5,M6,M7 ,left_shift_output , right_shift_output , and_bitshift_out : STD_LOGIC_VECTOR (3 downto 0);
signal Mux_out_1,Mux_out_2,Sub_Add_out,reg_in,immediate_Value ,Reg_1_data , Mul_out: STD_LOGIC_VECTOR (3 downto 0);
signal Add_Sub_Select,Jump_flag ,slowed_clk : STD_LOGIC;
signal Load_sel : STD_LOGIC_VECTOR (2 downto 0);
signal zero_temp , o_temp : std_logic;

begin




slow_down_clock : Slow_Clk
port map (
    Clk_in => Clk,
    Clk_out => slowed_clk );
--    slowed_clk <= Clk;


Programcounter : Program_counter
    PORT MAP(
        I => Mux_3_out,
        Q => pc_out,
        res => Reset,
        Clk => slowed_clk
        );
 
Registerbank : reg_bank
    PORT MAP(
        Clk_in => slowed_clk,
        Mem_in => reg_in,
        MO_0 => M0,
        MO_1 => M1,
        MO_2 => M2,
        MO_3 => M3,
        MO_4 => M4,
        MO_5 => M5,
        MO_6 => M6,
        MO_7 => M7,
        reg_en  => regi_en_bus,
        res => Reset
    );
   Reg_1_data <= M1;
   reg_out <= M1; 



    
Mux_8_to_1_bit_4_0 : Mux_8_to_1_bit_4
    PORT MAP(
         R0 => M0,
         R1 => M1,
         R2 => M2,
         R3 => M3,
         R4 => M4,
         R5 => M5,
         R6 => M6,
         R7 => M7,
         RS => reg_sel_0,
         O => Mux_out_1);
--test_val_1 <= Mux_out_1;
             
Mux_8_to_1_bit_4_1 : Mux_8_to_1_bit_4
     PORT MAP(
             R0 => M0,
             R1 => M1,
             R2 => M2,
             R3 => M3,
             R4 => M4,
             R5 => M5,
             R6 => M6,
             R7 => M7,
             RS => reg_sel_1,
             O => Mux_out_2);
--test_val_2 <= Mux_out_2;

Multiplier : Multiplier_4_by_4
port map (
    M => Mux_out_2,
    Q =>Mux_out_1,
    P=> Mul_out
    );

Left_shift : Left_Bit_shift
    port map(
    I => Mux_out_1,
    o => left_shift_output
    );
Right_shift : Right_Bit_shift
        port map(
        I => Mux_out_1,
        o => right_shift_output
        );

bitwise_and : AND_bitwise
    port map (
        A => Mux_out_1,
        B => Mux_out_2,
        o => and_bitshift_out
    );

Sub_Adder : Sub_Add_4_bit
    PORT MAP(
            A => Mux_out_2,
            B => Mux_out_1,
            M => Add_Sub_Select,
            C => zero_temp,
            V => o_temp,
            S => Sub_Add_out);
--   test_sum <= Sub_Add_out;

Adder_3_bit : Adder_bit_3
    
    PORT MAP(
            A => pc_out,
            S => Adder_out
             );            
--adder_in <= pc_out;
--Mux_4_to_1_4_bit_0 : Mux_4_to_1_4_bit
--port map (
--    A0 => immediate_Value,
--    A1 => Sub_Add_out,
--    A2 => "0000",
--    A3 => Mul_out,
--    O => reg_in,
--    con => Load_sel);
    
Mux_8_to_1_bit_4_L_SEL : Mux_8_to_1_bit_4
PORT MAP (
        R0 => Sub_Add_out,
        R1 => Sub_Add_out,
        R2 => immediate_Value,
        R3 => Sub_Add_out,
        R4 => right_shift_output,
        R5 => left_shift_output,
        R6 => and_bitshift_out,
        R7 => Mul_out,
        RS => Load_sel,
        O => reg_in
    
    );


Mux_2_to_1_bit_3_0 : Mux_2_to_1_bit_3
    PORT MAP(D0 => Adder_out,
             D1 => Address_to_jump,
             S => Jump_flag,
             O_Mux => Mux_3_out);

Program_Rom : ROM
    PORT MAP(Mem_S => pc_out,
             I => Instruction_Bus);

--Mux_2_to_1_bit_4_0 : Mux_2_to_1_bit_4
--    PORT MAP(D0 => immediate_Value,
--             D1 => Sub_Add_out,
--             S => Load_sel,
--             O_Mux => reg_in);
             
Instruction_Deco : Instruction_Decoder
    PORT MAP(Instr => Instruction_Bus,
             Reg_en => regi_en_bus,
             Reg_check_j => Mux_out_1,
             L_sel => Load_sel,
             Val => immediate_Value,
             Reg_sel_0 => reg_sel_0,
             Reg_sel_1 => reg_sel_1,
             Add_Sub_sel => Add_Sub_Select,
             J_flag => Jump_flag,
             Address_j => Address_to_jump);
             
--  test_ls <=Load_sel;
Zero <= zero_temp when Instruction_Bus(12 downto 10) = "000" else '0';
overflow <= o_temp when Instruction_Bus(12 downto 10) = "000" else '0';

Seven_segment : LUT_16_7_segment 
port map (
    address => Reg_1_data,
    data  => segment_out );
Anode <= "1110";
             
end Behavioral;