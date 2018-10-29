library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity somador is

    Port ( A   : in  STD_LOGIC_VECTOR (31 downto 0);
           B   : in  STD_LOGIC_VECTOR (31 downto 0);
           Y   : out STD_LOGIC_VECTOR (31 downto 0)
			  );
end somador;

architecture Behavioral of somador is
begin
    Y <= A + B;
end Behavioral;