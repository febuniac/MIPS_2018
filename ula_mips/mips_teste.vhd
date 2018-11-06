library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mips_teste is
port( 
			    -- Entradas (placa)
		  CLOCK_50 : in STD_LOGIC;
		  KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
		  SW: in STD_LOGIC_VECTOR(17 DOWNTO 0);
		  
		  -- Saidas (placa)
	 	  LEDR  : out STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
		  LEDG  : out STD_LOGIC_VECTOR(8 DOWNTO 0) := (others => '0');
		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7 : OUT STD_LOGIC_VECTOR(6 downto 0);
	 
		  clk : in std_logic; 
        instrucao, soma1 : out std_logic_vector(31 downto 0)
		  --zero : out std_logic;

        );
end mips_teste;

architecture Behavioral of mips_teste is

signal auxOverFlow, zero_aux, mux1_aux, mux2_aux, mux3_aux, mux4_aux, habEscReg_aux, beq_aux, habLeiMEM_aux, habEscMEM_aux, and_beq : std_logic;

signal ULAop_aux : std_logic_vector(1 downto 0);

signal ula_ctrl_aux, auxSaida : std_logic_vector(3 downto 0);

signal saida_mux_RtRd : std_logic_vector (4 downto 0);

signal saida_shifter1 : std_logic_vector (25 downto 0);

signal saida_somador1, saida_somador2, saida_aux, dado_aux, saida_PC, saidaA_regs, saidaB_regs, mux_Rt_im_aux, saida_mux_beq, saida_extensor, saida_mux_PC, saida_shifter2, saida_mux_ULA, dado_lido_aux : std_logic_vector(31 downto 0);

begin

fd_ctrl: entity work.fd_ctrl
		Port map(op_code => dado_aux(31 downto 26), mux1 => mux1_aux, mux2 => mux2_aux, habEscReg => habEscReg_aux, 
					mux3 => mux3_aux, mux4 => mux4_aux, beq => beq_aux, habLeiMEM => habLeiMEM_aux, 
					habEscMEM => habEscMEM_aux, ULAop => ULAop_aux);

PC: entity work.PC
		Port map(d => saida_mux_PC, clk=> clk, q => saida_PC);
		
mux_PC: entity work.mux2
		Port map(A => saida_mux_beq, B => saida_somador1(31 downto 28) & saida_shifter1 & "00" , SEL => mux1_aux, Y => saida_mux_PC);					

memoriaInst: entity work.memoria_de_instrucoes
		Port map(endereco => to_integer(unsigned(saida_PC(9 downto 2))), dado => dado_aux);
		
somador1: entity work.somador
		Port map(A => "00000000000000000000000000000100", B => saida_PC, Y => saida_somador1);
		
shifter1: entity work.shifter26
		Port map(A => dado_aux(25 downto 0), B => saida_shifter1);

mux_RtRd: entity work.mux2de5
		Port map(A => dado_aux(20 downto 16), B => dado_aux(15 downto 11), SEL => mux2_aux, Y => saida_mux_RtRd);
		
extensor: entity work.estendeSinal
		Port map(A => dado_aux(15 downto 0), B => saida_extensor);
		
regs: entity work.bancoRegistradores
		Port map(clk => clk, enderecoA => dado_aux(25 downto 21), enderecoB => dado_aux(20 downto 16), enderecoC => saida_mux_RtRd, dadoEscritaC => saida_mux_ULA, escreveC => habEscReg_aux, saidaA => saidaA_regs, saidaB => saidaB_regs);

mux_Rt_im: entity work.mux2
		Port map(A => saidaB_regs, B => saida_extensor, SEL => mux3_aux, Y => mux_Rt_im_aux);
		
shifter2: entity work.shifter
		Port map(A => saida_extensor, B => saida_shifter2);		
		
somador2: entity work.somador
		Port map(A => saida_somador1, B => saida_shifter2, Y => saida_somador2);	
	
ula_ctrl: entity work.ula_ctrl
		Port map(ULAop => ULAop_aux, funct => dado_aux(5 downto 0), ula_ctrl => ula_ctrl_aux);

ula: entity work.ula_mips
		Port map(A => saidaA_regs, B => mux_Rt_im_aux, ula_ctrl => ula_ctrl_aux, Q => saida_aux, zero => zero_aux);

mux_ULA: entity work.mux2
		Port map(A => saida_aux, B => dado_lido_aux, SEL => mux4_aux, Y => saida_mux_ULA);

and_beq <= beq_aux and zero_aux;

mux_beq: entity work.mux2
		Port map(A => saida_somador1, B => saida_somador2, SEL => and_beq, Y => saida_mux_beq);
		
memoriaDados: entity work.memoria_de_dados
		Port map (clk => clk, endereco => to_integer(unsigned(saida_aux(10 downto 2))), dado_escrito => saidaB_regs, ler => habLeiMEM_aux, escrever => habEscMEM_aux, dado_lido => dado_lido_aux);
		

--display7 : entity work.conversorHex7seg
--PORT MAP(dadoHex => SYNTHESIZED_WIRE_17,
--		 saida7seg => HEX7);
--
--display6 : entity work.conversorHex7seg
--PORT MAP(dadoHex => SYNTHESIZED_WIRE_16,
--		 saida7seg => HEX6);
--		 
--
--display5 : entity work.conversorHex7seg
--PORT MAP(dadoHex => SYNTHESIZED_WIRE_15,
--		 saida7seg => HEX5);
--
--
--display4 : entity work.conversorHex7seg
--PORT MAP(dadoHex => SYNTHESIZED_WIRE_14,
--		 saida7seg => HEX4);
--
--
--
--display3 : entity work.conversorHex7seg
--PORT MAP(dadoHex => SYNTHESIZED_WIRE_13,
--		 saida7seg => HEX3);
--
--
--display2 : entity work.conversorHex7seg
--PORT MAP(dadoHex => SYNTHESIZED_WIRE_12,
--		 saida7seg => HEX2);
--
--
--display1 : entity work.conversorHex7seg
--PORT MAP(dadoHex => SYNTHESIZED_WIRE_11,
--		 saida7seg => HEX1);
--
--display0 : entity work.conversorHex7seg
--PORT MAP(dadoHex => SYNTHESIZED_WIRE_10,
--		 saida7seg => HEX0);
	 
soma1 <= saida_somador1;
instrucao <= dado_aux;

end Behavioral;