-- Quartus Prime VHDL Template
-- Signed Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity full_adder is

	generic
	(
		DATA_WIDTH : natural := 32
	);

	port 
	(
		a, b     : in signed	((DATA_WIDTH-1) downto 0);
		c_in : in std_logic;
		result, c_out : out signed ((DATA_WIDTH-1) downto 0);
	);

end entity;

architecture rtl of full_adder is
begin

	result(0) <= (a(0) xor b(0)) xor c_in;
	result(DATA_WIDTH-1 downto 1) <= (a(DATA_WIDTH-1 downto 1) xor b(DATA_WIDTH-1 downto 1)) xor c_in;
	
	c_out(0) <= (a(0) and c_in) or (b(0) and c_in) or (a(0) and b(0));
	c_out(DATA_WIDTH-1 downto 1) <= (a(DATA_WIDTH-1 downto 1) and c_out(DATA_WIDTH-2 downto 0) or (b(DATA_WIDTH-1 downto 1) and c_out(DATA_WIDTH-2 downto 0)) or (a(DATA_WIDTH-1 downto 1) and b(DATA_WIDTH-1 downto 1));

end rtl;
