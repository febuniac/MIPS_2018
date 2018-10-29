-- Quartus Prime VHDL Template
-- Single port RAM with single read/write address 

library ieee;
use ieee.std_logic_1164.all;

entity memoria_de_dados is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 5 -- 2^5 = 32
	);

	port 
	(
		clk		: in std_logic;
		endereco	: in natural range 0 to 2**ADDR_WIDTH - 1;
		dado_escrito	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		ler		: in std_logic;
		escrever		: in std_logic;
		dado_lido		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of memoria_de_dados is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	-- Declare the RAM signal.	
	signal ram : memory_t;

	-- Register to hold the address 
	signal addr_reg : natural range 0 to 2**ADDR_WIDTH-1;

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if(escrever = '1') then
			ram(endereco) <= data;
		end if;

		-- Register the address for reading
		addr_reg <= endereco;
	end if;
	
	if(ler = '1') then
		ram(endereco) <= data;
	end if;
		
	end process;

	dado_lido <= ram(addr_reg);

end rtl;
