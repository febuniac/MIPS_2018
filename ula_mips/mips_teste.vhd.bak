library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mips_teste is
port( 
		  --clko : out std_logic; 
        --Reg3, saida2Regs, instrucao, entrada1_ULA, entrada2_ULA, saida, saidaExtensor, dadolido : out std_logic_vector(31 downto 0);
		  --zero : out std_logic;
		  --ula_control : out std_logic_vector (3 downto 0);
		  --mux_ulamem : out std_logic;
		  --end1, end2, end3 : out std_logic_vector (4 downto 0);
		  --saida_habLeMem: out std_logic;
		  --teste_PC:out std_logic_vector(31 downto 0);
		  --saida_habEscReg, saida_mux2: out std_logic;
		  
		  SW: in std_logic_vector(17 downto 0);
		LEDR: out std_logic_vector(17 downto 0);
		LEDG: out std_logic_vector(7 downto 0);
		KEY: in std_logic_vector(3 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: out std_logic_vector(6 downto 0);
		CLOCK_50: in std_logic
        );
end mips_teste;

architecture Behavioral of mips_teste is

signal zero_aux, mux1_aux, mux2_aux, mux3_aux, mux4_aux, habEscReg_aux, beq_aux, habLeiMEM_aux, habEscMEM_aux, and_beq : std_logic;

signal ULAop_aux : std_logic_vector(1 downto 0);

signal ula_ctrl_aux : std_logic_vector(3 downto 0);

signal saida_mux_RtRd : std_logic_vector (4 downto 0);

signal saida_shifter1 : std_logic_vector (25 downto 0);

signal saida_somador1, saida_somador2, saida_aux, dado_aux, saida_PC, saidaA_regs, saidaB_regs, mux_Rt_im_aux, saida_mux_beq, saida_extensor, saida_mux_PC, saida_shifter2, saida_mux_ULA, dado_lido_aux, dado_lido_mem : std_logic_vector(31 downto 0);
signal controlador_mem: std_logic;
signal clk: std_logic;
begin


divisor: entity work.divisorGenerico
       Port map(clk => CLOCK_50, saida_clk => clk);
		 
		 --clko <= clk;
		 
fd_ctrl: entity work.fd_ctrl
		Port map(op_code => dado_aux(31 downto 26), mux1 => mux1_aux, mux2 => mux2_aux, habEscReg => habEscReg_aux, 
					mux3 => mux3_aux, mux4 => mux4_aux, beq => beq_aux, habLeiMEM => habLeiMEM_aux, 
					habEscMEM => habEscMEM_aux, ULAop => ULAop_aux);

PC: entity work.PC
		Port map(d => saida_mux_PC, clk=> clk, q => saida_PC);
		
mux_PC: entity work.mux2
		Port map(A => saida_mux_beq, B => saida_somador1(31 downto 28) & saida_shifter1 & "00" , SEL => mux1_aux, Y => saida_mux_PC);					

memoriaInst: entity work.memoria_de_instrucoes
		Port map(endereco => saida_PC(9 downto 2), dado => dado_aux);
		
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
		Port map (clk => clk, addr => to_integer(unsigned(saida_aux(8 downto 2))), data => saidaB_regs, we => habEscMEM_aux and controlador_mem, q => dado_lido_mem);
		
--saida <= saida_aux;
--teste_PC <= saida_PC;
--entrada1_ULA <= saidaA_regs;
--entrada2_ULA <= mux_Rt_im_aux;
--saida2Regs <= saidaB_regs;
--saidaExtensor <= saida_extensor;
--mux_ulamem <= mux4_aux;
--end1 <= dado_aux(25 downto 21);
--end2 <= dado_aux(20 downto 16);
--end3 <= saida_mux_RtRd;
--Reg3 <= saida_mux_ULA;
--saida_mux2 <= mux2_aux;
--instrucao <= dado_aux;
--ula_control <= ula_ctrl_aux;
--dadolido <= dado_lido_aux;
--saida_habLeMem <= habLeiMEM_aux;
--saida_habEscReg <= habEscReg_aux;

controlador1: entity work.controlador_io
    port map(clk => clk, endereco => saida_aux, SW => SW, enable_mem => controlador_mem, dado_lido_mem => dado_lido_mem, dado_lido => dado_lido_aux, dado_escrito => saidaB_regs, KEY => KEY, HEX0 => HEX0, HEX1 => HEX1, HEX2 => HEX2, HEX3 => HEX3, HEX4 => HEX4, HEX5 => HEX5, HEX6 => HEX6, HEX7=> HEX7, LEDR => LEDR, LEDG => LEDG);
end Behavioral;