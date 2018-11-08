library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registrador is

	generic 
	(
		DATA_WIDTH : natural := 32
	);

	port 
	(
		data	: in std_logic_vector(DATA_WIDTH-1 downto 0);
		q     : out std_logic_vector(DATA_WIDTH-1 downto 0);
		clk   : in std_logic;
		reset : in std_logic := '0';
		we    : in std_logic
	);

end entity;

architecture rtl of registrador is
begin	
	process(clk)
	begin
	if(rising_edge(clk)) then
	   if(we = '1') then
		  q <= data;
	   end if;
	end if;
	
	if(reset = '1') then
	    q <= (others => '0');
	end if;
	end process;
	
end rtl;
