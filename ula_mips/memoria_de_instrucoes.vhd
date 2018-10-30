-- Quartus Prime VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria_de_instrucoes is

	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 8
	);

	port 
	(
		endereco	: in std_logic_vector(ADDR_WIDTH-1 downto 0);
		dado		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture rtl of memoria_de_instrucoes is

	-- Build a 2-D array type for the ROM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(0 to 2**ADDR_WIDTH-1) of word_t;
	
	function init_rom
		return memory_t is 
		variable tmp : memory_t := (others => (others => '0'));
	begin 
--		for addr_pos in 0 to 2**ADDR_WIDTH - 1 loop 
--			-- Initialize each address with the address itself
--			tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, DATA_WIDTH));
--		end loop;
		tmp(0) := b"000000_00000_00000_00111_00000_101010"; --r7 = 1 (slt)
		
		tmp(1) := b"000000_00111_00111_00011_00000_100000"; --r7+r7 no r3 (add)
		
		tmp(2) := b"000000_00001_00010_00100_00000_100010"; -- a partir daqui tem que refazer
		tmp(3) := "00000000001000100010100000100100";
		tmp(4) := "00000000001000100011000000100101";
		tmp(5) := "10001100001000100000000000000010";
		tmp(6) := "10101100011001000000000000000011";
		tmp(7) := "00010000001000100000000000000100";
		tmp(8) := "00001000000000000000000000000101";
		return tmp;
	end init_rom;	 

	-- Declare the ROM signal and specify a default value.	Quartus Prime
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := init_rom;
--	signal rom: memory_t;
--	attribute rom_init_file : string;
--	attribute rom_init_file of rom:
--	signal is "ROM.mif";

begin
	dado <= rom(to_integer(unsigned(endereco)));
	--dado(23 downto 16) <= rom(endereco+1);
	--dado(15 downto 8) <= rom(endereco+2);
	--dado(7 downto 0) <= rom(endereco+3);

end rtl;
