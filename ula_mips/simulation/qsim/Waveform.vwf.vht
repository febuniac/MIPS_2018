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
-- Generated on "11/23/2018 17:32:36"
                                                             
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
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL dadoescritonoreg : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL end1 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL end2 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL end3 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL entrada1_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL entrada2_ULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL instrucao : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(17 DOWNTO 0);
SIGNAL saida : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL saida2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seletor : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(17 DOWNTO 0);
COMPONENT mips_teste
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	dadoescritonoreg : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	end1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	end2 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	end3 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	entrada1_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	entrada2_ULA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	instrucao : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
	saida : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	saida2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seletor : OUT STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mips_teste
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	dadoescritonoreg => dadoescritonoreg,
	end1 => end1,
	end2 => end2,
	end3 => end3,
	entrada1_ULA => entrada1_ULA,
	entrada2_ULA => entrada2_ULA,
	HEX0 => HEX0,
	HEX1 => HEX1,
	instrucao => instrucao,
	KEY => KEY,
	LEDG => LEDG,
	LEDR => LEDR,
	saida => saida,
	saida2 => saida2,
	seletor => seletor,
	SW => SW
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 30000 ps;
	FOR i IN 1 TO 32
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 30000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 30000 ps;
	END LOOP;
	CLOCK_50 <= '0';
	WAIT FOR 30000 ps;
	CLOCK_50 <= '1';
WAIT;
END PROCESS t_prcs_CLOCK_50;
END mips_teste_arch;
