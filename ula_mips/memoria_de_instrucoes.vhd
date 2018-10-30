-- Quartus Prime VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria_de_instrucoes is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 3 -- 2^3 = 8
	);

	port 
	(
		endereco	: in natural range 0 to 2**ADDR_WIDTH - 1;
		dado		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of memoria_de_instrucoes is

	-- Build a 2-D array type for the ROM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;
	
--	function init_rom
--		return memory_t is 
--		variable tmp : memory_t := (others => (others => '0'));
--	begin 
--		for addr_pos in 0 to 2**ADDR_WIDTH - 1 loop 
--			-- Initialize each address with the address itself
--			tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, DATA_WIDTH));
--		end loop;
--		return tmp;
--	end init_rom;	 

	-- Declare the ROM signal and specify a default value.	Quartus Prime
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	-- signal rom : memory_t := init_rom;
	signal rom: memory_t;
	attribute ram_init_file : string;
	attribute ram_init_file of rom:
	signal is "inst_ROM.mif";
	


begin

	dado <= rom(endereco);

end rtl;
