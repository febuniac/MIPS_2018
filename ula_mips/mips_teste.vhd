library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mips_teste is
port( 
		  clk, reset: in std_logic; 
        saida : out std_logic_vector(31 downto 0);
		  zero : out std_logic;

		  mux1_teste, mux2_teste, mux3_teste, mux4_teste, habEscReg_teste, beq_teste, habLeiMEM_teste, habEscMEM_teste : out std_logic;
		  
		  ULAop_teste : out std_logic_vector(1 downto 0);

		  ula_ctrl_teste : out std_logic_vector(3 downto 0);
		  
		  op_code_aux, funct_aux : in std_logic_vector(5 downto 0);

		  A_aux, B_aux : in std_logic_vector(31 downto 0)
        );
end mips_teste;

architecture Behavioral of mips_teste is

signal mux1_aux, mux2_aux, mux3_aux, mux4_aux, habEscReg_aux, beq_aux, habLeiMEM_aux, habEscMEM_aux : std_logic;

signal ULAop_aux : std_logic_vector(1 downto 0);

signal ula_ctrl_aux : std_logic_vector(3 downto 0);

begin

fd_ctrl: entity work.fd_ctrl
		Port map(op_code => op_code_aux, mux1 => mux1_aux, mux2 => mux2_aux, habEscReg => habEscReg_aux, 
					mux3 => mux3_aux, mux4 => mux4_aux, beq => beq_aux, habLeiMEM => habLeiMEM_aux, 
					habEscMEM => habEscMEM_aux, ULAop => ULAop_aux);
					
ula_ctrl: entity work.ula_ctrl
		Port map(ULAop => ULAop_aux, funct => funct_aux, ula_ctrl => ula_ctrl_aux);
		
ula: entity work.ula_mips
		Port map(A => A_aux, B => B_aux, ula_ctrl => ula_ctrl_aux, Q => saida, zero => zero);

		
mux1_teste <= mux1_aux;
mux2_teste <= mux2_aux;
mux3_teste <= mux3_aux;
mux4_teste <= mux4_aux;
habEscReg_teste <= habEscReg_aux;
beq_teste <= beq_aux;
habLeiMEM_teste <= habLeiMEM_aux;
habEscMEM_teste <= habEscMEM_aux;
ULAop_teste <= ULAop_aux;
ula_ctrl_teste <= ula_ctrl_aux;

end Behavioral;