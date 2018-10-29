library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shifter26 is
	generic (
		DATA_WIDTH : natural := 26
	);
  port (
	A : in std_logic_vector (DATA_WIDTH-1 downto 0);
	B : out std_logic_vector (DATA_WIDTH-1 downto 0)
  );
end entity;

architecture shifterarch of shifter26  is

begin

	B <= A(DATA_WIDTH-3 downto 0) & "00";

end architecture;