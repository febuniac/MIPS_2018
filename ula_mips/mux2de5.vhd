library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2de5 is
    Port ( SEL : in  STD_LOGIC;
           A,B : in  STD_LOGIC_VECTOR(4 downto 0);
           Y   : out STD_LOGIC_VECTOR(4 downto 0)
			);
end mux2de5;

architecture mux2_arch of mux2de5 is
begin
process(SEL)
begin
	case SEL is
		when '0' => 
			y <= A;
		when '1' => 
			y <= B;
	end case;
end process;
end mux2_arch;