library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controlador_io is

	generic 
	(
		ADDR_WIDTH : natural := 32;
		DATA_WIDTH : natural := 32
	);

	port 
	(
		endereco	: in std_logic_vector(ADDR_WIDTH-1 downto 0);
		dado_lido     : out std_logic_vector(DATA_WIDTH-1 downto 0);
		dado_escrito  : in std_logic_vector(DATA_WIDTH-1 downto 0);
		enable_mem: out std_logic;
		dado_lido_mem: in std_logic_vector(DATA_WIDTH-1 downto 0);
		clk: in std_logic;
		SW: in std_logic_vector(17 downto 0);
		LEDR: out std_logic_vector(17 downto 0);
		LEDG: out std_logic_vector(7 downto 0);
		KEY: in std_logic_vector(3 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: out std_logic_vector(6 downto 0)
	);

end entity;

architecture rtl of controlador_io is

component decodificador is
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
end component;

component registrador is

	generic 
	(
		DATA_WIDTH : natural := 32
	);

	port 
	(
		data	: in std_logic_vector(DATA_WIDTH-1 downto 0);
		q     : out std_logic_vector(DATA_WIDTH-1 downto 0);
		clk   : in std_logic;
		reset : in std_logic := '0'
	);
end component;

component conversorHex7Seg is
    port
    (
        -- Input ports
        dadoHex : in  std_logic_vector(3 downto 0);
        apaga   : in  std_logic := '0';
        negativo : in  std_logic := '0';
        overFlow : in  std_logic := '0';
        -- Output ports
        saida7seg : out std_logic_vector(6 downto 0)  -- := (others => '1')
    );
end component;

signal en_mem, en_seg7, en_leds, en_sw, en_key: std_logic := '0';
signal sw_dados, key_dados, hex_dados: std_logic_vector(31 downto 0) := "00000000000000000000000000000000";
begin	
	
   decodificador1 : decodificador 
	generic map
	(
	   ADDR_WIDTH => 32
	)
	port map 
	(
		endereco => endereco,
		mem => en_mem,
		seg7 => en_seg7,
		leds => en_leds,
		sw => en_sw,
		key => en_key
	);
	
	reg_leds: registrador
	generic map (
		DATA_WIDTH => 26
	)
	port map
	(
	   data => dado_escrito(25 downto 0),
		clk => clk,
		reset => '0',
		q(7 downto 0) => LEDG(7 downto 0),
		q(25 downto 8) => LEDR(17 downto 0)
	);

	reg_seg7: registrador
	generic map (
		DATA_WIDTH => 32
	)
	port map
	(
	   data => dado_escrito(31 downto 0),
		clk => clk,
		reset => '0',
		q => hex_dados
	);
	
   conv_HEX0: conversorHex7Seg
	port map
	(
	   dadoHex => hex_dados(3 downto 0),
		saida7seg => HEX0
	);
	 
	conv_HEX1: conversorHex7Seg
	port map
	(
	   dadoHex => hex_dados(7 downto 4),
		saida7seg => HEX1
	);
	
	conv_HEX2: conversorHex7Seg
	port map
	(
	   dadoHex => hex_dados(11 downto 8),
		saida7seg => HEX2
	);
	
	conv_HEX3: conversorHex7Seg
	port map
	(
	   dadoHex => hex_dados(15 downto 12),
		saida7seg => HEX3
	);
	
	conv_HEX4: conversorHex7Seg
	port map
	(
	   dadoHex => hex_dados(19 downto 16),
		saida7seg => HEX4
	);
	
	conv_HEX5: conversorHex7Seg
	port map
	(
	   dadoHex => hex_dados(23 downto 20),
		saida7seg => HEX5
	);
	
	conv_HEX6: conversorHex7Seg
	port map
	(
	   dadoHex => hex_dados(27 downto 24),
		saida7seg => HEX6
	);
	
	conv_HEX7: conversorHex7Seg
	port map
	(
	   dadoHex => hex_dados(31 downto 28),
		saida7seg => HEX7
	);
	
	sw_dados(17 downto 0) <= SW;
   key_dados(3 downto 0) <= KEY;
   	
	dado_lido <= dado_lido_mem when en_mem = '1' else 
	             sw_dados when en_sw = '1' else
					 key_dados when en_key = '1' else 
				    "00000000000000000000000000000000";
					 
	enable_mem <= en_mem;
end rtl;
