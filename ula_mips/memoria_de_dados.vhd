-- Quartus Prime VHDL Template
-- Single port RAM with single read/write address 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria_de_dados is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 8
	);

	port 
	(
		clk		: in std_logic;
		endereco	: in std_logic_vector(ADDR_WIDTH - 1 downto 0);
		
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
	attribute ram_init_file : string;
	attribute ram_init_file of ram:
	signal is "RAM.mif";

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if(escrever = '1') then

			ram(to_integer(unsigned(endereco))) <= dado_escrito;
		end if;
    
	end if;
		
	end process;
	
	dado_lido <= ram(to_integer(unsigned(endereco))) when ler = '1' else (OTHERS => 'X');  
					 
end rtl;
