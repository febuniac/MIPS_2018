library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity slt is

	generic
	(
		DATA_WIDTH : natural := 32
	);

	port 
	(
		a, b     : in signed	((DATA_WIDTH-1) downto 0);
		result   : out signed ((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of slt is

signal temp : std_logic_vector(31 downto 0);

signal overflow : std_logic;

full_adder: entity work.full_adder
		Port map(a => a, b => b, c_in => '1', result => result_adder, c_out => c_out_adder);

begin
	
	overflow <= c_out_adder(30) xor c_out_adder(31);
	temp <= result_adder(31) xor overflow;
	result <= "000000000000000000000000000000"& temp(0);

end rtl;