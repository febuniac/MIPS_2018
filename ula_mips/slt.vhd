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
		a, b     : in std_logic_vector((DATA_WIDTH-1) downto 0);
		result   : out std_logic_vector((DATA_WIDTH-1) downto 0)
	);

end entity;

architecture rtl of slt is

signal result_adder, c_out_adder : std_logic_vector(31 downto 0);

signal temp, overflow : std_logic;

begin

full_adder: entity work.full_adder
		Port map(a => a, b => b, c_in => '1', result => result_adder, c_out => c_out_adder);
	
	overflow <= c_out_adder(30) xor c_out_adder(31);
	temp <= result_adder(31) xor overflow;
	result <= "0000000000000000000000000000000"& temp;

end rtl;