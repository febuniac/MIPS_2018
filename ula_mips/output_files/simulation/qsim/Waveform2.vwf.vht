-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/23/2018 10:55:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips_teste
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_teste_vhd_vec_tst IS
END mips_teste_vhd_vec_tst;
ARCHITECTURE mips_teste_arch OF mips_teste_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clko : STD_LOGIC;
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL dadolido : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL end1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL end2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL end3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL entrada1_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entrada2_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL habesc : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX6 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX7 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL instrucao : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL mux_ulamem : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL op : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Reg3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida1reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida2reg : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida_habEscReg : STD_LOGIC;
SIGNAL saida_habLeMem : STD_LOGIC;
SIGNAL saida_mux2 : STD_LOGIC;
SIGNAL saidaExtensor : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL teste_PC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ula_control : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT mips_teste
	PORT (
	clko : OUT STD_LOGIC;
	CLOCK_50 : IN STD_LOGIC;
	dadolido : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	end1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	end2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	end3 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	entrada1_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	entrada2_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	habesc : OUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX6 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX7 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	instrucao : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	mux_ulamem : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	op : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	Reg3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida1reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida2reg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida_habEscReg : OUT STD_LOGIC;
	saida_habLeMem : OUT STD_LOGIC;
	saida_mux2 : OUT STD_LOGIC;
	saidaExtensor : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
	teste_PC : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ula_control : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mips_teste
	PORT MAP (
-- list connections between master ports and signals
	clko => clko,
	CLOCK_50 => CLOCK_50,
	dadolido => dadolido,
	end1 => end1,
	end2 => end2,
	end3 => end3,
	entrada1_ULA => entrada1_ULA,
	entrada2_ULA => entrada2_ULA,
	habesc => habesc,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	HEX6 => HEX6,
	HEX7 => HEX7,
	instrucao => instrucao,
	KEY => KEY,
	LEDG => LEDG,
	LEDR => LEDR,
	mux_ulamem => mux_ulamem,
	op => op,
	Reg3 => Reg3,
	saida => saida,
	saida1reg => saida1reg,
	saida2reg => saida2reg,
	saida_habEscReg => saida_habEscReg,
	saida_habLeMem => saida_habLeMem,
	saida_mux2 => saida_mux2,
	saidaExtensor => saidaExtensor,
	SW => SW,
	teste_PC => teste_PC,
	ula_control => ula_control,
	zero => zero
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	FOR i IN 1 TO 33
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 30000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
-- SW[17]
t_prcs_SW_17: PROCESS
BEGIN
	SW(17) <= '0';
WAIT;
END PROCESS t_prcs_SW_17;
-- SW[16]
t_prcs_SW_16: PROCESS
BEGIN
	SW(16) <= '0';
WAIT;
END PROCESS t_prcs_SW_16;
-- SW[15]
t_prcs_SW_15: PROCESS
BEGIN
	SW(15) <= '0';
WAIT;
END PROCESS t_prcs_SW_15;
-- SW[14]
t_prcs_SW_14: PROCESS
BEGIN
	SW(14) <= '0';
WAIT;
END PROCESS t_prcs_SW_14;
-- SW[13]
t_prcs_SW_13: PROCESS
BEGIN
	SW(13) <= '0';
WAIT;
END PROCESS t_prcs_SW_13;
-- SW[12]
t_prcs_SW_12: PROCESS
BEGIN
	SW(12) <= '0';
WAIT;
END PROCESS t_prcs_SW_12;
-- SW[11]
t_prcs_SW_11: PROCESS
BEGIN
	SW(11) <= '0';
WAIT;
END PROCESS t_prcs_SW_11;
-- SW[10]
t_prcs_SW_10: PROCESS
BEGIN
	SW(10) <= '0';
WAIT;
END PROCESS t_prcs_SW_10;
-- SW[9]
t_prcs_SW_9: PROCESS
BEGIN
	SW(9) <= '0';
WAIT;
END PROCESS t_prcs_SW_9;
-- SW[8]
t_prcs_SW_8: PROCESS
BEGIN
	SW(8) <= '0';
WAIT;
END PROCESS t_prcs_SW_8;
-- SW[7]
t_prcs_SW_7: PROCESS
BEGIN
	SW(7) <= '0';
WAIT;
END PROCESS t_prcs_SW_7;
-- SW[6]
t_prcs_SW_6: PROCESS
BEGIN
	SW(6) <= '0';
WAIT;
END PROCESS t_prcs_SW_6;
-- SW[5]
t_prcs_SW_5: PROCESS
BEGIN
	SW(5) <= '0';
WAIT;
END PROCESS t_prcs_SW_5;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
	SW(4) <= '0';
WAIT;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
	SW(2) <= '0';
WAIT;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
	SW(1) <= '0';
WAIT;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END mips_teste_arch;
