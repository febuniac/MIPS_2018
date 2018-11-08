library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decodificador is

	generic 
	(
		ADDR_WIDTH : natural := 32
	);

	port 
	(
		endereco	: in std_logic_vector(ADDR_WIDTH-1 downto 0);
		mem   : out std_logic;
		seg7  : out std_logic;
		leds  : out std_logic;
		sw    : out std_logic;
		key   : out std_logic
	);

end entity;

architecture rtl of decodificador is
signal end_n: natural;
begin
   end_n <= to_integer(unsigned(endereco));
	process(all)
	begin
	if(end_n < 1024) then
	   mem  <= '1';
		seg7 <= '0';
		leds <= '0';
		sw <= '0';
		key <= '0';
	elsif(end_n = 1024) then
	   mem <= '0';
		seg7 <= '0';
		leds <= '1';
		sw <= '0';
		key <= '0';
	elsif(end_n = 1025) then
		mem <= '0';
		seg7 <= '0';
		leds <= '0';
		sw <= '1';
		key <= '0';
	elsif(end_n = 1026) then
		mem <= '0';
		seg7 <= '0';
		leds <= '0';
		sw <= '0';
		key <= '1';
	elsif(end_n = 1027) then
		mem <= '0';
		seg7 <= '1';
		leds <= '0';
		sw <= '0';
		key <= '0';
	else
		mem <= '0';
		seg7 <= '0';
		leds <= '0';
		sw <= '0';
		key <= '0';
	end if;
	end process;
	
	

end rtl;
