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
			tmp(0):=   "10000000000000000000000000100000"; --nop
			tmp(1):=   "10000000000000000000000000100000"; --nop
			tmp(2):=   "10001100000010100000000000000000"; --lw $t2, 0($zero) # obtem 1 pra efeitos, ram(0) = 1 obrigatório
			tmp(3):=   "10000000000000000000000000100000"; --nop
			tmp(4):=   "10000000000000000000000000100000"; --nop
			tmp(5):=   "10000000000000000000000000100000"; --nop
			tmp(6):=   "10000000000000000000000000100000"; --nop
			tmp(7):=   "00100001010010110000000000000010"; --addi $t3, $t2, 2 # gera 3 (123)
			tmp(8):=   "10000000000000000000000000100000"; --nop
			tmp(9):=   "10000000000000000000000000100000"; --nop
			tmp(10):=   "10000000000000000000000000100000"; --nop
			tmp(11):=   "10000000000000000000000000100000"; --nop
			tmp(12):=   "00000001011010110110000000100000"; --add $t4, $t3, $t3 # gera 6 (336)
			tmp(13):=   "10000000000000000000000000100000";
			tmp(14):=   "10000000000000000000000000100000"; --nop
			tmp(15):=   "10000000000000000000000000100000";
			tmp(16):=   "10000000000000000000000000100000";
			--tmp(16):=   "00100101100011010000000000000001"; --subi $t5, $t4, 1 # gera 5 (615)
			--tmp(17):=   "10000000000000000000000000100000";
			--tmp(18):=   "10000000000000000000000000100000";
			--tmp(19):=   "10000000000000000000000000100000"; --nop
			--tmp(20):=   "10000000000000000000000000100000";
			--tmp(21):=   "10000000000000000000000000100000";
			tmp(17):=   "00101001100011100000000000000110"; --slti $t6, $t4, 6 # gera 0 (660)
			tmp(18):=   "10000000000000000000000000100000";
			tmp(19):=   "10000000000000000000000000100000";
			tmp(20):=   "10000000000000000000000000100000";
			tmp(21):=   "10000000000000000000000000100000";
			tmp(22):=   "00110001110011110000000000000001"; --andi $t7, $t6, 1 # gera 0 (010)
			tmp(23):=   "10000000000000000000000000100000"; 
			tmp(24):=   "10000000000000000000000000100000";
			tmp(25):=   "10000000000000000000000000100000";
			tmp(26):=   "10000000000000000000000000100000";
			tmp(27):=   "00110101110011110000000000000001"; -- ori $t7, $t6, 1 # gera 1 (011)
		return tmp;
	end init_rom;	 
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
