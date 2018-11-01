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
		tmp(0) := "00000000000000000000000000000000"; -- nop
		tmp(1) := b"100011_00000_00010_0000000000000001"; -- poe em r2 o que estava na memoria r0 + 1
		tmp(2) := b"100011_00000_00001_0000000000000100"; -- poe em r1 o que estava na memoria r0 + 4
		tmp(3) := b"000000_00001_00010_00011_00000_100000"; -- r1+r2 no r3 (add)
		tmp(4) := b"000000_00001_00010_00100_00000_100010"; --r1-r2 no r4 (sub)
		tmp(5) := b"000000_00001_00010_00101_00000_100100"; --r1 and r2 no r5 (and)
		tmp(6) := b"000000_00001_00010_00110_00000_100101"; --r1 or r2 no r6 (or)
		tmp(7) := b"000000_00010_00001_00111_00000_101010"; --r1 slt r2 no r7 (slt)
		tmp(8) := b"000100_00011_00100_0000000000000001"; -- beq r3 e r4
		tmp(9) := b"000010_00000000000000000000001001"; -- jmp para 9
		tmp(10) := b"101011_00000_00011_0000000000000101"; --sw
		tmp(11) := b"000000_00000_00000_01000_00000_100000"; -- r0+r0 no r8 (add)
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
