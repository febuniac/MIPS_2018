library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fd_ctrl is
port( 
        op_code : in std_logic_vector(5 downto 0);  
		  saida_fluxo : out std_logic_vector(8 downto 0)
        );
end fd_ctrl;

architecture Behavioral of fd_ctrl is

signal op_code_aux, mux1, mux2, habEscReg, mux3, mux4, beq, habLeiMEM, habEscMEM : std_logic;
signal ULAop : std_logic_vector(1 downto 0);

begin

	op_code_aux <= NOT (op_code(5) OR op_code(4) OR op_code(3) OR op_code(2) OR op_code(1) OR op_code(0));
	
	mux1 <= '1' when op_code = "000010" else
			  '0';
	mux2 <= '1' when op_code_aux = '1' else
			  '0';
	habEscReg <= '1' when (op_code_aux = '1' or op_code = "100011") else
					 '0';
	mux3 <= '1' when op_code(5 downto 4) = "10" else
			  '0';
	mux4 <= '1' when op_code = "100011" else
	        '0';
	beq <= '1' when op_code = "000010" else
			 '0';
	habLeiMEM <= '1' when op_code = "100011" else
	             '0'; 
	habEscMEM <= '1' when op_code = "101011" else
	             '0';
	ULAop <= "00" when op_code(5 downto 4) = "10" else
				"01" when op_code = "000100" else
				"10" when op_code_aux = '1' else
				"00";
				
	saida_fluxo <= habEscReg & mux4 & beq & habLeiMEM & habEscMEM & mux2 & ULAop & mux3;
				
end Behavioral;