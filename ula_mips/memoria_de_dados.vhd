-- Quartus Prime VHDL Template
-- Single-port RAM with single read/write address and initial contents	

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria_de_dados is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 6
	);

	port 
	(
		clk		: in std_logic;
		addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic;
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end memoria_de_dados;

architecture rtl of memoria_de_dados is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	function init_ram
		return memory_t is 
		variable tmp : memory_t := (others => (others => '0'));
	begin 
		for addr_pos in 0 to 2**ADDR_WIDTH - 1 loop 
			-- Initialize each address with the address itself
		tmp(0) := "00000000000000000000000000000001"; 
		tmp(1) := "00000000000000000000000000000010"; 
		tmp(2) := "00000000000000000000000000000011"; 
		tmp(3) := "00000000000000000000000000000100"; 
		tmp(4) := "00000000000000000000000000000101"; 
		tmp(5) := "00000000000000000000000000000110";
		tmp(6) := "00000000000000000000000000000111"; 
		tmp(7) := "00000000000000000000000000001000"; 
		tmp(8) := "00000000000000000000000000001001"; 
		tmp(9) := "00000000000000000000000000001010"; 
		end loop;
		return tmp;
	end init_ram;	 

	-- Declare the RAM signal and specify a default value.	Quartus Prime
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal ram : memory_t := init_ram;

	-- Register to hold the address 
	signal addr_reg : natural range 0 to 2**ADDR_WIDTH-1;

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if(we = '1') then
			ram(addr) <= data;
		end if;

		-- Register the address for reading
		
	end if;
	end process;
	
	q <= ram(addr);

end rtl;
