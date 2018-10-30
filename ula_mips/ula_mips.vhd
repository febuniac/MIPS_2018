library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ula_mips is
port( 
        A,B : in std_logic_vector(31 downto 0); 
        ula_ctrl : in std_logic_vector(3 downto 0); 
        Q : out std_logic_vector(31 downto 0);
		  zero : out std_logic
        );
end ula_mips;

architecture Behavioral of ula_mips is

signal R1,R2,R3 : std_logic_vector(31 downto 0);

signal result_adder, c_out_adder, result_slt : std_logic_vector(31 downto 0);

begin

mux2A: entity work.mux2
		Port map(A => A, B => (not A), SEL => ula_ctrl(3), Y => R1);
		
mux2B: entity work.mux2
		Port map(A => B, B => (not B), SEL => ula_ctrl(2), Y => R2);
		
full_adder: entity work.full_adder
		Port map(a => R1, b => R2, c_in => ula_ctrl(2), result => result_adder, c_out => c_out_adder);
		
slt: entity work.slt
		Port map(a => R1, b => R2, result => result_slt);
		
mux4: entity work.mux4
		Port map(A => (R1 and R2), B => (R1 or R2), C => result_adder, D => result_slt, SEL => ula_ctrl(1) & ula_ctrl(0), Y => R3);

zero <= NOT (R3(31) OR R3(30) OR R3(29) OR R3(28) OR R3(27) OR R3(26) OR R3(25) OR R3(24) OR R3(23) OR R3(22) OR R3(21) OR R3(20) OR R3(19) OR R3(18) OR R3(17) OR R3(16) OR R3(15) OR R3(14) OR R3(13) OR R3(12) OR R3(11) OR R3(10) OR R3(9) OR R3(8) OR R3(7) OR R3(6) OR R3(5) OR R3(4) OR R3(3) OR R3(2) OR R3(1) OR R3(0)); 
Q <= R3;
      

end Behavioral;