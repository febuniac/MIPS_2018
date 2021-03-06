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
		a, b     : in std_logic_vector((DATA_WIDTH-1) downto 0);
		c_in : in std_logic;
		result, c_out : out std_logic_vector((DATA_WIDTH-1) downto 0);
		overflow : out std_logic
	);

end entity;

architecture rtl of full_adder is

signal c_out_aux, result_aux : std_logic_vector((DATA_WIDTH-1) downto 0);

begin
	
	c_out_aux(0) <= (a(0) and c_in) or (b(0) and c_in) or (a(0) and b(0));
	c_out_aux(DATA_WIDTH-1 downto 1) <= ((a(DATA_WIDTH-1 downto 1) and c_out_aux(DATA_WIDTH-2 downto 0)) or (b(DATA_WIDTH-1 downto 1) and c_out_aux(DATA_WIDTH-2 downto 0)) or (a(DATA_WIDTH-1 downto 1) and b(DATA_WIDTH-1 downto 1)));

	result_aux(0) <= (a(0) xor b(0)) xor c_in;
	result_aux(DATA_WIDTH-1 downto 1) <= (a(DATA_WIDTH-1 downto 1) xor b(DATA_WIDTH-1 downto 1)) xor c_out_aux(DATA_WIDTH-2 downto 0);
	
	overflow <= ((NOT a(31)) AND (NOT b(31)) AND result_aux(31)) OR (a(31) AND b(31) AND (NOT result_aux(31)));
	
	c_out <= c_out_aux;
	
	result <= result_aux;
	
end rtl;
