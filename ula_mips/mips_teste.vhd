library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mips_teste is
port( 
	--	  clko : out std_logic; 
	--		entrada1_ULA, entrada2_ULA, saida : out std_logic_vector(31 downto 0);
--		  zero : out std_logic;
--		  ula_control : out std_logic_vector (3 downto 0);
--		  end1, end2, end3 : out std_logic_vector (4 downto 0);
--		  saida_habLeMem: out std_logic;
--		  teste_PC:out std_logic_vector(31 downto 0);
--		  saida_habEscReg, habesc,saida_mux2: out std_logic;
--		  op, mem_addr : out std_logic_vector(5 downto 0);
		--	imm : out std_logic_vector(2 downto 0);
			--ula_control : out std_logic_vector(3 downto 0);

--		saida, entrada1_ULA, entrada2_ULA , dadoescritonoreg, instrucao: out std_logic_Vector(31 downto 0);
--		saida2 : out std_logic_vector(3 downto 0);
		
--		seletor : out std_logic;
--		SW: in std_logic_vector(17 downto 0);
		LEDR: out std_logic_vector(17 downto 0);
--		LEDG: out std_logic_vector(7 downto 0);
--		KEY: in std_logic_vector(3 downto 0);
--		HEX0, HEX1, HEX2: out std_logic_vector(6 downto 0);
		HEX0, HEX1, HEX2, HEX4, HEX6 : out std_logic_vector(6 downto 0);
		CLOCK_50: in std_logic
		
  
        );
end mips_teste;

architecture Behavioral of mips_teste is

signal zero_aux, mux1_aux, mux2_aux, mux3_aux, mux4_aux, habEscReg_aux, beq_aux, habLeiMEM_aux, habEscMEM_aux, and_beq : std_logic;

signal saida_fluxo : std_logic_vector(12 downto 0);

signal ula_ctrl_aux : std_logic_vector(3 downto 0);

signal saida_mux_RtRd : std_logic_vector (4 downto 0);

signal saida_shifter1 : std_logic_vector (25 downto 0);

signal saida_IF : std_logic_vector(63 downto 0);

signal saida_EX : std_logic_vector(149 downto 0);

signal saida_EX_MEM : std_logic_vector(106 downto 0);

signal saida_MEM_WB : std_logic_vector(70 downto 0);

signal saida_somador1, saida_somador2, saida_aux, dado_aux, saida_PC, saidaA_regs, saidaB_regs, mux_Rt_im_aux, saida_mux_beq, saida_extensor, saida_mux_PC, saida_shifter2, saida_mux_ULA, dado_lido_aux, dado_lido_mem : std_logic_vector(31 downto 0);

signal controlador_mem: std_logic;

signal clk: std_logic;

begin


divisor: entity work.divisorGenerico
       Port map(clk => CLOCK_50, saida_clk => clk);
		 
		 --clko <= clk;
	--	 clk <= CLOCK_50;
		 
fd_ctrl: entity work.fd_ctrl
		Port map(op_code => saida_IF(31 downto 26), saida_fluxo => saida_fluxo);

PC: entity work.PC
		Port map(d => saida_mux_PC, clk=> clk, q => saida_PC);
		
mux_PC: entity work.mux2
		Port map(A => saida_mux_beq, B => saida_somador1(31 downto 28) & saida_shifter1 & "00", SEL => saida_fluxo(9), Y => saida_mux_PC);					

memoriaInst: entity work.memoria_de_instrucoes
		Port map(endereco => saida_PC(9 downto 2), dado => dado_aux);
		
somador1: entity work.somador
		Port map(A => "00000000000000000000000000000100", B => saida_PC, Y => saida_somador1);
		
IF_ID: entity work.registrador
Generic map(DATA_WIDTH => 64) Port map(data(31 downto 0) => dado_aux, data(63 downto 32) => saida_somador1, we=>'1', clk => clk, reset => '0', q => saida_IF);
		
shifter1: entity work.shifter26
		Port map(A => dado_aux(25 downto 0), B => saida_shifter1);

mux_RtRd: entity work.mux2de5
		Port map(A => saida_EX(9 downto 5), B => saida_EX(4 downto 0), SEL => saida_EX(141), Y => saida_mux_RtRd);
		
extensor: entity work.estendeSinal
		Port map(A => saida_IF(15 downto 0), B => saida_extensor);
		
regs: entity work.bancoRegistradores
		Port map(clk => clk, enderecoA => saida_IF(25 downto 21), enderecoB => saida_IF(20 downto 16), enderecoC => saida_MEM_WB(4 downto 0), dadoEscritaC => saida_mux_ULA, escreveC => saida_MEM_WB(70), saidaA => saidaA_regs, saidaB => saidaB_regs);

ID_EX: entity work.registrador
Generic map(DATA_WIDTH => 150) Port map(data(4 downto 0) => saida_IF(15 downto 11),  data(9 downto 5) => saida_IF(20 downto 16), data(41 downto 10) => saida_extensor, data(73 downto 42) => saidaB_regs, data(105 downto 74) => saidaA_regs, data(137 downto 106) => saida_IF(63 downto 32), data(141 downto 138) => saida_fluxo(3 downto 0), data(144 downto 142) => saida_fluxo(6 downto 4), data(146 downto 145) => saida_fluxo(8 downto 7), data(149 downto 147) => saida_fluxo(12 downto 10), clk => clk, we=>'1', reset => '0', q => saida_EX);
		
mux_Rt_im: entity work.mux2
		Port map(A => saida_EX(73 downto 42), B => saida_EX(41 downto 10), SEL => saida_EX(138), Y => mux_Rt_im_aux);
		
shifter2: entity work.shifter
		Port map(A => saida_EX(41 downto 10), B => saida_shifter2);		
		
somador2: entity work.somador
		Port map(A => saida_EX(137 downto 106), B => saida_shifter2, Y => saida_somador2);	

ula_ctrl: entity work.ula_ctrl
		Port map(ULAop => saida_EX(140 downto 139), imm => saida_EX(149 downto 147), funct => saida_EX(15 downto 10), ula_ctrl => ula_ctrl_aux);

ula: entity work.ula_mips
		Port map(A => saida_EX(105 downto 74), B => mux_Rt_im_aux, ula_ctrl => ula_ctrl_aux, Q => saida_aux, zero => zero_aux);

mux_ULA: entity work.mux2
		Port map(A => saida_MEM_WB(36 downto 5), B => saida_MEM_WB(68 downto 37), SEL => saida_MEM_WB(69), Y => saida_mux_ULA);
		
EX_MEM: entity work.registrador
Generic map(DATA_WIDTH => 107) Port map(data(4 downto 0) => saida_mux_RtRd, data(36 downto 5) => saida_EX(73 downto 42), data(68 downto 37) => saida_aux, data(69) => zero_aux, data(101 downto 70) => saida_somador2, data(104 downto 102) => saida_EX(144 downto 142), data(106 downto 105) => saida_EX(146 downto 145), clk => clk, we=>'1', reset => '0', q => saida_EX_MEM);

and_beq <= saida_EX_MEM(69) and saida_EX_MEM(104);

mux_beq: entity work.mux2
		Port map(A => saida_somador1, B =>  saida_EX_MEM(101 downto 70), SEL => and_beq, Y => saida_mux_beq);
		
memoriaDados: entity work.memoria_de_dados
		Port map (clk => clk, addr => to_integer(unsigned(saida_EX_MEM(44 downto 39))), data => saida_EX_MEM(36 downto 5), we => saida_EX_MEM(102), q => dado_lido_mem);

MEM_WB: entity work.registrador
Generic map(DATA_WIDTH => 71) Port map(data(4 downto 0) => saida_EX_MEM(4 downto 0), data(36 downto 5) => saida_EX_MEM(68 downto 37), data(68 downto 37) => dado_lido_mem, data(70 downto 69) => saida_EX_MEM(106 downto 105), clk => clk, we=>'1', reset => '0', q => saida_MEM_WB);
		
--saida <= saida_aux;
--saida2 <= saida_aux(3 downto 0);
--teste_PC <= saida_PC;
--saida1reg <= saidaA_regs;
--saida2reg <= saidaB_regs;
--entrada1_ULA <= saida_EX(105 downto 74);
--entrada2_ULA <= mux_Rt_im_aux;
--saidaExtensor <= saida_extensor;
--mux_ulamem <= saida_mux_ULA;
--end1 <= saida_IF(25 downto 21);
--end2 <= saida_IF(20 downto 16);
--end3 <= saida_MEM_WB(4 downto 0);
--seletor <= saida_MEM_WB(69);
--Reg3 <= saida_mux_ULA;
--saida_mux2 <= mux2_aux;
--saida_habEscReg <= saida_MEM_WB(70);
--habesc <= saida_fluxo(8);
--mem_addr <= saida_EX_MEM(44 downto 39);
--
--
--op <= saida_IF(31 downto 26);
--
--instrucao <= dado_aux;
--dadoescritonoreg <= saida_mux_ULA;
--ula_control <= ula_ctrl_aux;
--dadolido <= dado_lido_aux;
--saida_habLeMem <= habLeiMEM_aux;


--decoder : entity work.decodificador
	--port map( endereco, mem, seg7, leds, sw, key);
	
--imm <= saida_EX(149 downto 147);
--ula_control <= ula_ctrl_aux;
	
display0 : entity work.conversorHex7seg
    Port map (saida7seg => HEX0, dadoHex =>saida_aux(3 downto 0));
	 
display1 : entity work.conversorHex7seg
    Port map (saida7seg => HEX1, dadoHex =>mux_Rt_im_aux(3 downto 0));
	 
display2 : entity work.conversorHex7seg
    Port map (saida7seg => HEX2, dadoHex =>saida_EX(77 downto 74));
	 
display4: entity work.conversorHex7seg
	Port map(saida7seg => HEX4, dadoHex => dado_lido_mem(3 downto 0));
	
display6: entity work.conversorHex7seg
	Port map(saida7seg => HEX6, dadoHex => saida_mux_ULA(3 downto 0));
	 
LEDR(0) <= saida_IF(0); 
LEDR(1) <= saida_IF(1);
LEDR(2) <= saida_IF(2);
LEDR(3) <= saida_IF(3);
LEDR(4) <= saida_IF(4);
LEDR(5) <= saida_IF(5); -- ATE AQUI É O FUNCT REPRESENTADO NOS LEDS

LEDR(12) <= saida_IF(26);
LEDR(13) <= saida_IF(27);
LEDR(14) <= saida_IF(28);
LEDR(15) <= saida_IF(29);
LEDR(16) <= saida_IF(30);
LEDR(17) <= saida_IF(31); -- AQUI É O OPCODE REPRESENTADO NOS LEDS



--controlador1: entity work.controlador_io
--    port map(clk => clk, endereco => saida_EX_MEM(68 downto 37), SW => SW, enable_mem => controlador_mem, dado_lido_mem => dado_lido_mem, dado_lido => dado_lido_aux, dado_escrito => saida_EX_MEM(36 downto 5), KEY => KEY, HEX0 => HEX0, HEX1 => HEX1, HEX2 => HEX2, HEX3 => HEX3, HEX4 => HEX4, HEX5 => HEX5, HEX6 => HEX6, HEX7=> HEX7, LEDR => LEDR, LEDG => LEDG);

end Behavioral;