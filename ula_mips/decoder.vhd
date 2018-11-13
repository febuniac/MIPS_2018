library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoder is
	Generic (Vector_Size: natural:=32);
	port ( 
			endereco_entrada:in  STD_LOGIC_VECTOR((Vector_Size-1) downto 0); --16 bits
			memoria_leitura:out  STD_LOGIC;
			seven_segments: out  STD_LOGIC;
			chave: out  STD_LOGIC
			
			
	);
end entity;

architecture decoder_arch of decoder is
signal conv_end : natural;

begin
	conv_end <= to_integer(unsigned(endereco_entrada));
	process (all)
	begin
		if (conv_end < 256) then
				memoria_leitura <= '1';
				seven_segments <= '0';
				chave <= '0';
		elsif (conv_end = 256) then
				seven_segments <= '1';
				memoria_leitura <= '0';
				chave <= '0';
		elsif (conv_end = 257) then
				memoria_leitura <= '0';
				seven_segments <= '0';
				chave <= '1';
		else
				memoria_leitura <= '0';
				seven_segments <= '0';
				chave <= '0';
		end if;
	end process;

end decoder_arch;

