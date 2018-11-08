library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is
	Generic (Vector_Size: natural:=32);
	port ( 
			d:   in  STD_LOGIC_VECTOR((Vector_Size - 1) downto 0);
			clk: in  STD_LOGIC;
			q:   out STD_LOGIC_VECTOR((Vector_Size - 1) downto 0) := "00000000000000000000000000000000"
	);
end entity;

architecture PC_arch of PC is

begin
	process (clk)
	begin
		if (rising_edge(clk)) then
				q <= d;
		end if;
	end process;

end PC_arch;