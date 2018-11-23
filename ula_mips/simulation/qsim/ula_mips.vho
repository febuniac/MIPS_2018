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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "11/23/2018 01:42:08"

-- 
-- Device: Altera EP4CE115F29C8 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips_teste IS
    PORT (
	clko : BUFFER std_logic;
	Reg3 : BUFFER std_logic_vector(31 DOWNTO 0);
	mux_ulamem : BUFFER std_logic_vector(31 DOWNTO 0);
	saida1reg : BUFFER std_logic_vector(31 DOWNTO 0);
	saida2reg : BUFFER std_logic_vector(31 DOWNTO 0);
	instrucao : BUFFER std_logic_vector(31 DOWNTO 0);
	entrada1_ULA : BUFFER std_logic_vector(31 DOWNTO 0);
	entrada2_ULA : BUFFER std_logic_vector(31 DOWNTO 0);
	saida : BUFFER std_logic_vector(31 DOWNTO 0);
	saidaExtensor : BUFFER std_logic_vector(31 DOWNTO 0);
	dadolido : BUFFER std_logic_vector(31 DOWNTO 0);
	zero : BUFFER std_logic;
	ula_control : BUFFER std_logic_vector(3 DOWNTO 0);
	end1 : BUFFER std_logic_vector(4 DOWNTO 0);
	end2 : BUFFER std_logic_vector(4 DOWNTO 0);
	end3 : BUFFER std_logic_vector(4 DOWNTO 0);
	saida_habLeMem : BUFFER std_logic;
	teste_PC : BUFFER std_logic_vector(31 DOWNTO 0);
	saida_habEscReg : BUFFER std_logic;
	habesc : BUFFER std_logic;
	saida_mux2 : BUFFER std_logic;
	op : BUFFER std_logic_vector(5 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END mips_teste;

ARCHITECTURE structure OF mips_teste IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clko : std_logic;
SIGNAL ww_Reg3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_mux_ulamem : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida1reg : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida2reg : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instrucao : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entrada1_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entrada2_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saidaExtensor : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dadolido : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_ula_control : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_end1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_end2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_end3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_saida_habLeMem : std_logic;
SIGNAL ww_teste_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida_habEscReg : std_logic;
SIGNAL ww_habesc : std_logic;
SIGNAL ww_saida_mux2 : std_logic;
SIGNAL ww_op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \somador1|Y[2]~0_combout\ : std_logic;
SIGNAL \somador1|Y[8]~13\ : std_logic;
SIGNAL \somador1|Y[9]~14_combout\ : std_logic;
SIGNAL \memoriaInst|rom~25_combout\ : std_logic;
SIGNAL \memoriaInst|rom~54_combout\ : std_logic;
SIGNAL \memoriaInst|rom~55_combout\ : std_logic;
SIGNAL \memoriaInst|rom~20_combout\ : std_logic;
SIGNAL \memoriaInst|rom~11_combout\ : std_logic;
SIGNAL \memoriaInst|rom~21_combout\ : std_logic;
SIGNAL \memoriaInst|rom~22_combout\ : std_logic;
SIGNAL \memoriaInst|rom~23_combout\ : std_logic;
SIGNAL \memoriaInst|rom~18_combout\ : std_logic;
SIGNAL \memoriaInst|rom~19_combout\ : std_logic;
SIGNAL \memoriaInst|rom~14_combout\ : std_logic;
SIGNAL \memoriaInst|rom~15_combout\ : std_logic;
SIGNAL \memoriaInst|rom~16_combout\ : std_logic;
SIGNAL \memoriaInst|rom~17_combout\ : std_logic;
SIGNAL \EX_MEM|q[72]~31\ : std_logic;
SIGNAL \EX_MEM|q[73]~33\ : std_logic;
SIGNAL \EX_MEM|q[74]~35\ : std_logic;
SIGNAL \EX_MEM|q[75]~37\ : std_logic;
SIGNAL \EX_MEM|q[76]~39\ : std_logic;
SIGNAL \EX_MEM|q[77]~41\ : std_logic;
SIGNAL \EX_MEM|q[78]~43\ : std_logic;
SIGNAL \EX_MEM|q[79]~44_combout\ : std_logic;
SIGNAL \memoriaInst|rom~48_combout\ : std_logic;
SIGNAL \memoriaInst|rom~49_combout\ : std_logic;
SIGNAL \memoriaInst|rom~50_combout\ : std_logic;
SIGNAL \memoriaInst|rom~51_combout\ : std_logic;
SIGNAL \memoriaInst|rom~52_combout\ : std_logic;
SIGNAL \memoriaInst|rom~53_combout\ : std_logic;
SIGNAL \memoriaInst|rom~45_combout\ : std_logic;
SIGNAL \memoriaInst|rom~46_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \fd_ctrl|op_code_aux~0_combout\ : std_logic;
SIGNAL \ID_EX|q[140]~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~26_combout\ : std_logic;
SIGNAL \memoriaInst|rom~27_combout\ : std_logic;
SIGNAL \memoriaInst|rom~28_combout\ : std_logic;
SIGNAL \memoriaInst|rom~29_combout\ : std_logic;
SIGNAL \memoriaInst|rom~30_combout\ : std_logic;
SIGNAL \memoriaInst|rom~33_combout\ : std_logic;
SIGNAL \memoriaInst|rom~34_combout\ : std_logic;
SIGNAL \memoriaInst|rom~35_combout\ : std_logic;
SIGNAL \memoriaInst|rom~36_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[0]~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~31_combout\ : std_logic;
SIGNAL \memoriaInst|rom~32_combout\ : std_logic;
SIGNAL \memoriaInst|rom~58_combout\ : std_logic;
SIGNAL \memoriaInst|rom~59_combout\ : std_logic;
SIGNAL \memoriaInst|rom~24_combout\ : std_logic;
SIGNAL \memoriaInst|rom~37_combout\ : std_logic;
SIGNAL \memoriaInst|rom~56_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[1]~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \memoriaInst|rom~38_combout\ : std_logic;
SIGNAL \memoriaInst|rom~39_combout\ : std_logic;
SIGNAL \memoriaInst|rom~40_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[3]~2_combout\ : std_logic;
SIGNAL \memoriaInst|rom~41_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[4]~3_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|registrador~41_combout\ : std_logic;
SIGNAL \regs|registrador~42_combout\ : std_logic;
SIGNAL \regs|registrador~43_combout\ : std_logic;
SIGNAL \regs|Equal1~0_combout\ : std_logic;
SIGNAL \regs|saidaB[0]~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~42_combout\ : std_logic;
SIGNAL \memoriaInst|rom~43_combout\ : std_logic;
SIGNAL \memoriaInst|rom~44_combout\ : std_logic;
SIGNAL \memoriaInst|rom~57_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|registrador~38_combout\ : std_logic;
SIGNAL \regs|registrador~39_combout\ : std_logic;
SIGNAL \regs|registrador~40_combout\ : std_logic;
SIGNAL \regs|Equal0~0_combout\ : std_logic;
SIGNAL \regs|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ula|full_adder|result[0]~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[1]~6_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[1]~7_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~8_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[0]~0_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[0]~7_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~10_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~11_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[31]~31_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[2]~2_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[3]~3_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[4]~4_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[5]~5_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[6]~6_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[7]~7_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~39_combout\ : std_logic;
SIGNAL \memoriaDados|ram~40_combout\ : std_logic;
SIGNAL \memoriaDados|ram~41_combout\ : std_logic;
SIGNAL \memoriaDados|ram~42_combout\ : std_logic;
SIGNAL \memoriaDados|ram~50_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[7]~7_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[7]~7_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~9_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[2]~12_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~1_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[6]~6_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[5]~5_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[4]~4_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[3]~3_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[2]~2_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~44_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[1]~1_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[1]~1_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[1]~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[0]~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[1]~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[2]~2_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[3]~3_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[4]~4_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[5]~5_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[6]~6_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~49_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[6]~6_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~48_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[5]~5_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~47_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[4]~4_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~46_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~45_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[2]~2_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~74_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[31]~31_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[31]~31_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~73_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[30]~30_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[30]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[30]~30_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~72_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[29]~29_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[29]~29_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[29]~29_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~71_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[28]~28_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[28]~28_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[28]~28_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~70_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[27]~27_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[27]~27_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[27]~27_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~69_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[26]~26_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[26]~26_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[26]~26_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~68_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[25]~25_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[25]~25_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[25]~25_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~67_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[24]~24_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[24]~24_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[24]~24_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~66_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[23]~23_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[23]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[23]~23_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~65_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[22]~22_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[22]~22_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[22]~22_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~64_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[21]~21_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[21]~21_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[21]~21_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~63_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[20]~20_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[20]~20_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[20]~20_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~62_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[19]~19_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[19]~19_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[19]~19_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~61_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[18]~18_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[18]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[18]~18_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~60_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[17]~17_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[17]~17_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[17]~17_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~59_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[16]~16_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[16]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[16]~16_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~58_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[15]~15_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[15]~15_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[15]~15_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~57_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[14]~14_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[14]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[14]~14_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~56_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[13]~13_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[13]~13_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[13]~13_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~55_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[12]~12_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[12]~12_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[12]~12_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~54_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[11]~11_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[11]~11_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[11]~11_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~53_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[10]~10_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[10]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[10]~10_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~52_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[9]~9_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[9]~9_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[9]~9_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~51_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[8]~8_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[8]~8_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[8]~8_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[7]~7_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[8]~8_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[9]~9_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[10]~10_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[11]~11_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[12]~12_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[13]~13_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[14]~14_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[15]~15_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[16]~16_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[17]~17_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[18]~18_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[19]~19_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[20]~20_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[21]~21_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[22]~22_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[23]~23_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[24]~24_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[25]~25_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[26]~26_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[27]~27_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[28]~28_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[29]~29_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[30]~30_combout\ : std_logic;
SIGNAL \ula|result_slt[0]~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux0~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux0~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~2_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[30]~6_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~0_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[28]~8_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~1_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~1_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~1_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~2_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~1_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~3_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~1_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~4_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~5_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~6_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~7_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~8_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~9_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~1_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~10_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~2_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~13_combout\ : std_logic;
SIGNAL \ula|zero~0_combout\ : std_logic;
SIGNAL \and_beq~combout\ : std_logic;
SIGNAL \mux_PC|Y[9]~2_combout\ : std_logic;
SIGNAL \memoriaInst|rom~10_combout\ : std_logic;
SIGNAL \memoriaInst|rom~12_combout\ : std_logic;
SIGNAL \EX_MEM|q[72]~30_combout\ : std_logic;
SIGNAL \PC|q[2]~0_combout\ : std_logic;
SIGNAL \somador1|Y[2]~1\ : std_logic;
SIGNAL \somador1|Y[3]~2_combout\ : std_logic;
SIGNAL \EX_MEM|q[73]~32_combout\ : std_logic;
SIGNAL \PC|q[3]~1_combout\ : std_logic;
SIGNAL \somador1|Y[3]~3\ : std_logic;
SIGNAL \somador1|Y[4]~4_combout\ : std_logic;
SIGNAL \EX_MEM|q[74]~34_combout\ : std_logic;
SIGNAL \PC|q[4]~2_combout\ : std_logic;
SIGNAL \somador1|Y[4]~5\ : std_logic;
SIGNAL \somador1|Y[5]~6_combout\ : std_logic;
SIGNAL \EX_MEM|q[75]~36_combout\ : std_logic;
SIGNAL \PC|q[5]~3_combout\ : std_logic;
SIGNAL \somador1|Y[5]~7\ : std_logic;
SIGNAL \somador1|Y[6]~8_combout\ : std_logic;
SIGNAL \EX_MEM|q[76]~38_combout\ : std_logic;
SIGNAL \mux_PC|Y[6]~0_combout\ : std_logic;
SIGNAL \somador1|Y[6]~9\ : std_logic;
SIGNAL \somador1|Y[7]~10_combout\ : std_logic;
SIGNAL \EX_MEM|q[77]~40_combout\ : std_logic;
SIGNAL \PC|q[7]~4_combout\ : std_logic;
SIGNAL \somador1|Y[7]~11\ : std_logic;
SIGNAL \somador1|Y[8]~12_combout\ : std_logic;
SIGNAL \EX_MEM|q[78]~42_combout\ : std_logic;
SIGNAL \mux_PC|Y[8]~1_combout\ : std_logic;
SIGNAL \memoriaInst|rom~13_combout\ : std_logic;
SIGNAL \memoriaInst|rom~47_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal4~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[13]~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram~43_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~2_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~2_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~11_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|sw~12_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \controlador1|decodificador1|LessThan0~0_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[3]~1_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[3]~2_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[0]~3_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[1]~4_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[1]~5_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[2]~6_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[2]~7_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[3]~8_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[3]~9_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[4]~10_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[5]~11_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[6]~12_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[7]~13_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[8]~14_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[9]~15_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[10]~16_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[11]~17_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[12]~18_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[13]~19_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[14]~20_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[15]~21_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[16]~22_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \controlador1|dado_lido[17]~23_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[18]~24_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[19]~25_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[20]~26_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[21]~27_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[22]~28_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[23]~29_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[24]~30_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[25]~31_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[26]~32_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[27]~33_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[28]~34_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[29]~35_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[30]~36_combout\ : std_logic;
SIGNAL \controlador1|dado_lido[31]~37_combout\ : std_logic;
SIGNAL \mux_PC|Y[0]~3_combout\ : std_logic;
SIGNAL \somador1|Y[9]~15\ : std_logic;
SIGNAL \somador1|Y[10]~16_combout\ : std_logic;
SIGNAL \EX_MEM|q[79]~45\ : std_logic;
SIGNAL \EX_MEM|q[80]~46_combout\ : std_logic;
SIGNAL \mux_PC|Y[10]~4_combout\ : std_logic;
SIGNAL \somador1|Y[10]~17\ : std_logic;
SIGNAL \somador1|Y[11]~18_combout\ : std_logic;
SIGNAL \EX_MEM|q[80]~47\ : std_logic;
SIGNAL \EX_MEM|q[81]~48_combout\ : std_logic;
SIGNAL \mux_PC|Y[11]~5_combout\ : std_logic;
SIGNAL \somador1|Y[11]~19\ : std_logic;
SIGNAL \somador1|Y[12]~20_combout\ : std_logic;
SIGNAL \EX_MEM|q[81]~49\ : std_logic;
SIGNAL \EX_MEM|q[82]~50_combout\ : std_logic;
SIGNAL \mux_PC|Y[12]~6_combout\ : std_logic;
SIGNAL \somador1|Y[12]~21\ : std_logic;
SIGNAL \somador1|Y[13]~22_combout\ : std_logic;
SIGNAL \EX_MEM|q[82]~51\ : std_logic;
SIGNAL \EX_MEM|q[83]~52_combout\ : std_logic;
SIGNAL \PC|q[13]~5_combout\ : std_logic;
SIGNAL \somador1|Y[13]~23\ : std_logic;
SIGNAL \somador1|Y[14]~24_combout\ : std_logic;
SIGNAL \EX_MEM|q[83]~53\ : std_logic;
SIGNAL \EX_MEM|q[84]~54_combout\ : std_logic;
SIGNAL \PC|q[14]~6_combout\ : std_logic;
SIGNAL \somador1|Y[14]~25\ : std_logic;
SIGNAL \somador1|Y[15]~26_combout\ : std_logic;
SIGNAL \EX_MEM|q[84]~55\ : std_logic;
SIGNAL \EX_MEM|q[85]~56_combout\ : std_logic;
SIGNAL \mux_PC|Y[15]~7_combout\ : std_logic;
SIGNAL \somador1|Y[15]~27\ : std_logic;
SIGNAL \somador1|Y[16]~28_combout\ : std_logic;
SIGNAL \EX_MEM|q[85]~57\ : std_logic;
SIGNAL \EX_MEM|q[86]~58_combout\ : std_logic;
SIGNAL \PC|q[16]~7_combout\ : std_logic;
SIGNAL \somador1|Y[16]~29\ : std_logic;
SIGNAL \somador1|Y[17]~30_combout\ : std_logic;
SIGNAL \EX_MEM|q[86]~59\ : std_logic;
SIGNAL \EX_MEM|q[87]~60_combout\ : std_logic;
SIGNAL \mux_PC|Y[17]~8_combout\ : std_logic;
SIGNAL \somador1|Y[17]~31\ : std_logic;
SIGNAL \somador1|Y[18]~32_combout\ : std_logic;
SIGNAL \EX_MEM|q[87]~61\ : std_logic;
SIGNAL \EX_MEM|q[88]~62_combout\ : std_logic;
SIGNAL \PC|q[18]~8_combout\ : std_logic;
SIGNAL \somador1|Y[18]~33\ : std_logic;
SIGNAL \somador1|Y[19]~34_combout\ : std_logic;
SIGNAL \EX_MEM|q[88]~63\ : std_logic;
SIGNAL \EX_MEM|q[89]~64_combout\ : std_logic;
SIGNAL \PC|q[19]~9_combout\ : std_logic;
SIGNAL \somador1|Y[19]~35\ : std_logic;
SIGNAL \somador1|Y[20]~36_combout\ : std_logic;
SIGNAL \EX_MEM|q[89]~65\ : std_logic;
SIGNAL \EX_MEM|q[90]~66_combout\ : std_logic;
SIGNAL \mux_PC|Y[20]~9_combout\ : std_logic;
SIGNAL \somador1|Y[20]~37\ : std_logic;
SIGNAL \somador1|Y[21]~38_combout\ : std_logic;
SIGNAL \EX_MEM|q[90]~67\ : std_logic;
SIGNAL \EX_MEM|q[91]~68_combout\ : std_logic;
SIGNAL \PC|q[21]~10_combout\ : std_logic;
SIGNAL \somador1|Y[21]~39\ : std_logic;
SIGNAL \somador1|Y[22]~40_combout\ : std_logic;
SIGNAL \EX_MEM|q[91]~69\ : std_logic;
SIGNAL \EX_MEM|q[92]~70_combout\ : std_logic;
SIGNAL \PC|q[22]~11_combout\ : std_logic;
SIGNAL \somador1|Y[22]~41\ : std_logic;
SIGNAL \somador1|Y[23]~42_combout\ : std_logic;
SIGNAL \EX_MEM|q[92]~71\ : std_logic;
SIGNAL \EX_MEM|q[93]~72_combout\ : std_logic;
SIGNAL \PC|q[23]~12_combout\ : std_logic;
SIGNAL \somador1|Y[23]~43\ : std_logic;
SIGNAL \somador1|Y[24]~44_combout\ : std_logic;
SIGNAL \EX_MEM|q[93]~73\ : std_logic;
SIGNAL \EX_MEM|q[94]~74_combout\ : std_logic;
SIGNAL \PC|q[24]~13_combout\ : std_logic;
SIGNAL \somador1|Y[24]~45\ : std_logic;
SIGNAL \somador1|Y[25]~46_combout\ : std_logic;
SIGNAL \EX_MEM|q[94]~75\ : std_logic;
SIGNAL \EX_MEM|q[95]~76_combout\ : std_logic;
SIGNAL \mux_PC|Y[25]~10_combout\ : std_logic;
SIGNAL \somador1|Y[25]~47\ : std_logic;
SIGNAL \somador1|Y[26]~48_combout\ : std_logic;
SIGNAL \EX_MEM|q[95]~77\ : std_logic;
SIGNAL \EX_MEM|q[96]~78_combout\ : std_logic;
SIGNAL \PC|q[26]~14_combout\ : std_logic;
SIGNAL \somador1|Y[26]~49\ : std_logic;
SIGNAL \somador1|Y[27]~50_combout\ : std_logic;
SIGNAL \EX_MEM|q[96]~79\ : std_logic;
SIGNAL \EX_MEM|q[97]~80_combout\ : std_logic;
SIGNAL \mux_PC|Y[27]~11_combout\ : std_logic;
SIGNAL \somador1|Y[27]~51\ : std_logic;
SIGNAL \somador1|Y[28]~52_combout\ : std_logic;
SIGNAL \EX_MEM|q[97]~81\ : std_logic;
SIGNAL \EX_MEM|q[98]~82_combout\ : std_logic;
SIGNAL \mux_PC|Y[28]~12_combout\ : std_logic;
SIGNAL \somador1|Y[28]~53\ : std_logic;
SIGNAL \somador1|Y[29]~54_combout\ : std_logic;
SIGNAL \EX_MEM|q[98]~83\ : std_logic;
SIGNAL \EX_MEM|q[99]~84_combout\ : std_logic;
SIGNAL \mux_PC|Y[29]~13_combout\ : std_logic;
SIGNAL \somador1|Y[29]~55\ : std_logic;
SIGNAL \somador1|Y[30]~56_combout\ : std_logic;
SIGNAL \EX_MEM|q[99]~85\ : std_logic;
SIGNAL \EX_MEM|q[100]~86_combout\ : std_logic;
SIGNAL \mux_PC|Y[30]~14_combout\ : std_logic;
SIGNAL \somador1|Y[30]~57\ : std_logic;
SIGNAL \somador1|Y[31]~58_combout\ : std_logic;
SIGNAL \EX_MEM|q[100]~87\ : std_logic;
SIGNAL \EX_MEM|q[101]~88_combout\ : std_logic;
SIGNAL \mux_PC|Y[31]~15_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|reg_leds|q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \PC|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_MEM|q\ : std_logic_vector(106 DOWNTO 0);
SIGNAL \MEM_WB|q\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \regs|registrador_rtl_0_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \IF_ID|q\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \ID_EX|q\ : std_logic_vector(146 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0_bypass\ : std_logic_vector(0 TO 76);
SIGNAL \controlador1|reg_seg7|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ula|full_adder|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd_ctrl|ALT_INV_op_code_aux~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl[2]~12_combout\ : std_logic;

BEGIN

clko <= ww_clko;
Reg3 <= ww_Reg3;
mux_ulamem <= ww_mux_ulamem;
saida1reg <= ww_saida1reg;
saida2reg <= ww_saida2reg;
instrucao <= ww_instrucao;
entrada1_ULA <= ww_entrada1_ULA;
entrada2_ULA <= ww_entrada2_ULA;
saida <= ww_saida;
saidaExtensor <= ww_saidaExtensor;
dadolido <= ww_dadolido;
zero <= ww_zero;
ula_control <= ww_ula_control;
end1 <= ww_end1;
end2 <= ww_end2;
end3 <= ww_end3;
saida_habLeMem <= ww_saida_habLeMem;
teste_PC <= ww_teste_PC;
saida_habEscReg <= ww_saida_habEscReg;
habesc <= ww_habesc;
saida_mux2 <= ww_saida_mux2;
op <= ww_op;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \MEM_WB|q\(37);

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \MEM_WB|q\(38);

\regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \MEM_WB|q\(39);

\regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \MEM_WB|q\(40);

\regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \MEM_WB|q\(41);

\regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \MEM_WB|q\(42);

\regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \MEM_WB|q\(43);

\regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \MEM_WB|q\(44);

\regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \MEM_WB|q\(45);

\regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \MEM_WB|q\(46);

\regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \MEM_WB|q\(47);

\regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \MEM_WB|q\(48);

\regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \MEM_WB|q\(49);

\regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \MEM_WB|q\(50);

\regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \MEM_WB|q\(51);

\regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \MEM_WB|q\(52);

\regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \MEM_WB|q\(53);

\regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \MEM_WB|q\(54);

\regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \MEM_WB|q\(55);

\regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \MEM_WB|q\(56);

\regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \MEM_WB|q\(57);

\regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \MEM_WB|q\(58);

\regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \MEM_WB|q\(59);

\regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \MEM_WB|q\(60);

\regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \MEM_WB|q\(61);

\regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \MEM_WB|q\(62);

\regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \MEM_WB|q\(63);

\regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \MEM_WB|q\(64);

\regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \MEM_WB|q\(65);

\regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \MEM_WB|q\(66);

\regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \MEM_WB|q\(67);

\regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \MEM_WB|q\(68);

\regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~36_combout\ & \~GND~combout\ & \memoriaInst|rom~57_combout\ & \memoriaInst|rom~43_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \MEM_WB|q\(37);

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \MEM_WB|q\(38);

\regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \MEM_WB|q\(39);

\regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \MEM_WB|q\(40);

\regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \MEM_WB|q\(41);

\regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \MEM_WB|q\(42);

\regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \MEM_WB|q\(43);

\regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \MEM_WB|q\(44);

\regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \MEM_WB|q\(45);

\regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \MEM_WB|q\(46);

\regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \MEM_WB|q\(47);

\regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \MEM_WB|q\(48);

\regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \MEM_WB|q\(49);

\regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \MEM_WB|q\(50);

\regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \MEM_WB|q\(51);

\regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \MEM_WB|q\(52);

\regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \MEM_WB|q\(53);

\regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \MEM_WB|q\(54);

\regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \MEM_WB|q\(55);

\regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \MEM_WB|q\(56);

\regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \MEM_WB|q\(57);

\regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \MEM_WB|q\(58);

\regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \MEM_WB|q\(59);

\regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \MEM_WB|q\(60);

\regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \MEM_WB|q\(61);

\regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \MEM_WB|q\(62);

\regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \MEM_WB|q\(63);

\regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \MEM_WB|q\(64);

\regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \MEM_WB|q\(65);

\regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \MEM_WB|q\(66);

\regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \MEM_WB|q\(67);

\regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \MEM_WB|q\(68);

\regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \~GND~combout\ & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\memoriaInst|rom~41_combout\ & \memoriaInst|rom~40_combout\ & \~GND~combout\ & \memoriaInst|rom~56_combout\ & \memoriaInst|rom~36_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \EX_MEM|q\(5);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \EX_MEM|q\(6);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \EX_MEM|q\(7);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \EX_MEM|q\(8);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \EX_MEM|q\(9);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \EX_MEM|q\(10);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \EX_MEM|q\(11);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \EX_MEM|q\(12);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \EX_MEM|q\(13);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \EX_MEM|q\(14);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \EX_MEM|q\(15);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \EX_MEM|q\(16);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \EX_MEM|q\(17);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \EX_MEM|q\(18);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \EX_MEM|q\(19);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \EX_MEM|q\(20);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \EX_MEM|q\(21);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \EX_MEM|q\(22);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \EX_MEM|q\(23);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \EX_MEM|q\(24);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \EX_MEM|q\(25);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \EX_MEM|q\(26);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \EX_MEM|q\(27);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \EX_MEM|q\(28);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \EX_MEM|q\(29);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \EX_MEM|q\(30);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \EX_MEM|q\(31);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \EX_MEM|q\(32);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \EX_MEM|q\(33);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \EX_MEM|q\(34);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \EX_MEM|q\(35);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \EX_MEM|q\(36);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);
\fd_ctrl|ALT_INV_op_code_aux~0_combout\ <= NOT \fd_ctrl|op_code_aux~0_combout\;
\ula_ctrl|ALT_INV_ula_ctrl[2]~12_combout\ <= NOT \ula_ctrl|ula_ctrl[2]~12_combout\;

\clko~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_clko);

\Reg3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(37),
	devoe => ww_devoe,
	o => ww_Reg3(0));

\Reg3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(38),
	devoe => ww_devoe,
	o => ww_Reg3(1));

\Reg3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(39),
	devoe => ww_devoe,
	o => ww_Reg3(2));

\Reg3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(40),
	devoe => ww_devoe,
	o => ww_Reg3(3));

\Reg3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(41),
	devoe => ww_devoe,
	o => ww_Reg3(4));

\Reg3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(42),
	devoe => ww_devoe,
	o => ww_Reg3(5));

\Reg3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(43),
	devoe => ww_devoe,
	o => ww_Reg3(6));

\Reg3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(44),
	devoe => ww_devoe,
	o => ww_Reg3(7));

\Reg3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(45),
	devoe => ww_devoe,
	o => ww_Reg3(8));

\Reg3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(46),
	devoe => ww_devoe,
	o => ww_Reg3(9));

\Reg3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(47),
	devoe => ww_devoe,
	o => ww_Reg3(10));

\Reg3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(48),
	devoe => ww_devoe,
	o => ww_Reg3(11));

\Reg3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(49),
	devoe => ww_devoe,
	o => ww_Reg3(12));

\Reg3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(50),
	devoe => ww_devoe,
	o => ww_Reg3(13));

\Reg3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(51),
	devoe => ww_devoe,
	o => ww_Reg3(14));

\Reg3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(52),
	devoe => ww_devoe,
	o => ww_Reg3(15));

\Reg3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(53),
	devoe => ww_devoe,
	o => ww_Reg3(16));

\Reg3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(54),
	devoe => ww_devoe,
	o => ww_Reg3(17));

\Reg3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(55),
	devoe => ww_devoe,
	o => ww_Reg3(18));

\Reg3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(56),
	devoe => ww_devoe,
	o => ww_Reg3(19));

\Reg3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(57),
	devoe => ww_devoe,
	o => ww_Reg3(20));

\Reg3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(58),
	devoe => ww_devoe,
	o => ww_Reg3(21));

\Reg3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(59),
	devoe => ww_devoe,
	o => ww_Reg3(22));

\Reg3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(60),
	devoe => ww_devoe,
	o => ww_Reg3(23));

\Reg3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(61),
	devoe => ww_devoe,
	o => ww_Reg3(24));

\Reg3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(62),
	devoe => ww_devoe,
	o => ww_Reg3(25));

\Reg3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(63),
	devoe => ww_devoe,
	o => ww_Reg3(26));

\Reg3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(64),
	devoe => ww_devoe,
	o => ww_Reg3(27));

\Reg3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(65),
	devoe => ww_devoe,
	o => ww_Reg3(28));

\Reg3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(66),
	devoe => ww_devoe,
	o => ww_Reg3(29));

\Reg3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(67),
	devoe => ww_devoe,
	o => ww_Reg3(30));

\Reg3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(68),
	devoe => ww_devoe,
	o => ww_Reg3(31));

\mux_ulamem[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(37),
	devoe => ww_devoe,
	o => ww_mux_ulamem(0));

\mux_ulamem[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(38),
	devoe => ww_devoe,
	o => ww_mux_ulamem(1));

\mux_ulamem[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(39),
	devoe => ww_devoe,
	o => ww_mux_ulamem(2));

\mux_ulamem[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(40),
	devoe => ww_devoe,
	o => ww_mux_ulamem(3));

\mux_ulamem[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(41),
	devoe => ww_devoe,
	o => ww_mux_ulamem(4));

\mux_ulamem[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(42),
	devoe => ww_devoe,
	o => ww_mux_ulamem(5));

\mux_ulamem[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(43),
	devoe => ww_devoe,
	o => ww_mux_ulamem(6));

\mux_ulamem[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(44),
	devoe => ww_devoe,
	o => ww_mux_ulamem(7));

\mux_ulamem[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(45),
	devoe => ww_devoe,
	o => ww_mux_ulamem(8));

\mux_ulamem[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(46),
	devoe => ww_devoe,
	o => ww_mux_ulamem(9));

\mux_ulamem[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(47),
	devoe => ww_devoe,
	o => ww_mux_ulamem(10));

\mux_ulamem[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(48),
	devoe => ww_devoe,
	o => ww_mux_ulamem(11));

\mux_ulamem[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(49),
	devoe => ww_devoe,
	o => ww_mux_ulamem(12));

\mux_ulamem[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(50),
	devoe => ww_devoe,
	o => ww_mux_ulamem(13));

\mux_ulamem[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(51),
	devoe => ww_devoe,
	o => ww_mux_ulamem(14));

\mux_ulamem[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(52),
	devoe => ww_devoe,
	o => ww_mux_ulamem(15));

\mux_ulamem[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(53),
	devoe => ww_devoe,
	o => ww_mux_ulamem(16));

\mux_ulamem[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(54),
	devoe => ww_devoe,
	o => ww_mux_ulamem(17));

\mux_ulamem[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(55),
	devoe => ww_devoe,
	o => ww_mux_ulamem(18));

\mux_ulamem[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(56),
	devoe => ww_devoe,
	o => ww_mux_ulamem(19));

\mux_ulamem[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(57),
	devoe => ww_devoe,
	o => ww_mux_ulamem(20));

\mux_ulamem[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(58),
	devoe => ww_devoe,
	o => ww_mux_ulamem(21));

\mux_ulamem[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(59),
	devoe => ww_devoe,
	o => ww_mux_ulamem(22));

\mux_ulamem[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(60),
	devoe => ww_devoe,
	o => ww_mux_ulamem(23));

\mux_ulamem[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(61),
	devoe => ww_devoe,
	o => ww_mux_ulamem(24));

\mux_ulamem[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(62),
	devoe => ww_devoe,
	o => ww_mux_ulamem(25));

\mux_ulamem[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(63),
	devoe => ww_devoe,
	o => ww_mux_ulamem(26));

\mux_ulamem[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(64),
	devoe => ww_devoe,
	o => ww_mux_ulamem(27));

\mux_ulamem[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(65),
	devoe => ww_devoe,
	o => ww_mux_ulamem(28));

\mux_ulamem[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(66),
	devoe => ww_devoe,
	o => ww_mux_ulamem(29));

\mux_ulamem[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(67),
	devoe => ww_devoe,
	o => ww_mux_ulamem(30));

\mux_ulamem[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(68),
	devoe => ww_devoe,
	o => ww_mux_ulamem(31));

\saida1reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(0));

\saida1reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(1));

\saida1reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(2));

\saida1reg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(3));

\saida1reg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(4));

\saida1reg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(5));

\saida1reg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(6));

\saida1reg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(7));

\saida1reg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(8));

\saida1reg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(9));

\saida1reg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(10));

\saida1reg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(11));

\saida1reg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(12));

\saida1reg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(13));

\saida1reg[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(14));

\saida1reg[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(15));

\saida1reg[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(16));

\saida1reg[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(17));

\saida1reg[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(18));

\saida1reg[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(19));

\saida1reg[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(20));

\saida1reg[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(21));

\saida1reg[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(22));

\saida1reg[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(23));

\saida1reg[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(24));

\saida1reg[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(25));

\saida1reg[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(26));

\saida1reg[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(27));

\saida1reg[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(28));

\saida1reg[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(29));

\saida1reg[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(30));

\saida1reg[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaA[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_saida1reg(31));

\saida2reg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(0));

\saida2reg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(1));

\saida2reg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(2));

\saida2reg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(3));

\saida2reg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(4));

\saida2reg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(5));

\saida2reg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(6));

\saida2reg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(7));

\saida2reg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(8));

\saida2reg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(9));

\saida2reg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(10));

\saida2reg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(11));

\saida2reg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(12));

\saida2reg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(13));

\saida2reg[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(14));

\saida2reg[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(15));

\saida2reg[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(16));

\saida2reg[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(17));

\saida2reg[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(18));

\saida2reg[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(19));

\saida2reg[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(20));

\saida2reg[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(21));

\saida2reg[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(22));

\saida2reg[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(23));

\saida2reg[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(24));

\saida2reg[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(25));

\saida2reg[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(26));

\saida2reg[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(27));

\saida2reg[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(28));

\saida2reg[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(29));

\saida2reg[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(30));

\saida2reg[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \regs|saidaB[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_saida2reg(31));

\instrucao[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~12_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(0));

\instrucao[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~17_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(1));

\instrucao[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~19_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(2));

\instrucao[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~23_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(3));

\instrucao[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(4));

\instrucao[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~55_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(5));

\instrucao[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(6));

\instrucao[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(7));

\instrucao[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(8));

\instrucao[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(9));

\instrucao[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(10));

\instrucao[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~30_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(11));

\instrucao[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~32_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(12));

\instrucao[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(13));

\instrucao[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~30_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(14));

\instrucao[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(15));

\instrucao[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~36_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(16));

\instrucao[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~56_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(17));

\instrucao[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(18));

\instrucao[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~40_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(19));

\instrucao[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~41_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(20));

\instrucao[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~43_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(21));

\instrucao[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~57_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(22));

\instrucao[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(23));

\instrucao[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~36_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(24));

\instrucao[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(25));

\instrucao[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~46_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(26));

\instrucao[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~47_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(27));

\instrucao[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(28));

\instrucao[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~46_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(29));

\instrucao[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_instrucao(30));

\instrucao[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~53_combout\,
	devoe => ww_devoe,
	o => ww_instrucao(31));

\entrada1_ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(74),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(0));

\entrada1_ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(75),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(1));

\entrada1_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(76),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(2));

\entrada1_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(77),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(3));

\entrada1_ULA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(78),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(4));

\entrada1_ULA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(79),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(5));

\entrada1_ULA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(80),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(6));

\entrada1_ULA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(81),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(7));

\entrada1_ULA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(82),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(8));

\entrada1_ULA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(83),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(9));

\entrada1_ULA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(84),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(10));

\entrada1_ULA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(85),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(11));

\entrada1_ULA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(86),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(12));

\entrada1_ULA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(87),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(13));

\entrada1_ULA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(88),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(14));

\entrada1_ULA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(89),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(15));

\entrada1_ULA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(90),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(16));

\entrada1_ULA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(91),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(17));

\entrada1_ULA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(92),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(18));

\entrada1_ULA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(93),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(19));

\entrada1_ULA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(94),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(20));

\entrada1_ULA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(95),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(21));

\entrada1_ULA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(96),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(22));

\entrada1_ULA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(97),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(23));

\entrada1_ULA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(98),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(24));

\entrada1_ULA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(99),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(25));

\entrada1_ULA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(100),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(26));

\entrada1_ULA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(101),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(27));

\entrada1_ULA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(102),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(28));

\entrada1_ULA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(103),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(29));

\entrada1_ULA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(104),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(30));

\entrada1_ULA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(105),
	devoe => ww_devoe,
	o => ww_entrada1_ULA(31));

\entrada2_ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(0));

\entrada2_ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(1));

\entrada2_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(2));

\entrada2_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(3));

\entrada2_ULA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(4));

\entrada2_ULA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(5));

\entrada2_ULA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(6));

\entrada2_ULA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(7));

\entrada2_ULA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(8));

\entrada2_ULA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(9));

\entrada2_ULA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(10));

\entrada2_ULA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(11));

\entrada2_ULA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(12));

\entrada2_ULA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(13));

\entrada2_ULA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(14));

\entrada2_ULA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(15));

\entrada2_ULA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[16]~16_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(16));

\entrada2_ULA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[17]~17_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(17));

\entrada2_ULA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[18]~18_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(18));

\entrada2_ULA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[19]~19_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(19));

\entrada2_ULA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[20]~20_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(20));

\entrada2_ULA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[21]~21_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(21));

\entrada2_ULA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[22]~22_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(22));

\entrada2_ULA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[23]~23_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(23));

\entrada2_ULA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[24]~24_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(24));

\entrada2_ULA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[25]~25_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(25));

\entrada2_ULA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[26]~26_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(26));

\entrada2_ULA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[27]~27_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(27));

\entrada2_ULA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[28]~28_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(28));

\entrada2_ULA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[29]~29_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(29));

\entrada2_ULA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[30]~30_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(30));

\entrada2_ULA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[31]~31_combout\,
	devoe => ww_devoe,
	o => ww_entrada2_ULA(31));

\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux31~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(0));

\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux30~2_combout\,
	devoe => ww_devoe,
	o => ww_saida(1));

\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux29~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(2));

\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux28~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(3));

\saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux27~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(4));

\saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux26~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(5));

\saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux25~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(6));

\saida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux24~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(7));

\saida[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux23~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(8));

\saida[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux22~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(9));

\saida[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux21~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(10));

\saida[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux20~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(11));

\saida[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux19~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(12));

\saida[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux18~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(13));

\saida[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux17~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(14));

\saida[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux16~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(15));

\saida[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux15~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(16));

\saida[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux14~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(17));

\saida[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux13~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(18));

\saida[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux12~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(19));

\saida[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux11~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(20));

\saida[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux10~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(21));

\saida[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux9~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(22));

\saida[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux8~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(23));

\saida[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux7~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(24));

\saida[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux6~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(25));

\saida[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(26));

\saida[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux4~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(27));

\saida[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux3~2_combout\,
	devoe => ww_devoe,
	o => ww_saida(28));

\saida[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux2~2_combout\,
	devoe => ww_devoe,
	o => ww_saida(29));

\saida[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_saida(30));

\saida[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(31));

\saidaExtensor[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(0),
	devoe => ww_devoe,
	o => ww_saidaExtensor(0));

\saidaExtensor[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(1),
	devoe => ww_devoe,
	o => ww_saidaExtensor(1));

\saidaExtensor[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(2),
	devoe => ww_devoe,
	o => ww_saidaExtensor(2));

\saidaExtensor[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(3),
	devoe => ww_devoe,
	o => ww_saidaExtensor(3));

\saidaExtensor[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(4));

\saidaExtensor[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(5),
	devoe => ww_devoe,
	o => ww_saidaExtensor(5));

\saidaExtensor[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(6));

\saidaExtensor[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(7));

\saidaExtensor[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(8));

\saidaExtensor[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(9));

\saidaExtensor[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(10));

\saidaExtensor[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(11),
	devoe => ww_devoe,
	o => ww_saidaExtensor(11));

\saidaExtensor[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(12),
	devoe => ww_devoe,
	o => ww_saidaExtensor(12));

\saidaExtensor[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(13));

\saidaExtensor[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(11),
	devoe => ww_devoe,
	o => ww_saidaExtensor(14));

\saidaExtensor[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(15));

\saidaExtensor[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(16));

\saidaExtensor[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(17));

\saidaExtensor[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(18));

\saidaExtensor[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(19));

\saidaExtensor[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(20));

\saidaExtensor[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(21));

\saidaExtensor[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(22));

\saidaExtensor[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(23));

\saidaExtensor[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(24));

\saidaExtensor[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(25));

\saidaExtensor[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(26));

\saidaExtensor[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(27));

\saidaExtensor[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(28));

\saidaExtensor[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(29));

\saidaExtensor[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(30));

\saidaExtensor[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saidaExtensor(31));

\dadolido[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[0]~3_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(0));

\dadolido[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(1));

\dadolido[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[2]~7_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(2));

\dadolido[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[3]~9_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(3));

\dadolido[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[4]~10_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(4));

\dadolido[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(5));

\dadolido[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[6]~12_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(6));

\dadolido[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[7]~13_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(7));

\dadolido[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[8]~14_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(8));

\dadolido[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[9]~15_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(9));

\dadolido[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[10]~16_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(10));

\dadolido[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[11]~17_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(11));

\dadolido[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[12]~18_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(12));

\dadolido[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[13]~19_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(13));

\dadolido[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[14]~20_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(14));

\dadolido[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[15]~21_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(15));

\dadolido[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[16]~22_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(16));

\dadolido[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[17]~23_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(17));

\dadolido[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[18]~24_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(18));

\dadolido[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[19]~25_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(19));

\dadolido[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[20]~26_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(20));

\dadolido[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[21]~27_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(21));

\dadolido[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[22]~28_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(22));

\dadolido[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[23]~29_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(23));

\dadolido[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[24]~30_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(24));

\dadolido[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[25]~31_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(25));

\dadolido[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[26]~32_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(26));

\dadolido[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[27]~33_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(27));

\dadolido[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[28]~34_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(28));

\dadolido[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[29]~35_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(29));

\dadolido[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[30]~36_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(30));

\dadolido[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|dado_lido[31]~37_combout\,
	devoe => ww_devoe,
	o => ww_dadolido(31));

\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_zero);

\ula_control[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_ctrl|ula_ctrl[0]~11_combout\,
	devoe => ww_devoe,
	o => ww_ula_control(0));

\ula_control[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_ctrl|ula_ctrl[1]~7_combout\,
	devoe => ww_devoe,
	o => ww_ula_control(1));

\ula_control[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_ctrl|ALT_INV_ula_ctrl[2]~12_combout\,
	devoe => ww_devoe,
	o => ww_ula_control(2));

\ula_control[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_ula_control(3));

\end1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(21),
	devoe => ww_devoe,
	o => ww_end1(0));

\end1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(22),
	devoe => ww_devoe,
	o => ww_end1(1));

\end1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_end1(2));

\end1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(24),
	devoe => ww_devoe,
	o => ww_end1(3));

\end1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_end1(4));

\end2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(24),
	devoe => ww_devoe,
	o => ww_end2(0));

\end2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(17),
	devoe => ww_devoe,
	o => ww_end2(1));

\end2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_end2(2));

\end2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(19),
	devoe => ww_devoe,
	o => ww_end2(3));

\end2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(20),
	devoe => ww_devoe,
	o => ww_end2(4));

\end3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(0),
	devoe => ww_devoe,
	o => ww_end3(0));

\end3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(1),
	devoe => ww_devoe,
	o => ww_end3(1));

\end3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_end3(2));

\end3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(3),
	devoe => ww_devoe,
	o => ww_end3(3));

\end3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(4),
	devoe => ww_devoe,
	o => ww_end3(4));

\saida_habLeMem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_habLeMem);

\teste_PC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(0),
	devoe => ww_devoe,
	o => ww_teste_PC(0));

\teste_PC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(0),
	devoe => ww_devoe,
	o => ww_teste_PC(1));

\teste_PC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(2),
	devoe => ww_devoe,
	o => ww_teste_PC(2));

\teste_PC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(3),
	devoe => ww_devoe,
	o => ww_teste_PC(3));

\teste_PC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(4),
	devoe => ww_devoe,
	o => ww_teste_PC(4));

\teste_PC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(5),
	devoe => ww_devoe,
	o => ww_teste_PC(5));

\teste_PC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(6),
	devoe => ww_devoe,
	o => ww_teste_PC(6));

\teste_PC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(7),
	devoe => ww_devoe,
	o => ww_teste_PC(7));

\teste_PC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(8),
	devoe => ww_devoe,
	o => ww_teste_PC(8));

\teste_PC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(9),
	devoe => ww_devoe,
	o => ww_teste_PC(9));

\teste_PC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(10),
	devoe => ww_devoe,
	o => ww_teste_PC(10));

\teste_PC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(11),
	devoe => ww_devoe,
	o => ww_teste_PC(11));

\teste_PC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(12),
	devoe => ww_devoe,
	o => ww_teste_PC(12));

\teste_PC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(13),
	devoe => ww_devoe,
	o => ww_teste_PC(13));

\teste_PC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(14),
	devoe => ww_devoe,
	o => ww_teste_PC(14));

\teste_PC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(15),
	devoe => ww_devoe,
	o => ww_teste_PC(15));

\teste_PC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(16),
	devoe => ww_devoe,
	o => ww_teste_PC(16));

\teste_PC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(17),
	devoe => ww_devoe,
	o => ww_teste_PC(17));

\teste_PC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(18),
	devoe => ww_devoe,
	o => ww_teste_PC(18));

\teste_PC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(19),
	devoe => ww_devoe,
	o => ww_teste_PC(19));

\teste_PC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(20),
	devoe => ww_devoe,
	o => ww_teste_PC(20));

\teste_PC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(21),
	devoe => ww_devoe,
	o => ww_teste_PC(21));

\teste_PC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(22),
	devoe => ww_devoe,
	o => ww_teste_PC(22));

\teste_PC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(23),
	devoe => ww_devoe,
	o => ww_teste_PC(23));

\teste_PC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(24),
	devoe => ww_devoe,
	o => ww_teste_PC(24));

\teste_PC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(25),
	devoe => ww_devoe,
	o => ww_teste_PC(25));

\teste_PC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(26),
	devoe => ww_devoe,
	o => ww_teste_PC(26));

\teste_PC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(27),
	devoe => ww_devoe,
	o => ww_teste_PC(27));

\teste_PC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(28),
	devoe => ww_devoe,
	o => ww_teste_PC(28));

\teste_PC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(29),
	devoe => ww_devoe,
	o => ww_teste_PC(29));

\teste_PC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(30),
	devoe => ww_devoe,
	o => ww_teste_PC(30));

\teste_PC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|q\(31),
	devoe => ww_devoe,
	o => ww_teste_PC(31));

\saida_habEscReg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(70),
	devoe => ww_devoe,
	o => ww_saida_habEscReg);

\habesc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|ALT_INV_op_code_aux~0_combout\,
	devoe => ww_devoe,
	o => ww_habesc);

\saida_mux2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_saida_mux2);

\op[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(29),
	devoe => ww_devoe,
	o => ww_op(0));

\op[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(27),
	devoe => ww_devoe,
	o => ww_op(1));

\op[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_op(2));

\op[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(29),
	devoe => ww_devoe,
	o => ww_op(3));

\op[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_op(4));

\op[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(31),
	devoe => ww_devoe,
	o => ww_op(5));

\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(8),
	devoe => ww_devoe,
	o => ww_LEDR(0));

\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(9),
	devoe => ww_devoe,
	o => ww_LEDR(1));

\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(10),
	devoe => ww_devoe,
	o => ww_LEDR(2));

\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(11),
	devoe => ww_devoe,
	o => ww_LEDR(3));

\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(12),
	devoe => ww_devoe,
	o => ww_LEDR(4));

\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(13),
	devoe => ww_devoe,
	o => ww_LEDR(5));

\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(14),
	devoe => ww_devoe,
	o => ww_LEDR(6));

\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(15),
	devoe => ww_devoe,
	o => ww_LEDR(7));

\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(16),
	devoe => ww_devoe,
	o => ww_LEDR(8));

\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(17),
	devoe => ww_devoe,
	o => ww_LEDR(9));

\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(18),
	devoe => ww_devoe,
	o => ww_LEDR(10));

\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(19),
	devoe => ww_devoe,
	o => ww_LEDR(11));

\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(20),
	devoe => ww_devoe,
	o => ww_LEDR(12));

\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(21),
	devoe => ww_devoe,
	o => ww_LEDR(13));

\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(22),
	devoe => ww_devoe,
	o => ww_LEDR(14));

\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(23),
	devoe => ww_devoe,
	o => ww_LEDR(15));

\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(24),
	devoe => ww_devoe,
	o => ww_LEDR(16));

\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(25),
	devoe => ww_devoe,
	o => ww_LEDR(17));

\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(0),
	devoe => ww_devoe,
	o => ww_LEDG(0));

\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(1),
	devoe => ww_devoe,
	o => ww_LEDG(1));

\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(2),
	devoe => ww_devoe,
	o => ww_LEDG(2));

\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(3),
	devoe => ww_devoe,
	o => ww_LEDG(3));

\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(4),
	devoe => ww_devoe,
	o => ww_LEDG(4));

\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(5),
	devoe => ww_devoe,
	o => ww_LEDG(5));

\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(6),
	devoe => ww_devoe,
	o => ww_LEDG(6));

\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(7),
	devoe => ww_devoe,
	o => ww_LEDG(7));

\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(0));

\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(1));

\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(2));

\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(3));

\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(4));

\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(5));

\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX6(6));

\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(0));

\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(1));

\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(2));

\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(3));

\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(4));

\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(5));

\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX7(6));

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\somador1|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[2]~0_combout\ = \PC|q\(2) $ (VCC)
-- \somador1|Y[2]~1\ = CARRY(\PC|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datad => VCC,
	combout => \somador1|Y[2]~0_combout\,
	cout => \somador1|Y[2]~1\);

\somador1|Y[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[8]~12_combout\ = (\PC|q\(8) & (\somador1|Y[7]~11\ $ (GND))) # (!\PC|q\(8) & (!\somador1|Y[7]~11\ & VCC))
-- \somador1|Y[8]~13\ = CARRY((\PC|q\(8) & !\somador1|Y[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(8),
	datad => VCC,
	cin => \somador1|Y[7]~11\,
	combout => \somador1|Y[8]~12_combout\,
	cout => \somador1|Y[8]~13\);

\somador1|Y[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[9]~14_combout\ = (\PC|q\(9) & (!\somador1|Y[8]~13\)) # (!\PC|q\(9) & ((\somador1|Y[8]~13\) # (GND)))
-- \somador1|Y[9]~15\ = CARRY((!\somador1|Y[8]~13\) # (!\PC|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(9),
	datad => VCC,
	cin => \somador1|Y[8]~13\,
	combout => \somador1|Y[9]~14_combout\,
	cout => \somador1|Y[9]~15\);

\IF_ID|q[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(41));

\ID_EX|q[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(115));

\memoriaInst|rom~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~25_combout\ = (\PC|q\(3)) # ((\PC|q\(5)) # (\PC|q\(2) $ (\PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~25_combout\);

\memoriaInst|rom~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~54_combout\ = (\PC|q\(7) & (((!\PC|q\(6))) # (!\PC|q\(5)))) # (!\PC|q\(7) & (((\memoriaInst|rom~25_combout\) # (\PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \PC|q\(5),
	datac => \memoriaInst|rom~25_combout\,
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~54_combout\);

\memoriaInst|rom~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~55_combout\ = (!\PC|q\(8) & (!\PC|q\(9) & \memoriaInst|rom~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(8),
	datab => \PC|q\(9),
	datac => \memoriaInst|rom~54_combout\,
	combout => \memoriaInst|rom~55_combout\);

\IF_ID|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(5));

\ID_EX|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(15));

\IF_ID|q[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(39));

\ID_EX|q[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(113));

\memoriaInst|rom~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~20_combout\ = (\PC|q\(3) & (!\PC|q\(8) & !\PC|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datac => \PC|q\(8),
	datad => \PC|q\(9),
	combout => \memoriaInst|rom~20_combout\);

\memoriaInst|rom~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~11_combout\ = (\PC|q\(2) & \PC|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(4),
	combout => \memoriaInst|rom~11_combout\);

\memoriaInst|rom~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~21_combout\ = (\PC|q\(5) & (\memoriaInst|rom~11_combout\ & (!\PC|q\(6) & !\PC|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \memoriaInst|rom~11_combout\,
	datac => \PC|q\(6),
	datad => \PC|q\(7),
	combout => \memoriaInst|rom~21_combout\);

\memoriaInst|rom~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~22_combout\ = (\PC|q\(7) & (!\PC|q\(5) & (\PC|q\(2) $ (!\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(7),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~22_combout\);

\memoriaInst|rom~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~23_combout\ = (\memoriaInst|rom~20_combout\ & ((\memoriaInst|rom~21_combout\) # ((\PC|q\(6) & \memoriaInst|rom~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~20_combout\,
	datab => \memoriaInst|rom~21_combout\,
	datac => \PC|q\(6),
	datad => \memoriaInst|rom~22_combout\,
	combout => \memoriaInst|rom~23_combout\);

\IF_ID|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(3));

\ID_EX|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(13));

\IF_ID|q[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(37));

\ID_EX|q[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(111));

\memoriaInst|rom~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~18_combout\ = (\PC|q\(2) & (\PC|q\(4) & (\PC|q\(7) $ (!\PC|q\(5))))) # (!\PC|q\(2) & (\PC|q\(7) & (!\PC|q\(4) & \PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(7),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~18_combout\);

\memoriaInst|rom~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~19_combout\ = (\memoriaInst|rom~10_combout\ & \memoriaInst|rom~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~10_combout\,
	datab => \memoriaInst|rom~18_combout\,
	combout => \memoriaInst|rom~19_combout\);

\IF_ID|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(2));

\ID_EX|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(12));

\IF_ID|q[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(36));

\ID_EX|q[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(110));

\memoriaInst|rom~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~14_combout\ = (\PC|q\(6) & (\PC|q\(3) & (\PC|q\(4) $ (!\PC|q\(2))))) # (!\PC|q\(6) & (\PC|q\(2) & (\PC|q\(4) $ (\PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(4),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~14_combout\);

\memoriaInst|rom~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~15_combout\ = (\PC|q\(6) & (\PC|q\(3) $ (((!\PC|q\(4) & \PC|q\(2)))))) # (!\PC|q\(6) & (((\PC|q\(2) & \PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(4),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~15_combout\);

\memoriaInst|rom~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~16_combout\ = (\PC|q\(7) & (!\memoriaInst|rom~15_combout\ & \memoriaInst|rom~14_combout\)) # (!\PC|q\(7) & (\memoriaInst|rom~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \memoriaInst|rom~15_combout\,
	datac => \memoriaInst|rom~14_combout\,
	combout => \memoriaInst|rom~16_combout\);

\memoriaInst|rom~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~17_combout\ = (\memoriaInst|rom~13_combout\ & ((\PC|q\(5) & (!\memoriaInst|rom~14_combout\ & \memoriaInst|rom~16_combout\)) # (!\PC|q\(5) & (\memoriaInst|rom~14_combout\ & !\memoriaInst|rom~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \memoriaInst|rom~13_combout\,
	datac => \memoriaInst|rom~14_combout\,
	datad => \memoriaInst|rom~16_combout\,
	combout => \memoriaInst|rom~17_combout\);

\IF_ID|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(1));

\ID_EX|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(11));

\IF_ID|q[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(35));

\ID_EX|q[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(109));

\IF_ID|q[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(34));

\ID_EX|q[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(108));

\EX_MEM|q[72]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[72]~30_combout\ = (\ID_EX|q\(10) & (\ID_EX|q\(108) $ (VCC))) # (!\ID_EX|q\(10) & (\ID_EX|q\(108) & VCC))
-- \EX_MEM|q[72]~31\ = CARRY((\ID_EX|q\(10) & \ID_EX|q\(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(10),
	datab => \ID_EX|q\(108),
	datad => VCC,
	combout => \EX_MEM|q[72]~30_combout\,
	cout => \EX_MEM|q[72]~31\);

\EX_MEM|q[73]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[73]~32_combout\ = (\ID_EX|q\(11) & ((\ID_EX|q\(109) & (\EX_MEM|q[72]~31\ & VCC)) # (!\ID_EX|q\(109) & (!\EX_MEM|q[72]~31\)))) # (!\ID_EX|q\(11) & ((\ID_EX|q\(109) & (!\EX_MEM|q[72]~31\)) # (!\ID_EX|q\(109) & ((\EX_MEM|q[72]~31\) # (GND)))))
-- \EX_MEM|q[73]~33\ = CARRY((\ID_EX|q\(11) & (!\ID_EX|q\(109) & !\EX_MEM|q[72]~31\)) # (!\ID_EX|q\(11) & ((!\EX_MEM|q[72]~31\) # (!\ID_EX|q\(109)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(109),
	datad => VCC,
	cin => \EX_MEM|q[72]~31\,
	combout => \EX_MEM|q[73]~32_combout\,
	cout => \EX_MEM|q[73]~33\);

\EX_MEM|q[74]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[74]~34_combout\ = ((\ID_EX|q\(12) $ (\ID_EX|q\(110) $ (!\EX_MEM|q[73]~33\)))) # (GND)
-- \EX_MEM|q[74]~35\ = CARRY((\ID_EX|q\(12) & ((\ID_EX|q\(110)) # (!\EX_MEM|q[73]~33\))) # (!\ID_EX|q\(12) & (\ID_EX|q\(110) & !\EX_MEM|q[73]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(12),
	datab => \ID_EX|q\(110),
	datad => VCC,
	cin => \EX_MEM|q[73]~33\,
	combout => \EX_MEM|q[74]~34_combout\,
	cout => \EX_MEM|q[74]~35\);

\EX_MEM|q[75]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[75]~36_combout\ = (\ID_EX|q\(13) & ((\ID_EX|q\(111) & (\EX_MEM|q[74]~35\ & VCC)) # (!\ID_EX|q\(111) & (!\EX_MEM|q[74]~35\)))) # (!\ID_EX|q\(13) & ((\ID_EX|q\(111) & (!\EX_MEM|q[74]~35\)) # (!\ID_EX|q\(111) & ((\EX_MEM|q[74]~35\) # (GND)))))
-- \EX_MEM|q[75]~37\ = CARRY((\ID_EX|q\(13) & (!\ID_EX|q\(111) & !\EX_MEM|q[74]~35\)) # (!\ID_EX|q\(13) & ((!\EX_MEM|q[74]~35\) # (!\ID_EX|q\(111)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(13),
	datab => \ID_EX|q\(111),
	datad => VCC,
	cin => \EX_MEM|q[74]~35\,
	combout => \EX_MEM|q[75]~36_combout\,
	cout => \EX_MEM|q[75]~37\);

\EX_MEM|q[76]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[76]~38_combout\ = (\ID_EX|q\(112) & (\EX_MEM|q[75]~37\ $ (GND))) # (!\ID_EX|q\(112) & (!\EX_MEM|q[75]~37\ & VCC))
-- \EX_MEM|q[76]~39\ = CARRY((\ID_EX|q\(112) & !\EX_MEM|q[75]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(112),
	datad => VCC,
	cin => \EX_MEM|q[75]~37\,
	combout => \EX_MEM|q[76]~38_combout\,
	cout => \EX_MEM|q[76]~39\);

\EX_MEM|q[77]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[77]~40_combout\ = (\ID_EX|q\(15) & ((\ID_EX|q\(113) & (\EX_MEM|q[76]~39\ & VCC)) # (!\ID_EX|q\(113) & (!\EX_MEM|q[76]~39\)))) # (!\ID_EX|q\(15) & ((\ID_EX|q\(113) & (!\EX_MEM|q[76]~39\)) # (!\ID_EX|q\(113) & ((\EX_MEM|q[76]~39\) # (GND)))))
-- \EX_MEM|q[77]~41\ = CARRY((\ID_EX|q\(15) & (!\ID_EX|q\(113) & !\EX_MEM|q[76]~39\)) # (!\ID_EX|q\(15) & ((!\EX_MEM|q[76]~39\) # (!\ID_EX|q\(113)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(113),
	datad => VCC,
	cin => \EX_MEM|q[76]~39\,
	combout => \EX_MEM|q[77]~40_combout\,
	cout => \EX_MEM|q[77]~41\);

\EX_MEM|q[78]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[78]~42_combout\ = (\ID_EX|q\(114) & (\EX_MEM|q[77]~41\ $ (GND))) # (!\ID_EX|q\(114) & (!\EX_MEM|q[77]~41\ & VCC))
-- \EX_MEM|q[78]~43\ = CARRY((\ID_EX|q\(114) & !\EX_MEM|q[77]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(114),
	datad => VCC,
	cin => \EX_MEM|q[77]~41\,
	combout => \EX_MEM|q[78]~42_combout\,
	cout => \EX_MEM|q[78]~43\);

\EX_MEM|q[79]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[79]~44_combout\ = (\ID_EX|q\(115) & (!\EX_MEM|q[78]~43\)) # (!\ID_EX|q\(115) & ((\EX_MEM|q[78]~43\) # (GND)))
-- \EX_MEM|q[79]~45\ = CARRY((!\EX_MEM|q[78]~43\) # (!\ID_EX|q\(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(115),
	datad => VCC,
	cin => \EX_MEM|q[78]~43\,
	combout => \EX_MEM|q[79]~44_combout\,
	cout => \EX_MEM|q[79]~45\);

\EX_MEM|q[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[79]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(79));

\memoriaInst|rom~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~48_combout\ = (\PC|q\(2) & (\PC|q\(4) $ (\PC|q\(6) $ (!\PC|q\(5))))) # (!\PC|q\(2) & (!\PC|q\(4) & (\PC|q\(6) $ (\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(4),
	datac => \PC|q\(6),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~48_combout\);

\memoriaInst|rom~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~49_combout\ = (\PC|q\(4) & (\PC|q\(2) $ ((\PC|q\(6))))) # (!\PC|q\(4) & (!\PC|q\(2) & (!\PC|q\(6) & \PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(4),
	datac => \PC|q\(6),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~49_combout\);

\memoriaInst|rom~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~50_combout\ = (\PC|q\(6) & \PC|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|q\(6),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~50_combout\);

\memoriaInst|rom~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~51_combout\ = (\memoriaInst|rom~48_combout\ & (\memoriaInst|rom~49_combout\ $ (((\PC|q\(3)) # (\memoriaInst|rom~50_combout\))))) # (!\memoriaInst|rom~48_combout\ & (((\memoriaInst|rom~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datab => \memoriaInst|rom~48_combout\,
	datac => \memoriaInst|rom~49_combout\,
	datad => \memoriaInst|rom~50_combout\,
	combout => \memoriaInst|rom~51_combout\);

\memoriaInst|rom~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~52_combout\ = (\PC|q\(3) & (\memoriaInst|rom~49_combout\ & (\memoriaInst|rom~48_combout\ $ (\memoriaInst|rom~50_combout\)))) # (!\PC|q\(3) & ((\memoriaInst|rom~48_combout\ & (!\memoriaInst|rom~49_combout\ & \memoriaInst|rom~50_combout\)) 
-- # (!\memoriaInst|rom~48_combout\ & (\memoriaInst|rom~49_combout\ & !\memoriaInst|rom~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datab => \memoriaInst|rom~48_combout\,
	datac => \memoriaInst|rom~49_combout\,
	datad => \memoriaInst|rom~50_combout\,
	combout => \memoriaInst|rom~52_combout\);

\memoriaInst|rom~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~53_combout\ = (\memoriaInst|rom~13_combout\ & ((\PC|q\(7) & (!\memoriaInst|rom~51_combout\)) # (!\PC|q\(7) & ((!\memoriaInst|rom~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \memoriaInst|rom~13_combout\,
	datac => \memoriaInst|rom~51_combout\,
	datad => \memoriaInst|rom~52_combout\,
	combout => \memoriaInst|rom~53_combout\);

\IF_ID|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(31));

\memoriaInst|rom~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~45_combout\ = (!\PC|q\(7) & (!\PC|q\(5) & (!\PC|q\(2) & !\PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \PC|q\(5),
	datac => \PC|q\(2),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~45_combout\);

\memoriaInst|rom~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~46_combout\ = (\memoriaInst|rom~10_combout\ & \memoriaInst|rom~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~10_combout\,
	datab => \memoriaInst|rom~45_combout\,
	combout => \memoriaInst|rom~46_combout\);

\IF_ID|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(29));

\fd_ctrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal0~0_combout\ = (\IF_ID|q\(27) & (!\IF_ID|q\(31) & !\IF_ID|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datac => \IF_ID|q\(31),
	datad => \IF_ID|q\(29),
	combout => \fd_ctrl|Equal0~0_combout\);

\ID_EX|q[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(144));

\EX_MEM|q[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(144),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(104));

\ID_EX|q[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(138));

\regs|registrador_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(11));

\fd_ctrl|op_code_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|op_code_aux~0_combout\ = (\IF_ID|q\(27)) # ((\IF_ID|q\(31)) # (\IF_ID|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \IF_ID|q\(31),
	datac => \IF_ID|q\(29),
	combout => \fd_ctrl|op_code_aux~0_combout\);

\ID_EX|q[140]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[140]~0_combout\ = !\fd_ctrl|op_code_aux~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_ctrl|op_code_aux~0_combout\,
	combout => \ID_EX|q[140]~0_combout\);

\ID_EX|q[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q[140]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(140));

\EX_MEM|q[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(140),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(106));

\MEM_WB|q[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(106),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(70));

\memoriaInst|rom~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~26_combout\ = (\PC|q\(2) & (\PC|q\(7) & (\PC|q\(6) $ (!\PC|q\(4))))) # (!\PC|q\(2) & (\PC|q\(6) & (\PC|q\(4) $ (\PC|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(6),
	datac => \PC|q\(4),
	datad => \PC|q\(7),
	combout => \memoriaInst|rom~26_combout\);

\memoriaInst|rom~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~27_combout\ = (\PC|q\(6) & (\PC|q\(2) & (!\PC|q\(4) & !\PC|q\(7)))) # (!\PC|q\(6) & (\PC|q\(7) & (\PC|q\(2) $ (!\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(6),
	datac => \PC|q\(4),
	datad => \PC|q\(7),
	combout => \memoriaInst|rom~27_combout\);

\memoriaInst|rom~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~28_combout\ = (\PC|q\(7)) # ((\PC|q\(2) & ((\PC|q\(6)) # (!\PC|q\(4)))) # (!\PC|q\(2) & (\PC|q\(6) $ (\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(6),
	datac => \PC|q\(4),
	datad => \PC|q\(7),
	combout => \memoriaInst|rom~28_combout\);

\memoriaInst|rom~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~29_combout\ = (\PC|q\(3) & (((!\memoriaInst|rom~28_combout\)))) # (!\PC|q\(3) & ((\PC|q\(5) & (\memoriaInst|rom~27_combout\)) # (!\PC|q\(5) & ((\memoriaInst|rom~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \memoriaInst|rom~27_combout\,
	datad => \memoriaInst|rom~28_combout\,
	combout => \memoriaInst|rom~29_combout\);

\memoriaInst|rom~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~30_combout\ = (\memoriaInst|rom~13_combout\ & ((\PC|q\(5) & ((\memoriaInst|rom~29_combout\))) # (!\PC|q\(5) & (\memoriaInst|rom~26_combout\ & !\memoriaInst|rom~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~13_combout\,
	datab => \memoriaInst|rom~26_combout\,
	datac => \PC|q\(5),
	datad => \memoriaInst|rom~29_combout\,
	combout => \memoriaInst|rom~30_combout\);

\IF_ID|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(11));

\ID_EX|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(21));

\memoriaInst|rom~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~33_combout\ = (\PC|q\(3) & (\PC|q\(6) & (\PC|q\(4) & !\PC|q\(5)))) # (!\PC|q\(3) & (!\PC|q\(6) & ((\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datab => \PC|q\(6),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~33_combout\);

\memoriaInst|rom~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~34_combout\ = (\PC|q\(6) & (\PC|q\(4) & (\PC|q\(3) $ (!\PC|q\(5))))) # (!\PC|q\(6) & (((!\PC|q\(4) & \PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datab => \PC|q\(6),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~34_combout\);

\memoriaInst|rom~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~35_combout\ = (\PC|q\(2) & (!\memoriaInst|rom~34_combout\ & \memoriaInst|rom~33_combout\)) # (!\PC|q\(2) & (\memoriaInst|rom~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \memoriaInst|rom~34_combout\,
	datac => \memoriaInst|rom~33_combout\,
	combout => \memoriaInst|rom~35_combout\);

\memoriaInst|rom~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~36_combout\ = (\memoriaInst|rom~13_combout\ & (\memoriaInst|rom~35_combout\ & (\PC|q\(7) $ (!\memoriaInst|rom~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \memoriaInst|rom~13_combout\,
	datac => \memoriaInst|rom~33_combout\,
	datad => \memoriaInst|rom~35_combout\,
	combout => \memoriaInst|rom~36_combout\);

\IF_ID|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(24));

\ID_EX|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(5));

\mux_RtRd|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[0]~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(21))) # (!\ID_EX|q\(140) & ((\ID_EX|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(21),
	datab => \ID_EX|q\(5),
	datad => \ID_EX|q\(140),
	combout => \mux_RtRd|Y[0]~0_combout\);

\EX_MEM|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_RtRd|Y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(0));

\MEM_WB|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(0));

\memoriaInst|rom~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~31_combout\ = (\PC|q\(3) & (\PC|q\(5) & (\PC|q\(2) $ (!\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~31_combout\);

\memoriaInst|rom~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~32_combout\ = (\memoriaInst|rom~13_combout\ & (\memoriaInst|rom~31_combout\ & (!\PC|q\(6) & !\PC|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~13_combout\,
	datab => \memoriaInst|rom~31_combout\,
	datac => \PC|q\(6),
	datad => \PC|q\(7),
	combout => \memoriaInst|rom~32_combout\);

\IF_ID|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(12));

\ID_EX|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(22));

\memoriaInst|rom~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~58_combout\ = (\PC|q\(2) & (\PC|q\(5) & (!\PC|q\(6) & \PC|q\(4)))) # (!\PC|q\(2) & ((\PC|q\(6) $ (!\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(6),
	datac => \PC|q\(2),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~58_combout\);

\memoriaInst|rom~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~59_combout\ = (\memoriaInst|rom~58_combout\ & (!\PC|q\(7) & (\PC|q\(5) $ (!\PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \memoriaInst|rom~58_combout\,
	datac => \PC|q\(3),
	datad => \PC|q\(7),
	combout => \memoriaInst|rom~59_combout\);

\memoriaInst|rom~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~24_combout\ = (\PC|q\(7) & !\PC|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~24_combout\);

\memoriaInst|rom~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~37_combout\ = (\PC|q\(6) & (\PC|q\(3) & (\memoriaInst|rom~11_combout\ & \memoriaInst|rom~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(3),
	datac => \memoriaInst|rom~11_combout\,
	datad => \memoriaInst|rom~24_combout\,
	combout => \memoriaInst|rom~37_combout\);

\memoriaInst|rom~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~56_combout\ = (!\PC|q\(8) & (!\PC|q\(9) & ((\memoriaInst|rom~59_combout\) # (\memoriaInst|rom~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(8),
	datab => \PC|q\(9),
	datac => \memoriaInst|rom~59_combout\,
	datad => \memoriaInst|rom~37_combout\,
	combout => \memoriaInst|rom~56_combout\);

\IF_ID|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(17));

\ID_EX|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(6));

\mux_RtRd|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[1]~1_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(22))) # (!\ID_EX|q\(140) & ((\ID_EX|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(22),
	datab => \ID_EX|q\(6),
	datad => \ID_EX|q\(140),
	combout => \mux_RtRd|Y[1]~1_combout\);

\EX_MEM|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_RtRd|Y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(1));

\MEM_WB|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(1));

\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\memoriaInst|rom~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~38_combout\ = (\PC|q\(4) & (((!\PC|q\(7))))) # (!\PC|q\(4) & ((\PC|q\(6) & ((!\PC|q\(2)) # (!\PC|q\(7)))) # (!\PC|q\(6) & ((\PC|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(7),
	datac => \PC|q\(2),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~38_combout\);

\memoriaInst|rom~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~39_combout\ = (\PC|q\(7) & (((!\PC|q\(5) & \memoriaInst|rom~38_combout\)) # (!\PC|q\(3)))) # (!\PC|q\(7) & ((\memoriaInst|rom~38_combout\ & ((!\PC|q\(3)))) # (!\memoriaInst|rom~38_combout\ & (\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \PC|q\(7),
	datad => \memoriaInst|rom~38_combout\,
	combout => \memoriaInst|rom~39_combout\);

\memoriaInst|rom~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~40_combout\ = (\memoriaInst|rom~13_combout\ & ((\PC|q\(3) & ((\memoriaInst|rom~21_combout\) # (\memoriaInst|rom~39_combout\))) # (!\PC|q\(3) & ((!\memoriaInst|rom~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~21_combout\,
	datab => \memoriaInst|rom~13_combout\,
	datac => \PC|q\(3),
	datad => \memoriaInst|rom~39_combout\,
	combout => \memoriaInst|rom~40_combout\);

\IF_ID|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(19));

\ID_EX|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(8));

\mux_RtRd|Y[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[3]~2_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(21))) # (!\ID_EX|q\(140) & ((\ID_EX|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(21),
	datab => \ID_EX|q\(8),
	datad => \ID_EX|q\(140),
	combout => \mux_RtRd|Y[3]~2_combout\);

\EX_MEM|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_RtRd|Y[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(3));

\MEM_WB|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(3));

\memoriaInst|rom~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~41_combout\ = (\memoriaInst|rom~13_combout\ & (\PC|q\(5) & (\memoriaInst|rom~27_combout\ & !\PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~13_combout\,
	datab => \PC|q\(5),
	datac => \memoriaInst|rom~27_combout\,
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~41_combout\);

\IF_ID|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(20));

\ID_EX|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(9));

\mux_RtRd|Y[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[4]~3_combout\ = (\ID_EX|q\(9) & !\ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(9),
	datad => \ID_EX|q\(140),
	combout => \mux_RtRd|Y[4]~3_combout\);

\EX_MEM|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_RtRd|Y[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(4));

\MEM_WB|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(4));

\regs|registrador_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\regs|registrador_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(1));

\regs|registrador_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(3));

\regs|registrador_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(4));

\regs|registrador_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(2));

\regs|registrador~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~41_combout\ = (\regs|registrador_rtl_1_bypass\(1) & (\regs|registrador_rtl_1_bypass\(2) & (\regs|registrador_rtl_1_bypass\(3) $ (!\regs|registrador_rtl_1_bypass\(4))))) # (!\regs|registrador_rtl_1_bypass\(1) & 
-- (!\regs|registrador_rtl_1_bypass\(2) & (\regs|registrador_rtl_1_bypass\(3) $ (!\regs|registrador_rtl_1_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(1),
	datab => \regs|registrador_rtl_1_bypass\(3),
	datac => \regs|registrador_rtl_1_bypass\(4),
	datad => \regs|registrador_rtl_1_bypass\(2),
	combout => \regs|registrador~41_combout\);

\regs|registrador_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(70),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(0));

\regs|registrador_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(7));

\regs|registrador_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(9));

\regs|registrador_rtl_1_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(10));

\regs|registrador_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(8));

\regs|registrador~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~42_combout\ = (\regs|registrador_rtl_1_bypass\(7) & (\regs|registrador_rtl_1_bypass\(8) & (\regs|registrador_rtl_1_bypass\(9) $ (!\regs|registrador_rtl_1_bypass\(10))))) # (!\regs|registrador_rtl_1_bypass\(7) & 
-- (!\regs|registrador_rtl_1_bypass\(8) & (\regs|registrador_rtl_1_bypass\(9) $ (!\regs|registrador_rtl_1_bypass\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(7),
	datab => \regs|registrador_rtl_1_bypass\(9),
	datac => \regs|registrador_rtl_1_bypass\(10),
	datad => \regs|registrador_rtl_1_bypass\(8),
	combout => \regs|registrador~42_combout\);

\regs|registrador~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~43_combout\ = (\regs|registrador~41_combout\ & (\regs|registrador_rtl_1_bypass\(0) & \regs|registrador~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_1_bypass\(0),
	datac => \regs|registrador~42_combout\,
	combout => \regs|registrador~43_combout\);

\regs|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|Equal1~0_combout\ = (!\IF_ID|q\(24) & (!\IF_ID|q\(20) & (!\IF_ID|q\(19) & !\IF_ID|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(24),
	datab => \IF_ID|q\(20),
	datac => \IF_ID|q\(19),
	datad => \IF_ID|q\(17),
	combout => \regs|Equal1~0_combout\);

\regs|saidaB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[0]~0_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(11))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(11),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[0]~0_combout\);

\controlador1|reg_seg7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(0));

\regs|registrador_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(11));

\memoriaInst|rom~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~42_combout\ = (\PC|q\(7) & (!\PC|q\(5) & (\PC|q\(2) $ (\PC|q\(6))))) # (!\PC|q\(7) & (!\PC|q\(2) & (!\PC|q\(6) & \PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(6),
	datac => \PC|q\(7),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~42_combout\);

\memoriaInst|rom~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~43_combout\ = (\PC|q\(3) & (\memoriaInst|rom~13_combout\ & (\memoriaInst|rom~42_combout\ & !\PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datab => \memoriaInst|rom~13_combout\,
	datac => \memoriaInst|rom~42_combout\,
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~43_combout\);

\memoriaInst|rom~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~44_combout\ = (\PC|q\(3) & (!\PC|q\(4) & (\PC|q\(2) $ (\PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~44_combout\);

\memoriaInst|rom~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~57_combout\ = (!\PC|q\(8) & (!\PC|q\(9) & (\memoriaInst|rom~24_combout\ & \memoriaInst|rom~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(8),
	datab => \PC|q\(9),
	datac => \memoriaInst|rom~24_combout\,
	datad => \memoriaInst|rom~44_combout\,
	combout => \memoriaInst|rom~57_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\regs|registrador_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(1));

\regs|registrador_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(3));

\regs|registrador_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(4));

\regs|registrador_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(2));

\regs|registrador~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~38_combout\ = (\regs|registrador_rtl_0_bypass\(1) & (\regs|registrador_rtl_0_bypass\(2) & (\regs|registrador_rtl_0_bypass\(3) $ (!\regs|registrador_rtl_0_bypass\(4))))) # (!\regs|registrador_rtl_0_bypass\(1) & 
-- (!\regs|registrador_rtl_0_bypass\(2) & (\regs|registrador_rtl_0_bypass\(3) $ (!\regs|registrador_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(1),
	datab => \regs|registrador_rtl_0_bypass\(3),
	datac => \regs|registrador_rtl_0_bypass\(4),
	datad => \regs|registrador_rtl_0_bypass\(2),
	combout => \regs|registrador~38_combout\);

\regs|registrador_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(70),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(0));

\regs|registrador_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(7));

\regs|registrador_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(8));

\regs|registrador_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(9));

\regs|registrador~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~39_combout\ = (\regs|registrador_rtl_0_bypass\(0) & (!\regs|registrador_rtl_0_bypass\(9) & (\regs|registrador_rtl_0_bypass\(7) $ (!\regs|registrador_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(0),
	datab => \regs|registrador_rtl_0_bypass\(7),
	datac => \regs|registrador_rtl_0_bypass\(8),
	datad => \regs|registrador_rtl_0_bypass\(9),
	combout => \regs|registrador~39_combout\);

\regs|registrador~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~40_combout\ = (\regs|registrador~38_combout\ & \regs|registrador~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~38_combout\,
	datab => \regs|registrador~39_combout\,
	combout => \regs|registrador~40_combout\);

\IF_ID|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(22));

\IF_ID|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(21));

\regs|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|Equal0~0_combout\ = (!\IF_ID|q\(24) & (!\IF_ID|q\(22) & !\IF_ID|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|q\(24),
	datac => \IF_ID|q\(22),
	datad => \IF_ID|q\(21),
	combout => \regs|Equal0~0_combout\);

\regs|saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[0]~0_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(11))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(11),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[0]~0_combout\);

\ID_EX|q[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(74));

\ula|full_adder|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result[0]~0_combout\ = \ID_EX|q\(74) $ (((\ID_EX|q\(138) & ((\ID_EX|q\(10)))) # (!\ID_EX|q\(138) & (\controlador1|reg_seg7|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \controlador1|reg_seg7|q\(0),
	datac => \ID_EX|q\(10),
	datad => \ID_EX|q\(74),
	combout => \ula|full_adder|result[0]~0_combout\);

\ula_ctrl|ula_ctrl[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[1]~6_combout\ = (!\ID_EX|q\(10) & (!\ID_EX|q\(12) & ((\ID_EX|q\(11)) # (!\ID_EX|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(13),
	datac => \ID_EX|q\(10),
	datad => \ID_EX|q\(12),
	combout => \ula_ctrl|ula_ctrl[1]~6_combout\);

\ula_ctrl|ula_ctrl[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[1]~7_combout\ = ((\ID_EX|q\(15) & \ula_ctrl|ula_ctrl[1]~6_combout\)) # (!\ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ula_ctrl|ula_ctrl[1]~6_combout\,
	datad => \ID_EX|q\(140),
	combout => \ula_ctrl|ula_ctrl[1]~7_combout\);

\ula_ctrl|ula_ctrl[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~8_combout\ = (\ID_EX|q\(11) & (!\ID_EX|q\(10) & !\ID_EX|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datac => \ID_EX|q\(10),
	datad => \ID_EX|q\(12),
	combout => \ula_ctrl|ula_ctrl[0]~8_combout\);

\mux_Rt_im|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[0]~0_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(10))) # (!\ID_EX|q\(138) & ((\controlador1|reg_seg7|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(10),
	datab => \controlador1|reg_seg7|q\(0),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[0]~0_combout\);

\ula|mux2B|Y[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[0]~7_combout\ = \mux_Rt_im|Y[0]~0_combout\ $ ((((!\ula_ctrl|ula_ctrl[0]~8_combout\) # (!\ID_EX|q\(140))) # (!\ID_EX|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(140),
	datac => \ula_ctrl|ula_ctrl[0]~8_combout\,
	datad => \mux_Rt_im|Y[0]~0_combout\,
	combout => \ula|mux2B|Y[0]~7_combout\);

\ula_ctrl|ula_ctrl[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~10_combout\ = (\ID_EX|q\(10) & (!\ID_EX|q\(11) & (!\ID_EX|q\(13) & \ID_EX|q\(12)))) # (!\ID_EX|q\(10) & (\ID_EX|q\(11) & (\ID_EX|q\(13) & !\ID_EX|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(10),
	datab => \ID_EX|q\(11),
	datac => \ID_EX|q\(13),
	datad => \ID_EX|q\(12),
	combout => \ula_ctrl|ula_ctrl[0]~10_combout\);

\ula_ctrl|ula_ctrl[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~11_combout\ = (\ID_EX|q\(15) & (\ID_EX|q\(140) & \ula_ctrl|ula_ctrl[0]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(140),
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	combout => \ula_ctrl|ula_ctrl[0]~11_combout\);

\ula|mux4|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~0_combout\ = (\ula|mux2B|Y[0]~7_combout\ & (\ula_ctrl|ula_ctrl[0]~11_combout\ & ((\ID_EX|q\(74)) # (\ula_ctrl|ula_ctrl[1]~7_combout\)))) # (!\ula|mux2B|Y[0]~7_combout\ & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # ((\ID_EX|q\(74) & 
-- !\ula_ctrl|ula_ctrl[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[0]~7_combout\,
	datab => \ID_EX|q\(74),
	datac => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~7_combout\,
	combout => \ula|mux4|Mux31~0_combout\);

\regs|registrador_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(68),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(42));

\regs|registrador_rtl_1|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

\regs|saidaB[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[31]~31_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(42))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(42),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[31]~31_combout\);

\controlador1|reg_seg7|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(31));

\EX_MEM|q[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(36));

\memoriaDados|ram_rtl_0_bypass[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(36),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(75));

\regs|registrador_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(13));

\regs|registrador_rtl_1|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\regs|saidaB[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[2]~2_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(13))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a2~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(13),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[2]~2_combout\);

\controlador1|reg_seg7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(2));

\EX_MEM|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(7));

\memoriaDados|ram_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(17));

\regs|registrador_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(14));

\regs|registrador_rtl_1|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\regs|saidaB[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[3]~3_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(14))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a3~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(14),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[3]~3_combout\);

\controlador1|reg_seg7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(3));

\EX_MEM|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(8));

\memoriaDados|ram_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(19));

\regs|registrador_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(15));

\regs|registrador_rtl_1|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\regs|saidaB[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[4]~4_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(15))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a4~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(15),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[4]~4_combout\);

\controlador1|reg_seg7|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(4));

\EX_MEM|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(9));

\memoriaDados|ram_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(21));

\regs|registrador_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(16));

\regs|registrador_rtl_1|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\regs|saidaB[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[5]~5_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(16))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a5~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(16),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[5]~5_combout\);

\controlador1|reg_seg7|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(5));

\EX_MEM|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(10));

\memoriaDados|ram_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(23));

\regs|registrador_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(17));

\regs|registrador_rtl_1|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\regs|saidaB[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[6]~6_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(17))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a6~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(17),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[6]~6_combout\);

\controlador1|reg_seg7|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(6));

\EX_MEM|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(11));

\memoriaDados|ram_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(25));

\regs|registrador_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(18));

\regs|registrador_rtl_1|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\regs|saidaB[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[7]~7_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(18))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a7~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(18),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[7]~7_combout\);

\controlador1|reg_seg7|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(7));

\EX_MEM|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(12));

\memoriaDados|ram_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(27));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(28));

\memoriaDados|ram_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(1));

\memoriaDados|ram_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(3));

\memoriaDados|ram_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(4));

\memoriaDados|ram_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(2));

\memoriaDados|ram~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~39_combout\ = (\memoriaDados|ram_rtl_0_bypass\(1) & (\memoriaDados|ram_rtl_0_bypass\(2) & (\memoriaDados|ram_rtl_0_bypass\(3) $ (!\memoriaDados|ram_rtl_0_bypass\(4))))) # (!\memoriaDados|ram_rtl_0_bypass\(1) & 
-- (!\memoriaDados|ram_rtl_0_bypass\(2) & (\memoriaDados|ram_rtl_0_bypass\(3) $ (!\memoriaDados|ram_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(1),
	datab => \memoriaDados|ram_rtl_0_bypass\(3),
	datac => \memoriaDados|ram_rtl_0_bypass\(4),
	datad => \memoriaDados|ram_rtl_0_bypass\(2),
	combout => \memoriaDados|ram~39_combout\);

\memoriaDados|ram_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(5));

\memoriaDados|ram_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(7));

\memoriaDados|ram_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(8));

\memoriaDados|ram_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(6));

\memoriaDados|ram~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~40_combout\ = (\memoriaDados|ram_rtl_0_bypass\(5) & (\memoriaDados|ram_rtl_0_bypass\(6) & (\memoriaDados|ram_rtl_0_bypass\(7) $ (!\memoriaDados|ram_rtl_0_bypass\(8))))) # (!\memoriaDados|ram_rtl_0_bypass\(5) & 
-- (!\memoriaDados|ram_rtl_0_bypass\(6) & (\memoriaDados|ram_rtl_0_bypass\(7) $ (!\memoriaDados|ram_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(5),
	datab => \memoriaDados|ram_rtl_0_bypass\(7),
	datac => \memoriaDados|ram_rtl_0_bypass\(8),
	datad => \memoriaDados|ram_rtl_0_bypass\(6),
	combout => \memoriaDados|ram~40_combout\);

\memoriaDados|ram_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(102),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(0));

\memoriaDados|ram_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(9));

\memoriaDados|ram_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(11));

\memoriaDados|ram_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(12));

\memoriaDados|ram_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(10));

\memoriaDados|ram~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~41_combout\ = (\memoriaDados|ram_rtl_0_bypass\(9) & (\memoriaDados|ram_rtl_0_bypass\(10) & (\memoriaDados|ram_rtl_0_bypass\(11) $ (!\memoriaDados|ram_rtl_0_bypass\(12))))) # (!\memoriaDados|ram_rtl_0_bypass\(9) & 
-- (!\memoriaDados|ram_rtl_0_bypass\(10) & (\memoriaDados|ram_rtl_0_bypass\(11) $ (!\memoriaDados|ram_rtl_0_bypass\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(9),
	datab => \memoriaDados|ram_rtl_0_bypass\(11),
	datac => \memoriaDados|ram_rtl_0_bypass\(12),
	datad => \memoriaDados|ram_rtl_0_bypass\(10),
	combout => \memoriaDados|ram~41_combout\);

\memoriaDados|ram~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~42_combout\ = (\memoriaDados|ram~39_combout\ & (\memoriaDados|ram~40_combout\ & (\memoriaDados|ram_rtl_0_bypass\(0) & \memoriaDados|ram~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~39_combout\,
	datab => \memoriaDados|ram~40_combout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(0),
	datad => \memoriaDados|ram~41_combout\,
	combout => \memoriaDados|ram~42_combout\);

\memoriaDados|ram~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~50_combout\ = (\memoriaDados|ram_rtl_0_bypass\(28) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(27))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(28) & (\memoriaDados|ram_rtl_0_bypass\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(27),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(28),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~50_combout\);

\MEM_WB|q[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(44));

\regs|registrador_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(18));

\regs|registrador_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

\regs|saidaA[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[7]~7_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(18))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(18),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[7]~7_combout\);

\ID_EX|q[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(81));

\mux_Rt_im|Y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[7]~7_combout\ = (\controlador1|reg_seg7|q\(7) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(7),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[7]~7_combout\);

\ula_ctrl|ula_ctrl[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~9_combout\ = (\ID_EX|q\(15) & \ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(140),
	combout => \ula_ctrl|ula_ctrl[0]~9_combout\);

\ula_ctrl|ula_ctrl[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[2]~12_combout\ = ((\ID_EX|q\(10)) # ((\ID_EX|q\(12)) # (!\ula_ctrl|ula_ctrl[0]~9_combout\))) # (!\ID_EX|q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(10),
	datac => \ID_EX|q\(12),
	datad => \ula_ctrl|ula_ctrl[0]~9_combout\,
	combout => \ula_ctrl|ula_ctrl[2]~12_combout\);

\ula|mux4|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~0_combout\ = (\ID_EX|q\(81) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[7]~7_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(81) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[7]~7_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(81),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[7]~7_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux24~0_combout\);

\ula|mux4|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~1_combout\ = ((\ID_EX|q\(15) & (\ula_ctrl|ula_ctrl[1]~6_combout\ & !\ula_ctrl|ula_ctrl[0]~10_combout\))) # (!\ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ula_ctrl|ula_ctrl[1]~6_combout\,
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux30~1_combout\);

\mux_Rt_im|Y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[6]~6_combout\ = (\controlador1|reg_seg7|q\(6) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(6),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[6]~6_combout\);

\mux_Rt_im|Y[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[5]~5_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(15))) # (!\ID_EX|q\(138) & ((\controlador1|reg_seg7|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \controlador1|reg_seg7|q\(5),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[5]~5_combout\);

\mux_Rt_im|Y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[4]~4_combout\ = (\controlador1|reg_seg7|q\(4) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(4),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[4]~4_combout\);

\mux_Rt_im|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[3]~3_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(13))) # (!\ID_EX|q\(138) & ((\controlador1|reg_seg7|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(13),
	datab => \controlador1|reg_seg7|q\(3),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[3]~3_combout\);

\mux_Rt_im|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[2]~2_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(12))) # (!\ID_EX|q\(138) & ((\controlador1|reg_seg7|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(12),
	datab => \controlador1|reg_seg7|q\(2),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[2]~2_combout\);

\EX_MEM|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(6));

\memoriaDados|ram_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(15));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(16));

\memoriaDados|ram~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~44_combout\ = (\memoriaDados|ram_rtl_0_bypass\(16) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(15))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(16) & (\memoriaDados|ram_rtl_0_bypass\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(15),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(16),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~44_combout\);

\MEM_WB|q[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(38));

\regs|registrador_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(12));

\regs|registrador_rtl_1|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\regs|saidaB[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[1]~1_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(12))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(12),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[1]~1_combout\);

\controlador1|reg_seg7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(1));

\mux_Rt_im|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[1]~1_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(11))) # (!\ID_EX|q\(138) & ((\controlador1|reg_seg7|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \controlador1|reg_seg7|q\(1),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[1]~1_combout\);

\regs|registrador_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(12));

\regs|registrador_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

\regs|saidaA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[1]~1_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(12))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(12),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[1]~1_combout\);

\ID_EX|q[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(75));

\ula|full_adder|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[0]~0_combout\ = (\mux_Rt_im|Y[0]~0_combout\ & (\ID_EX|q\(74))) # (!\mux_Rt_im|Y[0]~0_combout\ & (((\ula_ctrl|ula_ctrl[0]~8_combout\ & \ula_ctrl|ula_ctrl[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(74),
	datab => \ula_ctrl|ula_ctrl[0]~8_combout\,
	datac => \ula_ctrl|ula_ctrl[0]~9_combout\,
	datad => \mux_Rt_im|Y[0]~0_combout\,
	combout => \ula|full_adder|c_out[0]~0_combout\);

\ula|full_adder|c_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[1]~1_combout\ = (\ID_EX|q\(75) & ((\ula|full_adder|c_out[0]~0_combout\) # (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (!\mux_Rt_im|Y[1]~1_combout\)))) # (!\ID_EX|q\(75) & (\ula|full_adder|c_out[0]~0_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (!\mux_Rt_im|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \ID_EX|q\(75),
	datad => \ula|full_adder|c_out[0]~0_combout\,
	combout => \ula|full_adder|c_out[1]~1_combout\);

\ula|full_adder|c_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[2]~2_combout\ = (\ID_EX|q\(76) & ((\ula|full_adder|c_out[1]~1_combout\) # (\mux_Rt_im|Y[2]~2_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(76) & (\ula|full_adder|c_out[1]~1_combout\ & (\mux_Rt_im|Y[2]~2_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~2_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(76),
	datad => \ula|full_adder|c_out[1]~1_combout\,
	combout => \ula|full_adder|c_out[2]~2_combout\);

\ula|full_adder|c_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[3]~3_combout\ = (\ID_EX|q\(77) & ((\ula|full_adder|c_out[2]~2_combout\) # (\mux_Rt_im|Y[3]~3_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(77) & (\ula|full_adder|c_out[2]~2_combout\ & (\mux_Rt_im|Y[3]~3_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[3]~3_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(77),
	datad => \ula|full_adder|c_out[2]~2_combout\,
	combout => \ula|full_adder|c_out[3]~3_combout\);

\ula|full_adder|c_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[4]~4_combout\ = (\ID_EX|q\(78) & ((\ula|full_adder|c_out[3]~3_combout\) # (\mux_Rt_im|Y[4]~4_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(78) & (\ula|full_adder|c_out[3]~3_combout\ & (\mux_Rt_im|Y[4]~4_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[4]~4_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(78),
	datad => \ula|full_adder|c_out[3]~3_combout\,
	combout => \ula|full_adder|c_out[4]~4_combout\);

\ula|full_adder|c_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[5]~5_combout\ = (\ID_EX|q\(79) & ((\ula|full_adder|c_out[4]~4_combout\) # (\mux_Rt_im|Y[5]~5_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(79) & (\ula|full_adder|c_out[4]~4_combout\ & (\mux_Rt_im|Y[5]~5_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[5]~5_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(79),
	datad => \ula|full_adder|c_out[4]~4_combout\,
	combout => \ula|full_adder|c_out[5]~5_combout\);

\ula|full_adder|c_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[6]~6_combout\ = (\ID_EX|q\(80) & ((\ula|full_adder|c_out[5]~5_combout\) # (\mux_Rt_im|Y[6]~6_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(80) & (\ula|full_adder|c_out[5]~5_combout\ & (\mux_Rt_im|Y[6]~6_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[6]~6_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(80),
	datad => \ula|full_adder|c_out[5]~5_combout\,
	combout => \ula|full_adder|c_out[6]~6_combout\);

\ula|full_adder|result[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(7) = \ID_EX|q\(81) $ (\mux_Rt_im|Y[7]~7_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(81),
	datab => \mux_Rt_im|Y[7]~7_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[6]~6_combout\,
	combout => \ula|full_adder|result\(7));

\ula|mux4|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~1_combout\ = (\ula|mux4|Mux24~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(7))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux24~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux24~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(7),
	combout => \ula|mux4|Mux24~1_combout\);

\EX_MEM|q[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(44));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(26));

\memoriaDados|ram~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~49_combout\ = (\memoriaDados|ram_rtl_0_bypass\(26) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(25))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(26) & (\memoriaDados|ram_rtl_0_bypass\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(25),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(26),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~49_combout\);

\MEM_WB|q[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(43));

\regs|registrador_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(17));

\regs|registrador_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

\regs|saidaA[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[6]~6_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(17))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(17),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[6]~6_combout\);

\ID_EX|q[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(80));

\ula|mux4|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux25~0_combout\ = (\ID_EX|q\(80) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[6]~6_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(80) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[6]~6_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(80),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[6]~6_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux25~0_combout\);

\ula|full_adder|result[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(6) = \ID_EX|q\(80) $ (\mux_Rt_im|Y[6]~6_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[5]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(80),
	datab => \mux_Rt_im|Y[6]~6_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[5]~5_combout\,
	combout => \ula|full_adder|result\(6));

\ula|mux4|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux25~1_combout\ = (\ula|mux4|Mux25~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(6))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux25~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux25~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(6),
	combout => \ula|mux4|Mux25~1_combout\);

\EX_MEM|q[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(43));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000200",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(24));

\memoriaDados|ram~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~48_combout\ = (\memoriaDados|ram_rtl_0_bypass\(24) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(23))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(24) & (\memoriaDados|ram_rtl_0_bypass\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(23),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(24),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~48_combout\);

\MEM_WB|q[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(42));

\regs|registrador_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(16));

\regs|registrador_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

\regs|saidaA[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[5]~5_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(16))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(16),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[5]~5_combout\);

\ID_EX|q[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(79));

\ula|mux4|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~0_combout\ = (\ID_EX|q\(79) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[5]~5_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(79) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[5]~5_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(79),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[5]~5_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux26~0_combout\);

\ula|full_adder|result[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(5) = \ID_EX|q\(79) $ (\mux_Rt_im|Y[5]~5_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(79),
	datab => \mux_Rt_im|Y[5]~5_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[4]~4_combout\,
	combout => \ula|full_adder|result\(5));

\ula|mux4|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~1_combout\ = (\ula|mux4|Mux26~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(5))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux26~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux26~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(5),
	combout => \ula|mux4|Mux26~1_combout\);

\EX_MEM|q[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(42));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000A0",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(22));

\memoriaDados|ram~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~47_combout\ = (\memoriaDados|ram_rtl_0_bypass\(22) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(21))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(22) & (\memoriaDados|ram_rtl_0_bypass\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(21),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(22),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~47_combout\);

\MEM_WB|q[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(41));

\regs|registrador_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(41),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(15));

\regs|registrador_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

\regs|saidaA[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[4]~4_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(15))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(15),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[4]~4_combout\);

\ID_EX|q[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(78));

\ula|mux4|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~0_combout\ = (\ID_EX|q\(78) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[4]~4_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(78) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[4]~4_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(78),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[4]~4_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux27~0_combout\);

\ula|full_adder|result[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(4) = \ID_EX|q\(78) $ (\mux_Rt_im|Y[4]~4_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(78),
	datab => \mux_Rt_im|Y[4]~4_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[3]~3_combout\,
	combout => \ula|full_adder|result\(4));

\ula|mux4|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~1_combout\ = (\ula|mux4|Mux27~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(4))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux27~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux27~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(4),
	combout => \ula|mux4|Mux27~1_combout\);

\EX_MEM|q[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux27~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(41));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000001C4",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(20));

\memoriaDados|ram~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~46_combout\ = (\memoriaDados|ram_rtl_0_bypass\(20) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(19))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(20) & (\memoriaDados|ram_rtl_0_bypass\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(19),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(20),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~46_combout\);

\MEM_WB|q[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(40));

\regs|registrador_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(14));

\regs|registrador_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

\regs|saidaA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[3]~3_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(14))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(14),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[3]~3_combout\);

\ID_EX|q[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(77));

\ula|mux4|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux28~0_combout\ = (\ID_EX|q\(77) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[3]~3_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(77) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[3]~3_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[3]~3_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux28~0_combout\);

\ula|full_adder|result[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(3) = \ID_EX|q\(77) $ (\mux_Rt_im|Y[3]~3_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \mux_Rt_im|Y[3]~3_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[2]~2_combout\,
	combout => \ula|full_adder|result\(3));

\ula|mux4|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux28~1_combout\ = (\ula|mux4|Mux28~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(3))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux28~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux28~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(3),
	combout => \ula|mux4|Mux28~1_combout\);

\EX_MEM|q[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(40));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000002FE",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(18));

\memoriaDados|ram~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~45_combout\ = (\memoriaDados|ram_rtl_0_bypass\(18) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(17))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(18) & (\memoriaDados|ram_rtl_0_bypass\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(17),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(18),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~45_combout\);

\MEM_WB|q[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(39));

\regs|registrador_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(39),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(13));

\regs|registrador_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

\regs|saidaA[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[2]~2_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(13))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(13),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[2]~2_combout\);

\ID_EX|q[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(76));

\ula|mux4|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~0_combout\ = (\ID_EX|q\(76) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[2]~2_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(76) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[2]~2_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(76),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[2]~2_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux29~0_combout\);

\ula|full_adder|result[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(2) = \ID_EX|q\(76) $ (\mux_Rt_im|Y[2]~2_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(76),
	datab => \mux_Rt_im|Y[2]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[1]~1_combout\,
	combout => \ula|full_adder|result\(2));

\ula|mux4|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~1_combout\ = (\ula|mux4|Mux29~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(2))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux29~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(2),
	combout => \ula|mux4|Mux29~1_combout\);

\EX_MEM|q[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(76));

\memoriaDados|ram~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~74_combout\ = (\memoriaDados|ram_rtl_0_bypass\(76) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(75))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(76) & (\memoriaDados|ram_rtl_0_bypass\(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(75),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(76),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~74_combout\);

\MEM_WB|q[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(68));

\regs|registrador_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(68),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(42));

\regs|registrador_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\);

\regs|saidaA[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[31]~31_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(42))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(42),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[31]~31_combout\);

\ID_EX|q[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(105));

\mux_Rt_im|Y[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[31]~31_combout\ = (\controlador1|reg_seg7|q\(31) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(31),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[31]~31_combout\);

\EX_MEM|q[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(35));

\memoriaDados|ram_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(35),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(73));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(74));

\memoriaDados|ram~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~73_combout\ = (\memoriaDados|ram_rtl_0_bypass\(74) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(73))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(74) & (\memoriaDados|ram_rtl_0_bypass\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(73),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(74),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~73_combout\);

\MEM_WB|q[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(67));

\regs|registrador_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(67),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(41));

\regs|registrador_rtl_1|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

\regs|saidaB[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[30]~30_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(41))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(41),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[30]~30_combout\);

\controlador1|reg_seg7|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(30));

\mux_Rt_im|Y[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[30]~30_combout\ = (\controlador1|reg_seg7|q\(30) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(30),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[30]~30_combout\);

\regs|registrador_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(67),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(41));

\regs|registrador_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\);

\regs|saidaA[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[30]~30_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(41))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(41),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[30]~30_combout\);

\ID_EX|q[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(104));

\EX_MEM|q[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(34));

\memoriaDados|ram_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(34),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(71));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(72));

\memoriaDados|ram~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~72_combout\ = (\memoriaDados|ram_rtl_0_bypass\(72) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(71))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(72) & (\memoriaDados|ram_rtl_0_bypass\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(71),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(72),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~72_combout\);

\MEM_WB|q[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(66));

\regs|registrador_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(66),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(40));

\regs|registrador_rtl_1|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

\regs|saidaB[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[29]~29_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(40))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(40),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[29]~29_combout\);

\controlador1|reg_seg7|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(29));

\mux_Rt_im|Y[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[29]~29_combout\ = (\controlador1|reg_seg7|q\(29) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(29),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[29]~29_combout\);

\regs|registrador_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(66),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(40));

\regs|registrador_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\);

\regs|saidaA[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[29]~29_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(40))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(40),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[29]~29_combout\);

\ID_EX|q[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(103));

\EX_MEM|q[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(33));

\memoriaDados|ram_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(33),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(69));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(70));

\memoriaDados|ram~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~71_combout\ = (\memoriaDados|ram_rtl_0_bypass\(70) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(69))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(70) & (\memoriaDados|ram_rtl_0_bypass\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(69),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(70),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~71_combout\);

\MEM_WB|q[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(65));

\regs|registrador_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(65),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(39));

\regs|registrador_rtl_1|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

\regs|saidaB[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[28]~28_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(39))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(39),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[28]~28_combout\);

\controlador1|reg_seg7|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(28));

\mux_Rt_im|Y[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[28]~28_combout\ = (\controlador1|reg_seg7|q\(28) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(28),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[28]~28_combout\);

\regs|registrador_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(65),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(39));

\regs|registrador_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\);

\regs|saidaA[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[28]~28_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(39))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(39),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[28]~28_combout\);

\ID_EX|q[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(102));

\EX_MEM|q[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(32));

\memoriaDados|ram_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(67));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(68));

\memoriaDados|ram~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~70_combout\ = (\memoriaDados|ram_rtl_0_bypass\(68) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(67))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(68) & (\memoriaDados|ram_rtl_0_bypass\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(67),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(68),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~70_combout\);

\MEM_WB|q[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(64));

\regs|registrador_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(64),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(38));

\regs|registrador_rtl_1|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

\regs|saidaB[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[27]~27_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(38))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(38),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[27]~27_combout\);

\controlador1|reg_seg7|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(27));

\mux_Rt_im|Y[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[27]~27_combout\ = (\controlador1|reg_seg7|q\(27) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(27),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[27]~27_combout\);

\regs|registrador_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(64),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(38));

\regs|registrador_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\);

\regs|saidaA[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[27]~27_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(38))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(38),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[27]~27_combout\);

\ID_EX|q[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(101));

\EX_MEM|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(31));

\memoriaDados|ram_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(65));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(66));

\memoriaDados|ram~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~69_combout\ = (\memoriaDados|ram_rtl_0_bypass\(66) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(65))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(66) & (\memoriaDados|ram_rtl_0_bypass\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(65),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(66),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~69_combout\);

\MEM_WB|q[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(63));

\regs|registrador_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(37));

\regs|registrador_rtl_1|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

\regs|saidaB[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[26]~26_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(37))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(37),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[26]~26_combout\);

\controlador1|reg_seg7|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(26));

\mux_Rt_im|Y[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[26]~26_combout\ = (\controlador1|reg_seg7|q\(26) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(26),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[26]~26_combout\);

\regs|registrador_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(37));

\regs|registrador_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\);

\regs|saidaA[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[26]~26_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(37))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(37),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[26]~26_combout\);

\ID_EX|q[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(100));

\EX_MEM|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(30));

\memoriaDados|ram_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(63));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(64));

\memoriaDados|ram~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~68_combout\ = (\memoriaDados|ram_rtl_0_bypass\(64) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(63))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(64) & (\memoriaDados|ram_rtl_0_bypass\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(63),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(64),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~68_combout\);

\MEM_WB|q[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(62));

\regs|registrador_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(36));

\regs|registrador_rtl_1|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

\regs|saidaB[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[25]~25_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(36))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(36),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[25]~25_combout\);

\controlador1|reg_seg7|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(25));

\mux_Rt_im|Y[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[25]~25_combout\ = (\controlador1|reg_seg7|q\(25) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[25]~25_combout\);

\regs|registrador_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(36));

\regs|registrador_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\);

\regs|saidaA[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[25]~25_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(36))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(36),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[25]~25_combout\);

\ID_EX|q[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(99));

\EX_MEM|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(29));

\memoriaDados|ram_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(61));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(62));

\memoriaDados|ram~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~67_combout\ = (\memoriaDados|ram_rtl_0_bypass\(62) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(61))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(62) & (\memoriaDados|ram_rtl_0_bypass\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(61),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(62),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~67_combout\);

\MEM_WB|q[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(61));

\regs|registrador_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(35));

\regs|registrador_rtl_1|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

\regs|saidaB[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[24]~24_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(35))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(35),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[24]~24_combout\);

\controlador1|reg_seg7|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(24));

\mux_Rt_im|Y[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[24]~24_combout\ = (\controlador1|reg_seg7|q\(24) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(24),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[24]~24_combout\);

\regs|registrador_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(35));

\regs|registrador_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\);

\regs|saidaA[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[24]~24_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(35))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(35),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[24]~24_combout\);

\ID_EX|q[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(98));

\EX_MEM|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(28));

\memoriaDados|ram_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(59));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(60));

\memoriaDados|ram~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~66_combout\ = (\memoriaDados|ram_rtl_0_bypass\(60) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(59))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(60) & (\memoriaDados|ram_rtl_0_bypass\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(59),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(60),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~66_combout\);

\MEM_WB|q[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(60));

\regs|registrador_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(34));

\regs|registrador_rtl_1|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

\regs|saidaB[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[23]~23_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(34))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(34),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[23]~23_combout\);

\controlador1|reg_seg7|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(23));

\mux_Rt_im|Y[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[23]~23_combout\ = (\controlador1|reg_seg7|q\(23) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(23),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[23]~23_combout\);

\regs|registrador_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(34));

\regs|registrador_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\);

\regs|saidaA[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[23]~23_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(34))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(34),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[23]~23_combout\);

\ID_EX|q[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(97));

\EX_MEM|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(27));

\memoriaDados|ram_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(57));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(58));

\memoriaDados|ram~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~65_combout\ = (\memoriaDados|ram_rtl_0_bypass\(58) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(57))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(58) & (\memoriaDados|ram_rtl_0_bypass\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(57),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(58),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~65_combout\);

\MEM_WB|q[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(59));

\regs|registrador_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(33));

\regs|registrador_rtl_1|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

\regs|saidaB[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[22]~22_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(33))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(33),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[22]~22_combout\);

\controlador1|reg_seg7|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(22));

\mux_Rt_im|Y[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[22]~22_combout\ = (\controlador1|reg_seg7|q\(22) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(22),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[22]~22_combout\);

\regs|registrador_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(33));

\regs|registrador_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

\regs|saidaA[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[22]~22_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(33))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(33),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[22]~22_combout\);

\ID_EX|q[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(96));

\EX_MEM|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(26));

\memoriaDados|ram_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(55));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(56));

\memoriaDados|ram~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~64_combout\ = (\memoriaDados|ram_rtl_0_bypass\(56) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(55))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(56) & (\memoriaDados|ram_rtl_0_bypass\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(55),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(56),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~64_combout\);

\MEM_WB|q[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(58));

\regs|registrador_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(32));

\regs|registrador_rtl_1|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

\regs|saidaB[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[21]~21_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(32))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(32),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[21]~21_combout\);

\controlador1|reg_seg7|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(21));

\mux_Rt_im|Y[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[21]~21_combout\ = (\controlador1|reg_seg7|q\(21) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(21),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[21]~21_combout\);

\regs|registrador_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(32));

\regs|registrador_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\);

\regs|saidaA[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[21]~21_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(32))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(32),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[21]~21_combout\);

\ID_EX|q[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(95));

\EX_MEM|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(25));

\memoriaDados|ram_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(53));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(54));

\memoriaDados|ram~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~63_combout\ = (\memoriaDados|ram_rtl_0_bypass\(54) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(53))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(54) & (\memoriaDados|ram_rtl_0_bypass\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(53),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(54),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~63_combout\);

\MEM_WB|q[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(57));

\regs|registrador_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(31));

\regs|registrador_rtl_1|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

\regs|saidaB[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[20]~20_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(31))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(31),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[20]~20_combout\);

\controlador1|reg_seg7|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(20));

\mux_Rt_im|Y[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[20]~20_combout\ = (\controlador1|reg_seg7|q\(20) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(20),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[20]~20_combout\);

\regs|registrador_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(31));

\regs|registrador_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\);

\regs|saidaA[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[20]~20_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(31))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(31),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[20]~20_combout\);

\ID_EX|q[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(94));

\EX_MEM|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(24));

\memoriaDados|ram_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(51));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(52));

\memoriaDados|ram~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~62_combout\ = (\memoriaDados|ram_rtl_0_bypass\(52) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(51))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(52) & (\memoriaDados|ram_rtl_0_bypass\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(51),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(52),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~62_combout\);

\MEM_WB|q[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(56));

\regs|registrador_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(30));

\regs|registrador_rtl_1|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

\regs|saidaB[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[19]~19_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(30))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(30),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[19]~19_combout\);

\controlador1|reg_seg7|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(19));

\mux_Rt_im|Y[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[19]~19_combout\ = (\controlador1|reg_seg7|q\(19) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(19),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[19]~19_combout\);

\regs|registrador_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(30));

\regs|registrador_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\);

\regs|saidaA[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[19]~19_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(30))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(30),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[19]~19_combout\);

\ID_EX|q[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(93));

\EX_MEM|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(23));

\memoriaDados|ram_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(49));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(50));

\memoriaDados|ram~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~61_combout\ = (\memoriaDados|ram_rtl_0_bypass\(50) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(49))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(50) & (\memoriaDados|ram_rtl_0_bypass\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(49),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(50),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~61_combout\);

\MEM_WB|q[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(55));

\regs|registrador_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(29));

\regs|registrador_rtl_1|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

\regs|saidaB[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[18]~18_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(29))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(29),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[18]~18_combout\);

\controlador1|reg_seg7|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(18));

\mux_Rt_im|Y[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[18]~18_combout\ = (\controlador1|reg_seg7|q\(18) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(18),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[18]~18_combout\);

\regs|registrador_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(29));

\regs|registrador_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\);

\regs|saidaA[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[18]~18_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(29))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(29),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[18]~18_combout\);

\ID_EX|q[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(92));

\EX_MEM|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(22));

\memoriaDados|ram_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(47));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(48));

\memoriaDados|ram~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~60_combout\ = (\memoriaDados|ram_rtl_0_bypass\(48) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(47))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(48) & (\memoriaDados|ram_rtl_0_bypass\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(47),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(48),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~60_combout\);

\MEM_WB|q[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(54));

\regs|registrador_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(28));

\regs|registrador_rtl_1|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

\regs|saidaB[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[17]~17_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(28))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(28),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[17]~17_combout\);

\controlador1|reg_seg7|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(17));

\mux_Rt_im|Y[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[17]~17_combout\ = (\controlador1|reg_seg7|q\(17) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(17),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[17]~17_combout\);

\regs|registrador_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(28));

\regs|registrador_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\);

\regs|saidaA[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[17]~17_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(28))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(28),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[17]~17_combout\);

\ID_EX|q[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(91));

\EX_MEM|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(21));

\memoriaDados|ram_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(45));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(46));

\memoriaDados|ram~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~59_combout\ = (\memoriaDados|ram_rtl_0_bypass\(46) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(45))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(46) & (\memoriaDados|ram_rtl_0_bypass\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(45),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(46),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~59_combout\);

\MEM_WB|q[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(53));

\regs|registrador_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(27));

\regs|registrador_rtl_1|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

\regs|saidaB[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[16]~16_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(27))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(27),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[16]~16_combout\);

\controlador1|reg_seg7|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(16));

\mux_Rt_im|Y[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[16]~16_combout\ = (\controlador1|reg_seg7|q\(16) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(16),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[16]~16_combout\);

\regs|registrador_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(27));

\regs|registrador_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\);

\regs|saidaA[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[16]~16_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(27))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(27),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[16]~16_combout\);

\ID_EX|q[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(90));

\EX_MEM|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(20));

\memoriaDados|ram_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(43));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(44));

\memoriaDados|ram~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~58_combout\ = (\memoriaDados|ram_rtl_0_bypass\(44) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(43))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(44) & (\memoriaDados|ram_rtl_0_bypass\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(43),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(44),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~58_combout\);

\MEM_WB|q[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(52));

\regs|registrador_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(26));

\regs|registrador_rtl_1|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\regs|saidaB[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[15]~15_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(26))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(26),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[15]~15_combout\);

\controlador1|reg_seg7|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(15));

\mux_Rt_im|Y[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[15]~15_combout\ = (\controlador1|reg_seg7|q\(15) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(15),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[15]~15_combout\);

\regs|registrador_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(26));

\regs|registrador_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\);

\regs|saidaA[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[15]~15_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(26))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(26),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[15]~15_combout\);

\ID_EX|q[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(89));

\EX_MEM|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(19));

\memoriaDados|ram_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(41));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(42));

\memoriaDados|ram~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~57_combout\ = (\memoriaDados|ram_rtl_0_bypass\(42) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(41))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(42) & (\memoriaDados|ram_rtl_0_bypass\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(41),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(42),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~57_combout\);

\MEM_WB|q[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(51));

\regs|registrador_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(25));

\regs|registrador_rtl_1|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\regs|saidaB[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[14]~14_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(25))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(25),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[14]~14_combout\);

\controlador1|reg_seg7|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(14));

\mux_Rt_im|Y[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[14]~14_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(21))) # (!\ID_EX|q\(138) & ((\controlador1|reg_seg7|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(21),
	datab => \controlador1|reg_seg7|q\(14),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[14]~14_combout\);

\regs|registrador_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(25));

\regs|registrador_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\);

\regs|saidaA[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[14]~14_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(25))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(25),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[14]~14_combout\);

\ID_EX|q[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(88));

\EX_MEM|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(18));

\memoriaDados|ram_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(40));

\memoriaDados|ram~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~56_combout\ = (\memoriaDados|ram_rtl_0_bypass\(40) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(39))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(40) & (\memoriaDados|ram_rtl_0_bypass\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(39),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(40),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~56_combout\);

\MEM_WB|q[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(50));

\regs|registrador_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(24));

\regs|registrador_rtl_1|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\regs|saidaB[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[13]~13_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(24))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(24),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[13]~13_combout\);

\controlador1|reg_seg7|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(13));

\mux_Rt_im|Y[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[13]~13_combout\ = (\controlador1|reg_seg7|q\(13) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(13),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[13]~13_combout\);

\regs|registrador_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(24));

\regs|registrador_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\);

\regs|saidaA[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[13]~13_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(24))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(24),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[13]~13_combout\);

\ID_EX|q[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(87));

\EX_MEM|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(17));

\memoriaDados|ram_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(37));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(38));

\memoriaDados|ram~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~55_combout\ = (\memoriaDados|ram_rtl_0_bypass\(38) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(37))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(38) & (\memoriaDados|ram_rtl_0_bypass\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(37),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(38),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~55_combout\);

\MEM_WB|q[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(49));

\regs|registrador_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(23));

\regs|registrador_rtl_1|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\regs|saidaB[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[12]~12_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(23))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(23),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[12]~12_combout\);

\controlador1|reg_seg7|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(12));

\mux_Rt_im|Y[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[12]~12_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(22))) # (!\ID_EX|q\(138) & ((\controlador1|reg_seg7|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(22),
	datab => \controlador1|reg_seg7|q\(12),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[12]~12_combout\);

\regs|registrador_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(23));

\regs|registrador_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

\regs|saidaA[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[12]~12_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(23))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(23),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[12]~12_combout\);

\ID_EX|q[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(86));

\EX_MEM|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(16));

\memoriaDados|ram_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(35));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(36));

\memoriaDados|ram~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~54_combout\ = (\memoriaDados|ram_rtl_0_bypass\(36) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(35))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(36) & (\memoriaDados|ram_rtl_0_bypass\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(35),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(36),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~54_combout\);

\MEM_WB|q[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(48));

\regs|registrador_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(22));

\regs|registrador_rtl_1|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\regs|saidaB[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[11]~11_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(22))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(22),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[11]~11_combout\);

\controlador1|reg_seg7|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(11));

\mux_Rt_im|Y[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[11]~11_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(21))) # (!\ID_EX|q\(138) & ((\controlador1|reg_seg7|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(21),
	datab => \controlador1|reg_seg7|q\(11),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[11]~11_combout\);

\regs|registrador_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(22));

\regs|registrador_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\);

\regs|saidaA[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[11]~11_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(22))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(22),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[11]~11_combout\);

\ID_EX|q[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(85));

\EX_MEM|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(15));

\memoriaDados|ram_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(33));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(34));

\memoriaDados|ram~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~53_combout\ = (\memoriaDados|ram_rtl_0_bypass\(34) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(33))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(34) & (\memoriaDados|ram_rtl_0_bypass\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(33),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(34),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~53_combout\);

\MEM_WB|q[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(47));

\regs|registrador_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(21));

\regs|registrador_rtl_1|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\regs|saidaB[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[10]~10_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(21))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(21),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[10]~10_combout\);

\controlador1|reg_seg7|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(10));

\mux_Rt_im|Y[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[10]~10_combout\ = (\controlador1|reg_seg7|q\(10) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[10]~10_combout\);

\regs|registrador_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(21));

\regs|registrador_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\);

\regs|saidaA[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[10]~10_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(21))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(21),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[10]~10_combout\);

\ID_EX|q[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(84));

\EX_MEM|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(14));

\memoriaDados|ram_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(31));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(32));

\memoriaDados|ram~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~52_combout\ = (\memoriaDados|ram_rtl_0_bypass\(32) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(31))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(32) & (\memoriaDados|ram_rtl_0_bypass\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(31),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(32),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~52_combout\);

\MEM_WB|q[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(46));

\regs|registrador_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(20));

\regs|registrador_rtl_1|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\regs|saidaB[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[9]~9_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(20))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(20),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[9]~9_combout\);

\controlador1|reg_seg7|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(9));

\mux_Rt_im|Y[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[9]~9_combout\ = (\controlador1|reg_seg7|q\(9) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(9),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[9]~9_combout\);

\regs|registrador_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(20));

\regs|registrador_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\);

\regs|saidaA[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[9]~9_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(20))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(20),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[9]~9_combout\);

\ID_EX|q[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(83));

\EX_MEM|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(13));

\memoriaDados|ram_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(29));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(30));

\memoriaDados|ram~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~51_combout\ = (\memoriaDados|ram_rtl_0_bypass\(30) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(29))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(30) & (\memoriaDados|ram_rtl_0_bypass\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(29),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(30),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~51_combout\);

\MEM_WB|q[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(45));

\regs|registrador_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(19));

\regs|registrador_rtl_1|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\regs|saidaB[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[8]~8_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(19))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(19),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[8]~8_combout\);

\controlador1|reg_seg7|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(8));

\mux_Rt_im|Y[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[8]~8_combout\ = (\controlador1|reg_seg7|q\(8) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(8),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[8]~8_combout\);

\regs|registrador_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(19));

\regs|registrador_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WB|q\(70),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\);

\regs|saidaA[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[8]~8_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(19))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(19),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[8]~8_combout\);

\ID_EX|q[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(82));

\ula|full_adder|c_out[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[7]~7_combout\ = (\ID_EX|q\(81) & ((\ula|full_adder|c_out[6]~6_combout\) # (\mux_Rt_im|Y[7]~7_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(81) & (\ula|full_adder|c_out[6]~6_combout\ & (\mux_Rt_im|Y[7]~7_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[7]~7_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(81),
	datad => \ula|full_adder|c_out[6]~6_combout\,
	combout => \ula|full_adder|c_out[7]~7_combout\);

\ula|full_adder|c_out[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[8]~8_combout\ = (\ID_EX|q\(82) & ((\ula|full_adder|c_out[7]~7_combout\) # (\mux_Rt_im|Y[8]~8_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(82) & (\ula|full_adder|c_out[7]~7_combout\ & (\mux_Rt_im|Y[8]~8_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[8]~8_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(82),
	datad => \ula|full_adder|c_out[7]~7_combout\,
	combout => \ula|full_adder|c_out[8]~8_combout\);

\ula|full_adder|c_out[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[9]~9_combout\ = (\ID_EX|q\(83) & ((\ula|full_adder|c_out[8]~8_combout\) # (\mux_Rt_im|Y[9]~9_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(83) & (\ula|full_adder|c_out[8]~8_combout\ & (\mux_Rt_im|Y[9]~9_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[9]~9_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(83),
	datad => \ula|full_adder|c_out[8]~8_combout\,
	combout => \ula|full_adder|c_out[9]~9_combout\);

\ula|full_adder|c_out[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[10]~10_combout\ = (\ID_EX|q\(84) & ((\ula|full_adder|c_out[9]~9_combout\) # (\mux_Rt_im|Y[10]~10_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(84) & (\ula|full_adder|c_out[9]~9_combout\ & 
-- (\mux_Rt_im|Y[10]~10_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[10]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(84),
	datad => \ula|full_adder|c_out[9]~9_combout\,
	combout => \ula|full_adder|c_out[10]~10_combout\);

\ula|full_adder|c_out[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[11]~11_combout\ = (\ID_EX|q\(85) & ((\ula|full_adder|c_out[10]~10_combout\) # (\mux_Rt_im|Y[11]~11_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(85) & (\ula|full_adder|c_out[10]~10_combout\ & 
-- (\mux_Rt_im|Y[11]~11_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[11]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(85),
	datad => \ula|full_adder|c_out[10]~10_combout\,
	combout => \ula|full_adder|c_out[11]~11_combout\);

\ula|full_adder|c_out[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[12]~12_combout\ = (\ID_EX|q\(86) & ((\ula|full_adder|c_out[11]~11_combout\) # (\mux_Rt_im|Y[12]~12_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(86) & (\ula|full_adder|c_out[11]~11_combout\ & 
-- (\mux_Rt_im|Y[12]~12_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[12]~12_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(86),
	datad => \ula|full_adder|c_out[11]~11_combout\,
	combout => \ula|full_adder|c_out[12]~12_combout\);

\ula|full_adder|c_out[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[13]~13_combout\ = (\ID_EX|q\(87) & ((\ula|full_adder|c_out[12]~12_combout\) # (\mux_Rt_im|Y[13]~13_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(87) & (\ula|full_adder|c_out[12]~12_combout\ & 
-- (\mux_Rt_im|Y[13]~13_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[13]~13_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(87),
	datad => \ula|full_adder|c_out[12]~12_combout\,
	combout => \ula|full_adder|c_out[13]~13_combout\);

\ula|full_adder|c_out[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[14]~14_combout\ = (\ID_EX|q\(88) & ((\ula|full_adder|c_out[13]~13_combout\) # (\mux_Rt_im|Y[14]~14_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(88) & (\ula|full_adder|c_out[13]~13_combout\ & 
-- (\mux_Rt_im|Y[14]~14_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[14]~14_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(88),
	datad => \ula|full_adder|c_out[13]~13_combout\,
	combout => \ula|full_adder|c_out[14]~14_combout\);

\ula|full_adder|c_out[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[15]~15_combout\ = (\ID_EX|q\(89) & ((\ula|full_adder|c_out[14]~14_combout\) # (\mux_Rt_im|Y[15]~15_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(89) & (\ula|full_adder|c_out[14]~14_combout\ & 
-- (\mux_Rt_im|Y[15]~15_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[15]~15_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(89),
	datad => \ula|full_adder|c_out[14]~14_combout\,
	combout => \ula|full_adder|c_out[15]~15_combout\);

\ula|full_adder|c_out[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[16]~16_combout\ = (\ID_EX|q\(90) & ((\ula|full_adder|c_out[15]~15_combout\) # (\mux_Rt_im|Y[16]~16_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(90) & (\ula|full_adder|c_out[15]~15_combout\ & 
-- (\mux_Rt_im|Y[16]~16_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[16]~16_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(90),
	datad => \ula|full_adder|c_out[15]~15_combout\,
	combout => \ula|full_adder|c_out[16]~16_combout\);

\ula|full_adder|c_out[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[17]~17_combout\ = (\ID_EX|q\(91) & ((\ula|full_adder|c_out[16]~16_combout\) # (\mux_Rt_im|Y[17]~17_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(91) & (\ula|full_adder|c_out[16]~16_combout\ & 
-- (\mux_Rt_im|Y[17]~17_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[17]~17_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(91),
	datad => \ula|full_adder|c_out[16]~16_combout\,
	combout => \ula|full_adder|c_out[17]~17_combout\);

\ula|full_adder|c_out[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[18]~18_combout\ = (\ID_EX|q\(92) & ((\ula|full_adder|c_out[17]~17_combout\) # (\mux_Rt_im|Y[18]~18_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(92) & (\ula|full_adder|c_out[17]~17_combout\ & 
-- (\mux_Rt_im|Y[18]~18_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[18]~18_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(92),
	datad => \ula|full_adder|c_out[17]~17_combout\,
	combout => \ula|full_adder|c_out[18]~18_combout\);

\ula|full_adder|c_out[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[19]~19_combout\ = (\ID_EX|q\(93) & ((\ula|full_adder|c_out[18]~18_combout\) # (\mux_Rt_im|Y[19]~19_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(93) & (\ula|full_adder|c_out[18]~18_combout\ & 
-- (\mux_Rt_im|Y[19]~19_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[19]~19_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(93),
	datad => \ula|full_adder|c_out[18]~18_combout\,
	combout => \ula|full_adder|c_out[19]~19_combout\);

\ula|full_adder|c_out[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[20]~20_combout\ = (\ID_EX|q\(94) & ((\ula|full_adder|c_out[19]~19_combout\) # (\mux_Rt_im|Y[20]~20_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(94) & (\ula|full_adder|c_out[19]~19_combout\ & 
-- (\mux_Rt_im|Y[20]~20_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[20]~20_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(94),
	datad => \ula|full_adder|c_out[19]~19_combout\,
	combout => \ula|full_adder|c_out[20]~20_combout\);

\ula|full_adder|c_out[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[21]~21_combout\ = (\ID_EX|q\(95) & ((\ula|full_adder|c_out[20]~20_combout\) # (\mux_Rt_im|Y[21]~21_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(95) & (\ula|full_adder|c_out[20]~20_combout\ & 
-- (\mux_Rt_im|Y[21]~21_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[21]~21_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(95),
	datad => \ula|full_adder|c_out[20]~20_combout\,
	combout => \ula|full_adder|c_out[21]~21_combout\);

\ula|full_adder|c_out[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[22]~22_combout\ = (\ID_EX|q\(96) & ((\ula|full_adder|c_out[21]~21_combout\) # (\mux_Rt_im|Y[22]~22_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(96) & (\ula|full_adder|c_out[21]~21_combout\ & 
-- (\mux_Rt_im|Y[22]~22_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[22]~22_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(96),
	datad => \ula|full_adder|c_out[21]~21_combout\,
	combout => \ula|full_adder|c_out[22]~22_combout\);

\ula|full_adder|c_out[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[23]~23_combout\ = (\ID_EX|q\(97) & ((\ula|full_adder|c_out[22]~22_combout\) # (\mux_Rt_im|Y[23]~23_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(97) & (\ula|full_adder|c_out[22]~22_combout\ & 
-- (\mux_Rt_im|Y[23]~23_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[23]~23_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(97),
	datad => \ula|full_adder|c_out[22]~22_combout\,
	combout => \ula|full_adder|c_out[23]~23_combout\);

\ula|full_adder|c_out[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[24]~24_combout\ = (\ID_EX|q\(98) & ((\ula|full_adder|c_out[23]~23_combout\) # (\mux_Rt_im|Y[24]~24_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(98) & (\ula|full_adder|c_out[23]~23_combout\ & 
-- (\mux_Rt_im|Y[24]~24_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[24]~24_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(98),
	datad => \ula|full_adder|c_out[23]~23_combout\,
	combout => \ula|full_adder|c_out[24]~24_combout\);

\ula|full_adder|c_out[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[25]~25_combout\ = (\ID_EX|q\(99) & ((\ula|full_adder|c_out[24]~24_combout\) # (\mux_Rt_im|Y[25]~25_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(99) & (\ula|full_adder|c_out[24]~24_combout\ & 
-- (\mux_Rt_im|Y[25]~25_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[25]~25_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(99),
	datad => \ula|full_adder|c_out[24]~24_combout\,
	combout => \ula|full_adder|c_out[25]~25_combout\);

\ula|full_adder|c_out[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[26]~26_combout\ = (\ID_EX|q\(100) & ((\ula|full_adder|c_out[25]~25_combout\) # (\mux_Rt_im|Y[26]~26_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(100) & (\ula|full_adder|c_out[25]~25_combout\ & 
-- (\mux_Rt_im|Y[26]~26_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[26]~26_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(100),
	datad => \ula|full_adder|c_out[25]~25_combout\,
	combout => \ula|full_adder|c_out[26]~26_combout\);

\ula|full_adder|c_out[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[27]~27_combout\ = (\ID_EX|q\(101) & ((\ula|full_adder|c_out[26]~26_combout\) # (\mux_Rt_im|Y[27]~27_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(101) & (\ula|full_adder|c_out[26]~26_combout\ & 
-- (\mux_Rt_im|Y[27]~27_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[27]~27_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(101),
	datad => \ula|full_adder|c_out[26]~26_combout\,
	combout => \ula|full_adder|c_out[27]~27_combout\);

\ula|full_adder|c_out[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[28]~28_combout\ = (\ID_EX|q\(102) & ((\ula|full_adder|c_out[27]~27_combout\) # (\mux_Rt_im|Y[28]~28_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(102) & (\ula|full_adder|c_out[27]~27_combout\ & 
-- (\mux_Rt_im|Y[28]~28_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[28]~28_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(102),
	datad => \ula|full_adder|c_out[27]~27_combout\,
	combout => \ula|full_adder|c_out[28]~28_combout\);

\ula|full_adder|c_out[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[29]~29_combout\ = (\ID_EX|q\(103) & ((\ula|full_adder|c_out[28]~28_combout\) # (\mux_Rt_im|Y[29]~29_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(103) & (\ula|full_adder|c_out[28]~28_combout\ & 
-- (\mux_Rt_im|Y[29]~29_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[29]~29_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(103),
	datad => \ula|full_adder|c_out[28]~28_combout\,
	combout => \ula|full_adder|c_out[29]~29_combout\);

\ula|full_adder|c_out[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[30]~30_combout\ = (\ID_EX|q\(104) & ((\ula|full_adder|c_out[29]~29_combout\) # (\mux_Rt_im|Y[30]~30_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(104) & (\ula|full_adder|c_out[29]~29_combout\ & 
-- (\mux_Rt_im|Y[30]~30_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[30]~30_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(104),
	datad => \ula|full_adder|c_out[29]~29_combout\,
	combout => \ula|full_adder|c_out[30]~30_combout\);

\ula|result_slt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|result_slt[0]~0_combout\ = (\ID_EX|q\(105) & ((\mux_Rt_im|Y[31]~31_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)) # (!\ula|full_adder|c_out[30]~30_combout\))) # (!\ID_EX|q\(105) & (!\ula|full_adder|c_out[30]~30_combout\ & 
-- (\mux_Rt_im|Y[31]~31_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(105),
	datab => \mux_Rt_im|Y[31]~31_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[30]~30_combout\,
	combout => \ula|result_slt[0]~0_combout\);

\ula|mux4|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~1_combout\ = (\ula_ctrl|ula_ctrl[1]~7_combout\ & ((\ula|mux4|Mux31~0_combout\ & ((\ula|result_slt[0]~0_combout\))) # (!\ula|mux4|Mux31~0_combout\ & (\ula|full_adder|result[0]~0_combout\)))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\ & 
-- (((\ula|mux4|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|result[0]~0_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datac => \ula|mux4|Mux31~0_combout\,
	datad => \ula|result_slt[0]~0_combout\,
	combout => \ula|mux4|Mux31~1_combout\);

\ula|mux4|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~0_combout\ = (\ID_EX|q\(84) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[10]~10_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(84) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[10]~10_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(84),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[10]~10_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux21~0_combout\);

\ula|full_adder|result[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(10) = \ID_EX|q\(84) $ (\mux_Rt_im|Y[10]~10_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(84),
	datab => \mux_Rt_im|Y[10]~10_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[9]~9_combout\,
	combout => \ula|full_adder|result\(10));

\ula|mux4|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~1_combout\ = (\ula|mux4|Mux21~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(10))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux21~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux21~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(10),
	combout => \ula|mux4|Mux21~1_combout\);

\ula|mux4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~0_combout\ = (\ID_EX|q\(105) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[31]~31_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(105) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[31]~31_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(105),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[31]~31_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux0~0_combout\);

\ula|full_adder|result[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(31) = \ID_EX|q\(105) $ (\mux_Rt_im|Y[31]~31_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[30]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(105),
	datab => \mux_Rt_im|Y[31]~31_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[30]~30_combout\,
	combout => \ula|full_adder|result\(31));

\ula|mux4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~1_combout\ = (\ula|mux4|Mux0~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(31))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux0~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux0~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(31),
	combout => \ula|mux4|Mux0~1_combout\);

\ula|mux4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~0_combout\ = (\ID_EX|q\(103) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[29]~29_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(103) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[29]~29_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(103),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[29]~29_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux2~0_combout\);

\ula|mux4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~1_combout\ = \ID_EX|q\(103) $ (\mux_Rt_im|Y[29]~29_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[28]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(103),
	datab => \mux_Rt_im|Y[29]~29_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[28]~28_combout\,
	combout => \ula|mux4|Mux2~1_combout\);

\ula|mux4|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~2_combout\ = (\ula|mux4|Mux2~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|mux4|Mux2~1_combout\)) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux2~0_combout\ & (\ula|mux4|Mux30~1_combout\ & ((!\ula|mux4|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux2~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|mux4|Mux2~1_combout\,
	combout => \ula|mux4|Mux2~2_combout\);

\ula|mux2B|Y[30]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[30]~6_combout\ = (\controlador1|reg_seg7|q\(30) & (\ID_EX|q\(138) $ (((\ula_ctrl|ula_ctrl[0]~8_combout\ & \ula_ctrl|ula_ctrl[0]~9_combout\))))) # (!\controlador1|reg_seg7|q\(30) & (((!\ula_ctrl|ula_ctrl[0]~9_combout\) # 
-- (!\ula_ctrl|ula_ctrl[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(30),
	datab => \ID_EX|q\(138),
	datac => \ula_ctrl|ula_ctrl[0]~8_combout\,
	datad => \ula_ctrl|ula_ctrl[0]~9_combout\,
	combout => \ula|mux2B|Y[30]~6_combout\);

\ula|mux4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~0_combout\ = (\ula|mux4|Mux30~1_combout\ & (\ID_EX|q\(104) $ (\ula|full_adder|c_out[29]~29_combout\ $ (!\ula|mux2B|Y[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux30~1_combout\,
	datab => \ID_EX|q\(104),
	datac => \ula|full_adder|c_out[29]~29_combout\,
	datad => \ula|mux2B|Y[30]~6_combout\,
	combout => \ula|mux4|Mux1~0_combout\);

\ula|mux2B|Y[28]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[28]~8_combout\ = \mux_Rt_im|Y[28]~28_combout\ $ ((((!\ula_ctrl|ula_ctrl[0]~8_combout\) # (!\ID_EX|q\(140))) # (!\ID_EX|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(140),
	datac => \ula_ctrl|ula_ctrl[0]~8_combout\,
	datad => \mux_Rt_im|Y[28]~28_combout\,
	combout => \ula|mux2B|Y[28]~8_combout\);

\ula|mux4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~0_combout\ = (\ula|mux4|Mux30~1_combout\ & (\ID_EX|q\(102) $ (\ula|full_adder|c_out[27]~27_combout\ $ (!\ula|mux2B|Y[28]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux30~1_combout\,
	datab => \ID_EX|q\(102),
	datac => \ula|full_adder|c_out[27]~27_combout\,
	datad => \ula|mux2B|Y[28]~8_combout\,
	combout => \ula|mux4|Mux3~0_combout\);

\ula|mux4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~0_combout\ = (\ID_EX|q\(101) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[27]~27_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(101) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[27]~27_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(101),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[27]~27_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux4~0_combout\);

\ula|full_adder|result[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(27) = \ID_EX|q\(101) $ (\mux_Rt_im|Y[27]~27_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[26]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(101),
	datab => \mux_Rt_im|Y[27]~27_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[26]~26_combout\,
	combout => \ula|full_adder|result\(27));

\ula|mux4|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~1_combout\ = (\ula|mux4|Mux4~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(27))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux4~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux4~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(27),
	combout => \ula|mux4|Mux4~1_combout\);

\ula|mux4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~0_combout\ = (\ID_EX|q\(99) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[25]~25_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(99) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[25]~25_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(99),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[25]~25_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux6~0_combout\);

\ula|full_adder|result[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(25) = \ID_EX|q\(99) $ (\mux_Rt_im|Y[25]~25_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[24]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(99),
	datab => \mux_Rt_im|Y[25]~25_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[24]~24_combout\,
	combout => \ula|full_adder|result\(25));

\ula|mux4|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~1_combout\ = (\ula|mux4|Mux6~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(25))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux6~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux6~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(25),
	combout => \ula|mux4|Mux6~1_combout\);

\ula|mux4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~0_combout\ = (\ID_EX|q\(100) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[26]~26_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(100) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[26]~26_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(100),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[26]~26_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux5~0_combout\);

\ula|full_adder|result[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(26) = \ID_EX|q\(100) $ (\mux_Rt_im|Y[26]~26_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[25]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(100),
	datab => \mux_Rt_im|Y[26]~26_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[25]~25_combout\,
	combout => \ula|full_adder|result\(26));

\ula|mux4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~1_combout\ = (\ula|mux4|Mux5~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(26))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux5~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux5~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(26),
	combout => \ula|mux4|Mux5~1_combout\);

\ula|mux4|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~0_combout\ = (\ID_EX|q\(85) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[11]~11_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(85) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[11]~11_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(85),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[11]~11_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux20~0_combout\);

\ula|full_adder|result[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(11) = \ID_EX|q\(85) $ (\mux_Rt_im|Y[11]~11_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[10]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(85),
	datab => \mux_Rt_im|Y[11]~11_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[10]~10_combout\,
	combout => \ula|full_adder|result\(11));

\ula|mux4|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~1_combout\ = (\ula|mux4|Mux20~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(11))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux20~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux20~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(11),
	combout => \ula|mux4|Mux20~1_combout\);

\ula|mux4|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~0_combout\ = (\ID_EX|q\(86) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[12]~12_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(86) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[12]~12_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(86),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[12]~12_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux19~0_combout\);

\ula|full_adder|result[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(12) = \ID_EX|q\(86) $ (\mux_Rt_im|Y[12]~12_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[11]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(86),
	datab => \mux_Rt_im|Y[12]~12_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[11]~11_combout\,
	combout => \ula|full_adder|result\(12));

\ula|mux4|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~1_combout\ = (\ula|mux4|Mux19~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(12))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux19~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux19~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(12),
	combout => \ula|mux4|Mux19~1_combout\);

\ula|mux4|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~0_combout\ = (\ID_EX|q\(87) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[13]~13_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(87) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[13]~13_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(87),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[13]~13_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux18~0_combout\);

\ula|full_adder|result[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(13) = \ID_EX|q\(87) $ (\mux_Rt_im|Y[13]~13_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[12]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(87),
	datab => \mux_Rt_im|Y[13]~13_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[12]~12_combout\,
	combout => \ula|full_adder|result\(13));

\ula|mux4|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~1_combout\ = (\ula|mux4|Mux18~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(13))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux18~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux18~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(13),
	combout => \ula|mux4|Mux18~1_combout\);

\ula|mux4|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~0_combout\ = (\ID_EX|q\(88) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[14]~14_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(88) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[14]~14_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(88),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[14]~14_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux17~0_combout\);

\ula|full_adder|result[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(14) = \ID_EX|q\(88) $ (\mux_Rt_im|Y[14]~14_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[13]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(88),
	datab => \mux_Rt_im|Y[14]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[13]~13_combout\,
	combout => \ula|full_adder|result\(14));

\ula|mux4|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~1_combout\ = (\ula|mux4|Mux17~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(14))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux17~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux17~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(14),
	combout => \ula|mux4|Mux17~1_combout\);

\controlador1|decodificador1|sw~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~0_combout\ = (!\ula|mux4|Mux20~1_combout\ & (!\ula|mux4|Mux19~1_combout\ & (!\ula|mux4|Mux18~1_combout\ & !\ula|mux4|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux20~1_combout\,
	datab => \ula|mux4|Mux19~1_combout\,
	datac => \ula|mux4|Mux18~1_combout\,
	datad => \ula|mux4|Mux17~1_combout\,
	combout => \controlador1|decodificador1|sw~0_combout\);

\ula|mux4|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~0_combout\ = (\ID_EX|q\(89) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[15]~15_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(89) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[15]~15_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(89),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[15]~15_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux16~0_combout\);

\ula|full_adder|result[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(15) = \ID_EX|q\(89) $ (\mux_Rt_im|Y[15]~15_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(89),
	datab => \mux_Rt_im|Y[15]~15_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[14]~14_combout\,
	combout => \ula|full_adder|result\(15));

\ula|mux4|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~1_combout\ = (\ula|mux4|Mux16~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(15))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux16~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux16~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(15),
	combout => \ula|mux4|Mux16~1_combout\);

\ula|mux4|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~0_combout\ = (\ID_EX|q\(90) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[16]~16_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(90) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[16]~16_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(90),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[16]~16_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux15~0_combout\);

\ula|full_adder|result[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(16) = \ID_EX|q\(90) $ (\mux_Rt_im|Y[16]~16_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[15]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(90),
	datab => \mux_Rt_im|Y[16]~16_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[15]~15_combout\,
	combout => \ula|full_adder|result\(16));

\ula|mux4|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~1_combout\ = (\ula|mux4|Mux15~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(16))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux15~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux15~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(16),
	combout => \ula|mux4|Mux15~1_combout\);

\ula|mux4|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~0_combout\ = (\ID_EX|q\(91) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[17]~17_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(91) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[17]~17_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(91),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[17]~17_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux14~0_combout\);

\ula|full_adder|result[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(17) = \ID_EX|q\(91) $ (\mux_Rt_im|Y[17]~17_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[16]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(91),
	datab => \mux_Rt_im|Y[17]~17_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[16]~16_combout\,
	combout => \ula|full_adder|result\(17));

\ula|mux4|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~1_combout\ = (\ula|mux4|Mux14~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(17))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux14~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux14~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(17),
	combout => \ula|mux4|Mux14~1_combout\);

\ula|mux4|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~0_combout\ = (\ID_EX|q\(92) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[18]~18_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(92) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[18]~18_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(92),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[18]~18_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux13~0_combout\);

\ula|full_adder|result[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(18) = \ID_EX|q\(92) $ (\mux_Rt_im|Y[18]~18_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[17]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(92),
	datab => \mux_Rt_im|Y[18]~18_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[17]~17_combout\,
	combout => \ula|full_adder|result\(18));

\ula|mux4|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~1_combout\ = (\ula|mux4|Mux13~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(18))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux13~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux13~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(18),
	combout => \ula|mux4|Mux13~1_combout\);

\controlador1|decodificador1|sw~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~1_combout\ = (!\ula|mux4|Mux16~1_combout\ & (!\ula|mux4|Mux15~1_combout\ & (!\ula|mux4|Mux14~1_combout\ & !\ula|mux4|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux16~1_combout\,
	datab => \ula|mux4|Mux15~1_combout\,
	datac => \ula|mux4|Mux14~1_combout\,
	datad => \ula|mux4|Mux13~1_combout\,
	combout => \controlador1|decodificador1|sw~1_combout\);

\controlador1|decodificador1|sw~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~2_combout\ = (\controlador1|decodificador1|sw~0_combout\ & \controlador1|decodificador1|sw~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~0_combout\,
	datab => \controlador1|decodificador1|sw~1_combout\,
	combout => \controlador1|decodificador1|sw~2_combout\);

\ula|mux4|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~0_combout\ = (\ID_EX|q\(93) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[19]~19_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(93) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[19]~19_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(93),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[19]~19_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux12~0_combout\);

\ula|full_adder|result[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(19) = \ID_EX|q\(93) $ (\mux_Rt_im|Y[19]~19_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[18]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(93),
	datab => \mux_Rt_im|Y[19]~19_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[18]~18_combout\,
	combout => \ula|full_adder|result\(19));

\ula|mux4|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~1_combout\ = (\ula|mux4|Mux12~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(19))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux12~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux12~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(19),
	combout => \ula|mux4|Mux12~1_combout\);

\ula|mux4|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~0_combout\ = (\ID_EX|q\(94) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[20]~20_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(94) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[20]~20_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(94),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[20]~20_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux11~0_combout\);

\ula|full_adder|result[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(20) = \ID_EX|q\(94) $ (\mux_Rt_im|Y[20]~20_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[19]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(94),
	datab => \mux_Rt_im|Y[20]~20_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[19]~19_combout\,
	combout => \ula|full_adder|result\(20));

\ula|mux4|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~1_combout\ = (\ula|mux4|Mux11~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(20))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux11~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux11~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(20),
	combout => \ula|mux4|Mux11~1_combout\);

\ula|mux4|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~0_combout\ = (\ID_EX|q\(95) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[21]~21_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(95) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[21]~21_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(95),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[21]~21_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux10~0_combout\);

\ula|full_adder|result[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(21) = \ID_EX|q\(95) $ (\mux_Rt_im|Y[21]~21_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[20]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(95),
	datab => \mux_Rt_im|Y[21]~21_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[20]~20_combout\,
	combout => \ula|full_adder|result\(21));

\ula|mux4|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~1_combout\ = (\ula|mux4|Mux10~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(21))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux10~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux10~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(21),
	combout => \ula|mux4|Mux10~1_combout\);

\ula|mux4|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~0_combout\ = (\ID_EX|q\(96) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[22]~22_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(96) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[22]~22_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(96),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[22]~22_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux9~0_combout\);

\ula|full_adder|result[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(22) = \ID_EX|q\(96) $ (\mux_Rt_im|Y[22]~22_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[21]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(96),
	datab => \mux_Rt_im|Y[22]~22_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[21]~21_combout\,
	combout => \ula|full_adder|result\(22));

\ula|mux4|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~1_combout\ = (\ula|mux4|Mux9~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(22))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux9~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux9~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(22),
	combout => \ula|mux4|Mux9~1_combout\);

\controlador1|decodificador1|sw~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~3_combout\ = (!\ula|mux4|Mux12~1_combout\ & (!\ula|mux4|Mux11~1_combout\ & (!\ula|mux4|Mux10~1_combout\ & !\ula|mux4|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux12~1_combout\,
	datab => \ula|mux4|Mux11~1_combout\,
	datac => \ula|mux4|Mux10~1_combout\,
	datad => \ula|mux4|Mux9~1_combout\,
	combout => \controlador1|decodificador1|sw~3_combout\);

\ula|mux4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~1_combout\ = (!\ula_ctrl|ula_ctrl[1]~7_combout\ & ((\ID_EX|q\(104) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (!\ula|mux2B|Y[30]~6_combout\))) # (!\ID_EX|q\(104) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & !\ula|mux2B|Y[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(104),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \ula|mux2B|Y[30]~6_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~7_combout\,
	combout => \ula|mux4|Mux1~1_combout\);

\ula|mux4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~1_combout\ = (\ID_EX|q\(102) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[28]~28_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(102) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[28]~28_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(102),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[28]~28_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux3~1_combout\);

\ula|mux4|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~0_combout\ = (\ID_EX|q\(97) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[23]~23_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(97) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[23]~23_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(97),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[23]~23_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux8~0_combout\);

\ula|full_adder|result[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(23) = \ID_EX|q\(97) $ (\mux_Rt_im|Y[23]~23_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[22]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(97),
	datab => \mux_Rt_im|Y[23]~23_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[22]~22_combout\,
	combout => \ula|full_adder|result\(23));

\ula|mux4|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~1_combout\ = (\ula|mux4|Mux8~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(23))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux8~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux8~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(23),
	combout => \ula|mux4|Mux8~1_combout\);

\ula|mux4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~0_combout\ = (\ID_EX|q\(98) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[24]~24_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(98) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[24]~24_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(98),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[24]~24_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux7~0_combout\);

\ula|full_adder|result[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(24) = \ID_EX|q\(98) $ (\mux_Rt_im|Y[24]~24_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[23]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(98),
	datab => \mux_Rt_im|Y[24]~24_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[23]~23_combout\,
	combout => \ula|full_adder|result\(24));

\ula|mux4|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~1_combout\ = (\ula|mux4|Mux7~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(24))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux7~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux7~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(24),
	combout => \ula|mux4|Mux7~1_combout\);

\controlador1|decodificador1|sw~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~4_combout\ = (!\ula|mux4|Mux8~1_combout\ & (!\ula|mux4|Mux7~1_combout\ & ((\ula_ctrl|ula_ctrl[1]~7_combout\) # (!\ula|mux4|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datab => \ula|mux4|Mux3~1_combout\,
	datac => \ula|mux4|Mux8~1_combout\,
	datad => \ula|mux4|Mux7~1_combout\,
	combout => \controlador1|decodificador1|sw~4_combout\);

\controlador1|decodificador1|sw~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~5_combout\ = (\controlador1|decodificador1|sw~2_combout\ & (\controlador1|decodificador1|sw~3_combout\ & (!\ula|mux4|Mux1~1_combout\ & \controlador1|decodificador1|sw~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~2_combout\,
	datab => \controlador1|decodificador1|sw~3_combout\,
	datac => \ula|mux4|Mux1~1_combout\,
	datad => \controlador1|decodificador1|sw~4_combout\,
	combout => \controlador1|decodificador1|sw~5_combout\);

\controlador1|decodificador1|sw~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~6_combout\ = (!\ula|mux4|Mux4~1_combout\ & (!\ula|mux4|Mux6~1_combout\ & (!\ula|mux4|Mux5~1_combout\ & \controlador1|decodificador1|sw~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux4~1_combout\,
	datab => \ula|mux4|Mux6~1_combout\,
	datac => \ula|mux4|Mux5~1_combout\,
	datad => \controlador1|decodificador1|sw~5_combout\,
	combout => \controlador1|decodificador1|sw~6_combout\);

\controlador1|decodificador1|sw~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~7_combout\ = (!\ula|mux4|Mux2~2_combout\ & (!\ula|mux4|Mux1~0_combout\ & (!\ula|mux4|Mux3~0_combout\ & \controlador1|decodificador1|sw~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux2~2_combout\,
	datab => \ula|mux4|Mux1~0_combout\,
	datac => \ula|mux4|Mux3~0_combout\,
	datad => \controlador1|decodificador1|sw~6_combout\,
	combout => \controlador1|decodificador1|sw~7_combout\);

\controlador1|decodificador1|sw~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~8_combout\ = (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux4|Mux28~1_combout\ & (!\ula|mux4|Mux27~1_combout\ & !\ula|mux4|Mux26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux27~1_combout\,
	datad => \ula|mux4|Mux26~1_combout\,
	combout => \controlador1|decodificador1|sw~8_combout\);

\controlador1|decodificador1|sw~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~9_combout\ = (!\ula|mux4|Mux25~1_combout\ & !\ula|mux4|Mux24~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula|mux4|Mux25~1_combout\,
	datad => \ula|mux4|Mux24~1_combout\,
	combout => \controlador1|decodificador1|sw~9_combout\);

\ula|mux4|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~0_combout\ = (\ID_EX|q\(82) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[8]~8_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(82) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[8]~8_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(82),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[8]~8_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux23~0_combout\);

\ula|full_adder|result[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(8) = \ID_EX|q\(82) $ (\mux_Rt_im|Y[8]~8_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[7]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(82),
	datab => \mux_Rt_im|Y[8]~8_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[7]~7_combout\,
	combout => \ula|full_adder|result\(8));

\ula|mux4|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~1_combout\ = (\ula|mux4|Mux23~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(8))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux23~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux23~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(8),
	combout => \ula|mux4|Mux23~1_combout\);

\ula|mux4|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~0_combout\ = (\ID_EX|q\(83) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[9]~9_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(83) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[9]~9_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(83),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[9]~9_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux22~0_combout\);

\ula|full_adder|result[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(9) = \ID_EX|q\(83) $ (\mux_Rt_im|Y[9]~9_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(83),
	datab => \mux_Rt_im|Y[9]~9_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[8]~8_combout\,
	combout => \ula|full_adder|result\(9));

\ula|mux4|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~1_combout\ = (\ula|mux4|Mux22~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(9))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux22~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux22~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(9),
	combout => \ula|mux4|Mux22~1_combout\);

\controlador1|decodificador1|sw~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~10_combout\ = (\controlador1|decodificador1|sw~8_combout\ & (\controlador1|decodificador1|sw~9_combout\ & (!\ula|mux4|Mux23~1_combout\ & !\ula|mux4|Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~8_combout\,
	datab => \controlador1|decodificador1|sw~9_combout\,
	datac => \ula|mux4|Mux23~1_combout\,
	datad => \ula|mux4|Mux22~1_combout\,
	combout => \controlador1|decodificador1|sw~10_combout\);

\ula|mux4|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~0_combout\ = (\ID_EX|q\(75) & ((\ula_ctrl|ula_ctrl[0]~11_combout\) # (\mux_Rt_im|Y[1]~1_combout\ $ (!\ula_ctrl|ula_ctrl[2]~12_combout\)))) # (!\ID_EX|q\(75) & (\ula_ctrl|ula_ctrl[0]~11_combout\ & (\mux_Rt_im|Y[1]~1_combout\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(75),
	datab => \ula_ctrl|ula_ctrl[0]~11_combout\,
	datac => \mux_Rt_im|Y[1]~1_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~12_combout\,
	combout => \ula|mux4|Mux30~0_combout\);

\ula|full_adder|result[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(1) = \ID_EX|q\(75) $ (\mux_Rt_im|Y[1]~1_combout\ $ (\ula_ctrl|ula_ctrl[2]~12_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(75),
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula|full_adder|c_out[0]~0_combout\,
	combout => \ula|full_adder|result\(1));

\ula|mux4|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~2_combout\ = (\ula|mux4|Mux30~0_combout\ & (((\ula|mux4|Mux30~1_combout\ & !\ula|full_adder|result\(1))) # (!\ula_ctrl|ula_ctrl[1]~7_combout\))) # (!\ula|mux4|Mux30~0_combout\ & (\ula|mux4|Mux30~1_combout\ & 
-- ((!\ula|full_adder|result\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux30~0_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~7_combout\,
	datad => \ula|full_adder|result\(1),
	combout => \ula|mux4|Mux30~2_combout\);

\controlador1|decodificador1|sw~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~13_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\controlador1|decodificador1|sw~10_combout\ & !\ula|mux4|Mux30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \controlador1|decodificador1|sw~10_combout\,
	datad => \ula|mux4|Mux30~2_combout\,
	combout => \controlador1|decodificador1|sw~13_combout\);

\ula|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~0_combout\ = (!\ula|mux4|Mux31~1_combout\ & (!\ula|mux4|Mux21~1_combout\ & (!\ula|mux4|Mux0~1_combout\ & \controlador1|decodificador1|sw~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux31~1_combout\,
	datab => \ula|mux4|Mux21~1_combout\,
	datac => \ula|mux4|Mux0~1_combout\,
	datad => \controlador1|decodificador1|sw~13_combout\,
	combout => \ula|zero~0_combout\);

\EX_MEM|q[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|zero~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(69));

and_beq : cycloneive_lcell_comb
-- Equation(s):
-- \and_beq~combout\ = (\EX_MEM|q\(104) & \EX_MEM|q\(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(104),
	datab => \EX_MEM|q\(69),
	combout => \and_beq~combout\);

\mux_PC|Y[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[9]~2_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(79))) # (!\and_beq~combout\ & ((\somador1|Y[9]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(79),
	datab => \somador1|Y[9]~14_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[9]~2_combout\);

\PC|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(9));

\memoriaInst|rom~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~10_combout\ = (!\PC|q\(6) & (!\PC|q\(3) & (!\PC|q\(8) & !\PC|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(3),
	datac => \PC|q\(8),
	datad => \PC|q\(9),
	combout => \memoriaInst|rom~10_combout\);

\memoriaInst|rom~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~12_combout\ = (\memoriaInst|rom~10_combout\ & (\PC|q\(7) & (\PC|q\(5) & \memoriaInst|rom~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~10_combout\,
	datab => \PC|q\(7),
	datac => \PC|q\(5),
	datad => \memoriaInst|rom~11_combout\,
	combout => \memoriaInst|rom~12_combout\);

\IF_ID|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(0));

\ID_EX|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(10));

\EX_MEM|q[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[72]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(72));

\PC|q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[2]~0_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(72)))) # (!\and_beq~combout\ & (\somador1|Y[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[2]~0_combout\,
	datab => \EX_MEM|q\(72),
	datad => \and_beq~combout\,
	combout => \PC|q[2]~0_combout\);

\PC|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[2]~0_combout\,
	asdata => \memoriaInst|rom~12_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(2));

\somador1|Y[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[3]~2_combout\ = (\PC|q\(3) & (!\somador1|Y[2]~1\)) # (!\PC|q\(3) & ((\somador1|Y[2]~1\) # (GND)))
-- \somador1|Y[3]~3\ = CARRY((!\somador1|Y[2]~1\) # (!\PC|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datad => VCC,
	cin => \somador1|Y[2]~1\,
	combout => \somador1|Y[3]~2_combout\,
	cout => \somador1|Y[3]~3\);

\EX_MEM|q[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[73]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(73));

\PC|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[3]~1_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(73)))) # (!\and_beq~combout\ & (\somador1|Y[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[3]~2_combout\,
	datab => \EX_MEM|q\(73),
	datad => \and_beq~combout\,
	combout => \PC|q[3]~1_combout\);

\PC|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[3]~1_combout\,
	asdata => \memoriaInst|rom~17_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(3));

\somador1|Y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[4]~4_combout\ = (\PC|q\(4) & (\somador1|Y[3]~3\ $ (GND))) # (!\PC|q\(4) & (!\somador1|Y[3]~3\ & VCC))
-- \somador1|Y[4]~5\ = CARRY((\PC|q\(4) & !\somador1|Y[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datad => VCC,
	cin => \somador1|Y[3]~3\,
	combout => \somador1|Y[4]~4_combout\,
	cout => \somador1|Y[4]~5\);

\EX_MEM|q[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[74]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(74));

\PC|q[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[4]~2_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(74)))) # (!\and_beq~combout\ & (\somador1|Y[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[4]~4_combout\,
	datab => \EX_MEM|q\(74),
	datad => \and_beq~combout\,
	combout => \PC|q[4]~2_combout\);

\PC|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[4]~2_combout\,
	asdata => \memoriaInst|rom~19_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(4));

\somador1|Y[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[5]~6_combout\ = (\PC|q\(5) & (!\somador1|Y[4]~5\)) # (!\PC|q\(5) & ((\somador1|Y[4]~5\) # (GND)))
-- \somador1|Y[5]~7\ = CARRY((!\somador1|Y[4]~5\) # (!\PC|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datad => VCC,
	cin => \somador1|Y[4]~5\,
	combout => \somador1|Y[5]~6_combout\,
	cout => \somador1|Y[5]~7\);

\EX_MEM|q[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[75]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(75));

\PC|q[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[5]~3_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(75)))) # (!\and_beq~combout\ & (\somador1|Y[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[5]~6_combout\,
	datab => \EX_MEM|q\(75),
	datad => \and_beq~combout\,
	combout => \PC|q[5]~3_combout\);

\PC|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[5]~3_combout\,
	asdata => \memoriaInst|rom~23_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(5));

\somador1|Y[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[6]~8_combout\ = (\PC|q\(6) & (\somador1|Y[5]~7\ $ (GND))) # (!\PC|q\(6) & (!\somador1|Y[5]~7\ & VCC))
-- \somador1|Y[6]~9\ = CARRY((\PC|q\(6) & !\somador1|Y[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datad => VCC,
	cin => \somador1|Y[5]~7\,
	combout => \somador1|Y[6]~8_combout\,
	cout => \somador1|Y[6]~9\);

\IF_ID|q[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(38));

\ID_EX|q[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(112));

\EX_MEM|q[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[76]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(76));

\mux_PC|Y[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[6]~0_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(76))) # (!\and_beq~combout\ & ((\somador1|Y[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(76),
	datab => \somador1|Y[6]~8_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[6]~0_combout\);

\PC|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(6));

\somador1|Y[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[7]~10_combout\ = (\PC|q\(7) & (!\somador1|Y[6]~9\)) # (!\PC|q\(7) & ((\somador1|Y[6]~9\) # (GND)))
-- \somador1|Y[7]~11\ = CARRY((!\somador1|Y[6]~9\) # (!\PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datad => VCC,
	cin => \somador1|Y[6]~9\,
	combout => \somador1|Y[7]~10_combout\,
	cout => \somador1|Y[7]~11\);

\EX_MEM|q[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[77]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(77));

\PC|q[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[7]~4_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(77)))) # (!\and_beq~combout\ & (\somador1|Y[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[7]~10_combout\,
	datab => \EX_MEM|q\(77),
	datad => \and_beq~combout\,
	combout => \PC|q[7]~4_combout\);

\PC|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[7]~4_combout\,
	asdata => \memoriaInst|rom~55_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(7));

\IF_ID|q[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(40));

\ID_EX|q[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(40),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(114));

\EX_MEM|q[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[78]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(78));

\mux_PC|Y[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[8]~1_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(78))) # (!\and_beq~combout\ & ((\somador1|Y[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(78),
	datab => \somador1|Y[8]~12_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[8]~1_combout\);

\PC|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(8));

\memoriaInst|rom~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~13_combout\ = (!\PC|q\(8) & !\PC|q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|q\(8),
	datad => \PC|q\(9),
	combout => \memoriaInst|rom~13_combout\);

\memoriaInst|rom~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~47_combout\ = (\memoriaInst|rom~13_combout\ & (!\PC|q\(6) & (!\PC|q\(7) & !\memoriaInst|rom~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~13_combout\,
	datab => \PC|q\(6),
	datac => \PC|q\(7),
	datad => \memoriaInst|rom~25_combout\,
	combout => \memoriaInst|rom~47_combout\);

\IF_ID|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(27));

\fd_ctrl|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal4~0_combout\ = (\IF_ID|q\(27) & (\IF_ID|q\(31) & \IF_ID|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \IF_ID|q\(31),
	datac => \IF_ID|q\(29),
	combout => \fd_ctrl|Equal4~0_combout\);

\ID_EX|q[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(142));

\EX_MEM|q[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(142),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(102));

\EX_MEM|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \controlador1|reg_seg7|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(5));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000001",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_b",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 6,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 63,
	port_b_logical_ram_depth => 64,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portbre => VCC,
	clk0 => \CLOCK_50~input_o\,
	clk1 => \CLOCK_50~input_o\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

\memoriaDados|ram_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(14));

\memoriaDados|ram_rtl_0_bypass[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[13]~0_combout\ = !\EX_MEM|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(5),
	combout => \memoriaDados|ram_rtl_0_bypass[13]~0_combout\);

\memoriaDados|ram_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram_rtl_0_bypass[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(13));

\memoriaDados|ram~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~43_combout\ = (\memoriaDados|ram_rtl_0_bypass\(14) & ((\memoriaDados|ram~42_combout\ & ((!\memoriaDados|ram_rtl_0_bypass\(13)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(14) & (((!\memoriaDados|ram_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \memoriaDados|ram_rtl_0_bypass\(14),
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(13),
	combout => \memoriaDados|ram~43_combout\);

\MEM_WB|q[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaDados|ram~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(37));

\ula|mux4|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~2_combout\ = (\ula|mux4|Mux3~0_combout\) # ((\ula|mux4|Mux3~1_combout\ & !\ula_ctrl|ula_ctrl[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux3~0_combout\,
	datab => \ula|mux4|Mux3~1_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~7_combout\,
	combout => \ula|mux4|Mux3~2_combout\);

\ula|mux4|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~2_combout\ = (\ula|mux4|Mux1~0_combout\) # (\ula|mux4|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux1~0_combout\,
	datab => \ula|mux4|Mux1~1_combout\,
	combout => \ula|mux4|Mux1~2_combout\);

\controlador1|decodificador1|sw~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~11_combout\ = (\ula|mux4|Mux31~1_combout\ & \ula|mux4|Mux21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux31~1_combout\,
	datab => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|decodificador1|sw~11_combout\);

\controlador1|decodificador1|sw~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|sw~12_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\controlador1|decodificador1|sw~10_combout\ & (\controlador1|decodificador1|sw~11_combout\ & !\ula|mux4|Mux30~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \controlador1|decodificador1|sw~10_combout\,
	datac => \controlador1|decodificador1|sw~11_combout\,
	datad => \ula|mux4|Mux30~2_combout\,
	combout => \controlador1|decodificador1|sw~12_combout\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\controlador1|decodificador1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|LessThan0~0_combout\ = (\ula|mux4|Mux21~1_combout\) # (!\controlador1|decodificador1|sw~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux21~1_combout\,
	datad => \controlador1|decodificador1|sw~7_combout\,
	combout => \controlador1|decodificador1|LessThan0~0_combout\);

\controlador1|dado_lido[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[0]~0_combout\ = (\controlador1|decodificador1|LessThan0~0_combout\ & (\controlador1|decodificador1|sw~12_combout\ & (\SW[0]~input_o\))) # (!\controlador1|decodificador1|LessThan0~0_combout\ & (((\memoriaDados|ram~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[0]~input_o\,
	datac => \memoriaDados|ram~43_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[0]~0_combout\);

\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\controlador1|dado_lido[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[3]~1_combout\ = (\ula|mux4|Mux30~2_combout\ & (\ula|mux4|Mux21~1_combout\ & (\controlador1|decodificador1|sw~7_combout\ & \controlador1|decodificador1|sw~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux30~2_combout\,
	datab => \ula|mux4|Mux21~1_combout\,
	datac => \controlador1|decodificador1|sw~7_combout\,
	datad => \controlador1|decodificador1|sw~10_combout\,
	combout => \controlador1|dado_lido[3]~1_combout\);

\controlador1|dado_lido[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[3]~2_combout\ = (!\ula|mux4|Mux31~1_combout\ & (\controlador1|decodificador1|LessThan0~0_combout\ & (!\controlador1|decodificador1|sw~12_combout\ & \controlador1|dado_lido[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux31~1_combout\,
	datab => \controlador1|decodificador1|LessThan0~0_combout\,
	datac => \controlador1|decodificador1|sw~12_combout\,
	datad => \controlador1|dado_lido[3]~1_combout\,
	combout => \controlador1|dado_lido[3]~2_combout\);

\controlador1|dado_lido[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[0]~3_combout\ = (\controlador1|dado_lido[0]~0_combout\) # ((\KEY[0]~input_o\ & \controlador1|dado_lido[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|dado_lido[0]~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \controlador1|dado_lido[3]~2_combout\,
	combout => \controlador1|dado_lido[0]~3_combout\);

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\controlador1|dado_lido[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[1]~4_combout\ = (\controlador1|decodificador1|LessThan0~0_combout\ & (\controlador1|decodificador1|sw~12_combout\ & (\SW[1]~input_o\))) # (!\controlador1|decodificador1|LessThan0~0_combout\ & (((\memoriaDados|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[1]~input_o\,
	datac => \memoriaDados|ram~44_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[1]~4_combout\);

\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\controlador1|dado_lido[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[1]~5_combout\ = (\controlador1|dado_lido[1]~4_combout\) # ((\controlador1|dado_lido[3]~2_combout\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|dado_lido[1]~4_combout\,
	datab => \controlador1|dado_lido[3]~2_combout\,
	datac => \KEY[1]~input_o\,
	combout => \controlador1|dado_lido[1]~5_combout\);

\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\controlador1|dado_lido[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[2]~6_combout\ = (\controlador1|decodificador1|LessThan0~0_combout\ & (\controlador1|decodificador1|sw~12_combout\ & (\SW[2]~input_o\))) # (!\controlador1|decodificador1|LessThan0~0_combout\ & (((\memoriaDados|ram~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[2]~input_o\,
	datac => \memoriaDados|ram~45_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[2]~6_combout\);

\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\controlador1|dado_lido[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[2]~7_combout\ = (\controlador1|dado_lido[2]~6_combout\) # ((\controlador1|dado_lido[3]~2_combout\ & \KEY[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|dado_lido[2]~6_combout\,
	datab => \controlador1|dado_lido[3]~2_combout\,
	datac => \KEY[2]~input_o\,
	combout => \controlador1|dado_lido[2]~7_combout\);

\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\controlador1|dado_lido[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[3]~8_combout\ = (\controlador1|decodificador1|LessThan0~0_combout\ & (\controlador1|decodificador1|sw~12_combout\ & (\SW[3]~input_o\))) # (!\controlador1|decodificador1|LessThan0~0_combout\ & (((\memoriaDados|ram~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[3]~input_o\,
	datac => \memoriaDados|ram~46_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[3]~8_combout\);

\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\controlador1|dado_lido[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[3]~9_combout\ = (\controlador1|dado_lido[3]~8_combout\) # ((\controlador1|dado_lido[3]~2_combout\ & \KEY[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|dado_lido[3]~8_combout\,
	datab => \controlador1|dado_lido[3]~2_combout\,
	datac => \KEY[3]~input_o\,
	combout => \controlador1|dado_lido[3]~9_combout\);

\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\controlador1|dado_lido[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[4]~10_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[4]~input_o\) # ((\memoriaDados|ram~47_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~47_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[4]~input_o\,
	datac => \memoriaDados|ram~47_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[4]~10_combout\);

\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\controlador1|dado_lido[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[5]~11_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[5]~input_o\) # ((\memoriaDados|ram~48_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~48_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[5]~input_o\,
	datac => \memoriaDados|ram~48_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[5]~11_combout\);

\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\controlador1|dado_lido[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[6]~12_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[6]~input_o\) # ((\memoriaDados|ram~49_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~49_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[6]~input_o\,
	datac => \memoriaDados|ram~49_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[6]~12_combout\);

\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\controlador1|dado_lido[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[7]~13_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[7]~input_o\) # ((\memoriaDados|ram~50_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~50_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[7]~input_o\,
	datac => \memoriaDados|ram~50_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[7]~13_combout\);

\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\controlador1|dado_lido[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[8]~14_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[8]~input_o\) # ((\memoriaDados|ram~51_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~51_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[8]~input_o\,
	datac => \memoriaDados|ram~51_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[8]~14_combout\);

\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\controlador1|dado_lido[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[9]~15_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[9]~input_o\) # ((\memoriaDados|ram~52_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~52_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[9]~input_o\,
	datac => \memoriaDados|ram~52_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[9]~15_combout\);

\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

\controlador1|dado_lido[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[10]~16_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[10]~input_o\) # ((\memoriaDados|ram~53_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~53_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[10]~input_o\,
	datac => \memoriaDados|ram~53_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[10]~16_combout\);

\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

\controlador1|dado_lido[11]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[11]~17_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[11]~input_o\) # ((\memoriaDados|ram~54_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~54_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[11]~input_o\,
	datac => \memoriaDados|ram~54_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[11]~17_combout\);

\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

\controlador1|dado_lido[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[12]~18_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[12]~input_o\) # ((\memoriaDados|ram~55_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~55_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[12]~input_o\,
	datac => \memoriaDados|ram~55_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[12]~18_combout\);

\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

\controlador1|dado_lido[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[13]~19_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[13]~input_o\) # ((\memoriaDados|ram~56_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~56_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[13]~input_o\,
	datac => \memoriaDados|ram~56_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[13]~19_combout\);

\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

\controlador1|dado_lido[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[14]~20_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[14]~input_o\) # ((\memoriaDados|ram~57_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~57_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[14]~input_o\,
	datac => \memoriaDados|ram~57_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[14]~20_combout\);

\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

\controlador1|dado_lido[15]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[15]~21_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[15]~input_o\) # ((\memoriaDados|ram~58_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~58_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[15]~input_o\,
	datac => \memoriaDados|ram~58_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[15]~21_combout\);

\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

\controlador1|dado_lido[16]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[16]~22_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[16]~input_o\) # ((\memoriaDados|ram~59_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~59_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[16]~input_o\,
	datac => \memoriaDados|ram~59_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[16]~22_combout\);

\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

\controlador1|dado_lido[17]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[17]~23_combout\ = (\controlador1|decodificador1|sw~12_combout\ & ((\SW[17]~input_o\) # ((\memoriaDados|ram~60_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\)))) # (!\controlador1|decodificador1|sw~12_combout\ & 
-- (((\memoriaDados|ram~60_combout\ & !\controlador1|decodificador1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~12_combout\,
	datab => \SW[17]~input_o\,
	datac => \memoriaDados|ram~60_combout\,
	datad => \controlador1|decodificador1|LessThan0~0_combout\,
	combout => \controlador1|dado_lido[17]~23_combout\);

\controlador1|dado_lido[18]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[18]~24_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~61_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~61_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[18]~24_combout\);

\controlador1|dado_lido[19]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[19]~25_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~62_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~62_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[19]~25_combout\);

\controlador1|dado_lido[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[20]~26_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~63_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~63_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[20]~26_combout\);

\controlador1|dado_lido[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[21]~27_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~64_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~64_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[21]~27_combout\);

\controlador1|dado_lido[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[22]~28_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~65_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~65_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[22]~28_combout\);

\controlador1|dado_lido[23]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[23]~29_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~66_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~66_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[23]~29_combout\);

\controlador1|dado_lido[24]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[24]~30_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~67_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~67_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[24]~30_combout\);

\controlador1|dado_lido[25]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[25]~31_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~68_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~68_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[25]~31_combout\);

\controlador1|dado_lido[26]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[26]~32_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~69_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~69_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[26]~32_combout\);

\controlador1|dado_lido[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[27]~33_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~70_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~70_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[27]~33_combout\);

\controlador1|dado_lido[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[28]~34_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~71_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~71_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[28]~34_combout\);

\controlador1|dado_lido[29]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[29]~35_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~72_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~72_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[29]~35_combout\);

\controlador1|dado_lido[30]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[30]~36_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~73_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~73_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[30]~36_combout\);

\controlador1|dado_lido[31]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|dado_lido[31]~37_combout\ = (\controlador1|decodificador1|sw~7_combout\ & (\memoriaDados|ram~74_combout\ & !\ula|mux4|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|sw~7_combout\,
	datab => \memoriaDados|ram~74_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \controlador1|dado_lido[31]~37_combout\);

\IF_ID|q[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(32));

\ID_EX|q[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(32),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(106));

\EX_MEM|q[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(106),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(70));

\mux_PC|Y[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[0]~3_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(70))) # (!\and_beq~combout\ & ((\PC|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(70),
	datab => \PC|q\(0),
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[0]~3_combout\);

\PC|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(0));

\somador1|Y[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[10]~16_combout\ = (\PC|q\(10) & (\somador1|Y[9]~15\ $ (GND))) # (!\PC|q\(10) & (!\somador1|Y[9]~15\ & VCC))
-- \somador1|Y[10]~17\ = CARRY((\PC|q\(10) & !\somador1|Y[9]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(10),
	datad => VCC,
	cin => \somador1|Y[9]~15\,
	combout => \somador1|Y[10]~16_combout\,
	cout => \somador1|Y[10]~17\);

\IF_ID|q[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[10]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(42));

\ID_EX|q[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(116));

\EX_MEM|q[80]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[80]~46_combout\ = (\ID_EX|q\(116) & (\EX_MEM|q[79]~45\ $ (GND))) # (!\ID_EX|q\(116) & (!\EX_MEM|q[79]~45\ & VCC))
-- \EX_MEM|q[80]~47\ = CARRY((\ID_EX|q\(116) & !\EX_MEM|q[79]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(116),
	datad => VCC,
	cin => \EX_MEM|q[79]~45\,
	combout => \EX_MEM|q[80]~46_combout\,
	cout => \EX_MEM|q[80]~47\);

\EX_MEM|q[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[80]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(80));

\mux_PC|Y[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[10]~4_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(80))) # (!\and_beq~combout\ & ((\somador1|Y[10]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(80),
	datab => \somador1|Y[10]~16_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[10]~4_combout\);

\PC|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(10));

\somador1|Y[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[11]~18_combout\ = (\PC|q\(11) & (!\somador1|Y[10]~17\)) # (!\PC|q\(11) & ((\somador1|Y[10]~17\) # (GND)))
-- \somador1|Y[11]~19\ = CARRY((!\somador1|Y[10]~17\) # (!\PC|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(11),
	datad => VCC,
	cin => \somador1|Y[10]~17\,
	combout => \somador1|Y[11]~18_combout\,
	cout => \somador1|Y[11]~19\);

\IF_ID|q[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[11]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(43));

\ID_EX|q[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(117));

\EX_MEM|q[81]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[81]~48_combout\ = (\ID_EX|q\(117) & (!\EX_MEM|q[80]~47\)) # (!\ID_EX|q\(117) & ((\EX_MEM|q[80]~47\) # (GND)))
-- \EX_MEM|q[81]~49\ = CARRY((!\EX_MEM|q[80]~47\) # (!\ID_EX|q\(117)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(117),
	datad => VCC,
	cin => \EX_MEM|q[80]~47\,
	combout => \EX_MEM|q[81]~48_combout\,
	cout => \EX_MEM|q[81]~49\);

\EX_MEM|q[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[81]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(81));

\mux_PC|Y[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[11]~5_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(81))) # (!\and_beq~combout\ & ((\somador1|Y[11]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(81),
	datab => \somador1|Y[11]~18_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[11]~5_combout\);

\PC|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[11]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(11));

\somador1|Y[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[12]~20_combout\ = (\PC|q\(12) & (\somador1|Y[11]~19\ $ (GND))) # (!\PC|q\(12) & (!\somador1|Y[11]~19\ & VCC))
-- \somador1|Y[12]~21\ = CARRY((\PC|q\(12) & !\somador1|Y[11]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(12),
	datad => VCC,
	cin => \somador1|Y[11]~19\,
	combout => \somador1|Y[12]~20_combout\,
	cout => \somador1|Y[12]~21\);

\IF_ID|q[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(44));

\ID_EX|q[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(118));

\EX_MEM|q[82]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[82]~50_combout\ = (\ID_EX|q\(118) & (\EX_MEM|q[81]~49\ $ (GND))) # (!\ID_EX|q\(118) & (!\EX_MEM|q[81]~49\ & VCC))
-- \EX_MEM|q[82]~51\ = CARRY((\ID_EX|q\(118) & !\EX_MEM|q[81]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(118),
	datad => VCC,
	cin => \EX_MEM|q[81]~49\,
	combout => \EX_MEM|q[82]~50_combout\,
	cout => \EX_MEM|q[82]~51\);

\EX_MEM|q[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[82]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(82));

\mux_PC|Y[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[12]~6_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(82))) # (!\and_beq~combout\ & ((\somador1|Y[12]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(82),
	datab => \somador1|Y[12]~20_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[12]~6_combout\);

\PC|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[12]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(12));

\somador1|Y[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[13]~22_combout\ = (\PC|q\(13) & (!\somador1|Y[12]~21\)) # (!\PC|q\(13) & ((\somador1|Y[12]~21\) # (GND)))
-- \somador1|Y[13]~23\ = CARRY((!\somador1|Y[12]~21\) # (!\PC|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(13),
	datad => VCC,
	cin => \somador1|Y[12]~21\,
	combout => \somador1|Y[13]~22_combout\,
	cout => \somador1|Y[13]~23\);

\IF_ID|q[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(45));

\ID_EX|q[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(119));

\EX_MEM|q[83]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[83]~52_combout\ = (\ID_EX|q\(21) & ((\ID_EX|q\(119) & (\EX_MEM|q[82]~51\ & VCC)) # (!\ID_EX|q\(119) & (!\EX_MEM|q[82]~51\)))) # (!\ID_EX|q\(21) & ((\ID_EX|q\(119) & (!\EX_MEM|q[82]~51\)) # (!\ID_EX|q\(119) & ((\EX_MEM|q[82]~51\) # (GND)))))
-- \EX_MEM|q[83]~53\ = CARRY((\ID_EX|q\(21) & (!\ID_EX|q\(119) & !\EX_MEM|q[82]~51\)) # (!\ID_EX|q\(21) & ((!\EX_MEM|q[82]~51\) # (!\ID_EX|q\(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(21),
	datab => \ID_EX|q\(119),
	datad => VCC,
	cin => \EX_MEM|q[82]~51\,
	combout => \EX_MEM|q[83]~52_combout\,
	cout => \EX_MEM|q[83]~53\);

\EX_MEM|q[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[83]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(83));

\PC|q[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[13]~5_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(83)))) # (!\and_beq~combout\ & (\somador1|Y[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[13]~22_combout\,
	datab => \EX_MEM|q\(83),
	datad => \and_beq~combout\,
	combout => \PC|q[13]~5_combout\);

\PC|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[13]~5_combout\,
	asdata => \memoriaInst|rom~30_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(13));

\somador1|Y[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[14]~24_combout\ = (\PC|q\(14) & (\somador1|Y[13]~23\ $ (GND))) # (!\PC|q\(14) & (!\somador1|Y[13]~23\ & VCC))
-- \somador1|Y[14]~25\ = CARRY((\PC|q\(14) & !\somador1|Y[13]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(14),
	datad => VCC,
	cin => \somador1|Y[13]~23\,
	combout => \somador1|Y[14]~24_combout\,
	cout => \somador1|Y[14]~25\);

\IF_ID|q[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[14]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(46));

\ID_EX|q[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(120));

\EX_MEM|q[84]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[84]~54_combout\ = ((\ID_EX|q\(22) $ (\ID_EX|q\(120) $ (!\EX_MEM|q[83]~53\)))) # (GND)
-- \EX_MEM|q[84]~55\ = CARRY((\ID_EX|q\(22) & ((\ID_EX|q\(120)) # (!\EX_MEM|q[83]~53\))) # (!\ID_EX|q\(22) & (\ID_EX|q\(120) & !\EX_MEM|q[83]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(22),
	datab => \ID_EX|q\(120),
	datad => VCC,
	cin => \EX_MEM|q[83]~53\,
	combout => \EX_MEM|q[84]~54_combout\,
	cout => \EX_MEM|q[84]~55\);

\EX_MEM|q[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[84]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(84));

\PC|q[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[14]~6_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(84)))) # (!\and_beq~combout\ & (\somador1|Y[14]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[14]~24_combout\,
	datab => \EX_MEM|q\(84),
	datad => \and_beq~combout\,
	combout => \PC|q[14]~6_combout\);

\PC|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[14]~6_combout\,
	asdata => \memoriaInst|rom~32_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(14));

\somador1|Y[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[15]~26_combout\ = (\PC|q\(15) & (!\somador1|Y[14]~25\)) # (!\PC|q\(15) & ((\somador1|Y[14]~25\) # (GND)))
-- \somador1|Y[15]~27\ = CARRY((!\somador1|Y[14]~25\) # (!\PC|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(15),
	datad => VCC,
	cin => \somador1|Y[14]~25\,
	combout => \somador1|Y[15]~26_combout\,
	cout => \somador1|Y[15]~27\);

\IF_ID|q[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[15]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(47));

\ID_EX|q[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(121));

\EX_MEM|q[85]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[85]~56_combout\ = (\ID_EX|q\(121) & (!\EX_MEM|q[84]~55\)) # (!\ID_EX|q\(121) & ((\EX_MEM|q[84]~55\) # (GND)))
-- \EX_MEM|q[85]~57\ = CARRY((!\EX_MEM|q[84]~55\) # (!\ID_EX|q\(121)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(121),
	datad => VCC,
	cin => \EX_MEM|q[84]~55\,
	combout => \EX_MEM|q[85]~56_combout\,
	cout => \EX_MEM|q[85]~57\);

\EX_MEM|q[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[85]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(85));

\mux_PC|Y[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[15]~7_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(85))) # (!\and_beq~combout\ & ((\somador1|Y[15]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(85),
	datab => \somador1|Y[15]~26_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[15]~7_combout\);

\PC|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(15));

\somador1|Y[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[16]~28_combout\ = (\PC|q\(16) & (\somador1|Y[15]~27\ $ (GND))) # (!\PC|q\(16) & (!\somador1|Y[15]~27\ & VCC))
-- \somador1|Y[16]~29\ = CARRY((\PC|q\(16) & !\somador1|Y[15]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(16),
	datad => VCC,
	cin => \somador1|Y[15]~27\,
	combout => \somador1|Y[16]~28_combout\,
	cout => \somador1|Y[16]~29\);

\IF_ID|q[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[16]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(48));

\ID_EX|q[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(122));

\EX_MEM|q[86]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[86]~58_combout\ = ((\ID_EX|q\(21) $ (\ID_EX|q\(122) $ (!\EX_MEM|q[85]~57\)))) # (GND)
-- \EX_MEM|q[86]~59\ = CARRY((\ID_EX|q\(21) & ((\ID_EX|q\(122)) # (!\EX_MEM|q[85]~57\))) # (!\ID_EX|q\(21) & (\ID_EX|q\(122) & !\EX_MEM|q[85]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(21),
	datab => \ID_EX|q\(122),
	datad => VCC,
	cin => \EX_MEM|q[85]~57\,
	combout => \EX_MEM|q[86]~58_combout\,
	cout => \EX_MEM|q[86]~59\);

\EX_MEM|q[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[86]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(86));

\PC|q[16]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[16]~7_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(86)))) # (!\and_beq~combout\ & (\somador1|Y[16]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[16]~28_combout\,
	datab => \EX_MEM|q\(86),
	datad => \and_beq~combout\,
	combout => \PC|q[16]~7_combout\);

\PC|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[16]~7_combout\,
	asdata => \memoriaInst|rom~30_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(16));

\somador1|Y[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[17]~30_combout\ = (\PC|q\(17) & (!\somador1|Y[16]~29\)) # (!\PC|q\(17) & ((\somador1|Y[16]~29\) # (GND)))
-- \somador1|Y[17]~31\ = CARRY((!\somador1|Y[16]~29\) # (!\PC|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(17),
	datad => VCC,
	cin => \somador1|Y[16]~29\,
	combout => \somador1|Y[17]~30_combout\,
	cout => \somador1|Y[17]~31\);

\IF_ID|q[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[17]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(49));

\ID_EX|q[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(123));

\EX_MEM|q[87]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[87]~60_combout\ = (\ID_EX|q\(123) & (!\EX_MEM|q[86]~59\)) # (!\ID_EX|q\(123) & ((\EX_MEM|q[86]~59\) # (GND)))
-- \EX_MEM|q[87]~61\ = CARRY((!\EX_MEM|q[86]~59\) # (!\ID_EX|q\(123)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(123),
	datad => VCC,
	cin => \EX_MEM|q[86]~59\,
	combout => \EX_MEM|q[87]~60_combout\,
	cout => \EX_MEM|q[87]~61\);

\EX_MEM|q[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[87]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(87));

\mux_PC|Y[17]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[17]~8_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(87))) # (!\and_beq~combout\ & ((\somador1|Y[17]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(87),
	datab => \somador1|Y[17]~30_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[17]~8_combout\);

\PC|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[17]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(17));

\somador1|Y[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[18]~32_combout\ = (\PC|q\(18) & (\somador1|Y[17]~31\ $ (GND))) # (!\PC|q\(18) & (!\somador1|Y[17]~31\ & VCC))
-- \somador1|Y[18]~33\ = CARRY((\PC|q\(18) & !\somador1|Y[17]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(18),
	datad => VCC,
	cin => \somador1|Y[17]~31\,
	combout => \somador1|Y[18]~32_combout\,
	cout => \somador1|Y[18]~33\);

\IF_ID|q[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[18]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(50));

\ID_EX|q[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(124));

\EX_MEM|q[88]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[88]~62_combout\ = (\ID_EX|q\(124) & (\EX_MEM|q[87]~61\ $ (GND))) # (!\ID_EX|q\(124) & (!\EX_MEM|q[87]~61\ & VCC))
-- \EX_MEM|q[88]~63\ = CARRY((\ID_EX|q\(124) & !\EX_MEM|q[87]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(124),
	datad => VCC,
	cin => \EX_MEM|q[87]~61\,
	combout => \EX_MEM|q[88]~62_combout\,
	cout => \EX_MEM|q[88]~63\);

\EX_MEM|q[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[88]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(88));

\PC|q[18]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[18]~8_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(88)))) # (!\and_beq~combout\ & (\somador1|Y[18]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[18]~32_combout\,
	datab => \EX_MEM|q\(88),
	datad => \and_beq~combout\,
	combout => \PC|q[18]~8_combout\);

\PC|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[18]~8_combout\,
	asdata => \memoriaInst|rom~36_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(18));

\somador1|Y[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[19]~34_combout\ = (\PC|q\(19) & (!\somador1|Y[18]~33\)) # (!\PC|q\(19) & ((\somador1|Y[18]~33\) # (GND)))
-- \somador1|Y[19]~35\ = CARRY((!\somador1|Y[18]~33\) # (!\PC|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(19),
	datad => VCC,
	cin => \somador1|Y[18]~33\,
	combout => \somador1|Y[19]~34_combout\,
	cout => \somador1|Y[19]~35\);

\IF_ID|q[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[19]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(51));

\ID_EX|q[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(125));

\EX_MEM|q[89]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[89]~64_combout\ = (\ID_EX|q\(125) & (!\EX_MEM|q[88]~63\)) # (!\ID_EX|q\(125) & ((\EX_MEM|q[88]~63\) # (GND)))
-- \EX_MEM|q[89]~65\ = CARRY((!\EX_MEM|q[88]~63\) # (!\ID_EX|q\(125)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(125),
	datad => VCC,
	cin => \EX_MEM|q[88]~63\,
	combout => \EX_MEM|q[89]~64_combout\,
	cout => \EX_MEM|q[89]~65\);

\EX_MEM|q[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[89]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(89));

\PC|q[19]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[19]~9_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(89)))) # (!\and_beq~combout\ & (\somador1|Y[19]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[19]~34_combout\,
	datab => \EX_MEM|q\(89),
	datad => \and_beq~combout\,
	combout => \PC|q[19]~9_combout\);

\PC|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[19]~9_combout\,
	asdata => \memoriaInst|rom~56_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(19));

\somador1|Y[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[20]~36_combout\ = (\PC|q\(20) & (\somador1|Y[19]~35\ $ (GND))) # (!\PC|q\(20) & (!\somador1|Y[19]~35\ & VCC))
-- \somador1|Y[20]~37\ = CARRY((\PC|q\(20) & !\somador1|Y[19]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(20),
	datad => VCC,
	cin => \somador1|Y[19]~35\,
	combout => \somador1|Y[20]~36_combout\,
	cout => \somador1|Y[20]~37\);

\IF_ID|q[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[20]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(52));

\ID_EX|q[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(126));

\EX_MEM|q[90]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[90]~66_combout\ = (\ID_EX|q\(126) & (\EX_MEM|q[89]~65\ $ (GND))) # (!\ID_EX|q\(126) & (!\EX_MEM|q[89]~65\ & VCC))
-- \EX_MEM|q[90]~67\ = CARRY((\ID_EX|q\(126) & !\EX_MEM|q[89]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(126),
	datad => VCC,
	cin => \EX_MEM|q[89]~65\,
	combout => \EX_MEM|q[90]~66_combout\,
	cout => \EX_MEM|q[90]~67\);

\EX_MEM|q[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[90]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(90));

\mux_PC|Y[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[20]~9_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(90))) # (!\and_beq~combout\ & ((\somador1|Y[20]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(90),
	datab => \somador1|Y[20]~36_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[20]~9_combout\);

\PC|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(20));

\somador1|Y[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[21]~38_combout\ = (\PC|q\(21) & (!\somador1|Y[20]~37\)) # (!\PC|q\(21) & ((\somador1|Y[20]~37\) # (GND)))
-- \somador1|Y[21]~39\ = CARRY((!\somador1|Y[20]~37\) # (!\PC|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(21),
	datad => VCC,
	cin => \somador1|Y[20]~37\,
	combout => \somador1|Y[21]~38_combout\,
	cout => \somador1|Y[21]~39\);

\IF_ID|q[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[21]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(53));

\ID_EX|q[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(127));

\EX_MEM|q[91]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[91]~68_combout\ = (\ID_EX|q\(127) & (!\EX_MEM|q[90]~67\)) # (!\ID_EX|q\(127) & ((\EX_MEM|q[90]~67\) # (GND)))
-- \EX_MEM|q[91]~69\ = CARRY((!\EX_MEM|q[90]~67\) # (!\ID_EX|q\(127)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(127),
	datad => VCC,
	cin => \EX_MEM|q[90]~67\,
	combout => \EX_MEM|q[91]~68_combout\,
	cout => \EX_MEM|q[91]~69\);

\EX_MEM|q[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[91]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(91));

\PC|q[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[21]~10_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(91)))) # (!\and_beq~combout\ & (\somador1|Y[21]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[21]~38_combout\,
	datab => \EX_MEM|q\(91),
	datad => \and_beq~combout\,
	combout => \PC|q[21]~10_combout\);

\PC|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[21]~10_combout\,
	asdata => \memoriaInst|rom~40_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(21));

\somador1|Y[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[22]~40_combout\ = (\PC|q\(22) & (\somador1|Y[21]~39\ $ (GND))) # (!\PC|q\(22) & (!\somador1|Y[21]~39\ & VCC))
-- \somador1|Y[22]~41\ = CARRY((\PC|q\(22) & !\somador1|Y[21]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(22),
	datad => VCC,
	cin => \somador1|Y[21]~39\,
	combout => \somador1|Y[22]~40_combout\,
	cout => \somador1|Y[22]~41\);

\IF_ID|q[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[22]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(54));

\ID_EX|q[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(128));

\EX_MEM|q[92]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[92]~70_combout\ = (\ID_EX|q\(128) & (\EX_MEM|q[91]~69\ $ (GND))) # (!\ID_EX|q\(128) & (!\EX_MEM|q[91]~69\ & VCC))
-- \EX_MEM|q[92]~71\ = CARRY((\ID_EX|q\(128) & !\EX_MEM|q[91]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(128),
	datad => VCC,
	cin => \EX_MEM|q[91]~69\,
	combout => \EX_MEM|q[92]~70_combout\,
	cout => \EX_MEM|q[92]~71\);

\EX_MEM|q[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[92]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(92));

\PC|q[22]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[22]~11_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(92)))) # (!\and_beq~combout\ & (\somador1|Y[22]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[22]~40_combout\,
	datab => \EX_MEM|q\(92),
	datad => \and_beq~combout\,
	combout => \PC|q[22]~11_combout\);

\PC|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[22]~11_combout\,
	asdata => \memoriaInst|rom~41_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(22));

\somador1|Y[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[23]~42_combout\ = (\PC|q\(23) & (!\somador1|Y[22]~41\)) # (!\PC|q\(23) & ((\somador1|Y[22]~41\) # (GND)))
-- \somador1|Y[23]~43\ = CARRY((!\somador1|Y[22]~41\) # (!\PC|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(23),
	datad => VCC,
	cin => \somador1|Y[22]~41\,
	combout => \somador1|Y[23]~42_combout\,
	cout => \somador1|Y[23]~43\);

\IF_ID|q[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[23]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(55));

\ID_EX|q[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(129));

\EX_MEM|q[93]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[93]~72_combout\ = (\ID_EX|q\(129) & (!\EX_MEM|q[92]~71\)) # (!\ID_EX|q\(129) & ((\EX_MEM|q[92]~71\) # (GND)))
-- \EX_MEM|q[93]~73\ = CARRY((!\EX_MEM|q[92]~71\) # (!\ID_EX|q\(129)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(129),
	datad => VCC,
	cin => \EX_MEM|q[92]~71\,
	combout => \EX_MEM|q[93]~72_combout\,
	cout => \EX_MEM|q[93]~73\);

\EX_MEM|q[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[93]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(93));

\PC|q[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[23]~12_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(93)))) # (!\and_beq~combout\ & (\somador1|Y[23]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[23]~42_combout\,
	datab => \EX_MEM|q\(93),
	datad => \and_beq~combout\,
	combout => \PC|q[23]~12_combout\);

\PC|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[23]~12_combout\,
	asdata => \memoriaInst|rom~43_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(23));

\somador1|Y[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[24]~44_combout\ = (\PC|q\(24) & (\somador1|Y[23]~43\ $ (GND))) # (!\PC|q\(24) & (!\somador1|Y[23]~43\ & VCC))
-- \somador1|Y[24]~45\ = CARRY((\PC|q\(24) & !\somador1|Y[23]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(24),
	datad => VCC,
	cin => \somador1|Y[23]~43\,
	combout => \somador1|Y[24]~44_combout\,
	cout => \somador1|Y[24]~45\);

\IF_ID|q[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[24]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(56));

\ID_EX|q[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(130));

\EX_MEM|q[94]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[94]~74_combout\ = (\ID_EX|q\(130) & (\EX_MEM|q[93]~73\ $ (GND))) # (!\ID_EX|q\(130) & (!\EX_MEM|q[93]~73\ & VCC))
-- \EX_MEM|q[94]~75\ = CARRY((\ID_EX|q\(130) & !\EX_MEM|q[93]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(130),
	datad => VCC,
	cin => \EX_MEM|q[93]~73\,
	combout => \EX_MEM|q[94]~74_combout\,
	cout => \EX_MEM|q[94]~75\);

\EX_MEM|q[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[94]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(94));

\PC|q[24]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[24]~13_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(94)))) # (!\and_beq~combout\ & (\somador1|Y[24]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[24]~44_combout\,
	datab => \EX_MEM|q\(94),
	datad => \and_beq~combout\,
	combout => \PC|q[24]~13_combout\);

\PC|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[24]~13_combout\,
	asdata => \memoriaInst|rom~57_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(24));

\somador1|Y[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[25]~46_combout\ = (\PC|q\(25) & (!\somador1|Y[24]~45\)) # (!\PC|q\(25) & ((\somador1|Y[24]~45\) # (GND)))
-- \somador1|Y[25]~47\ = CARRY((!\somador1|Y[24]~45\) # (!\PC|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(25),
	datad => VCC,
	cin => \somador1|Y[24]~45\,
	combout => \somador1|Y[25]~46_combout\,
	cout => \somador1|Y[25]~47\);

\IF_ID|q[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[25]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(57));

\ID_EX|q[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(131));

\EX_MEM|q[95]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[95]~76_combout\ = (\ID_EX|q\(131) & (!\EX_MEM|q[94]~75\)) # (!\ID_EX|q\(131) & ((\EX_MEM|q[94]~75\) # (GND)))
-- \EX_MEM|q[95]~77\ = CARRY((!\EX_MEM|q[94]~75\) # (!\ID_EX|q\(131)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(131),
	datad => VCC,
	cin => \EX_MEM|q[94]~75\,
	combout => \EX_MEM|q[95]~76_combout\,
	cout => \EX_MEM|q[95]~77\);

\EX_MEM|q[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[95]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(95));

\mux_PC|Y[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[25]~10_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(95))) # (!\and_beq~combout\ & ((\somador1|Y[25]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(95),
	datab => \somador1|Y[25]~46_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[25]~10_combout\);

\PC|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[25]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(25));

\somador1|Y[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[26]~48_combout\ = (\PC|q\(26) & (\somador1|Y[25]~47\ $ (GND))) # (!\PC|q\(26) & (!\somador1|Y[25]~47\ & VCC))
-- \somador1|Y[26]~49\ = CARRY((\PC|q\(26) & !\somador1|Y[25]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(26),
	datad => VCC,
	cin => \somador1|Y[25]~47\,
	combout => \somador1|Y[26]~48_combout\,
	cout => \somador1|Y[26]~49\);

\IF_ID|q[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[26]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(58));

\ID_EX|q[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(132));

\EX_MEM|q[96]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[96]~78_combout\ = (\ID_EX|q\(132) & (\EX_MEM|q[95]~77\ $ (GND))) # (!\ID_EX|q\(132) & (!\EX_MEM|q[95]~77\ & VCC))
-- \EX_MEM|q[96]~79\ = CARRY((\ID_EX|q\(132) & !\EX_MEM|q[95]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(132),
	datad => VCC,
	cin => \EX_MEM|q[95]~77\,
	combout => \EX_MEM|q[96]~78_combout\,
	cout => \EX_MEM|q[96]~79\);

\EX_MEM|q[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[96]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(96));

\PC|q[26]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[26]~14_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(96)))) # (!\and_beq~combout\ & (\somador1|Y[26]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[26]~48_combout\,
	datab => \EX_MEM|q\(96),
	datad => \and_beq~combout\,
	combout => \PC|q[26]~14_combout\);

\PC|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[26]~14_combout\,
	asdata => \memoriaInst|rom~36_combout\,
	sload => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(26));

\somador1|Y[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[27]~50_combout\ = (\PC|q\(27) & (!\somador1|Y[26]~49\)) # (!\PC|q\(27) & ((\somador1|Y[26]~49\) # (GND)))
-- \somador1|Y[27]~51\ = CARRY((!\somador1|Y[26]~49\) # (!\PC|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(27),
	datad => VCC,
	cin => \somador1|Y[26]~49\,
	combout => \somador1|Y[27]~50_combout\,
	cout => \somador1|Y[27]~51\);

\IF_ID|q[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[27]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(59));

\ID_EX|q[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(133));

\EX_MEM|q[97]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[97]~80_combout\ = (\ID_EX|q\(133) & (!\EX_MEM|q[96]~79\)) # (!\ID_EX|q\(133) & ((\EX_MEM|q[96]~79\) # (GND)))
-- \EX_MEM|q[97]~81\ = CARRY((!\EX_MEM|q[96]~79\) # (!\ID_EX|q\(133)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(133),
	datad => VCC,
	cin => \EX_MEM|q[96]~79\,
	combout => \EX_MEM|q[97]~80_combout\,
	cout => \EX_MEM|q[97]~81\);

\EX_MEM|q[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[97]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(97));

\mux_PC|Y[27]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[27]~11_combout\ = (!\fd_ctrl|Equal0~0_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(97))) # (!\and_beq~combout\ & ((\somador1|Y[27]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(97),
	datab => \somador1|Y[27]~50_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[27]~11_combout\);

\PC|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[27]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(27));

\somador1|Y[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[28]~52_combout\ = (\PC|q\(28) & (\somador1|Y[27]~51\ $ (GND))) # (!\PC|q\(28) & (!\somador1|Y[27]~51\ & VCC))
-- \somador1|Y[28]~53\ = CARRY((\PC|q\(28) & !\somador1|Y[27]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(28),
	datad => VCC,
	cin => \somador1|Y[27]~51\,
	combout => \somador1|Y[28]~52_combout\,
	cout => \somador1|Y[28]~53\);

\IF_ID|q[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[28]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(60));

\ID_EX|q[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(134));

\EX_MEM|q[98]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[98]~82_combout\ = (\ID_EX|q\(134) & (\EX_MEM|q[97]~81\ $ (GND))) # (!\ID_EX|q\(134) & (!\EX_MEM|q[97]~81\ & VCC))
-- \EX_MEM|q[98]~83\ = CARRY((\ID_EX|q\(134) & !\EX_MEM|q[97]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(134),
	datad => VCC,
	cin => \EX_MEM|q[97]~81\,
	combout => \EX_MEM|q[98]~82_combout\,
	cout => \EX_MEM|q[98]~83\);

\EX_MEM|q[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[98]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(98));

\mux_PC|Y[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[28]~12_combout\ = (\and_beq~combout\ & ((\fd_ctrl|Equal0~0_combout\ & (\somador1|Y[28]~52_combout\)) # (!\fd_ctrl|Equal0~0_combout\ & ((\EX_MEM|q\(98)))))) # (!\and_beq~combout\ & (\somador1|Y[28]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[28]~52_combout\,
	datab => \EX_MEM|q\(98),
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[28]~12_combout\);

\PC|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[28]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(28));

\somador1|Y[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[29]~54_combout\ = (\PC|q\(29) & (!\somador1|Y[28]~53\)) # (!\PC|q\(29) & ((\somador1|Y[28]~53\) # (GND)))
-- \somador1|Y[29]~55\ = CARRY((!\somador1|Y[28]~53\) # (!\PC|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(29),
	datad => VCC,
	cin => \somador1|Y[28]~53\,
	combout => \somador1|Y[29]~54_combout\,
	cout => \somador1|Y[29]~55\);

\IF_ID|q[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[29]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(61));

\ID_EX|q[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(135));

\EX_MEM|q[99]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[99]~84_combout\ = (\ID_EX|q\(135) & (!\EX_MEM|q[98]~83\)) # (!\ID_EX|q\(135) & ((\EX_MEM|q[98]~83\) # (GND)))
-- \EX_MEM|q[99]~85\ = CARRY((!\EX_MEM|q[98]~83\) # (!\ID_EX|q\(135)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(135),
	datad => VCC,
	cin => \EX_MEM|q[98]~83\,
	combout => \EX_MEM|q[99]~84_combout\,
	cout => \EX_MEM|q[99]~85\);

\EX_MEM|q[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[99]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(99));

\mux_PC|Y[29]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[29]~13_combout\ = (\and_beq~combout\ & ((\fd_ctrl|Equal0~0_combout\ & (\somador1|Y[29]~54_combout\)) # (!\fd_ctrl|Equal0~0_combout\ & ((\EX_MEM|q\(99)))))) # (!\and_beq~combout\ & (\somador1|Y[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[29]~54_combout\,
	datab => \EX_MEM|q\(99),
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[29]~13_combout\);

\PC|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[29]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(29));

\somador1|Y[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[30]~56_combout\ = (\PC|q\(30) & (\somador1|Y[29]~55\ $ (GND))) # (!\PC|q\(30) & (!\somador1|Y[29]~55\ & VCC))
-- \somador1|Y[30]~57\ = CARRY((\PC|q\(30) & !\somador1|Y[29]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(30),
	datad => VCC,
	cin => \somador1|Y[29]~55\,
	combout => \somador1|Y[30]~56_combout\,
	cout => \somador1|Y[30]~57\);

\IF_ID|q[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[30]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(62));

\ID_EX|q[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(136));

\EX_MEM|q[100]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[100]~86_combout\ = (\ID_EX|q\(136) & (\EX_MEM|q[99]~85\ $ (GND))) # (!\ID_EX|q\(136) & (!\EX_MEM|q[99]~85\ & VCC))
-- \EX_MEM|q[100]~87\ = CARRY((\ID_EX|q\(136) & !\EX_MEM|q[99]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(136),
	datad => VCC,
	cin => \EX_MEM|q[99]~85\,
	combout => \EX_MEM|q[100]~86_combout\,
	cout => \EX_MEM|q[100]~87\);

\EX_MEM|q[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[100]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(100));

\mux_PC|Y[30]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[30]~14_combout\ = (\and_beq~combout\ & ((\fd_ctrl|Equal0~0_combout\ & (\somador1|Y[30]~56_combout\)) # (!\fd_ctrl|Equal0~0_combout\ & ((\EX_MEM|q\(100)))))) # (!\and_beq~combout\ & (\somador1|Y[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[30]~56_combout\,
	datab => \EX_MEM|q\(100),
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[30]~14_combout\);

\PC|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[30]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(30));

\somador1|Y[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[31]~58_combout\ = \PC|q\(31) $ (\somador1|Y[30]~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(31),
	cin => \somador1|Y[30]~57\,
	combout => \somador1|Y[31]~58_combout\);

\IF_ID|q[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somador1|Y[31]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(63));

\ID_EX|q[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(137));

\EX_MEM|q[101]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[101]~88_combout\ = \ID_EX|q\(137) $ (\EX_MEM|q[100]~87\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(137),
	cin => \EX_MEM|q[100]~87\,
	combout => \EX_MEM|q[101]~88_combout\);

\EX_MEM|q[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[101]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(101));

\mux_PC|Y[31]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[31]~15_combout\ = (\and_beq~combout\ & ((\fd_ctrl|Equal0~0_combout\ & (\somador1|Y[31]~58_combout\)) # (!\fd_ctrl|Equal0~0_combout\ & ((\EX_MEM|q\(101)))))) # (!\and_beq~combout\ & (\somador1|Y[31]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[31]~58_combout\,
	datab => \EX_MEM|q\(101),
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \mux_PC|Y[31]~15_combout\);

\PC|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[31]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(31));

\controlador1|reg_leds|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(8));

\controlador1|reg_leds|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(9));

\controlador1|reg_leds|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(10));

\controlador1|reg_leds|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(11));

\controlador1|reg_leds|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(12));

\controlador1|reg_leds|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(13));

\controlador1|reg_leds|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(14));

\controlador1|reg_leds|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(15));

\controlador1|reg_leds|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(16));

\controlador1|reg_leds|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(17));

\controlador1|reg_leds|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(18));

\controlador1|reg_leds|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(19));

\controlador1|reg_leds|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(20));

\controlador1|reg_leds|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(21));

\controlador1|reg_leds|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(22));

\controlador1|reg_leds|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(23));

\controlador1|reg_leds|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(24));

\controlador1|reg_leds|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(25));

\controlador1|reg_leds|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(0));

\controlador1|reg_leds|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(1));

\controlador1|reg_leds|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(2));

\controlador1|reg_leds|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(3));

\controlador1|reg_leds|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(4));

\controlador1|reg_leds|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(5));

\controlador1|reg_leds|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(6));

\controlador1|reg_leds|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(7));

\controlador1|conv_HEX0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(3) & (\controlador1|reg_seg7|q\(0) & (\controlador1|reg_seg7|q\(1) $ (\controlador1|reg_seg7|q\(2))))) # (!\controlador1|reg_seg7|q\(3) & (!\controlador1|reg_seg7|q\(1) & 
-- (\controlador1|reg_seg7|q\(0) $ (\controlador1|reg_seg7|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(1),
	datab => \controlador1|reg_seg7|q\(3),
	datac => \controlador1|reg_seg7|q\(0),
	datad => \controlador1|reg_seg7|q\(2),
	combout => \controlador1|conv_HEX0|rascSaida7seg[0]~0_combout\);

\controlador1|conv_HEX0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(1) & ((\controlador1|reg_seg7|q\(0) & (\controlador1|reg_seg7|q\(3))) # (!\controlador1|reg_seg7|q\(0) & ((\controlador1|reg_seg7|q\(2)))))) # (!\controlador1|reg_seg7|q\(1) 
-- & (\controlador1|reg_seg7|q\(2) & (\controlador1|reg_seg7|q\(3) $ (\controlador1|reg_seg7|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(1),
	datab => \controlador1|reg_seg7|q\(3),
	datac => \controlador1|reg_seg7|q\(2),
	datad => \controlador1|reg_seg7|q\(0),
	combout => \controlador1|conv_HEX0|rascSaida7seg[1]~1_combout\);

\controlador1|conv_HEX0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(2) & (\controlador1|reg_seg7|q\(3) & ((\controlador1|reg_seg7|q\(1)) # (!\controlador1|reg_seg7|q\(0))))) # (!\controlador1|reg_seg7|q\(2) & (!\controlador1|reg_seg7|q\(3) & 
-- (\controlador1|reg_seg7|q\(1) & !\controlador1|reg_seg7|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(2),
	datab => \controlador1|reg_seg7|q\(3),
	datac => \controlador1|reg_seg7|q\(1),
	datad => \controlador1|reg_seg7|q\(0),
	combout => \controlador1|conv_HEX0|rascSaida7seg[2]~2_combout\);

\controlador1|conv_HEX0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(1) & ((\controlador1|reg_seg7|q\(0) & (\controlador1|reg_seg7|q\(2))) # (!\controlador1|reg_seg7|q\(0) & (!\controlador1|reg_seg7|q\(2) & \controlador1|reg_seg7|q\(3))))) # 
-- (!\controlador1|reg_seg7|q\(1) & (!\controlador1|reg_seg7|q\(3) & (\controlador1|reg_seg7|q\(0) $ (\controlador1|reg_seg7|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(0),
	datab => \controlador1|reg_seg7|q\(1),
	datac => \controlador1|reg_seg7|q\(2),
	datad => \controlador1|reg_seg7|q\(3),
	combout => \controlador1|conv_HEX0|rascSaida7seg[3]~3_combout\);

\controlador1|conv_HEX0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(1) & (\controlador1|reg_seg7|q\(0) & (!\controlador1|reg_seg7|q\(3)))) # (!\controlador1|reg_seg7|q\(1) & ((\controlador1|reg_seg7|q\(2) & ((!\controlador1|reg_seg7|q\(3)))) 
-- # (!\controlador1|reg_seg7|q\(2) & (\controlador1|reg_seg7|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(1),
	datab => \controlador1|reg_seg7|q\(0),
	datac => \controlador1|reg_seg7|q\(3),
	datad => \controlador1|reg_seg7|q\(2),
	combout => \controlador1|conv_HEX0|rascSaida7seg[4]~4_combout\);

\controlador1|conv_HEX0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(2) & (\controlador1|reg_seg7|q\(0) & (\controlador1|reg_seg7|q\(1) $ (\controlador1|reg_seg7|q\(3))))) # (!\controlador1|reg_seg7|q\(2) & (!\controlador1|reg_seg7|q\(3) & 
-- ((\controlador1|reg_seg7|q\(0)) # (\controlador1|reg_seg7|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(2),
	datab => \controlador1|reg_seg7|q\(0),
	datac => \controlador1|reg_seg7|q\(1),
	datad => \controlador1|reg_seg7|q\(3),
	combout => \controlador1|conv_HEX0|rascSaida7seg[5]~5_combout\);

\controlador1|conv_HEX0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(0) & (!\controlador1|reg_seg7|q\(3) & (\controlador1|reg_seg7|q\(2) $ (!\controlador1|reg_seg7|q\(1))))) # (!\controlador1|reg_seg7|q\(0) & (!\controlador1|reg_seg7|q\(1) & 
-- (\controlador1|reg_seg7|q\(2) $ (!\controlador1|reg_seg7|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(2),
	datab => \controlador1|reg_seg7|q\(0),
	datac => \controlador1|reg_seg7|q\(1),
	datad => \controlador1|reg_seg7|q\(3),
	combout => \controlador1|conv_HEX0|rascSaida7seg[6]~6_combout\);

\controlador1|conv_HEX1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(7) & (\controlador1|reg_seg7|q\(4) & (\controlador1|reg_seg7|q\(5) $ (\controlador1|reg_seg7|q\(6))))) # (!\controlador1|reg_seg7|q\(7) & (!\controlador1|reg_seg7|q\(5) & 
-- (\controlador1|reg_seg7|q\(4) $ (\controlador1|reg_seg7|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(5),
	datab => \controlador1|reg_seg7|q\(7),
	datac => \controlador1|reg_seg7|q\(4),
	datad => \controlador1|reg_seg7|q\(6),
	combout => \controlador1|conv_HEX1|rascSaida7seg[0]~0_combout\);

\controlador1|conv_HEX1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(5) & ((\controlador1|reg_seg7|q\(4) & (\controlador1|reg_seg7|q\(7))) # (!\controlador1|reg_seg7|q\(4) & ((\controlador1|reg_seg7|q\(6)))))) # (!\controlador1|reg_seg7|q\(5) 
-- & (\controlador1|reg_seg7|q\(6) & (\controlador1|reg_seg7|q\(7) $ (\controlador1|reg_seg7|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(5),
	datab => \controlador1|reg_seg7|q\(7),
	datac => \controlador1|reg_seg7|q\(6),
	datad => \controlador1|reg_seg7|q\(4),
	combout => \controlador1|conv_HEX1|rascSaida7seg[1]~1_combout\);

\controlador1|conv_HEX1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(6) & (\controlador1|reg_seg7|q\(7) & ((\controlador1|reg_seg7|q\(5)) # (!\controlador1|reg_seg7|q\(4))))) # (!\controlador1|reg_seg7|q\(6) & (!\controlador1|reg_seg7|q\(7) & 
-- (\controlador1|reg_seg7|q\(5) & !\controlador1|reg_seg7|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(6),
	datab => \controlador1|reg_seg7|q\(7),
	datac => \controlador1|reg_seg7|q\(5),
	datad => \controlador1|reg_seg7|q\(4),
	combout => \controlador1|conv_HEX1|rascSaida7seg[2]~2_combout\);

\controlador1|conv_HEX1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(5) & ((\controlador1|reg_seg7|q\(4) & (\controlador1|reg_seg7|q\(6))) # (!\controlador1|reg_seg7|q\(4) & (!\controlador1|reg_seg7|q\(6) & \controlador1|reg_seg7|q\(7))))) # 
-- (!\controlador1|reg_seg7|q\(5) & (!\controlador1|reg_seg7|q\(7) & (\controlador1|reg_seg7|q\(4) $ (\controlador1|reg_seg7|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(4),
	datab => \controlador1|reg_seg7|q\(5),
	datac => \controlador1|reg_seg7|q\(6),
	datad => \controlador1|reg_seg7|q\(7),
	combout => \controlador1|conv_HEX1|rascSaida7seg[3]~3_combout\);

\controlador1|conv_HEX1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(5) & (\controlador1|reg_seg7|q\(4) & (!\controlador1|reg_seg7|q\(7)))) # (!\controlador1|reg_seg7|q\(5) & ((\controlador1|reg_seg7|q\(6) & ((!\controlador1|reg_seg7|q\(7)))) 
-- # (!\controlador1|reg_seg7|q\(6) & (\controlador1|reg_seg7|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(5),
	datab => \controlador1|reg_seg7|q\(4),
	datac => \controlador1|reg_seg7|q\(7),
	datad => \controlador1|reg_seg7|q\(6),
	combout => \controlador1|conv_HEX1|rascSaida7seg[4]~4_combout\);

\controlador1|conv_HEX1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(6) & (\controlador1|reg_seg7|q\(4) & (\controlador1|reg_seg7|q\(5) $ (\controlador1|reg_seg7|q\(7))))) # (!\controlador1|reg_seg7|q\(6) & (!\controlador1|reg_seg7|q\(7) & 
-- ((\controlador1|reg_seg7|q\(4)) # (\controlador1|reg_seg7|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(6),
	datab => \controlador1|reg_seg7|q\(4),
	datac => \controlador1|reg_seg7|q\(5),
	datad => \controlador1|reg_seg7|q\(7),
	combout => \controlador1|conv_HEX1|rascSaida7seg[5]~5_combout\);

\controlador1|conv_HEX1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(4) & (!\controlador1|reg_seg7|q\(7) & (\controlador1|reg_seg7|q\(6) $ (!\controlador1|reg_seg7|q\(5))))) # (!\controlador1|reg_seg7|q\(4) & (!\controlador1|reg_seg7|q\(5) & 
-- (\controlador1|reg_seg7|q\(6) $ (!\controlador1|reg_seg7|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(6),
	datab => \controlador1|reg_seg7|q\(4),
	datac => \controlador1|reg_seg7|q\(5),
	datad => \controlador1|reg_seg7|q\(7),
	combout => \controlador1|conv_HEX1|rascSaida7seg[6]~6_combout\);

\controlador1|conv_HEX2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(11) & (\controlador1|reg_seg7|q\(8) & (\controlador1|reg_seg7|q\(9) $ (\controlador1|reg_seg7|q\(10))))) # (!\controlador1|reg_seg7|q\(11) & (!\controlador1|reg_seg7|q\(9) & 
-- (\controlador1|reg_seg7|q\(8) $ (\controlador1|reg_seg7|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(9),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(8),
	datad => \controlador1|reg_seg7|q\(10),
	combout => \controlador1|conv_HEX2|rascSaida7seg[0]~0_combout\);

\controlador1|conv_HEX2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(9) & ((\controlador1|reg_seg7|q\(8) & (\controlador1|reg_seg7|q\(11))) # (!\controlador1|reg_seg7|q\(8) & ((\controlador1|reg_seg7|q\(10)))))) # 
-- (!\controlador1|reg_seg7|q\(9) & (\controlador1|reg_seg7|q\(10) & (\controlador1|reg_seg7|q\(11) $ (\controlador1|reg_seg7|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(9),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(10),
	datad => \controlador1|reg_seg7|q\(8),
	combout => \controlador1|conv_HEX2|rascSaida7seg[1]~1_combout\);

\controlador1|conv_HEX2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(10) & (\controlador1|reg_seg7|q\(11) & ((\controlador1|reg_seg7|q\(9)) # (!\controlador1|reg_seg7|q\(8))))) # (!\controlador1|reg_seg7|q\(10) & 
-- (!\controlador1|reg_seg7|q\(11) & (\controlador1|reg_seg7|q\(9) & !\controlador1|reg_seg7|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(9),
	datad => \controlador1|reg_seg7|q\(8),
	combout => \controlador1|conv_HEX2|rascSaida7seg[2]~2_combout\);

\controlador1|conv_HEX2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(9) & ((\controlador1|reg_seg7|q\(8) & (\controlador1|reg_seg7|q\(10))) # (!\controlador1|reg_seg7|q\(8) & (!\controlador1|reg_seg7|q\(10) & \controlador1|reg_seg7|q\(11))))) 
-- # (!\controlador1|reg_seg7|q\(9) & (!\controlador1|reg_seg7|q\(11) & (\controlador1|reg_seg7|q\(8) $ (\controlador1|reg_seg7|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(8),
	datab => \controlador1|reg_seg7|q\(9),
	datac => \controlador1|reg_seg7|q\(10),
	datad => \controlador1|reg_seg7|q\(11),
	combout => \controlador1|conv_HEX2|rascSaida7seg[3]~3_combout\);

\controlador1|conv_HEX2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(9) & (\controlador1|reg_seg7|q\(8) & (!\controlador1|reg_seg7|q\(11)))) # (!\controlador1|reg_seg7|q\(9) & ((\controlador1|reg_seg7|q\(10) & 
-- ((!\controlador1|reg_seg7|q\(11)))) # (!\controlador1|reg_seg7|q\(10) & (\controlador1|reg_seg7|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(9),
	datab => \controlador1|reg_seg7|q\(8),
	datac => \controlador1|reg_seg7|q\(11),
	datad => \controlador1|reg_seg7|q\(10),
	combout => \controlador1|conv_HEX2|rascSaida7seg[4]~4_combout\);

\controlador1|conv_HEX2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(10) & (\controlador1|reg_seg7|q\(8) & (\controlador1|reg_seg7|q\(9) $ (\controlador1|reg_seg7|q\(11))))) # (!\controlador1|reg_seg7|q\(10) & (!\controlador1|reg_seg7|q\(11) & 
-- ((\controlador1|reg_seg7|q\(8)) # (\controlador1|reg_seg7|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(8),
	datac => \controlador1|reg_seg7|q\(9),
	datad => \controlador1|reg_seg7|q\(11),
	combout => \controlador1|conv_HEX2|rascSaida7seg[5]~5_combout\);

\controlador1|conv_HEX2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(8) & (!\controlador1|reg_seg7|q\(11) & (\controlador1|reg_seg7|q\(10) $ (!\controlador1|reg_seg7|q\(9))))) # (!\controlador1|reg_seg7|q\(8) & (!\controlador1|reg_seg7|q\(9) & 
-- (\controlador1|reg_seg7|q\(10) $ (!\controlador1|reg_seg7|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(8),
	datac => \controlador1|reg_seg7|q\(9),
	datad => \controlador1|reg_seg7|q\(11),
	combout => \controlador1|conv_HEX2|rascSaida7seg[6]~6_combout\);

\controlador1|conv_HEX3|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(15) & (\controlador1|reg_seg7|q\(12) & (\controlador1|reg_seg7|q\(13) $ (\controlador1|reg_seg7|q\(14))))) # (!\controlador1|reg_seg7|q\(15) & (!\controlador1|reg_seg7|q\(13) 
-- & (\controlador1|reg_seg7|q\(12) $ (\controlador1|reg_seg7|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(13),
	datab => \controlador1|reg_seg7|q\(15),
	datac => \controlador1|reg_seg7|q\(12),
	datad => \controlador1|reg_seg7|q\(14),
	combout => \controlador1|conv_HEX3|rascSaida7seg[0]~0_combout\);

\controlador1|conv_HEX3|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(13) & ((\controlador1|reg_seg7|q\(12) & (\controlador1|reg_seg7|q\(15))) # (!\controlador1|reg_seg7|q\(12) & ((\controlador1|reg_seg7|q\(14)))))) # 
-- (!\controlador1|reg_seg7|q\(13) & (\controlador1|reg_seg7|q\(14) & (\controlador1|reg_seg7|q\(15) $ (\controlador1|reg_seg7|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(13),
	datab => \controlador1|reg_seg7|q\(15),
	datac => \controlador1|reg_seg7|q\(14),
	datad => \controlador1|reg_seg7|q\(12),
	combout => \controlador1|conv_HEX3|rascSaida7seg[1]~1_combout\);

\controlador1|conv_HEX3|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(14) & (\controlador1|reg_seg7|q\(15) & ((\controlador1|reg_seg7|q\(13)) # (!\controlador1|reg_seg7|q\(12))))) # (!\controlador1|reg_seg7|q\(14) & 
-- (!\controlador1|reg_seg7|q\(15) & (\controlador1|reg_seg7|q\(13) & !\controlador1|reg_seg7|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(14),
	datab => \controlador1|reg_seg7|q\(15),
	datac => \controlador1|reg_seg7|q\(13),
	datad => \controlador1|reg_seg7|q\(12),
	combout => \controlador1|conv_HEX3|rascSaida7seg[2]~2_combout\);

\controlador1|conv_HEX3|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(13) & ((\controlador1|reg_seg7|q\(12) & (\controlador1|reg_seg7|q\(14))) # (!\controlador1|reg_seg7|q\(12) & (!\controlador1|reg_seg7|q\(14) & 
-- \controlador1|reg_seg7|q\(15))))) # (!\controlador1|reg_seg7|q\(13) & (!\controlador1|reg_seg7|q\(15) & (\controlador1|reg_seg7|q\(12) $ (\controlador1|reg_seg7|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(12),
	datab => \controlador1|reg_seg7|q\(13),
	datac => \controlador1|reg_seg7|q\(14),
	datad => \controlador1|reg_seg7|q\(15),
	combout => \controlador1|conv_HEX3|rascSaida7seg[3]~3_combout\);

\controlador1|conv_HEX3|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(13) & (\controlador1|reg_seg7|q\(12) & (!\controlador1|reg_seg7|q\(15)))) # (!\controlador1|reg_seg7|q\(13) & ((\controlador1|reg_seg7|q\(14) & 
-- ((!\controlador1|reg_seg7|q\(15)))) # (!\controlador1|reg_seg7|q\(14) & (\controlador1|reg_seg7|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(13),
	datab => \controlador1|reg_seg7|q\(12),
	datac => \controlador1|reg_seg7|q\(15),
	datad => \controlador1|reg_seg7|q\(14),
	combout => \controlador1|conv_HEX3|rascSaida7seg[4]~4_combout\);

\controlador1|conv_HEX3|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(14) & (\controlador1|reg_seg7|q\(12) & (\controlador1|reg_seg7|q\(13) $ (\controlador1|reg_seg7|q\(15))))) # (!\controlador1|reg_seg7|q\(14) & (!\controlador1|reg_seg7|q\(15) 
-- & ((\controlador1|reg_seg7|q\(12)) # (\controlador1|reg_seg7|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(14),
	datab => \controlador1|reg_seg7|q\(12),
	datac => \controlador1|reg_seg7|q\(13),
	datad => \controlador1|reg_seg7|q\(15),
	combout => \controlador1|conv_HEX3|rascSaida7seg[5]~5_combout\);

\controlador1|conv_HEX3|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(12) & (!\controlador1|reg_seg7|q\(15) & (\controlador1|reg_seg7|q\(14) $ (!\controlador1|reg_seg7|q\(13))))) # (!\controlador1|reg_seg7|q\(12) & 
-- (!\controlador1|reg_seg7|q\(13) & (\controlador1|reg_seg7|q\(14) $ (!\controlador1|reg_seg7|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(14),
	datab => \controlador1|reg_seg7|q\(12),
	datac => \controlador1|reg_seg7|q\(13),
	datad => \controlador1|reg_seg7|q\(15),
	combout => \controlador1|conv_HEX3|rascSaida7seg[6]~6_combout\);

\controlador1|conv_HEX4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(19) & (\controlador1|reg_seg7|q\(16) & (\controlador1|reg_seg7|q\(17) $ (\controlador1|reg_seg7|q\(18))))) # (!\controlador1|reg_seg7|q\(19) & (!\controlador1|reg_seg7|q\(17) 
-- & (\controlador1|reg_seg7|q\(16) $ (\controlador1|reg_seg7|q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(17),
	datab => \controlador1|reg_seg7|q\(19),
	datac => \controlador1|reg_seg7|q\(16),
	datad => \controlador1|reg_seg7|q\(18),
	combout => \controlador1|conv_HEX4|rascSaida7seg[0]~0_combout\);

\controlador1|conv_HEX4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(17) & ((\controlador1|reg_seg7|q\(16) & (\controlador1|reg_seg7|q\(19))) # (!\controlador1|reg_seg7|q\(16) & ((\controlador1|reg_seg7|q\(18)))))) # 
-- (!\controlador1|reg_seg7|q\(17) & (\controlador1|reg_seg7|q\(18) & (\controlador1|reg_seg7|q\(19) $ (\controlador1|reg_seg7|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(17),
	datab => \controlador1|reg_seg7|q\(19),
	datac => \controlador1|reg_seg7|q\(18),
	datad => \controlador1|reg_seg7|q\(16),
	combout => \controlador1|conv_HEX4|rascSaida7seg[1]~1_combout\);

\controlador1|conv_HEX4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(18) & (\controlador1|reg_seg7|q\(19) & ((\controlador1|reg_seg7|q\(17)) # (!\controlador1|reg_seg7|q\(16))))) # (!\controlador1|reg_seg7|q\(18) & 
-- (!\controlador1|reg_seg7|q\(19) & (\controlador1|reg_seg7|q\(17) & !\controlador1|reg_seg7|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(18),
	datab => \controlador1|reg_seg7|q\(19),
	datac => \controlador1|reg_seg7|q\(17),
	datad => \controlador1|reg_seg7|q\(16),
	combout => \controlador1|conv_HEX4|rascSaida7seg[2]~2_combout\);

\controlador1|conv_HEX4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(17) & ((\controlador1|reg_seg7|q\(16) & (\controlador1|reg_seg7|q\(18))) # (!\controlador1|reg_seg7|q\(16) & (!\controlador1|reg_seg7|q\(18) & 
-- \controlador1|reg_seg7|q\(19))))) # (!\controlador1|reg_seg7|q\(17) & (!\controlador1|reg_seg7|q\(19) & (\controlador1|reg_seg7|q\(16) $ (\controlador1|reg_seg7|q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(16),
	datab => \controlador1|reg_seg7|q\(17),
	datac => \controlador1|reg_seg7|q\(18),
	datad => \controlador1|reg_seg7|q\(19),
	combout => \controlador1|conv_HEX4|rascSaida7seg[3]~3_combout\);

\controlador1|conv_HEX4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(17) & (\controlador1|reg_seg7|q\(16) & (!\controlador1|reg_seg7|q\(19)))) # (!\controlador1|reg_seg7|q\(17) & ((\controlador1|reg_seg7|q\(18) & 
-- ((!\controlador1|reg_seg7|q\(19)))) # (!\controlador1|reg_seg7|q\(18) & (\controlador1|reg_seg7|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(17),
	datab => \controlador1|reg_seg7|q\(16),
	datac => \controlador1|reg_seg7|q\(19),
	datad => \controlador1|reg_seg7|q\(18),
	combout => \controlador1|conv_HEX4|rascSaida7seg[4]~4_combout\);

\controlador1|conv_HEX4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(18) & (\controlador1|reg_seg7|q\(16) & (\controlador1|reg_seg7|q\(17) $ (\controlador1|reg_seg7|q\(19))))) # (!\controlador1|reg_seg7|q\(18) & (!\controlador1|reg_seg7|q\(19) 
-- & ((\controlador1|reg_seg7|q\(16)) # (\controlador1|reg_seg7|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(18),
	datab => \controlador1|reg_seg7|q\(16),
	datac => \controlador1|reg_seg7|q\(17),
	datad => \controlador1|reg_seg7|q\(19),
	combout => \controlador1|conv_HEX4|rascSaida7seg[5]~5_combout\);

\controlador1|conv_HEX4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(16) & (!\controlador1|reg_seg7|q\(19) & (\controlador1|reg_seg7|q\(18) $ (!\controlador1|reg_seg7|q\(17))))) # (!\controlador1|reg_seg7|q\(16) & 
-- (!\controlador1|reg_seg7|q\(17) & (\controlador1|reg_seg7|q\(18) $ (!\controlador1|reg_seg7|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(18),
	datab => \controlador1|reg_seg7|q\(16),
	datac => \controlador1|reg_seg7|q\(17),
	datad => \controlador1|reg_seg7|q\(19),
	combout => \controlador1|conv_HEX4|rascSaida7seg[6]~6_combout\);

\controlador1|conv_HEX5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(23) & (\controlador1|reg_seg7|q\(20) & (\controlador1|reg_seg7|q\(21) $ (\controlador1|reg_seg7|q\(22))))) # (!\controlador1|reg_seg7|q\(23) & (!\controlador1|reg_seg7|q\(21) 
-- & (\controlador1|reg_seg7|q\(20) $ (\controlador1|reg_seg7|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(21),
	datab => \controlador1|reg_seg7|q\(23),
	datac => \controlador1|reg_seg7|q\(20),
	datad => \controlador1|reg_seg7|q\(22),
	combout => \controlador1|conv_HEX5|rascSaida7seg[0]~0_combout\);

\controlador1|conv_HEX5|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(21) & ((\controlador1|reg_seg7|q\(20) & (\controlador1|reg_seg7|q\(23))) # (!\controlador1|reg_seg7|q\(20) & ((\controlador1|reg_seg7|q\(22)))))) # 
-- (!\controlador1|reg_seg7|q\(21) & (\controlador1|reg_seg7|q\(22) & (\controlador1|reg_seg7|q\(23) $ (\controlador1|reg_seg7|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(21),
	datab => \controlador1|reg_seg7|q\(23),
	datac => \controlador1|reg_seg7|q\(22),
	datad => \controlador1|reg_seg7|q\(20),
	combout => \controlador1|conv_HEX5|rascSaida7seg[1]~1_combout\);

\controlador1|conv_HEX5|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(22) & (\controlador1|reg_seg7|q\(23) & ((\controlador1|reg_seg7|q\(21)) # (!\controlador1|reg_seg7|q\(20))))) # (!\controlador1|reg_seg7|q\(22) & 
-- (!\controlador1|reg_seg7|q\(23) & (\controlador1|reg_seg7|q\(21) & !\controlador1|reg_seg7|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(22),
	datab => \controlador1|reg_seg7|q\(23),
	datac => \controlador1|reg_seg7|q\(21),
	datad => \controlador1|reg_seg7|q\(20),
	combout => \controlador1|conv_HEX5|rascSaida7seg[2]~2_combout\);

\controlador1|conv_HEX5|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(21) & ((\controlador1|reg_seg7|q\(20) & (\controlador1|reg_seg7|q\(22))) # (!\controlador1|reg_seg7|q\(20) & (!\controlador1|reg_seg7|q\(22) & 
-- \controlador1|reg_seg7|q\(23))))) # (!\controlador1|reg_seg7|q\(21) & (!\controlador1|reg_seg7|q\(23) & (\controlador1|reg_seg7|q\(20) $ (\controlador1|reg_seg7|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(20),
	datab => \controlador1|reg_seg7|q\(21),
	datac => \controlador1|reg_seg7|q\(22),
	datad => \controlador1|reg_seg7|q\(23),
	combout => \controlador1|conv_HEX5|rascSaida7seg[3]~3_combout\);

\controlador1|conv_HEX5|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(21) & (\controlador1|reg_seg7|q\(20) & (!\controlador1|reg_seg7|q\(23)))) # (!\controlador1|reg_seg7|q\(21) & ((\controlador1|reg_seg7|q\(22) & 
-- ((!\controlador1|reg_seg7|q\(23)))) # (!\controlador1|reg_seg7|q\(22) & (\controlador1|reg_seg7|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(21),
	datab => \controlador1|reg_seg7|q\(20),
	datac => \controlador1|reg_seg7|q\(23),
	datad => \controlador1|reg_seg7|q\(22),
	combout => \controlador1|conv_HEX5|rascSaida7seg[4]~4_combout\);

\controlador1|conv_HEX5|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(22) & (\controlador1|reg_seg7|q\(20) & (\controlador1|reg_seg7|q\(21) $ (\controlador1|reg_seg7|q\(23))))) # (!\controlador1|reg_seg7|q\(22) & (!\controlador1|reg_seg7|q\(23) 
-- & ((\controlador1|reg_seg7|q\(20)) # (\controlador1|reg_seg7|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(22),
	datab => \controlador1|reg_seg7|q\(20),
	datac => \controlador1|reg_seg7|q\(21),
	datad => \controlador1|reg_seg7|q\(23),
	combout => \controlador1|conv_HEX5|rascSaida7seg[5]~5_combout\);

\controlador1|conv_HEX5|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(20) & (!\controlador1|reg_seg7|q\(23) & (\controlador1|reg_seg7|q\(22) $ (!\controlador1|reg_seg7|q\(21))))) # (!\controlador1|reg_seg7|q\(20) & 
-- (!\controlador1|reg_seg7|q\(21) & (\controlador1|reg_seg7|q\(22) $ (!\controlador1|reg_seg7|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(22),
	datab => \controlador1|reg_seg7|q\(20),
	datac => \controlador1|reg_seg7|q\(21),
	datad => \controlador1|reg_seg7|q\(23),
	combout => \controlador1|conv_HEX5|rascSaida7seg[6]~6_combout\);

\controlador1|conv_HEX6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(27) & (\controlador1|reg_seg7|q\(24) & (\controlador1|reg_seg7|q\(25) $ (\controlador1|reg_seg7|q\(26))))) # (!\controlador1|reg_seg7|q\(27) & (!\controlador1|reg_seg7|q\(25) 
-- & (\controlador1|reg_seg7|q\(24) $ (\controlador1|reg_seg7|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datab => \controlador1|reg_seg7|q\(27),
	datac => \controlador1|reg_seg7|q\(24),
	datad => \controlador1|reg_seg7|q\(26),
	combout => \controlador1|conv_HEX6|rascSaida7seg[0]~0_combout\);

\controlador1|conv_HEX6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(25) & ((\controlador1|reg_seg7|q\(24) & (\controlador1|reg_seg7|q\(27))) # (!\controlador1|reg_seg7|q\(24) & ((\controlador1|reg_seg7|q\(26)))))) # 
-- (!\controlador1|reg_seg7|q\(25) & (\controlador1|reg_seg7|q\(26) & (\controlador1|reg_seg7|q\(27) $ (\controlador1|reg_seg7|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datab => \controlador1|reg_seg7|q\(27),
	datac => \controlador1|reg_seg7|q\(26),
	datad => \controlador1|reg_seg7|q\(24),
	combout => \controlador1|conv_HEX6|rascSaida7seg[1]~1_combout\);

\controlador1|conv_HEX6|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(26) & (\controlador1|reg_seg7|q\(27) & ((\controlador1|reg_seg7|q\(25)) # (!\controlador1|reg_seg7|q\(24))))) # (!\controlador1|reg_seg7|q\(26) & 
-- (!\controlador1|reg_seg7|q\(27) & (\controlador1|reg_seg7|q\(25) & !\controlador1|reg_seg7|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(26),
	datab => \controlador1|reg_seg7|q\(27),
	datac => \controlador1|reg_seg7|q\(25),
	datad => \controlador1|reg_seg7|q\(24),
	combout => \controlador1|conv_HEX6|rascSaida7seg[2]~2_combout\);

\controlador1|conv_HEX6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(25) & ((\controlador1|reg_seg7|q\(24) & (\controlador1|reg_seg7|q\(26))) # (!\controlador1|reg_seg7|q\(24) & (!\controlador1|reg_seg7|q\(26) & 
-- \controlador1|reg_seg7|q\(27))))) # (!\controlador1|reg_seg7|q\(25) & (!\controlador1|reg_seg7|q\(27) & (\controlador1|reg_seg7|q\(24) $ (\controlador1|reg_seg7|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(24),
	datab => \controlador1|reg_seg7|q\(25),
	datac => \controlador1|reg_seg7|q\(26),
	datad => \controlador1|reg_seg7|q\(27),
	combout => \controlador1|conv_HEX6|rascSaida7seg[3]~3_combout\);

\controlador1|conv_HEX6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(25) & (\controlador1|reg_seg7|q\(24) & (!\controlador1|reg_seg7|q\(27)))) # (!\controlador1|reg_seg7|q\(25) & ((\controlador1|reg_seg7|q\(26) & 
-- ((!\controlador1|reg_seg7|q\(27)))) # (!\controlador1|reg_seg7|q\(26) & (\controlador1|reg_seg7|q\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datab => \controlador1|reg_seg7|q\(24),
	datac => \controlador1|reg_seg7|q\(27),
	datad => \controlador1|reg_seg7|q\(26),
	combout => \controlador1|conv_HEX6|rascSaida7seg[4]~4_combout\);

\controlador1|conv_HEX6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(26) & (\controlador1|reg_seg7|q\(24) & (\controlador1|reg_seg7|q\(25) $ (\controlador1|reg_seg7|q\(27))))) # (!\controlador1|reg_seg7|q\(26) & (!\controlador1|reg_seg7|q\(27) 
-- & ((\controlador1|reg_seg7|q\(24)) # (\controlador1|reg_seg7|q\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(26),
	datab => \controlador1|reg_seg7|q\(24),
	datac => \controlador1|reg_seg7|q\(25),
	datad => \controlador1|reg_seg7|q\(27),
	combout => \controlador1|conv_HEX6|rascSaida7seg[5]~5_combout\);

\controlador1|conv_HEX6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(24) & (!\controlador1|reg_seg7|q\(27) & (\controlador1|reg_seg7|q\(26) $ (!\controlador1|reg_seg7|q\(25))))) # (!\controlador1|reg_seg7|q\(24) & 
-- (!\controlador1|reg_seg7|q\(25) & (\controlador1|reg_seg7|q\(26) $ (!\controlador1|reg_seg7|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(26),
	datab => \controlador1|reg_seg7|q\(24),
	datac => \controlador1|reg_seg7|q\(25),
	datad => \controlador1|reg_seg7|q\(27),
	combout => \controlador1|conv_HEX6|rascSaida7seg[6]~6_combout\);

\controlador1|conv_HEX7|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(31) & (\controlador1|reg_seg7|q\(28) & (\controlador1|reg_seg7|q\(29) $ (\controlador1|reg_seg7|q\(30))))) # (!\controlador1|reg_seg7|q\(31) & (!\controlador1|reg_seg7|q\(29) 
-- & (\controlador1|reg_seg7|q\(28) $ (\controlador1|reg_seg7|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(29),
	datab => \controlador1|reg_seg7|q\(31),
	datac => \controlador1|reg_seg7|q\(28),
	datad => \controlador1|reg_seg7|q\(30),
	combout => \controlador1|conv_HEX7|rascSaida7seg[0]~0_combout\);

\controlador1|conv_HEX7|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(29) & ((\controlador1|reg_seg7|q\(28) & (\controlador1|reg_seg7|q\(31))) # (!\controlador1|reg_seg7|q\(28) & ((\controlador1|reg_seg7|q\(30)))))) # 
-- (!\controlador1|reg_seg7|q\(29) & (\controlador1|reg_seg7|q\(30) & (\controlador1|reg_seg7|q\(31) $ (\controlador1|reg_seg7|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(29),
	datab => \controlador1|reg_seg7|q\(31),
	datac => \controlador1|reg_seg7|q\(30),
	datad => \controlador1|reg_seg7|q\(28),
	combout => \controlador1|conv_HEX7|rascSaida7seg[1]~1_combout\);

\controlador1|conv_HEX7|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(30) & (\controlador1|reg_seg7|q\(31) & ((\controlador1|reg_seg7|q\(29)) # (!\controlador1|reg_seg7|q\(28))))) # (!\controlador1|reg_seg7|q\(30) & 
-- (!\controlador1|reg_seg7|q\(31) & (\controlador1|reg_seg7|q\(29) & !\controlador1|reg_seg7|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(30),
	datab => \controlador1|reg_seg7|q\(31),
	datac => \controlador1|reg_seg7|q\(29),
	datad => \controlador1|reg_seg7|q\(28),
	combout => \controlador1|conv_HEX7|rascSaida7seg[2]~2_combout\);

\controlador1|conv_HEX7|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(29) & ((\controlador1|reg_seg7|q\(28) & (\controlador1|reg_seg7|q\(30))) # (!\controlador1|reg_seg7|q\(28) & (!\controlador1|reg_seg7|q\(30) & 
-- \controlador1|reg_seg7|q\(31))))) # (!\controlador1|reg_seg7|q\(29) & (!\controlador1|reg_seg7|q\(31) & (\controlador1|reg_seg7|q\(28) $ (\controlador1|reg_seg7|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(28),
	datab => \controlador1|reg_seg7|q\(29),
	datac => \controlador1|reg_seg7|q\(30),
	datad => \controlador1|reg_seg7|q\(31),
	combout => \controlador1|conv_HEX7|rascSaida7seg[3]~3_combout\);

\controlador1|conv_HEX7|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(29) & (\controlador1|reg_seg7|q\(28) & (!\controlador1|reg_seg7|q\(31)))) # (!\controlador1|reg_seg7|q\(29) & ((\controlador1|reg_seg7|q\(30) & 
-- ((!\controlador1|reg_seg7|q\(31)))) # (!\controlador1|reg_seg7|q\(30) & (\controlador1|reg_seg7|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(29),
	datab => \controlador1|reg_seg7|q\(28),
	datac => \controlador1|reg_seg7|q\(31),
	datad => \controlador1|reg_seg7|q\(30),
	combout => \controlador1|conv_HEX7|rascSaida7seg[4]~4_combout\);

\controlador1|conv_HEX7|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(30) & (\controlador1|reg_seg7|q\(28) & (\controlador1|reg_seg7|q\(29) $ (\controlador1|reg_seg7|q\(31))))) # (!\controlador1|reg_seg7|q\(30) & (!\controlador1|reg_seg7|q\(31) 
-- & ((\controlador1|reg_seg7|q\(28)) # (\controlador1|reg_seg7|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(30),
	datab => \controlador1|reg_seg7|q\(28),
	datac => \controlador1|reg_seg7|q\(29),
	datad => \controlador1|reg_seg7|q\(31),
	combout => \controlador1|conv_HEX7|rascSaida7seg[5]~5_combout\);

\controlador1|conv_HEX7|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(28) & (!\controlador1|reg_seg7|q\(31) & (\controlador1|reg_seg7|q\(30) $ (!\controlador1|reg_seg7|q\(29))))) # (!\controlador1|reg_seg7|q\(28) & 
-- (!\controlador1|reg_seg7|q\(29) & (\controlador1|reg_seg7|q\(30) $ (!\controlador1|reg_seg7|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(30),
	datab => \controlador1|reg_seg7|q\(28),
	datac => \controlador1|reg_seg7|q\(29),
	datad => \controlador1|reg_seg7|q\(31),
	combout => \controlador1|conv_HEX7|rascSaida7seg[6]~6_combout\);
END structure;


