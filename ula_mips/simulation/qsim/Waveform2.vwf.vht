-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/25/2018 18:54:00"
                                                             
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
SIGNAL A_aux : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL B_aux : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL beq_teste : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL funct_aux : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL habEscMEM_teste : STD_LOGIC;
SIGNAL habEscReg_teste : STD_LOGIC;
SIGNAL habLeiMEM_teste : STD_LOGIC;
SIGNAL mux1_teste : STD_LOGIC;
SIGNAL mux2_teste : STD_LOGIC;
SIGNAL mux3_teste : STD_LOGIC;
SIGNAL mux4_teste : STD_LOGIC;
SIGNAL op_code_aux : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL saida : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ula_ctrl_teste : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ULAop_teste : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL zero : STD_LOGIC;
COMPONENT mips_teste
	PORT (
	A_aux : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	B_aux : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	beq_teste : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	funct_aux : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	habEscMEM_teste : OUT STD_LOGIC;
	habEscReg_teste : OUT STD_LOGIC;
	habLeiMEM_teste : OUT STD_LOGIC;
	mux1_teste : OUT STD_LOGIC;
	mux2_teste : OUT STD_LOGIC;
	mux3_teste : OUT STD_LOGIC;
	mux4_teste : OUT STD_LOGIC;
	op_code_aux : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	reset : IN STD_LOGIC;
	saida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	ula_ctrl_teste : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	ULAop_teste : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	zero : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mips_teste
	PORT MAP (
-- list connections between master ports and signals
	A_aux => A_aux,
	B_aux => B_aux,
	beq_teste => beq_teste,
	clk => clk,
	funct_aux => funct_aux,
	habEscMEM_teste => habEscMEM_teste,
	habEscReg_teste => habEscReg_teste,
	habLeiMEM_teste => habLeiMEM_teste,
	mux1_teste => mux1_teste,
	mux2_teste => mux2_teste,
	mux3_teste => mux3_teste,
	mux4_teste => mux4_teste,
	op_code_aux => op_code_aux,
	reset => reset,
	saida => saida,
	ula_ctrl_teste => ula_ctrl_teste,
	ULAop_teste => ULAop_teste,
	zero => zero
	);
-- op_code_aux[5]
t_prcs_op_code_aux_5: PROCESS
BEGIN
	op_code_aux(5) <= '1';
WAIT;
END PROCESS t_prcs_op_code_aux_5;
-- op_code_aux[4]
t_prcs_op_code_aux_4: PROCESS
BEGIN
	op_code_aux(4) <= '1';
WAIT;
END PROCESS t_prcs_op_code_aux_4;
-- op_code_aux[3]
t_prcs_op_code_aux_3: PROCESS
BEGIN
	op_code_aux(3) <= '0';
WAIT;
END PROCESS t_prcs_op_code_aux_3;
-- op_code_aux[2]
t_prcs_op_code_aux_2: PROCESS
BEGIN
	op_code_aux(2) <= '1';
WAIT;
END PROCESS t_prcs_op_code_aux_2;
-- op_code_aux[1]
t_prcs_op_code_aux_1: PROCESS
BEGIN
	op_code_aux(1) <= '0';
WAIT;
END PROCESS t_prcs_op_code_aux_1;
-- op_code_aux[0]
t_prcs_op_code_aux_0: PROCESS
BEGIN
	op_code_aux(0) <= '0';
WAIT;
END PROCESS t_prcs_op_code_aux_0;
-- funct_aux[5]
t_prcs_funct_aux_5: PROCESS
BEGIN
	funct_aux(5) <= '1';
WAIT;
END PROCESS t_prcs_funct_aux_5;
-- funct_aux[4]
t_prcs_funct_aux_4: PROCESS
BEGIN
	funct_aux(4) <= '0';
WAIT;
END PROCESS t_prcs_funct_aux_4;
-- funct_aux[3]
t_prcs_funct_aux_3: PROCESS
BEGIN
	funct_aux(3) <= '0';
	WAIT FOR 810000 ps;
	funct_aux(3) <= '1';
	WAIT FOR 180000 ps;
	funct_aux(3) <= '0';
WAIT;
END PROCESS t_prcs_funct_aux_3;
-- funct_aux[2]
t_prcs_funct_aux_2: PROCESS
BEGIN
	funct_aux(2) <= '0';
	WAIT FOR 390000 ps;
	funct_aux(2) <= '1';
	WAIT FOR 420000 ps;
	funct_aux(2) <= '0';
WAIT;
END PROCESS t_prcs_funct_aux_2;
-- funct_aux[1]
t_prcs_funct_aux_1: PROCESS
BEGIN
	funct_aux(1) <= '0';
	WAIT FOR 220000 ps;
	funct_aux(1) <= '1';
	WAIT FOR 170000 ps;
	funct_aux(1) <= '0';
	WAIT FOR 420000 ps;
	funct_aux(1) <= '1';
	WAIT FOR 180000 ps;
	funct_aux(1) <= '0';
WAIT;
END PROCESS t_prcs_funct_aux_1;
-- funct_aux[0]
t_prcs_funct_aux_0: PROCESS
BEGIN
	funct_aux(0) <= '0';
	WAIT FOR 610000 ps;
	funct_aux(0) <= '1';
	WAIT FOR 200000 ps;
	funct_aux(0) <= '0';
WAIT;
END PROCESS t_prcs_funct_aux_0;
-- A_aux[31]
t_prcs_A_aux_31: PROCESS
BEGIN
	A_aux(31) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_31;
-- A_aux[30]
t_prcs_A_aux_30: PROCESS
BEGIN
	A_aux(30) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_30;
-- A_aux[29]
t_prcs_A_aux_29: PROCESS
BEGIN
	A_aux(29) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_29;
-- A_aux[28]
t_prcs_A_aux_28: PROCESS
BEGIN
	A_aux(28) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_28;
-- A_aux[27]
t_prcs_A_aux_27: PROCESS
BEGIN
	A_aux(27) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_27;
-- A_aux[26]
t_prcs_A_aux_26: PROCESS
BEGIN
	A_aux(26) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_26;
-- A_aux[25]
t_prcs_A_aux_25: PROCESS
BEGIN
	A_aux(25) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_25;
-- A_aux[24]
t_prcs_A_aux_24: PROCESS
BEGIN
	A_aux(24) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_24;
-- A_aux[23]
t_prcs_A_aux_23: PROCESS
BEGIN
	A_aux(23) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_23;
-- A_aux[22]
t_prcs_A_aux_22: PROCESS
BEGIN
	A_aux(22) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_22;
-- A_aux[21]
t_prcs_A_aux_21: PROCESS
BEGIN
	A_aux(21) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_21;
-- A_aux[20]
t_prcs_A_aux_20: PROCESS
BEGIN
	A_aux(20) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_20;
-- A_aux[19]
t_prcs_A_aux_19: PROCESS
BEGIN
	A_aux(19) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_19;
-- A_aux[18]
t_prcs_A_aux_18: PROCESS
BEGIN
	A_aux(18) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_18;
-- A_aux[17]
t_prcs_A_aux_17: PROCESS
BEGIN
	A_aux(17) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_17;
-- A_aux[16]
t_prcs_A_aux_16: PROCESS
BEGIN
	A_aux(16) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_16;
-- A_aux[15]
t_prcs_A_aux_15: PROCESS
BEGIN
	A_aux(15) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_15;
-- A_aux[14]
t_prcs_A_aux_14: PROCESS
BEGIN
	A_aux(14) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_14;
-- A_aux[13]
t_prcs_A_aux_13: PROCESS
BEGIN
	A_aux(13) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_13;
-- A_aux[12]
t_prcs_A_aux_12: PROCESS
BEGIN
	A_aux(12) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_12;
-- A_aux[11]
t_prcs_A_aux_11: PROCESS
BEGIN
	A_aux(11) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_11;
-- A_aux[10]
t_prcs_A_aux_10: PROCESS
BEGIN
	A_aux(10) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_10;
-- A_aux[9]
t_prcs_A_aux_9: PROCESS
BEGIN
	A_aux(9) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_9;
-- A_aux[8]
t_prcs_A_aux_8: PROCESS
BEGIN
	A_aux(8) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_8;
-- A_aux[7]
t_prcs_A_aux_7: PROCESS
BEGIN
	A_aux(7) <= '0';
	WAIT FOR 640000 ps;
	A_aux(7) <= '1';
WAIT;
END PROCESS t_prcs_A_aux_7;
-- A_aux[6]
t_prcs_A_aux_6: PROCESS
BEGIN
	A_aux(6) <= '0';
	WAIT FOR 320000 ps;
	A_aux(6) <= '1';
	WAIT FOR 320000 ps;
	A_aux(6) <= '0';
	WAIT FOR 320000 ps;
	A_aux(6) <= '1';
WAIT;
END PROCESS t_prcs_A_aux_6;
-- A_aux[5]
t_prcs_A_aux_5: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		A_aux(5) <= '0';
		WAIT FOR 160000 ps;
		A_aux(5) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	A_aux(5) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_5;
-- A_aux[4]
t_prcs_A_aux_4: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		A_aux(4) <= '0';
		WAIT FOR 80000 ps;
		A_aux(4) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A_aux(4) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_4;
-- A_aux[3]
t_prcs_A_aux_3: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A_aux(3) <= '0';
		WAIT FOR 40000 ps;
		A_aux(3) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A_aux(3) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_3;
-- A_aux[2]
t_prcs_A_aux_2: PROCESS
BEGIN
LOOP
	A_aux(2) <= '0';
	WAIT FOR 20000 ps;
	A_aux(2) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_aux_2;
-- A_aux[1]
t_prcs_A_aux_1: PROCESS
BEGIN
	A_aux(1) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_1;
-- A_aux[0]
t_prcs_A_aux_0: PROCESS
BEGIN
	A_aux(0) <= '0';
WAIT;
END PROCESS t_prcs_A_aux_0;
-- B_aux[31]
t_prcs_B_aux_31: PROCESS
BEGIN
	B_aux(31) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_31;
-- B_aux[30]
t_prcs_B_aux_30: PROCESS
BEGIN
	B_aux(30) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_30;
-- B_aux[29]
t_prcs_B_aux_29: PROCESS
BEGIN
	B_aux(29) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_29;
-- B_aux[28]
t_prcs_B_aux_28: PROCESS
BEGIN
	B_aux(28) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_28;
-- B_aux[27]
t_prcs_B_aux_27: PROCESS
BEGIN
	B_aux(27) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_27;
-- B_aux[26]
t_prcs_B_aux_26: PROCESS
BEGIN
	B_aux(26) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_26;
-- B_aux[25]
t_prcs_B_aux_25: PROCESS
BEGIN
	B_aux(25) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_25;
-- B_aux[24]
t_prcs_B_aux_24: PROCESS
BEGIN
	B_aux(24) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_24;
-- B_aux[23]
t_prcs_B_aux_23: PROCESS
BEGIN
	B_aux(23) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_23;
-- B_aux[22]
t_prcs_B_aux_22: PROCESS
BEGIN
	B_aux(22) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_22;
-- B_aux[21]
t_prcs_B_aux_21: PROCESS
BEGIN
	B_aux(21) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_21;
-- B_aux[20]
t_prcs_B_aux_20: PROCESS
BEGIN
	B_aux(20) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_20;
-- B_aux[19]
t_prcs_B_aux_19: PROCESS
BEGIN
	B_aux(19) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_19;
-- B_aux[18]
t_prcs_B_aux_18: PROCESS
BEGIN
	B_aux(18) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_18;
-- B_aux[17]
t_prcs_B_aux_17: PROCESS
BEGIN
	B_aux(17) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_17;
-- B_aux[16]
t_prcs_B_aux_16: PROCESS
BEGIN
	B_aux(16) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_16;
-- B_aux[15]
t_prcs_B_aux_15: PROCESS
BEGIN
	B_aux(15) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_15;
-- B_aux[14]
t_prcs_B_aux_14: PROCESS
BEGIN
	B_aux(14) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_14;
-- B_aux[13]
t_prcs_B_aux_13: PROCESS
BEGIN
	B_aux(13) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_13;
-- B_aux[12]
t_prcs_B_aux_12: PROCESS
BEGIN
	B_aux(12) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_12;
-- B_aux[11]
t_prcs_B_aux_11: PROCESS
BEGIN
	B_aux(11) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_11;
-- B_aux[10]
t_prcs_B_aux_10: PROCESS
BEGIN
	B_aux(10) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_10;
-- B_aux[9]
t_prcs_B_aux_9: PROCESS
BEGIN
	B_aux(9) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_9;
-- B_aux[8]
t_prcs_B_aux_8: PROCESS
BEGIN
	B_aux(8) <= '0';
	WAIT FOR 520000 ps;
	B_aux(8) <= '1';
WAIT;
END PROCESS t_prcs_B_aux_8;
-- B_aux[7]
t_prcs_B_aux_7: PROCESS
BEGIN
	B_aux(7) <= '0';
	WAIT FOR 260000 ps;
	B_aux(7) <= '1';
	WAIT FOR 260000 ps;
	B_aux(7) <= '0';
	WAIT FOR 260000 ps;
	B_aux(7) <= '1';
WAIT;
END PROCESS t_prcs_B_aux_7;
-- B_aux[6]
t_prcs_B_aux_6: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		B_aux(6) <= '0';
		WAIT FOR 140000 ps;
		B_aux(6) <= '1';
		WAIT FOR 120000 ps;
	END LOOP;
	B_aux(6) <= '0';
	WAIT FOR 120000 ps;
	B_aux(6) <= '1';
	WAIT FOR 140000 ps;
	B_aux(6) <= '0';
	WAIT FOR 120000 ps;
	B_aux(6) <= '1';
WAIT;
END PROCESS t_prcs_B_aux_6;
-- B_aux[5]
t_prcs_B_aux_5: PROCESS
BEGIN
	B_aux(5) <= '0';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 2
	LOOP
		B_aux(5) <= '1';
		WAIT FOR 60000 ps;
		B_aux(5) <= '0';
		WAIT FOR 60000 ps;
	END LOOP;
	B_aux(5) <= '1';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 2
	LOOP
		B_aux(5) <= '0';
		WAIT FOR 60000 ps;
		B_aux(5) <= '1';
		WAIT FOR 60000 ps;
	END LOOP;
	B_aux(5) <= '0';
	WAIT FOR 80000 ps;
	FOR i IN 1 TO 2
	LOOP
		B_aux(5) <= '1';
		WAIT FOR 60000 ps;
		B_aux(5) <= '0';
		WAIT FOR 60000 ps;
	END LOOP;
	B_aux(5) <= '1';
WAIT;
END PROCESS t_prcs_B_aux_5;
-- B_aux[4]
t_prcs_B_aux_4: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		B_aux(4) <= '0';
		WAIT FOR 40000 ps;
		FOR i IN 1 TO 2
		LOOP
			B_aux(4) <= '1';
			WAIT FOR 40000 ps;
			B_aux(4) <= '0';
			WAIT FOR 20000 ps;
		END LOOP;
		B_aux(4) <= '1';
		WAIT FOR 40000 ps;
		FOR i IN 1 TO 2
		LOOP
			B_aux(4) <= '0';
			WAIT FOR 40000 ps;
			B_aux(4) <= '1';
			WAIT FOR 20000 ps;
		END LOOP;
	END LOOP;
	B_aux(4) <= '0';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 2
	LOOP
		B_aux(4) <= '1';
		WAIT FOR 40000 ps;
		B_aux(4) <= '0';
		WAIT FOR 20000 ps;
	END LOOP;
	B_aux(4) <= '1';
	WAIT FOR 40000 ps;
	FOR i IN 1 TO 2
	LOOP
		B_aux(4) <= '0';
		WAIT FOR 40000 ps;
		B_aux(4) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	B_aux(4) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_4;
-- B_aux[3]
t_prcs_B_aux_3: PROCESS
BEGIN
	B_aux(3) <= '0';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 6
	LOOP
		B_aux(3) <= '1';
		WAIT FOR 20000 ps;
		B_aux(3) <= '0';
		WAIT FOR 20000 ps;
		B_aux(3) <= '1';
		WAIT FOR 40000 ps;
		B_aux(3) <= '0';
		WAIT FOR 20000 ps;
		B_aux(3) <= '1';
		WAIT FOR 20000 ps;
		B_aux(3) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	B_aux(3) <= '1';
WAIT;
END PROCESS t_prcs_B_aux_3;
-- B_aux[2]
t_prcs_B_aux_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		B_aux(2) <= '0';
		WAIT FOR 40000 ps;
		B_aux(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	B_aux(2) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_2;
-- B_aux[1]
t_prcs_B_aux_1: PROCESS
BEGIN
LOOP
	B_aux(1) <= '0';
	WAIT FOR 20000 ps;
	B_aux(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B_aux_1;
-- B_aux[0]
t_prcs_B_aux_0: PROCESS
BEGIN
	B_aux(0) <= '0';
WAIT;
END PROCESS t_prcs_B_aux_0;
END mips_teste_arch;
