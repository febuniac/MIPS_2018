library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2 is
    Port ( SEL : in  STD_LOGIC;
           A,B : in  STD_LOGIC_VECTOR(31 downto 0);
           Y   : out STD_LOGIC_VECTOR(31 downto 0)
			);
end mux2;

architecture mux2_arch of mux2 is
begin
process(SEL, A, B)
begin
	case SEL is
		when '0' => 
			y <= A;
		when '1' => 
			y <= B;
	end case;
end process;
end mux2_arch;