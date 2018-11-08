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
		tmp(0) := "10001100000000010000000000000100"; 
		tmp(1) := "00000000001000010001000000100000"; 
		tmp(2) := "00000000010000100001000000100000";
		tmp(3) := "00000000010000100001000000100000"; 
		tmp(4) := "00000000010000100001000000100000"; 
		tmp(5) := "00000000010000100001000000100000"; 
		tmp(6) := "00000000010000100001100000100000";
		tmp(7) := "00000000011000110001100000100000"; 
		tmp(8) := "00000000000000000100000000100000";
		tmp(9) := "00000000001000000100100000100000"; 
		tmp(10) := "00010000010010000000000000000101";
		tmp(11) := "00000001001010010100100000100000";
		tmp(12) := "00000001000000010100000000100000";
		tmp(13) := "10101100000010010000010000000000";
		tmp(14) := "00001000000000000000000000001011";
		tmp(15) := "00000000000000000100100000100000";
		tmp(16) := "00010000011010010000000000000100";
		tmp(17) := "00000001001000010100100000100000";
		tmp(18) := "10101100000010010000010000000011";
		tmp(19) := "00001000000000000000000000010000";
		tmp(20) := "00001000000000000000000000010100";
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
