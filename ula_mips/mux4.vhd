library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4 is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           A,B,C,D   : in  STD_LOGIC_VECTOR(31 downto 0);
           Y         : out STD_LOGIC_VECTOR(31 downto 0);
end mux4;

architecture mux4_arch of mux4 is
begin
process(SEL)
begin
	case SEL is
		when "00" => --and/nor
			Y <= A;
		when "01" => --or
			Y <= B;
		when "10" => --add/sub
			Y <= C;
		when "11" => --slt
			Y <= D;
	end case;
end process;
end mux4_arch;