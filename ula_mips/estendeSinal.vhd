library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity estendeSinal is

  port (
    A : in std_logic_vector (15 downto 0);
    B : out std_logic_vector (31 downto 0)
  );
end entity;

architecture estendeSinalarch of estendeSinal  is

begin
  --B <= std_logic_vector(resize(signed(A), B'length));
  B(15 downto 0) <= A(15 downto 0);
  B(31 downto 16) <= "0000000000000000";
end architecture;