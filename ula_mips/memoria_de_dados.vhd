-- Quartus Prime VHDL Template
-- Single port RAM with single read/write address 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria_de_dados is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 9
	);

	port 
	(
		clk		: in std_logic;
		endereco	: in natural range 0 to 2**ADDR_WIDTH - 1;
		--endereco	: in natural range 
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

	function init_ram
		return memory_t is 
		variable tmp : memory_t := (others => (others => '0'));
	begin 
--		for addr_pos in 0 to 2**ADDR_WIDTH - 1 loop 
--			-- Initialize each address with the address itself
--			tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, DATA_WIDTH));
--		end loop;
		tmp(0) := "00000000000000000000000000000000"; 
		tmp(1) := "00000000000000000000000000000011"; --a partir do endereço de byte 4
		tmp(2) := "00000000000000000000000000000010"; --a partir do endereço de byte 8
		tmp(3) := "00000000000000000000000000000001"; --a partir do endereço de byte 12
		tmp(4) := "00000000000000000000000000000100"; --a partir do endereço de byte 16
		tmp(5) := "00000000000000000000000000000101";
		tmp(6) := "00000000000000000000000000000110"; 
		tmp(7) := "00000000000000000000000000000111"; 
		tmp(8) := "00000000000000000000000000001000"; 
		tmp(9) := "00000000000000000000000000001001"; 
		return tmp;
	end init_ram;	 

	-- Declare the ROM signal and specify a default value.	Quartus Prime
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal ram : memory_t := init_ram;

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if(escrever = '1') then
			ram(endereco) <= dado_escrito;
		end if;
	end if;
	end process;
--	process(all)
--	begin
--	if(ler = '1') then
		dado_lido <= ram(endereco) when ler = '1' else (OTHERS => '0');  
--	end if;
--	end process;
end rtl;
