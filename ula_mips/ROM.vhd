library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

entity ROM is
	port ( 
			clk:   in  STD_LOGIC;
			A:   in  STD_LOGIC;
			letra: out  STD_LOGIC_VECTOR(7 downto 0)
	);
end entity;

architecture ROMarch of ROM is

	signal dff0: STD_LOGIC;
	signal dff1: STD_LOGIC;
	signal qff0: STD_LOGIC;
	signal qff1: STD_LOGIC;
	signal q_address: STD_LOGIC_VECTOR(2 downto 0);
	
	component flipflop is
	port ( 
			clk:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			q: out  STD_LOGIC;
			not_q:   out STD_LOGIC
	);
	end component;
	
	component rom_seq is

    generic
    (
        DATA_WIDTH : natural := 10;
        ADDR_WIDTH : natural := 3
    );

    port (
        clk: in std_logic;
        addr: in natural range 0 to 2**ADDR_WIDTH-1;
        q: out std_logic_vector (DATA_WIDTH-1 downto 0)
    );
	end component;

	begin
		q_address(0) <= A;
		q_address(1) <= qff0;
		q_address(2) <= qff1;

		uROM: rom_seq port map (clk => clk, addr => to_integer(unsigned(q_address)), 
									q(7 downto 0) => letra, q(9) => dff1, q(8) => dff0);
		
		uff0 : flipflop port map (d => dff0, clk => clk, q => qff0);
		
		uff1 : flipflop port map (d => dff1, clk => clk, q => qff1);
		
end architecture;
