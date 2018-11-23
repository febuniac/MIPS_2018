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
			tmp(0):=   "10001100000010100000000000000000"; --lw $t2, 0($zero) # obtem 1 pra efeitos, ram(0) = 1 obrigatório
			tmp(1):=   "10000000000000000000000000100000"; --nop
			tmp(2):=   "10000000000000000000000000100000"; --nop
			tmp(3):=   "10000000000000000000000000100000"; --nop
			tmp(4):=   "10000000000000000000000000100000"; --nop
			tmp(5):=   "00000001010010100101100000100000"; --add $t3, $t2, $t2 # gera 2
			tmp(6):=   "10000000000000000000000000100000";
			tmp(7):=   "10000000000000000000000000100000";
			tmp(8):=   "10000000000000000000000000100000";
			tmp(9):=   "10000000000000000000000000100000";
			tmp(10):=   "00000010001100000001100000100000";
			tmp(11):=   "10000000000000000000000000100000";
			tmp(12):=   "10000000000000000000000000100000";
			tmp(13):=   "10000000000000000000000000100000";
			tmp(14):=   "10000000000000000000000000100000";
			tmp(15):=   "00000000011000110100000000100000";
			tmp(16):=   "10000000000000000000000000100000";
			tmp(17):=   "10000000000000000000000000100000";
			tmp(18):=   "10000000000000000000000000100000";
			tmp(19):=   "10000000000000000000000000100000";
			tmp(20):=   "00000001000000110100100000100000";
			tmp(21):=   "10000000000000000000000000100000";
			tmp(22):=   "10000000000000000000000000100000";
			tmp(23):=   "10000000000000000000000000100000";
			tmp(24):=   "10000000000000000000000000100000";
			tmp(25):=   "00000000000100000100100000100010";
			tmp(26):=   "10000000000000000000000000100000";
			tmp(27):=   "10000000000000000000000000100000";
			tmp(28):=   "10000000000000000000000000100000";
			tmp(29):=   "10000000000000000000000000100000";
			tmp(30):=   "00000001000000110100100000100010";
			tmp(31):=   "10000000000000000000000000100000";
			tmp(32):=   "10000000000000000000000000100000";
			tmp(33):=   "10000000000000000000000000100000";
			tmp(34):=   "10000000000000000000000000100000";
			tmp(35):=   "00000000011010000100100000100010";
			tmp(36):=   "10000000000000000000000000100000";
			tmp(37):=   "10000000000000000000000000100000";
			tmp(38):=   "10000000000000000000000000100000";
			tmp(39):=   "10000000000000000000000000100000";
			tmp(40):=   "00000001000100010100100000100100";
			tmp(41):=   "10000000000000000000000000100000";
			tmp(42):=   "10000000000000000000000000100000";
			tmp(43):=   "10000000000000000000000000100000";
			tmp(44):=   "10000000000000000000000000100000";
			tmp(45):=   "00000001000100010100100000100101";
			tmp(46):=   "10000000000000000000000000100000";
			tmp(47):=   "10000000000000000000000000100000";
			tmp(48):=   "10000000000000000000000000100000";
			tmp(49):=   "10000000000000000000000000100000";
			tmp(50):=   "00000000011010000100100000101010";
			tmp(51):=   "10000000000000000000000000100000";
			tmp(52):=   "10000000000000000000000000100000";
			tmp(53):=   "10000000000000000000000000100000";
			tmp(54):=   "10000000000000000000000000100000";
			tmp(55):=   "00000001000000110100100000101010";
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
	dado <= std_logic_vector (rom(to_integer(unsigned(endereco))));
	--dado(23 downto 16) <= rom(endereco+1);
	--dado(15 downto 8) <= rom(endereco+2);
	--dado(7 downto 0) <= rom(endereco+3);

end rtl;
