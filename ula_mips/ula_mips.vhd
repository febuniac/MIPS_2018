library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ula_mips is
port( 
        A,B : in std_logic_vector(31 downto 0); 
        funct : in std_logic_vector(3 downto 0); 
        Q : out std_logic_vector(31 downto 0) 
        );
end ula_mips;

architecture Behavioral of ula_mips is

signal R1,R2,R3 : std_logic_vector(31 downto 0);

signal result_adder, c_out_adder, result_slt : std_logic_vector(31 downto 0);

signal overflow : std_logic;

begin

mux2A: entity work.mux2
		Port map(A => A, B => (not A), SEL => funct(3), Y => R1);
		
mux2B: entity work.mux2
		Port map(A => B, B => (not B), SEL => funct(2), Y => R2);
		
full_adder: entity work.full_adder
		Port map(a => R1, b => R2, c_in => funct(2), result => result_adder, c_out => c_out_adder);
		
slt: entity work.slt
		Port map(a => R1, b => R2, result => result_slt);
		
mux4: entity work.mux4
		Port map(A => (R1 and R2), B => (R1 or R2), C => result_adder, D => result_slt, SEL => funct(1) & funct(0), Y => R3);

overflow <= c_out_adder(30) xor c_out_adder(31);
zero <= NOT (Q(31) OR Q(30) OR Q(29) OR Q(28) OR Q(27) OR Q(26) OR Q(25) OR Q(24) OR Q(23) OR Q(22) OR Q(21) OR Q(20) OR Q(19) OR Q(18) OR Q(17) OR Q(16) OR Q(15) OR Q(14) OR Q(13) OR Q(12) OR Q(11) OR Q(10) OR Q(9) OR Q(8) OR Q(7) OR Q(6) OR Q(5) OR Q(4) OR Q(3) OR Q(2) OR Q(1) OR Q(0)); 
Q <= R3;
      

end Behavioral;