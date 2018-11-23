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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "11/23/2018 17:32:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
	end1 : OUT std_logic_vector(4 DOWNTO 0);
	end2 : OUT std_logic_vector(4 DOWNTO 0);
	end3 : OUT std_logic_vector(4 DOWNTO 0);
	saida : OUT std_logic_vector(31 DOWNTO 0);
	entrada1_ULA : OUT std_logic_vector(31 DOWNTO 0);
	entrada2_ULA : OUT std_logic_vector(31 DOWNTO 0);
	dadoescritonoreg : OUT std_logic_vector(31 DOWNTO 0);
	instrucao : OUT std_logic_vector(31 DOWNTO 0);
	saida2 : OUT std_logic_vector(3 DOWNTO 0);
	seletor : OUT std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
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
SIGNAL ww_end1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_end2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_end3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entrada1_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entrada2_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_dadoescritonoreg : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_instrucao : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seletor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \end1[0]~output_o\ : std_logic;
SIGNAL \end1[1]~output_o\ : std_logic;
SIGNAL \end1[2]~output_o\ : std_logic;
SIGNAL \end1[3]~output_o\ : std_logic;
SIGNAL \end1[4]~output_o\ : std_logic;
SIGNAL \end2[0]~output_o\ : std_logic;
SIGNAL \end2[1]~output_o\ : std_logic;
SIGNAL \end2[2]~output_o\ : std_logic;
SIGNAL \end2[3]~output_o\ : std_logic;
SIGNAL \end2[4]~output_o\ : std_logic;
SIGNAL \end3[0]~output_o\ : std_logic;
SIGNAL \end3[1]~output_o\ : std_logic;
SIGNAL \end3[2]~output_o\ : std_logic;
SIGNAL \end3[3]~output_o\ : std_logic;
SIGNAL \end3[4]~output_o\ : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \saida[16]~output_o\ : std_logic;
SIGNAL \saida[17]~output_o\ : std_logic;
SIGNAL \saida[18]~output_o\ : std_logic;
SIGNAL \saida[19]~output_o\ : std_logic;
SIGNAL \saida[20]~output_o\ : std_logic;
SIGNAL \saida[21]~output_o\ : std_logic;
SIGNAL \saida[22]~output_o\ : std_logic;
SIGNAL \saida[23]~output_o\ : std_logic;
SIGNAL \saida[24]~output_o\ : std_logic;
SIGNAL \saida[25]~output_o\ : std_logic;
SIGNAL \saida[26]~output_o\ : std_logic;
SIGNAL \saida[27]~output_o\ : std_logic;
SIGNAL \saida[28]~output_o\ : std_logic;
SIGNAL \saida[29]~output_o\ : std_logic;
SIGNAL \saida[30]~output_o\ : std_logic;
SIGNAL \saida[31]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[0]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[1]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[2]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[3]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[4]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[5]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[6]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[7]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[8]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[9]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[10]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[11]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[12]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[13]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[14]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[15]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[16]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[17]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[18]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[19]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[20]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[21]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[22]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[23]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[24]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[25]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[26]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[27]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[28]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[29]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[30]~output_o\ : std_logic;
SIGNAL \entrada1_ULA[31]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[0]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[1]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[2]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[3]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[4]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[5]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[6]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[7]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[8]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[9]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[10]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[11]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[12]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[13]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[14]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[15]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[16]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[17]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[18]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[19]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[20]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[21]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[22]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[23]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[24]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[25]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[26]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[27]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[28]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[29]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[30]~output_o\ : std_logic;
SIGNAL \entrada2_ULA[31]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[0]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[1]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[2]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[3]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[4]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[5]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[6]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[7]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[8]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[9]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[10]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[11]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[12]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[13]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[14]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[15]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[16]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[17]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[18]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[19]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[20]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[21]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[22]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[23]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[24]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[25]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[26]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[27]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[28]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[29]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[30]~output_o\ : std_logic;
SIGNAL \dadoescritonoreg[31]~output_o\ : std_logic;
SIGNAL \instrucao[0]~output_o\ : std_logic;
SIGNAL \instrucao[1]~output_o\ : std_logic;
SIGNAL \instrucao[2]~output_o\ : std_logic;
SIGNAL \instrucao[3]~output_o\ : std_logic;
SIGNAL \instrucao[4]~output_o\ : std_logic;
SIGNAL \instrucao[5]~output_o\ : std_logic;
SIGNAL \instrucao[6]~output_o\ : std_logic;
SIGNAL \instrucao[7]~output_o\ : std_logic;
SIGNAL \instrucao[8]~output_o\ : std_logic;
SIGNAL \instrucao[9]~output_o\ : std_logic;
SIGNAL \instrucao[10]~output_o\ : std_logic;
SIGNAL \instrucao[11]~output_o\ : std_logic;
SIGNAL \instrucao[12]~output_o\ : std_logic;
SIGNAL \instrucao[13]~output_o\ : std_logic;
SIGNAL \instrucao[14]~output_o\ : std_logic;
SIGNAL \instrucao[15]~output_o\ : std_logic;
SIGNAL \instrucao[16]~output_o\ : std_logic;
SIGNAL \instrucao[17]~output_o\ : std_logic;
SIGNAL \instrucao[18]~output_o\ : std_logic;
SIGNAL \instrucao[19]~output_o\ : std_logic;
SIGNAL \instrucao[20]~output_o\ : std_logic;
SIGNAL \instrucao[21]~output_o\ : std_logic;
SIGNAL \instrucao[22]~output_o\ : std_logic;
SIGNAL \instrucao[23]~output_o\ : std_logic;
SIGNAL \instrucao[24]~output_o\ : std_logic;
SIGNAL \instrucao[25]~output_o\ : std_logic;
SIGNAL \instrucao[26]~output_o\ : std_logic;
SIGNAL \instrucao[27]~output_o\ : std_logic;
SIGNAL \instrucao[28]~output_o\ : std_logic;
SIGNAL \instrucao[29]~output_o\ : std_logic;
SIGNAL \instrucao[30]~output_o\ : std_logic;
SIGNAL \instrucao[31]~output_o\ : std_logic;
SIGNAL \saida2[0]~output_o\ : std_logic;
SIGNAL \saida2[1]~output_o\ : std_logic;
SIGNAL \saida2[2]~output_o\ : std_logic;
SIGNAL \saida2[3]~output_o\ : std_logic;
SIGNAL \seletor~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \PC|q[2]~8_combout\ : std_logic;
SIGNAL \PC|q[2]~9\ : std_logic;
SIGNAL \PC|q[3]~10_combout\ : std_logic;
SIGNAL \PC|q[3]~11\ : std_logic;
SIGNAL \PC|q[4]~12_combout\ : std_logic;
SIGNAL \PC|q[4]~13\ : std_logic;
SIGNAL \PC|q[5]~14_combout\ : std_logic;
SIGNAL \PC|q[5]~15\ : std_logic;
SIGNAL \PC|q[6]~16_combout\ : std_logic;
SIGNAL \PC|q[6]~17\ : std_logic;
SIGNAL \PC|q[7]~18_combout\ : std_logic;
SIGNAL \PC|q[7]~19\ : std_logic;
SIGNAL \PC|q[8]~20_combout\ : std_logic;
SIGNAL \PC|q[8]~21\ : std_logic;
SIGNAL \PC|q[9]~22_combout\ : std_logic;
SIGNAL \memoriaInst|rom~3_combout\ : std_logic;
SIGNAL \memoriaInst|rom~16_combout\ : std_logic;
SIGNAL \memoriaInst|rom~17_combout\ : std_logic;
SIGNAL \memoriaInst|rom~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~22_combout\ : std_logic;
SIGNAL \memoriaInst|rom~23_combout\ : std_logic;
SIGNAL \memoriaInst|rom~1_combout\ : std_logic;
SIGNAL \memoriaInst|rom~2_combout\ : std_logic;
SIGNAL \memoriaInst|rom~6_combout\ : std_logic;
SIGNAL \memoriaInst|rom~13_combout\ : std_logic;
SIGNAL \memoriaInst|rom~10_combout\ : std_logic;
SIGNAL \memoriaInst|rom~15_combout\ : std_logic;
SIGNAL \memoriaInst|rom~18_combout\ : std_logic;
SIGNAL \memoriaInst|rom~19_combout\ : std_logic;
SIGNAL \memoriaInst|rom~20_combout\ : std_logic;
SIGNAL \memoriaInst|rom~21_combout\ : std_logic;
SIGNAL \memoriaInst|rom~11_combout\ : std_logic;
SIGNAL \memoriaInst|rom~25_combout\ : std_logic;
SIGNAL \memoriaInst|rom~26_combout\ : std_logic;
SIGNAL \memoriaInst|rom~24_combout\ : std_logic;
SIGNAL \fd_ctrl|op_code_aux~0_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[0]~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~4_combout\ : std_logic;
SIGNAL \memoriaInst|rom~12_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[1]~1_combout\ : std_logic;
SIGNAL \memoriaInst|rom~14_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[2]~2_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[3]~3_combout\ : std_logic;
SIGNAL \memoriaInst|rom~7_combout\ : std_logic;
SIGNAL \memoriaInst|rom~8_combout\ : std_logic;
SIGNAL \memoriaInst|rom~9_combout\ : std_logic;
SIGNAL \IF_ID|q[5]~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~5_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \fd_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[6]~6_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[8]~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \regs|registrador~38_combout\ : std_logic;
SIGNAL \regs|registrador~39_combout\ : std_logic;
SIGNAL \regs|registrador~40_combout\ : std_logic;
SIGNAL \regs|Equal1~0_combout\ : std_logic;
SIGNAL \regs|saidaB[6]~26_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[6]~26_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \regs|registrador~41_combout\ : std_logic;
SIGNAL \regs|registrador~42_combout\ : std_logic;
SIGNAL \regs|registrador~43_combout\ : std_logic;
SIGNAL \regs|Equal0~0_combout\ : std_logic;
SIGNAL \regs|saidaA[6]~26_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[6]~6_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~2_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[1]~1_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[7]~25_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \mux_ULA|Y[7]~7_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[7]~25_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[7]~25_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \mux_ULA|Y[5]~5_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[5]~27_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[5]~27_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[5]~27_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[5]~5_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \mux_ULA|Y[4]~4_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[4]~28_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[4]~28_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[4]~28_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[4]~4_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \mux_ULA|Y[3]~3_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[3]~29_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[3]~29_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[3]~29_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[3]~3_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \mux_ULA|Y[2]~2_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[2]~30_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[2]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[2]~30_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[2]~2_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[0]~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[0]~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[1]~31_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[1]~1_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[1]~31_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[1]~31_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[1]~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \mux_ULA|Y[0]~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[0]~0_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[0]~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~2_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[30]~2_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[29]~3_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \ula|full_adder|c_out[7]~7_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[8]~24_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[8]~8_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[8]~24_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[8]~24_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[8]~8_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[9]~23_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[9]~9_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[9]~23_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[9]~23_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[9]~9_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[10]~22_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[10]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[10]~22_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[10]~22_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[10]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[11]~21_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[11]~11_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[11]~21_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[11]~21_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[11]~11_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[12]~20_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[12]~12_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[12]~20_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[12]~20_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[12]~12_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[13]~19_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[13]~13_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[13]~19_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[13]~19_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[13]~13_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[14]~18_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[14]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[14]~18_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[14]~18_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[14]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[15]~17_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[15]~15_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[15]~17_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[15]~17_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[15]~15_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[16]~16_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[16]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[16]~16_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[16]~16_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[16]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[17]~15_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[17]~17_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[17]~15_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[17]~15_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[17]~17_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[18]~14_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[18]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[18]~14_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[18]~14_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[18]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[19]~13_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[19]~19_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[19]~13_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[19]~13_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[19]~19_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[20]~12_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[20]~20_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[20]~12_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[20]~12_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[20]~20_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[21]~11_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[21]~21_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[21]~11_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[21]~11_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[21]~21_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[22]~10_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[22]~22_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[22]~10_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[22]~10_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[22]~22_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[23]~9_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[23]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[23]~9_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[23]~9_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[23]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[24]~8_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[24]~24_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[24]~8_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[24]~8_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[24]~24_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[25]~7_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[25]~25_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[25]~7_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[25]~7_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[25]~25_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[26]~6_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[26]~26_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[26]~6_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[26]~6_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[26]~26_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[27]~5_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[27]~27_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[27]~5_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[27]~5_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[27]~27_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[28]~4_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[28]~28_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[28]~4_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[28]~4_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[28]~28_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~2_combout\ : std_logic;
SIGNAL \mux_ULA|Y[29]~29_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[29]~3_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[29]~3_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[29]~29_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[30]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[30]~2_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[30]~2_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[30]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[31]~1_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[31]~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux0~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux0~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[31]~31_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[31]~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~4_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~3_combout\ : std_logic;
SIGNAL \ID_EX|q\ : std_logic_vector(146 DOWNTO 0);
SIGNAL \PC|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \IF_ID|q\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \MEM_WB|q\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \EX_MEM|q\ : std_logic_vector(106 DOWNTO 0);
SIGNAL \ula|full_adder|result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \memoriaInst|ALT_INV_rom~9_combout\ : std_logic;

BEGIN

end1 <= ww_end1;
end2 <= ww_end2;
end3 <= ww_end3;
saida <= ww_saida;
entrada1_ULA <= ww_entrada1_ULA;
entrada2_ULA <= ww_entrada2_ULA;
dadoescritonoreg <= ww_dadoescritonoreg;
instrucao <= ww_instrucao;
saida2 <= ww_saida2;
seletor <= ww_seletor;
ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \EX_MEM|q\(5);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \EX_MEM|q\(6);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \EX_MEM|q\(7);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \EX_MEM|q\(8);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \EX_MEM|q\(9);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \EX_MEM|q\(10);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \EX_MEM|q\(11);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \EX_MEM|q\(12);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \EX_MEM|q\(13);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \EX_MEM|q\(14);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \EX_MEM|q\(15);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \EX_MEM|q\(16);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \EX_MEM|q\(17);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \EX_MEM|q\(18);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \EX_MEM|q\(19);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \EX_MEM|q\(20);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \EX_MEM|q\(21);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \EX_MEM|q\(22);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \EX_MEM|q\(23);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \EX_MEM|q\(24);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \EX_MEM|q\(25);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \EX_MEM|q\(26);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \EX_MEM|q\(27);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \EX_MEM|q\(28);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \EX_MEM|q\(29);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \EX_MEM|q\(30);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \EX_MEM|q\(31);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \EX_MEM|q\(32);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \EX_MEM|q\(33);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \EX_MEM|q\(34);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \EX_MEM|q\(35);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \EX_MEM|q\(36);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \mux_ULA|Y[0]~0_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \mux_ULA|Y[0]~0_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \mux_ULA|Y[31]~31_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \mux_ULA|Y[31]~31_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \mux_ULA|Y[30]~30_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \mux_ULA|Y[30]~30_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \mux_ULA|Y[29]~29_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \mux_ULA|Y[29]~29_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \mux_ULA|Y[28]~28_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \mux_ULA|Y[28]~28_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \mux_ULA|Y[27]~27_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \mux_ULA|Y[27]~27_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \mux_ULA|Y[26]~26_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \mux_ULA|Y[26]~26_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \mux_ULA|Y[25]~25_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \mux_ULA|Y[25]~25_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \mux_ULA|Y[24]~24_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \mux_ULA|Y[24]~24_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \mux_ULA|Y[23]~23_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \mux_ULA|Y[23]~23_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \mux_ULA|Y[22]~22_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \mux_ULA|Y[22]~22_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \mux_ULA|Y[21]~21_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \mux_ULA|Y[21]~21_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \mux_ULA|Y[20]~20_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \mux_ULA|Y[20]~20_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \mux_ULA|Y[19]~19_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \mux_ULA|Y[19]~19_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \mux_ULA|Y[18]~18_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \mux_ULA|Y[18]~18_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \mux_ULA|Y[17]~17_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \mux_ULA|Y[17]~17_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \mux_ULA|Y[16]~16_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \mux_ULA|Y[16]~16_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \mux_ULA|Y[15]~15_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \mux_ULA|Y[15]~15_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \mux_ULA|Y[14]~14_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \mux_ULA|Y[14]~14_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \mux_ULA|Y[13]~13_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \mux_ULA|Y[13]~13_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \mux_ULA|Y[12]~12_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \mux_ULA|Y[12]~12_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \mux_ULA|Y[11]~11_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \mux_ULA|Y[11]~11_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \mux_ULA|Y[10]~10_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \mux_ULA|Y[10]~10_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \mux_ULA|Y[9]~9_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \mux_ULA|Y[9]~9_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \mux_ULA|Y[8]~8_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \mux_ULA|Y[8]~8_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \mux_ULA|Y[7]~7_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \mux_ULA|Y[7]~7_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \mux_ULA|Y[6]~6_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \mux_ULA|Y[6]~6_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \mux_ULA|Y[5]~5_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \mux_ULA|Y[5]~5_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \mux_ULA|Y[4]~4_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \mux_ULA|Y[4]~4_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \mux_ULA|Y[3]~3_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \mux_ULA|Y[3]~3_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \mux_ULA|Y[2]~2_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \mux_ULA|Y[2]~2_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \mux_ULA|Y[1]~1_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\memoriaInst|rom~21_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~19_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \mux_ULA|Y[1]~1_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\memoriaInst|rom~15_combout\ & \memoriaInst|rom~2_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~17_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);
\memoriaInst|ALT_INV_rom~9_combout\ <= NOT \memoriaInst|rom~9_combout\;

\end1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(21),
	devoe => ww_devoe,
	o => \end1[0]~output_o\);

\end1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(22),
	devoe => ww_devoe,
	o => \end1[1]~output_o\);

\end1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(23),
	devoe => ww_devoe,
	o => \end1[2]~output_o\);

\end1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(24),
	devoe => ww_devoe,
	o => \end1[3]~output_o\);

\end1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end1[4]~output_o\);

\end2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(21),
	devoe => ww_devoe,
	o => \end2[0]~output_o\);

\end2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(17),
	devoe => ww_devoe,
	o => \end2[1]~output_o\);

\end2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(23),
	devoe => ww_devoe,
	o => \end2[2]~output_o\);

\end2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(19),
	devoe => ww_devoe,
	o => \end2[3]~output_o\);

\end2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end2[4]~output_o\);

\end3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(0),
	devoe => ww_devoe,
	o => \end3[0]~output_o\);

\end3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(1),
	devoe => ww_devoe,
	o => \end3[1]~output_o\);

\end3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(2),
	devoe => ww_devoe,
	o => \end3[2]~output_o\);

\end3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(3),
	devoe => ww_devoe,
	o => \end3[3]~output_o\);

\end3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \end3[4]~output_o\);

\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux31~3_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux29~1_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux27~1_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux23~1_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux21~1_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux20~1_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux18~1_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux17~1_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\saida[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

\saida[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

\saida[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

\saida[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

\saida[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

\saida[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

\saida[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

\saida[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

\saida[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

\saida[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

\saida[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

\saida[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

\saida[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

\saida[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

\saida[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

\saida[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

\entrada1_ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(74),
	devoe => ww_devoe,
	o => \entrada1_ULA[0]~output_o\);

\entrada1_ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(75),
	devoe => ww_devoe,
	o => \entrada1_ULA[1]~output_o\);

\entrada1_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(76),
	devoe => ww_devoe,
	o => \entrada1_ULA[2]~output_o\);

\entrada1_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(77),
	devoe => ww_devoe,
	o => \entrada1_ULA[3]~output_o\);

\entrada1_ULA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(78),
	devoe => ww_devoe,
	o => \entrada1_ULA[4]~output_o\);

\entrada1_ULA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(79),
	devoe => ww_devoe,
	o => \entrada1_ULA[5]~output_o\);

\entrada1_ULA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(80),
	devoe => ww_devoe,
	o => \entrada1_ULA[6]~output_o\);

\entrada1_ULA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(81),
	devoe => ww_devoe,
	o => \entrada1_ULA[7]~output_o\);

\entrada1_ULA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(82),
	devoe => ww_devoe,
	o => \entrada1_ULA[8]~output_o\);

\entrada1_ULA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(83),
	devoe => ww_devoe,
	o => \entrada1_ULA[9]~output_o\);

\entrada1_ULA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(84),
	devoe => ww_devoe,
	o => \entrada1_ULA[10]~output_o\);

\entrada1_ULA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(85),
	devoe => ww_devoe,
	o => \entrada1_ULA[11]~output_o\);

\entrada1_ULA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(86),
	devoe => ww_devoe,
	o => \entrada1_ULA[12]~output_o\);

\entrada1_ULA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(87),
	devoe => ww_devoe,
	o => \entrada1_ULA[13]~output_o\);

\entrada1_ULA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(88),
	devoe => ww_devoe,
	o => \entrada1_ULA[14]~output_o\);

\entrada1_ULA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(89),
	devoe => ww_devoe,
	o => \entrada1_ULA[15]~output_o\);

\entrada1_ULA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(90),
	devoe => ww_devoe,
	o => \entrada1_ULA[16]~output_o\);

\entrada1_ULA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(91),
	devoe => ww_devoe,
	o => \entrada1_ULA[17]~output_o\);

\entrada1_ULA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(92),
	devoe => ww_devoe,
	o => \entrada1_ULA[18]~output_o\);

\entrada1_ULA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(93),
	devoe => ww_devoe,
	o => \entrada1_ULA[19]~output_o\);

\entrada1_ULA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(94),
	devoe => ww_devoe,
	o => \entrada1_ULA[20]~output_o\);

\entrada1_ULA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(95),
	devoe => ww_devoe,
	o => \entrada1_ULA[21]~output_o\);

\entrada1_ULA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(96),
	devoe => ww_devoe,
	o => \entrada1_ULA[22]~output_o\);

\entrada1_ULA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(97),
	devoe => ww_devoe,
	o => \entrada1_ULA[23]~output_o\);

\entrada1_ULA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(98),
	devoe => ww_devoe,
	o => \entrada1_ULA[24]~output_o\);

\entrada1_ULA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(99),
	devoe => ww_devoe,
	o => \entrada1_ULA[25]~output_o\);

\entrada1_ULA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(100),
	devoe => ww_devoe,
	o => \entrada1_ULA[26]~output_o\);

\entrada1_ULA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(101),
	devoe => ww_devoe,
	o => \entrada1_ULA[27]~output_o\);

\entrada1_ULA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(102),
	devoe => ww_devoe,
	o => \entrada1_ULA[28]~output_o\);

\entrada1_ULA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(103),
	devoe => ww_devoe,
	o => \entrada1_ULA[29]~output_o\);

\entrada1_ULA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(104),
	devoe => ww_devoe,
	o => \entrada1_ULA[30]~output_o\);

\entrada1_ULA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(105),
	devoe => ww_devoe,
	o => \entrada1_ULA[31]~output_o\);

\entrada2_ULA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[0]~output_o\);

\entrada2_ULA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[1]~31_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[1]~output_o\);

\entrada2_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[2]~30_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[2]~output_o\);

\entrada2_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[3]~29_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[3]~output_o\);

\entrada2_ULA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[4]~28_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[4]~output_o\);

\entrada2_ULA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[5]~27_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[5]~output_o\);

\entrada2_ULA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[6]~26_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[6]~output_o\);

\entrada2_ULA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[7]~25_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[7]~output_o\);

\entrada2_ULA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[8]~24_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[8]~output_o\);

\entrada2_ULA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[9]~23_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[9]~output_o\);

\entrada2_ULA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[10]~22_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[10]~output_o\);

\entrada2_ULA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[11]~21_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[11]~output_o\);

\entrada2_ULA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[12]~20_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[12]~output_o\);

\entrada2_ULA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[13]~19_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[13]~output_o\);

\entrada2_ULA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[14]~18_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[14]~output_o\);

\entrada2_ULA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[15]~17_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[15]~output_o\);

\entrada2_ULA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[16]~16_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[16]~output_o\);

\entrada2_ULA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[17]~15_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[17]~output_o\);

\entrada2_ULA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[18]~14_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[18]~output_o\);

\entrada2_ULA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[19]~13_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[19]~output_o\);

\entrada2_ULA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[20]~12_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[20]~output_o\);

\entrada2_ULA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[21]~11_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[21]~output_o\);

\entrada2_ULA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[22]~10_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[22]~output_o\);

\entrada2_ULA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[23]~9_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[23]~output_o\);

\entrada2_ULA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[24]~8_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[24]~output_o\);

\entrada2_ULA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[25]~7_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[25]~output_o\);

\entrada2_ULA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[26]~6_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[26]~output_o\);

\entrada2_ULA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[27]~5_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[27]~output_o\);

\entrada2_ULA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[28]~4_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[28]~output_o\);

\entrada2_ULA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[29]~3_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[29]~output_o\);

\entrada2_ULA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[30]~2_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[30]~output_o\);

\entrada2_ULA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[31]~1_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[31]~output_o\);

\dadoescritonoreg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[0]~output_o\);

\dadoescritonoreg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[1]~output_o\);

\dadoescritonoreg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[2]~output_o\);

\dadoescritonoreg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[3]~output_o\);

\dadoescritonoreg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[4]~4_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[4]~output_o\);

\dadoescritonoreg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[5]~5_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[5]~output_o\);

\dadoescritonoreg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[6]~6_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[6]~output_o\);

\dadoescritonoreg[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[7]~7_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[7]~output_o\);

\dadoescritonoreg[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[8]~8_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[8]~output_o\);

\dadoescritonoreg[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[9]~9_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[9]~output_o\);

\dadoescritonoreg[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[10]~10_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[10]~output_o\);

\dadoescritonoreg[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[11]~11_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[11]~output_o\);

\dadoescritonoreg[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[12]~12_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[12]~output_o\);

\dadoescritonoreg[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[13]~13_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[13]~output_o\);

\dadoescritonoreg[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[14]~14_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[14]~output_o\);

\dadoescritonoreg[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[15]~15_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[15]~output_o\);

\dadoescritonoreg[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[16]~16_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[16]~output_o\);

\dadoescritonoreg[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[17]~17_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[17]~output_o\);

\dadoescritonoreg[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[18]~18_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[18]~output_o\);

\dadoescritonoreg[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[19]~19_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[19]~output_o\);

\dadoescritonoreg[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[20]~20_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[20]~output_o\);

\dadoescritonoreg[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[21]~21_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[21]~output_o\);

\dadoescritonoreg[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[22]~22_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[22]~output_o\);

\dadoescritonoreg[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[23]~23_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[23]~output_o\);

\dadoescritonoreg[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[24]~24_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[24]~output_o\);

\dadoescritonoreg[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[25]~25_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[25]~output_o\);

\dadoescritonoreg[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[26]~26_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[26]~output_o\);

\dadoescritonoreg[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[27]~27_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[27]~output_o\);

\dadoescritonoreg[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[28]~28_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[28]~output_o\);

\dadoescritonoreg[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[29]~29_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[29]~output_o\);

\dadoescritonoreg[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[30]~30_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[30]~output_o\);

\dadoescritonoreg[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_ULA|Y[31]~31_combout\,
	devoe => ww_devoe,
	o => \dadoescritonoreg[31]~output_o\);

\instrucao[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[0]~output_o\);

\instrucao[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~2_combout\,
	devoe => ww_devoe,
	o => \instrucao[1]~output_o\);

\instrucao[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[2]~output_o\);

\instrucao[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~5_combout\,
	devoe => ww_devoe,
	o => \instrucao[3]~output_o\);

\instrucao[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[4]~output_o\);

\instrucao[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|ALT_INV_rom~9_combout\,
	devoe => ww_devoe,
	o => \instrucao[5]~output_o\);

\instrucao[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[6]~output_o\);

\instrucao[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[7]~output_o\);

\instrucao[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[8]~output_o\);

\instrucao[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[9]~output_o\);

\instrucao[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[10]~output_o\);

\instrucao[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~11_combout\,
	devoe => ww_devoe,
	o => \instrucao[11]~output_o\);

\instrucao[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~12_combout\,
	devoe => ww_devoe,
	o => \instrucao[12]~output_o\);

\instrucao[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~14_combout\,
	devoe => ww_devoe,
	o => \instrucao[13]~output_o\);

\instrucao[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~15_combout\,
	devoe => ww_devoe,
	o => \instrucao[14]~output_o\);

\instrucao[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[15]~output_o\);

\instrucao[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~17_combout\,
	devoe => ww_devoe,
	o => \instrucao[16]~output_o\);

\instrucao[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~19_combout\,
	devoe => ww_devoe,
	o => \instrucao[17]~output_o\);

\instrucao[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~2_combout\,
	devoe => ww_devoe,
	o => \instrucao[18]~output_o\);

\instrucao[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~21_combout\,
	devoe => ww_devoe,
	o => \instrucao[19]~output_o\);

\instrucao[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[20]~output_o\);

\instrucao[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~17_combout\,
	devoe => ww_devoe,
	o => \instrucao[21]~output_o\);

\instrucao[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~23_combout\,
	devoe => ww_devoe,
	o => \instrucao[22]~output_o\);

\instrucao[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~2_combout\,
	devoe => ww_devoe,
	o => \instrucao[23]~output_o\);

\instrucao[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~15_combout\,
	devoe => ww_devoe,
	o => \instrucao[24]~output_o\);

\instrucao[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[25]~output_o\);

\instrucao[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~24_combout\,
	devoe => ww_devoe,
	o => \instrucao[26]~output_o\);

\instrucao[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~24_combout\,
	devoe => ww_devoe,
	o => \instrucao[27]~output_o\);

\instrucao[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[28]~output_o\);

\instrucao[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[29]~output_o\);

\instrucao[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \instrucao[30]~output_o\);

\instrucao[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memoriaInst|rom~26_combout\,
	devoe => ww_devoe,
	o => \instrucao[31]~output_o\);

\saida2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux31~3_combout\,
	devoe => ww_devoe,
	o => \saida2[0]~output_o\);

\saida2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \saida2[1]~output_o\);

\saida2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux29~1_combout\,
	devoe => ww_devoe,
	o => \saida2[2]~output_o\);

\saida2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \saida2[3]~output_o\);

\seletor~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB|q\(69),
	devoe => ww_devoe,
	o => \seletor~output_o\);

\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\PC|q[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[2]~8_combout\ = \PC|q\(2) $ (VCC)
-- \PC|q[2]~9\ = CARRY(\PC|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datad => VCC,
	combout => \PC|q[2]~8_combout\,
	cout => \PC|q[2]~9\);

\PC|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(2));

\PC|q[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[3]~10_combout\ = (\PC|q\(3) & (!\PC|q[2]~9\)) # (!\PC|q\(3) & ((\PC|q[2]~9\) # (GND)))
-- \PC|q[3]~11\ = CARRY((!\PC|q[2]~9\) # (!\PC|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datad => VCC,
	cin => \PC|q[2]~9\,
	combout => \PC|q[3]~10_combout\,
	cout => \PC|q[3]~11\);

\PC|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(3));

\PC|q[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[4]~12_combout\ = (\PC|q\(4) & (\PC|q[3]~11\ $ (GND))) # (!\PC|q\(4) & (!\PC|q[3]~11\ & VCC))
-- \PC|q[4]~13\ = CARRY((\PC|q\(4) & !\PC|q[3]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datad => VCC,
	cin => \PC|q[3]~11\,
	combout => \PC|q[4]~12_combout\,
	cout => \PC|q[4]~13\);

\PC|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[4]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(4));

\PC|q[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[5]~14_combout\ = (\PC|q\(5) & (!\PC|q[4]~13\)) # (!\PC|q\(5) & ((\PC|q[4]~13\) # (GND)))
-- \PC|q[5]~15\ = CARRY((!\PC|q[4]~13\) # (!\PC|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datad => VCC,
	cin => \PC|q[4]~13\,
	combout => \PC|q[5]~14_combout\,
	cout => \PC|q[5]~15\);

\PC|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[5]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(5));

\PC|q[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[6]~16_combout\ = (\PC|q\(6) & (\PC|q[5]~15\ $ (GND))) # (!\PC|q\(6) & (!\PC|q[5]~15\ & VCC))
-- \PC|q[6]~17\ = CARRY((\PC|q\(6) & !\PC|q[5]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datad => VCC,
	cin => \PC|q[5]~15\,
	combout => \PC|q[6]~16_combout\,
	cout => \PC|q[6]~17\);

\PC|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[6]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(6));

\PC|q[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[7]~18_combout\ = (\PC|q\(7) & (!\PC|q[6]~17\)) # (!\PC|q\(7) & ((\PC|q[6]~17\) # (GND)))
-- \PC|q[7]~19\ = CARRY((!\PC|q[6]~17\) # (!\PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datad => VCC,
	cin => \PC|q[6]~17\,
	combout => \PC|q[7]~18_combout\,
	cout => \PC|q[7]~19\);

\PC|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(7));

\PC|q[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[8]~20_combout\ = (\PC|q\(8) & (\PC|q[7]~19\ $ (GND))) # (!\PC|q\(8) & (!\PC|q[7]~19\ & VCC))
-- \PC|q[8]~21\ = CARRY((\PC|q\(8) & !\PC|q[7]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(8),
	datad => VCC,
	cin => \PC|q[7]~19\,
	combout => \PC|q[8]~20_combout\,
	cout => \PC|q[8]~21\);

\PC|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[8]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(8));

\PC|q[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[9]~22_combout\ = \PC|q\(9) $ (\PC|q[8]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(9),
	cin => \PC|q[8]~21\,
	combout => \PC|q[9]~22_combout\);

\PC|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[9]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(9));

\memoriaInst|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~3_combout\ = (\PC|q\(3) & (!\PC|q\(7) & (!\PC|q\(8) & !\PC|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datab => \PC|q\(7),
	datac => \PC|q\(8),
	datad => \PC|q\(9),
	combout => \memoriaInst|rom~3_combout\);

\memoriaInst|rom~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~16_combout\ = (\PC|q\(2) & (!\PC|q\(6) & (!\PC|q\(4) & \PC|q\(5)))) # (!\PC|q\(2) & (\PC|q\(6) & (\PC|q\(4) & !\PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(6),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~16_combout\);

\memoriaInst|rom~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~17_combout\ = (\memoriaInst|rom~3_combout\ & \memoriaInst|rom~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~3_combout\,
	datab => \memoriaInst|rom~16_combout\,
	combout => \memoriaInst|rom~17_combout\);

\IF_ID|q[21]\ : dffeas
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
	q => \IF_ID|q\(21));

\memoriaInst|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~0_combout\ = (!\PC|q\(7) & (!\PC|q\(8) & !\PC|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datac => \PC|q\(8),
	datad => \PC|q\(9),
	combout => \memoriaInst|rom~0_combout\);

\memoriaInst|rom~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~22_combout\ = (\PC|q\(3) & ((\PC|q\(2) & (!\PC|q\(4) & \PC|q\(5))) # (!\PC|q\(2) & (\PC|q\(4) & !\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~22_combout\);

\memoriaInst|rom~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~23_combout\ = (\memoriaInst|rom~0_combout\ & (\memoriaInst|rom~22_combout\ & !\PC|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~0_combout\,
	datab => \memoriaInst|rom~22_combout\,
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~23_combout\);

\IF_ID|q[22]\ : dffeas
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
	q => \IF_ID|q\(22));

\memoriaInst|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~1_combout\ = (\PC|q\(2)) # ((\PC|q\(5)) # (\PC|q\(3) $ (\PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~1_combout\);

\memoriaInst|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~2_combout\ = (\PC|q\(6) & (\memoriaInst|rom~0_combout\ & !\memoriaInst|rom~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~0_combout\,
	datad => \memoriaInst|rom~1_combout\,
	combout => \memoriaInst|rom~2_combout\);

\IF_ID|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(23));

\memoriaInst|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~6_combout\ = (\PC|q\(2) & (!\PC|q\(4) & !\PC|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datac => \PC|q\(4),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~6_combout\);

\memoriaInst|rom~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~13_combout\ = (\PC|q\(3) & (\PC|q\(5) & \memoriaInst|rom~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datab => \PC|q\(5),
	datac => \memoriaInst|rom~6_combout\,
	combout => \memoriaInst|rom~13_combout\);

\memoriaInst|rom~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~10_combout\ = (!\PC|q\(2) & ((\PC|q\(3) & (\PC|q\(4))) # (!\PC|q\(3) & (!\PC|q\(4) & \PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~10_combout\);

\memoriaInst|rom~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~15_combout\ = (\memoriaInst|rom~0_combout\ & ((\memoriaInst|rom~13_combout\) # ((\memoriaInst|rom~10_combout\ & !\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~0_combout\,
	datab => \memoriaInst|rom~13_combout\,
	datac => \memoriaInst|rom~10_combout\,
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~15_combout\);

\IF_ID|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(24));

\memoriaInst|rom~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~18_combout\ = (\PC|q\(2) & (!\PC|q\(4) & (\PC|q\(3) $ (!\PC|q\(5))))) # (!\PC|q\(2) & (\PC|q\(3) & (\PC|q\(4) & !\PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~18_combout\);

\memoriaInst|rom~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~19_combout\ = (\memoriaInst|rom~0_combout\ & (\memoriaInst|rom~18_combout\ & !\PC|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~0_combout\,
	datab => \memoriaInst|rom~18_combout\,
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~19_combout\);

\IF_ID|q[17]\ : dffeas
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
	q => \IF_ID|q\(17));

\memoriaInst|rom~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~20_combout\ = (\PC|q\(3) & (!\PC|q\(2) & (\PC|q\(4)))) # (!\PC|q\(3) & (!\PC|q\(4) & (\PC|q\(2) $ (\PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~20_combout\);

\memoriaInst|rom~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~21_combout\ = (\memoriaInst|rom~0_combout\ & ((\memoriaInst|rom~13_combout\) # ((\memoriaInst|rom~20_combout\ & !\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~0_combout\,
	datab => \memoriaInst|rom~13_combout\,
	datac => \memoriaInst|rom~20_combout\,
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~21_combout\);

\IF_ID|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(19));

\memoriaInst|rom~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~11_combout\ = (\memoriaInst|rom~0_combout\ & (\memoriaInst|rom~10_combout\ & !\PC|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~0_combout\,
	datab => \memoriaInst|rom~10_combout\,
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~11_combout\);

\IF_ID|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~11_combout\,
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

\ID_EX|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(5));

\memoriaInst|rom~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~25_combout\ = (!\PC|q\(5) & ((\PC|q\(3) & ((!\PC|q\(4)))) # (!\PC|q\(3) & ((\PC|q\(2)) # (\PC|q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~25_combout\);

\memoriaInst|rom~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~26_combout\ = (\memoriaInst|rom~0_combout\ & ((\PC|q\(6) & (\memoriaInst|rom~25_combout\)) # (!\PC|q\(6) & ((!\memoriaInst|rom~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~0_combout\,
	datab => \memoriaInst|rom~25_combout\,
	datac => \PC|q\(6),
	datad => \memoriaInst|rom~22_combout\,
	combout => \memoriaInst|rom~26_combout\);

\IF_ID|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(31));

\memoriaInst|rom~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~24_combout\ = (\memoriaInst|rom~0_combout\ & (\memoriaInst|rom~6_combout\ & (!\PC|q\(3) & !\PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~0_combout\,
	datab => \memoriaInst|rom~6_combout\,
	datac => \PC|q\(3),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~24_combout\);

\IF_ID|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(27));

\fd_ctrl|op_code_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|op_code_aux~0_combout\ = (!\IF_ID|q\(31) & !\IF_ID|q\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(31),
	datab => \IF_ID|q\(27),
	combout => \fd_ctrl|op_code_aux~0_combout\);

\ID_EX|q[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|op_code_aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(140));

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

\memoriaInst|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~4_combout\ = (\PC|q\(4) & (\memoriaInst|rom~3_combout\ & (!\PC|q\(2) & !\PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \memoriaInst|rom~3_combout\,
	datac => \PC|q\(2),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~4_combout\);

\memoriaInst|rom~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~12_combout\ = (\memoriaInst|rom~4_combout\ & !\PC|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~4_combout\,
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~12_combout\);

\IF_ID|q[12]\ : dffeas
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

\memoriaInst|rom~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~14_combout\ = (\memoriaInst|rom~0_combout\ & ((\memoriaInst|rom~13_combout\) # ((\PC|q\(6) & !\memoriaInst|rom~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~0_combout\,
	datab => \memoriaInst|rom~13_combout\,
	datac => \PC|q\(6),
	datad => \memoriaInst|rom~1_combout\,
	combout => \memoriaInst|rom~14_combout\);

\IF_ID|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(13));

\ID_EX|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(23));

\ID_EX|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(11));

\mux_RtRd|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[2]~2_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(23))) # (!\ID_EX|q\(140) & ((\ID_EX|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(23),
	datab => \ID_EX|q\(11),
	datad => \ID_EX|q\(140),
	combout => \mux_RtRd|Y[2]~2_combout\);

\EX_MEM|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_RtRd|Y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(2));

\MEM_WB|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(2));

\ID_EX|q[24]\ : dffeas
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
	q => \ID_EX|q\(24));

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

\mux_RtRd|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[3]~3_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(24))) # (!\ID_EX|q\(140) & ((\ID_EX|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(24),
	datab => \ID_EX|q\(8),
	datad => \ID_EX|q\(140),
	combout => \mux_RtRd|Y[3]~3_combout\);

\EX_MEM|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_RtRd|Y[3]~3_combout\,
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

\memoriaInst|rom~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~7_combout\ = (\memoriaInst|rom~6_combout\ & (!\PC|q\(3) & !\PC|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~6_combout\,
	datac => \PC|q\(3),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~7_combout\);

\memoriaInst|rom~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~8_combout\ = (\PC|q\(5)) # ((\PC|q\(2) & (\PC|q\(3) & \PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~8_combout\);

\memoriaInst|rom~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~9_combout\ = (\memoriaInst|rom~7_combout\) # (((\PC|q\(6) & \memoriaInst|rom~8_combout\)) # (!\memoriaInst|rom~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~7_combout\,
	datab => \PC|q\(6),
	datac => \memoriaInst|rom~8_combout\,
	datad => \memoriaInst|rom~0_combout\,
	combout => \memoriaInst|rom~9_combout\);

\IF_ID|q[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[5]~0_combout\ = !\memoriaInst|rom~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~9_combout\,
	combout => \IF_ID|q[5]~0_combout\);

\IF_ID|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q[5]~0_combout\,
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

\ula_ctrl|ula_ctrl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(15) & \ID_EX|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(15),
	datac => \ID_EX|q\(11),
	combout => \ula_ctrl|ula_ctrl[0]~0_combout\);

\memoriaInst|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~5_combout\ = (\PC|q\(6) & \memoriaInst|rom~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~4_combout\,
	combout => \memoriaInst|rom~5_combout\);

\IF_ID|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~5_combout\,
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

\EX_MEM|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(5));

\EX_MEM|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(43),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(6));

\EX_MEM|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(44),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(7));

\EX_MEM|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(8));

\EX_MEM|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(9));

\EX_MEM|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(10));

\EX_MEM|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(11));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

\MEM_WB|q[11]\ : dffeas
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
	q => \MEM_WB|q\(11));

\fd_ctrl|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal1~0_combout\ = (\IF_ID|q\(31) & \IF_ID|q\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(31),
	datab => \IF_ID|q\(27),
	combout => \fd_ctrl|Equal1~0_combout\);

\ID_EX|q[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(145));

\EX_MEM|q[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(145),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(105));

\MEM_WB|q[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(105),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(69));

\mux_ULA|Y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[6]~6_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6~portadataout\,
	datab => \MEM_WB|q\(11),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[6]~6_combout\);

\regs|registrador_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(17));

\fd_ctrl|saida_fluxo[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[8]~0_combout\ = \IF_ID|q\(31) $ (!\IF_ID|q\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IF_ID|q\(31),
	datad => \IF_ID|q\(27),
	combout => \fd_ctrl|saida_fluxo[8]~0_combout\);

\ID_EX|q[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|saida_fluxo[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(146));

\EX_MEM|q[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(146),
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

\regs|registrador_rtl_1|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 15,
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
	d => \memoriaInst|rom~19_combout\,
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
	d => \memoriaInst|rom~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(2));

\regs|registrador~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~38_combout\ = (\regs|registrador_rtl_1_bypass\(1) & (\regs|registrador_rtl_1_bypass\(2) & (\regs|registrador_rtl_1_bypass\(3) $ (!\regs|registrador_rtl_1_bypass\(4))))) # (!\regs|registrador_rtl_1_bypass\(1) & 
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
	combout => \regs|registrador~38_combout\);

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

\regs|registrador_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(5));

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

\regs|registrador_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(8));

\regs|registrador_rtl_1_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(6));

\regs|registrador~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~39_combout\ = (\regs|registrador_rtl_1_bypass\(5) & (\regs|registrador_rtl_1_bypass\(6) & (\regs|registrador_rtl_1_bypass\(7) $ (!\regs|registrador_rtl_1_bypass\(8))))) # (!\regs|registrador_rtl_1_bypass\(5) & 
-- (!\regs|registrador_rtl_1_bypass\(6) & (\regs|registrador_rtl_1_bypass\(7) $ (!\regs|registrador_rtl_1_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(5),
	datab => \regs|registrador_rtl_1_bypass\(7),
	datac => \regs|registrador_rtl_1_bypass\(8),
	datad => \regs|registrador_rtl_1_bypass\(6),
	combout => \regs|registrador~39_combout\);

\regs|registrador~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~40_combout\ = (\regs|registrador~38_combout\ & (\regs|registrador_rtl_1_bypass\(0) & \regs|registrador~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~38_combout\,
	datab => \regs|registrador_rtl_1_bypass\(0),
	datac => \regs|registrador~39_combout\,
	combout => \regs|registrador~40_combout\);

\regs|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|Equal1~0_combout\ = (!\IF_ID|q\(21) & (!\IF_ID|q\(23) & (!\IF_ID|q\(17) & !\IF_ID|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(21),
	datab => \IF_ID|q\(23),
	datac => \IF_ID|q\(17),
	datad => \IF_ID|q\(19),
	combout => \regs|Equal1~0_combout\);

\regs|saidaB[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[6]~26_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(17))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a6~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(17),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a6~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[6]~26_combout\);

\ID_EX|q[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(48));

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

\mux_Rt_im|Y[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[6]~26_combout\ = (\ID_EX|q\(48) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(48),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[6]~26_combout\);

\regs|registrador_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[6]~6_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 15,
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
	d => \memoriaInst|rom~23_combout\,
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
	d => \memoriaInst|rom~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(2));

\regs|registrador~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~41_combout\ = (\regs|registrador_rtl_0_bypass\(1) & (\regs|registrador_rtl_0_bypass\(2) & (\regs|registrador_rtl_0_bypass\(3) $ (!\regs|registrador_rtl_0_bypass\(4))))) # (!\regs|registrador_rtl_0_bypass\(1) & 
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
	combout => \regs|registrador~41_combout\);

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

\regs|registrador_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MEM_WB|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(5));

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
	d => \memoriaInst|rom~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(8));

\regs|registrador_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(6));

\regs|registrador~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~42_combout\ = (\regs|registrador_rtl_0_bypass\(5) & (\regs|registrador_rtl_0_bypass\(6) & (\regs|registrador_rtl_0_bypass\(7) $ (!\regs|registrador_rtl_0_bypass\(8))))) # (!\regs|registrador_rtl_0_bypass\(5) & 
-- (!\regs|registrador_rtl_0_bypass\(6) & (\regs|registrador_rtl_0_bypass\(7) $ (!\regs|registrador_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(5),
	datab => \regs|registrador_rtl_0_bypass\(7),
	datac => \regs|registrador_rtl_0_bypass\(8),
	datad => \regs|registrador_rtl_0_bypass\(6),
	combout => \regs|registrador~42_combout\);

\regs|registrador~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~43_combout\ = (\regs|registrador~41_combout\ & (\regs|registrador_rtl_0_bypass\(0) & \regs|registrador~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_0_bypass\(0),
	datac => \regs|registrador~42_combout\,
	combout => \regs|registrador~43_combout\);

\regs|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|Equal0~0_combout\ = (!\IF_ID|q\(21) & (!\IF_ID|q\(22) & (!\IF_ID|q\(23) & !\IF_ID|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(21),
	datab => \IF_ID|q\(22),
	datac => \IF_ID|q\(23),
	datad => \IF_ID|q\(24),
	combout => \regs|Equal0~0_combout\);

\regs|saidaA[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[6]~26_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(17))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(17),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[6]~26_combout\);

\ID_EX|q[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(80));

\ula|full_adder|c_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[6]~6_combout\ = (\ID_EX|q\(80) & ((\ula|full_adder|c_out[5]~5_combout\) # (\mux_Rt_im|Y[6]~26_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(80) & (\ula|full_adder|c_out[5]~5_combout\ & (\mux_Rt_im|Y[6]~26_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[6]~26_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(80),
	datad => \ula|full_adder|c_out[5]~5_combout\,
	combout => \ula|full_adder|c_out[6]~6_combout\);

\ula_ctrl|ula_ctrl[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~2_combout\ = (\ID_EX|q\(15) & (\ID_EX|q\(11) & (\ID_EX|q\(140) & \ID_EX|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(11),
	datac => \ID_EX|q\(140),
	datad => \ID_EX|q\(13),
	combout => \ula_ctrl|ula_ctrl[0]~2_combout\);

\ula_ctrl|ula_ctrl[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[1]~1_combout\ = ((\ID_EX|q\(15) & ((\ID_EX|q\(11)) # (!\ID_EX|q\(13))))) # (!\ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(11),
	datac => \ID_EX|q\(13),
	datad => \ID_EX|q\(140),
	combout => \ula_ctrl|ula_ctrl[1]~1_combout\);

\regs|registrador_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[7]~7_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 15,
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

\regs|saidaB[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[7]~25_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(18))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a7~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(18),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a7~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[7]~25_combout\);

\ID_EX|q[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(49));

\EX_MEM|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(12));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

\MEM_WB|q[12]\ : dffeas
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
	q => \MEM_WB|q\(12));

\mux_ULA|Y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[7]~7_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datab => \MEM_WB|q\(12),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[7]~7_combout\);

\regs|registrador_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[7]~7_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 15,
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

\regs|saidaA[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[7]~25_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(18))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(18),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[7]~25_combout\);

\ID_EX|q[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[7]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(81));

\mux_Rt_im|Y[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[7]~25_combout\ = (\ID_EX|q\(49) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(49),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[7]~25_combout\);

\ula|mux4|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~0_combout\ = (\ID_EX|q\(81) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[7]~25_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(81) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[7]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(81),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[7]~25_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux24~0_combout\);

\ula|mux4|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux24~0_combout\ $ (((\ula|full_adder|c_out[6]~6_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[6]~6_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux24~0_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

\MEM_WB|q[10]\ : dffeas
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
	q => \MEM_WB|q\(10));

\mux_ULA|Y[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[5]~5_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5~portadataout\,
	datab => \MEM_WB|q\(10),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[5]~5_combout\);

\regs|registrador_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[5]~5_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 15,
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

\regs|saidaB[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[5]~27_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(16))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a5~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(16),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a5~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[5]~27_combout\);

\ID_EX|q[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(47));

\mux_Rt_im|Y[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[5]~27_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(15))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(47),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[5]~27_combout\);

\regs|registrador_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[5]~5_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 15,
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

\regs|saidaA[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[5]~27_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(16))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(16),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[5]~27_combout\);

\ID_EX|q[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(79));

\ula|full_adder|c_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[5]~5_combout\ = (\ID_EX|q\(79) & ((\ula|full_adder|c_out[4]~4_combout\) # (\mux_Rt_im|Y[5]~27_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(79) & (\ula|full_adder|c_out[4]~4_combout\ & (\mux_Rt_im|Y[5]~27_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[5]~27_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(79),
	datad => \ula|full_adder|c_out[4]~4_combout\,
	combout => \ula|full_adder|c_out[5]~5_combout\);

\ula|mux4|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux25~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[6]~26_combout\ $ (\ID_EX|q\(80))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(80) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[6]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[6]~26_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(80),
	combout => \ula|mux4|Mux25~0_combout\);

\ula|mux4|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux25~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux25~0_combout\ $ (((\ula|full_adder|c_out[5]~5_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[5]~5_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux25~0_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

\MEM_WB|q[9]\ : dffeas
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
	q => \MEM_WB|q\(9));

\mux_ULA|Y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[4]~4_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4~portadataout\,
	datab => \MEM_WB|q\(9),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[4]~4_combout\);

\regs|registrador_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[4]~4_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 15,
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

\regs|saidaB[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[4]~28_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(15))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a4~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(15),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a4~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[4]~28_combout\);

\ID_EX|q[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(46));

\mux_Rt_im|Y[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[4]~28_combout\ = (\ID_EX|q\(46) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(46),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[4]~28_combout\);

\regs|registrador_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[4]~4_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 15,
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

\regs|saidaA[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[4]~28_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(15))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(15),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[4]~28_combout\);

\ID_EX|q[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(78));

\ula|full_adder|c_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[4]~4_combout\ = (\ID_EX|q\(78) & ((\ula|full_adder|c_out[3]~3_combout\) # (\mux_Rt_im|Y[4]~28_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(78) & (\ula|full_adder|c_out[3]~3_combout\ & (\mux_Rt_im|Y[4]~28_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[4]~28_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(78),
	datad => \ula|full_adder|c_out[3]~3_combout\,
	combout => \ula|full_adder|c_out[4]~4_combout\);

\ula|mux4|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[5]~27_combout\ $ (\ID_EX|q\(79))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(79) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[5]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[5]~27_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(79),
	combout => \ula|mux4|Mux26~0_combout\);

\ula|mux4|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux26~0_combout\ $ (((\ula|full_adder|c_out[4]~4_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[4]~4_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux26~0_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000380",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

\MEM_WB|q[8]\ : dffeas
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
	q => \MEM_WB|q\(8));

\mux_ULA|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[3]~3_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portadataout\,
	datab => \MEM_WB|q\(8),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[3]~3_combout\);

\regs|registrador_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[3]~3_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 15,
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

\regs|saidaB[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[3]~29_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(14))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a3~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(14),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a3~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[3]~29_combout\);

\ID_EX|q[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(45));

\mux_Rt_im|Y[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[3]~29_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(13))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(13),
	datab => \ID_EX|q\(45),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[3]~29_combout\);

\regs|registrador_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[3]~3_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 15,
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

\regs|saidaA[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[3]~29_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(14))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(14),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[3]~29_combout\);

\ID_EX|q[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(77));

\ula|full_adder|c_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[3]~3_combout\ = (\ID_EX|q\(77) & ((\ula|full_adder|c_out[2]~2_combout\) # (\mux_Rt_im|Y[3]~29_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(77) & (\ula|full_adder|c_out[2]~2_combout\ & (\mux_Rt_im|Y[3]~29_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[3]~29_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(77),
	datad => \ula|full_adder|c_out[2]~2_combout\,
	combout => \ula|full_adder|c_out[3]~3_combout\);

\ula|mux4|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~0_combout\ = (\ID_EX|q\(78) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[4]~28_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(78) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(78),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[4]~28_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux27~0_combout\);

\ula|mux4|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux27~0_combout\ $ (((\ula|full_adder|c_out[3]~3_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[3]~3_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux27~0_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000078",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

\MEM_WB|q[7]\ : dffeas
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
	q => \MEM_WB|q\(7));

\mux_ULA|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[2]~2_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portadataout\,
	datab => \MEM_WB|q\(7),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[2]~2_combout\);

\regs|registrador_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[2]~2_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 15,
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

\regs|saidaB[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[2]~30_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(13))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a2~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(13),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a2~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[2]~30_combout\);

\ID_EX|q[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(44));

\mux_Rt_im|Y[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[2]~30_combout\ = (\ID_EX|q\(44) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(44),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[2]~30_combout\);

\regs|registrador_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[2]~2_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 15,
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

\regs|saidaA[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[2]~30_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(13))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(13),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[2]~30_combout\);

\ID_EX|q[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(76));

\ula|full_adder|c_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[2]~2_combout\ = (\ID_EX|q\(76) & ((\ula|full_adder|c_out[1]~1_combout\) # (\mux_Rt_im|Y[2]~30_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(76) & (\ula|full_adder|c_out[1]~1_combout\ & (\mux_Rt_im|Y[2]~30_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~30_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(76),
	datad => \ula|full_adder|c_out[1]~1_combout\,
	combout => \ula|full_adder|c_out[2]~2_combout\);

\ula|mux4|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux28~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[3]~29_combout\ $ (\ID_EX|q\(77))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(77) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[3]~29_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(77),
	combout => \ula|mux4|Mux28~0_combout\);

\ula|mux4|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux28~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux28~0_combout\ $ (((\ula|full_adder|c_out[2]~2_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[2]~2_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux28~0_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000266",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

\regs|registrador_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(11));

\regs|registrador_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
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

\regs|saidaA[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[0]~0_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(11))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(11),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \regs|registrador~43_combout\,
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

\ula|full_adder|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[0]~0_combout\ = (\ID_EX|q\(42) & ((\ID_EX|q\(138) & (\ula_ctrl|ula_ctrl[0]~0_combout\)) # (!\ID_EX|q\(138) & ((\ID_EX|q\(74)))))) # (!\ID_EX|q\(42) & (\ula_ctrl|ula_ctrl[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \ID_EX|q\(74),
	datac => \ID_EX|q\(42),
	datad => \ID_EX|q\(138),
	combout => \ula|full_adder|c_out[0]~0_combout\);

\regs|registrador_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[1]~1_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 15,
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

\regs|saidaA[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[1]~31_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(12))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(12),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[1]~31_combout\);

\ID_EX|q[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(75));

\ula|mux4|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[1]~31_combout\ $ (\ID_EX|q\(75))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(75) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[1]~31_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(75),
	combout => \ula|mux4|Mux30~0_combout\);

\ula|mux4|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux30~0_combout\ $ (((\ula|full_adder|c_out[0]~0_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux30~0_combout\,
	combout => \ula|mux4|Mux30~1_combout\);

\EX_MEM|q[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(38));

\MEM_WB|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(38),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(6));

\mux_ULA|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[1]~1_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portadataout\,
	datab => \MEM_WB|q\(6),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[1]~1_combout\);

\regs|registrador_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[1]~1_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 15,
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

\regs|saidaB[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[1]~31_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(12))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(12),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[1]~31_combout\);

\ID_EX|q[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[1]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(43));

\mux_Rt_im|Y[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[1]~31_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(11))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(43),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[1]~31_combout\);

\ula|full_adder|c_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[1]~1_combout\ = (\ID_EX|q\(75) & ((\ula|full_adder|c_out[0]~0_combout\) # (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[1]~31_combout\)))) # (!\ID_EX|q\(75) & (\ula|full_adder|c_out[0]~0_combout\ & 
-- (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[1]~31_combout\,
	datac => \ID_EX|q\(75),
	datad => \ula|full_adder|c_out[0]~0_combout\,
	combout => \ula|full_adder|c_out[1]~1_combout\);

\ula|mux4|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~0_combout\ = (\ID_EX|q\(76) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[2]~30_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(76) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[2]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(76),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[2]~30_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux29~0_combout\);

\ula|mux4|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux29~0_combout\ $ (((\ula|full_adder|c_out[1]~1_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[1]~1_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux29~0_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000155",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\EX_MEM|q[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux31~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(37));

\MEM_WB|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(37),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(5));

\mux_ULA|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[0]~0_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datab => \MEM_WB|q\(5),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[0]~0_combout\);

\regs|registrador_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(11));

\regs|registrador_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_mcc1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
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

\regs|saidaB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[0]~0_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(11))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(11),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[0]~0_combout\);

\ID_EX|q[42]\ : dffeas
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
	q => \ID_EX|q\(42));

\mux_Rt_im|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[0]~0_combout\ = (\ID_EX|q\(42) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(42),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[0]~0_combout\);

\ula|mux4|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~2_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & ((\mux_Rt_im|Y[0]~0_combout\ & (\ID_EX|q\(74) $ (\ula_ctrl|ula_ctrl[1]~1_combout\))) # (!\mux_Rt_im|Y[0]~0_combout\ & (\ID_EX|q\(74) & \ula_ctrl|ula_ctrl[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~0_combout\,
	datab => \ID_EX|q\(74),
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula_ctrl|ula_ctrl[0]~2_combout\,
	combout => \ula|mux4|Mux31~2_combout\);

\EX_MEM|q[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(73),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(36));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

\EX_MEM|q[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(72),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(35));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

\regs|registrador_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[30]~30_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 15,
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

\regs|saidaA[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[30]~2_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(41))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(41),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[30]~2_combout\);

\ID_EX|q[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(104));

\ula|mux4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~0_combout\ = (!\ula_ctrl|ula_ctrl[1]~1_combout\ & ((\mux_Rt_im|Y[30]~2_combout\ & ((!\ula_ctrl|ula_ctrl[0]~0_combout\))) # (!\mux_Rt_im|Y[30]~2_combout\ & (!\ID_EX|q\(13) & \ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[30]~2_combout\,
	datab => \ID_EX|q\(13),
	datac => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux1~0_combout\);

\ula|mux4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~1_combout\ = ((\ID_EX|q\(15) & !\ID_EX|q\(13))) # (!\ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datac => \ID_EX|q\(13),
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux2~1_combout\);

\EX_MEM|q[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(71),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(34));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

\regs|registrador_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[29]~29_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
	port_b_last_address => 15,
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

\regs|saidaA[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[29]~3_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(40))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(40),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[29]~3_combout\);

\ID_EX|q[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(103));

\ula|mux4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~0_combout\ = (!\ula_ctrl|ula_ctrl[1]~1_combout\ & ((\mux_Rt_im|Y[29]~3_combout\ & ((!\ula_ctrl|ula_ctrl[0]~0_combout\))) # (!\mux_Rt_im|Y[29]~3_combout\ & (!\ID_EX|q\(13) & \ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[29]~3_combout\,
	datab => \ID_EX|q\(13),
	datac => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux2~0_combout\);

\EX_MEM|q[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(70),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(33));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

\EX_MEM|q[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(69),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(32));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

\EX_MEM|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(68),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(31));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

\EX_MEM|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(67),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(30));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

\EX_MEM|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(66),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(29));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

\EX_MEM|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(65),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(28));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

\EX_MEM|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(64),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(27));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

\EX_MEM|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(26));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

\EX_MEM|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(25));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

\EX_MEM|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(24));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

\EX_MEM|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(23));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

\EX_MEM|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(22));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

\EX_MEM|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(21));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

\EX_MEM|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(20));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

\EX_MEM|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(19));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

\EX_MEM|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(18));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

\EX_MEM|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(17));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

\EX_MEM|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(16));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

\EX_MEM|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(15));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

\EX_MEM|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(14));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

\EX_MEM|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ID_EX|q\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(13));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_bbd1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
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
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLOCK_50~input_o\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

\ula|full_adder|c_out[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[7]~7_combout\ = (\ID_EX|q\(81) & ((\ula|full_adder|c_out[6]~6_combout\) # (\mux_Rt_im|Y[7]~25_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(81) & (\ula|full_adder|c_out[6]~6_combout\ & (\mux_Rt_im|Y[7]~25_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[7]~25_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(81),
	datad => \ula|full_adder|c_out[6]~6_combout\,
	combout => \ula|full_adder|c_out[7]~7_combout\);

\regs|registrador_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[8]~8_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 15,
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

\regs|saidaA[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[8]~24_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(19))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(19),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[8]~24_combout\);

\ID_EX|q[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(82));

\ula|mux4|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[8]~24_combout\ $ (\ID_EX|q\(82))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(82) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[8]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[8]~24_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(82),
	combout => \ula|mux4|Mux23~0_combout\);

\ula|mux4|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux23~0_combout\ $ (((\ula|full_adder|c_out[7]~7_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[7]~7_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux23~0_combout\,
	combout => \ula|mux4|Mux23~1_combout\);

\EX_MEM|q[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(45));

\MEM_WB|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(45),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(13));

\mux_ULA|Y[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[8]~8_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portadataout\,
	datab => \MEM_WB|q\(13),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[8]~8_combout\);

\regs|registrador_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[8]~8_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 8,
	port_b_last_address => 15,
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

\regs|saidaB[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[8]~24_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(19))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(19),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[8]~24_combout\);

\ID_EX|q[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(50));

\mux_Rt_im|Y[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[8]~24_combout\ = (\ID_EX|q\(50) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(50),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[8]~24_combout\);

\ula|full_adder|c_out[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[8]~8_combout\ = (\ID_EX|q\(82) & ((\ula|full_adder|c_out[7]~7_combout\) # (\mux_Rt_im|Y[8]~24_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(82) & (\ula|full_adder|c_out[7]~7_combout\ & (\mux_Rt_im|Y[8]~24_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[8]~24_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(82),
	datad => \ula|full_adder|c_out[7]~7_combout\,
	combout => \ula|full_adder|c_out[8]~8_combout\);

\regs|registrador_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[9]~9_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 15,
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

\regs|saidaA[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[9]~23_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(20))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(20),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[9]~23_combout\);

\ID_EX|q[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(83));

\ula|mux4|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~0_combout\ = (\ID_EX|q\(83) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[9]~23_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(83) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(83),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[9]~23_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux22~0_combout\);

\ula|mux4|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux22~0_combout\ $ (((\ula|full_adder|c_out[8]~8_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[8]~8_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux22~0_combout\,
	combout => \ula|mux4|Mux22~1_combout\);

\EX_MEM|q[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(46));

\MEM_WB|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(46),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(14));

\mux_ULA|Y[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[9]~9_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9~portadataout\,
	datab => \MEM_WB|q\(14),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[9]~9_combout\);

\regs|registrador_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[9]~9_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 9,
	port_b_last_address => 15,
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

\regs|saidaB[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[9]~23_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(20))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(20),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[9]~23_combout\);

\ID_EX|q[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(51));

\mux_Rt_im|Y[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[9]~23_combout\ = (\ID_EX|q\(51) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(51),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[9]~23_combout\);

\ula|full_adder|c_out[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[9]~9_combout\ = (\ID_EX|q\(83) & ((\ula|full_adder|c_out[8]~8_combout\) # (\mux_Rt_im|Y[9]~23_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(83) & (\ula|full_adder|c_out[8]~8_combout\ & (\mux_Rt_im|Y[9]~23_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[9]~23_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(83),
	datad => \ula|full_adder|c_out[8]~8_combout\,
	combout => \ula|full_adder|c_out[9]~9_combout\);

\regs|registrador_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[10]~10_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 15,
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

\regs|saidaA[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[10]~22_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(21))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(21),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[10]~22_combout\);

\ID_EX|q[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(84));

\ula|mux4|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[10]~22_combout\ $ (\ID_EX|q\(84))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(84) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[10]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[10]~22_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(84),
	combout => \ula|mux4|Mux21~0_combout\);

\ula|mux4|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux21~0_combout\ $ (((\ula|full_adder|c_out[9]~9_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[9]~9_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux21~0_combout\,
	combout => \ula|mux4|Mux21~1_combout\);

\EX_MEM|q[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(47));

\MEM_WB|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(47),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(15));

\mux_ULA|Y[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[10]~10_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10~portadataout\,
	datab => \MEM_WB|q\(15),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[10]~10_combout\);

\regs|registrador_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[10]~10_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 10,
	port_b_last_address => 15,
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

\regs|saidaB[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[10]~22_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(21))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(21),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[10]~22_combout\);

\ID_EX|q[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[10]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(52));

\mux_Rt_im|Y[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[10]~22_combout\ = (\ID_EX|q\(52) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(52),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[10]~22_combout\);

\ula|full_adder|c_out[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[10]~10_combout\ = (\ID_EX|q\(84) & ((\ula|full_adder|c_out[9]~9_combout\) # (\mux_Rt_im|Y[10]~22_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(84) & (\ula|full_adder|c_out[9]~9_combout\ & 
-- (\mux_Rt_im|Y[10]~22_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[10]~22_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(84),
	datad => \ula|full_adder|c_out[9]~9_combout\,
	combout => \ula|full_adder|c_out[10]~10_combout\);

\regs|registrador_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[11]~11_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 15,
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

\regs|saidaA[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[11]~21_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(22))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(22),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[11]~21_combout\);

\ID_EX|q[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(85));

\ula|mux4|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[11]~21_combout\ $ (\ID_EX|q\(85))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(85) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[11]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[11]~21_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(85),
	combout => \ula|mux4|Mux20~0_combout\);

\ula|mux4|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux20~0_combout\ $ (((\ula|full_adder|c_out[10]~10_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[10]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux20~0_combout\,
	combout => \ula|mux4|Mux20~1_combout\);

\EX_MEM|q[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(48));

\MEM_WB|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(48),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(16));

\mux_ULA|Y[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[11]~11_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11~portadataout\,
	datab => \MEM_WB|q\(16),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[11]~11_combout\);

\regs|registrador_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[11]~11_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 11,
	port_b_last_address => 15,
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

\regs|saidaB[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[11]~21_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(22))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(22),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[11]~21_combout\);

\ID_EX|q[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(53));

\mux_Rt_im|Y[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[11]~21_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(21))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(21),
	datab => \ID_EX|q\(53),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[11]~21_combout\);

\ula|full_adder|c_out[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[11]~11_combout\ = (\ID_EX|q\(85) & ((\ula|full_adder|c_out[10]~10_combout\) # (\mux_Rt_im|Y[11]~21_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(85) & (\ula|full_adder|c_out[10]~10_combout\ & 
-- (\mux_Rt_im|Y[11]~21_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[11]~21_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(85),
	datad => \ula|full_adder|c_out[10]~10_combout\,
	combout => \ula|full_adder|c_out[11]~11_combout\);

\regs|registrador_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[12]~12_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 15,
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

\regs|saidaA[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[12]~20_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(23))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(23),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[12]~20_combout\);

\ID_EX|q[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(86));

\ula|mux4|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[12]~20_combout\ $ (\ID_EX|q\(86))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(86) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[12]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[12]~20_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(86),
	combout => \ula|mux4|Mux19~0_combout\);

\ula|mux4|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux19~0_combout\ $ (((\ula|full_adder|c_out[11]~11_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[11]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux19~0_combout\,
	combout => \ula|mux4|Mux19~1_combout\);

\EX_MEM|q[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(49));

\MEM_WB|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(49),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(17));

\mux_ULA|Y[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[12]~12_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12~portadataout\,
	datab => \MEM_WB|q\(17),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[12]~12_combout\);

\regs|registrador_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[12]~12_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 15,
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

\regs|saidaB[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[12]~20_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(23))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(23),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[12]~20_combout\);

\ID_EX|q[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[12]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(54));

\mux_Rt_im|Y[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[12]~20_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(22))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(22),
	datab => \ID_EX|q\(54),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[12]~20_combout\);

\ula|full_adder|c_out[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[12]~12_combout\ = (\ID_EX|q\(86) & ((\ula|full_adder|c_out[11]~11_combout\) # (\mux_Rt_im|Y[12]~20_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(86) & (\ula|full_adder|c_out[11]~11_combout\ & 
-- (\mux_Rt_im|Y[12]~20_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[12]~20_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(86),
	datad => \ula|full_adder|c_out[11]~11_combout\,
	combout => \ula|full_adder|c_out[12]~12_combout\);

\regs|registrador_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[13]~13_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 15,
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

\regs|saidaA[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[13]~19_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(24))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(24),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[13]~19_combout\);

\ID_EX|q[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(87));

\ula|mux4|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~0_combout\ = (\ID_EX|q\(87) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[13]~19_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(87) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[13]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(87),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[13]~19_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux18~0_combout\);

\ula|mux4|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux18~0_combout\ $ (((\ula|full_adder|c_out[12]~12_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[12]~12_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux18~0_combout\,
	combout => \ula|mux4|Mux18~1_combout\);

\EX_MEM|q[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(50));

\MEM_WB|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(50),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(18));

\mux_ULA|Y[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[13]~13_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13~portadataout\,
	datab => \MEM_WB|q\(18),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[13]~13_combout\);

\regs|registrador_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[13]~13_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 13,
	port_b_last_address => 15,
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

\regs|saidaB[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[13]~19_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(24))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(24),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[13]~19_combout\);

\ID_EX|q[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(55));

\mux_Rt_im|Y[13]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[13]~19_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(23))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(23),
	datab => \ID_EX|q\(55),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[13]~19_combout\);

\ula|full_adder|c_out[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[13]~13_combout\ = (\ID_EX|q\(87) & ((\ula|full_adder|c_out[12]~12_combout\) # (\mux_Rt_im|Y[13]~19_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(87) & (\ula|full_adder|c_out[12]~12_combout\ & 
-- (\mux_Rt_im|Y[13]~19_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[13]~19_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(87),
	datad => \ula|full_adder|c_out[12]~12_combout\,
	combout => \ula|full_adder|c_out[13]~13_combout\);

\regs|registrador_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[14]~14_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 15,
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

\regs|saidaA[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[14]~18_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(25))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(25),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[14]~18_combout\);

\ID_EX|q[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(88));

\ula|mux4|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[14]~18_combout\ $ (\ID_EX|q\(88))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(88) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[14]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[14]~18_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(88),
	combout => \ula|mux4|Mux17~0_combout\);

\ula|mux4|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux17~0_combout\ $ (((\ula|full_adder|c_out[13]~13_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[13]~13_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux17~0_combout\,
	combout => \ula|mux4|Mux17~1_combout\);

\EX_MEM|q[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(51));

\MEM_WB|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(51),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(19));

\mux_ULA|Y[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[14]~14_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14~portadataout\,
	datab => \MEM_WB|q\(19),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[14]~14_combout\);

\regs|registrador_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[14]~14_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 14,
	port_b_last_address => 15,
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

\regs|saidaB[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[14]~18_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(25))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(25),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[14]~18_combout\);

\ID_EX|q[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[14]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(56));

\mux_Rt_im|Y[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[14]~18_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(24))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(24),
	datab => \ID_EX|q\(56),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[14]~18_combout\);

\ula|full_adder|c_out[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[14]~14_combout\ = (\ID_EX|q\(88) & ((\ula|full_adder|c_out[13]~13_combout\) # (\mux_Rt_im|Y[14]~18_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(88) & (\ula|full_adder|c_out[13]~13_combout\ & 
-- (\mux_Rt_im|Y[14]~18_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[14]~18_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(88),
	datad => \ula|full_adder|c_out[13]~13_combout\,
	combout => \ula|full_adder|c_out[14]~14_combout\);

\regs|registrador_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[15]~15_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 15,
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

\regs|saidaA[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[15]~17_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(26))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(26),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[15]~17_combout\);

\ID_EX|q[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(89));

\ula|mux4|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[15]~17_combout\ $ (\ID_EX|q\(89))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(89) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[15]~17_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(89),
	combout => \ula|mux4|Mux16~0_combout\);

\ula|mux4|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux16~0_combout\ $ (((\ula|full_adder|c_out[14]~14_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[14]~14_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux16~0_combout\,
	combout => \ula|mux4|Mux16~1_combout\);

\EX_MEM|q[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(52));

\MEM_WB|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(52),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(20));

\mux_ULA|Y[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[15]~15_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15~portadataout\,
	datab => \MEM_WB|q\(20),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[15]~15_combout\);

\regs|registrador_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[15]~15_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 15,
	port_b_last_address => 15,
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

\regs|saidaB[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[15]~17_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(26))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(26),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[15]~17_combout\);

\ID_EX|q[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(57));

\mux_Rt_im|Y[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[15]~17_combout\ = (\ID_EX|q\(57) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(57),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[15]~17_combout\);

\ula|full_adder|c_out[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[15]~15_combout\ = (\ID_EX|q\(89) & ((\ula|full_adder|c_out[14]~14_combout\) # (\mux_Rt_im|Y[15]~17_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(89) & (\ula|full_adder|c_out[14]~14_combout\ & 
-- (\mux_Rt_im|Y[15]~17_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[15]~17_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(89),
	datad => \ula|full_adder|c_out[14]~14_combout\,
	combout => \ula|full_adder|c_out[15]~15_combout\);

\regs|registrador_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[16]~16_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 15,
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
-- \regs|saidaA[16]~16_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(27))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(27),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\,
	datac => \regs|registrador~43_combout\,
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

\ula|mux4|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[16]~16_combout\ $ (\ID_EX|q\(90))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(90) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[16]~16_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(90),
	combout => \ula|mux4|Mux15~0_combout\);

\ula|mux4|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux15~0_combout\ $ (((\ula|full_adder|c_out[15]~15_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[15]~15_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux15~0_combout\,
	combout => \ula|mux4|Mux15~1_combout\);

\EX_MEM|q[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(53));

\MEM_WB|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(53),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(21));

\mux_ULA|Y[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[16]~16_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	datab => \MEM_WB|q\(21),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[16]~16_combout\);

\regs|registrador_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[16]~16_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 16,
	port_b_last_address => 15,
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
-- \regs|saidaB[16]~16_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(27))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(27),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[16]~16_combout\);

\ID_EX|q[58]\ : dffeas
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
	q => \ID_EX|q\(58));

\mux_Rt_im|Y[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[16]~16_combout\ = (\ID_EX|q\(58) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(58),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[16]~16_combout\);

\ula|full_adder|c_out[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[16]~16_combout\ = (\ID_EX|q\(90) & ((\ula|full_adder|c_out[15]~15_combout\) # (\mux_Rt_im|Y[16]~16_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(90) & (\ula|full_adder|c_out[15]~15_combout\ & 
-- (\mux_Rt_im|Y[16]~16_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[16]~16_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(90),
	datad => \ula|full_adder|c_out[15]~15_combout\,
	combout => \ula|full_adder|c_out[16]~16_combout\);

\regs|registrador_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[17]~17_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 15,
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

\regs|saidaA[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[17]~15_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(28))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(28),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[17]~15_combout\);

\ID_EX|q[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(91));

\ula|mux4|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~0_combout\ = (\ID_EX|q\(91) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[17]~15_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(91) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[17]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(91),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[17]~15_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux14~0_combout\);

\ula|mux4|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux14~0_combout\ $ (((\ula|full_adder|c_out[16]~16_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[16]~16_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux14~0_combout\,
	combout => \ula|mux4|Mux14~1_combout\);

\EX_MEM|q[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(54));

\MEM_WB|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(54),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(22));

\mux_ULA|Y[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[17]~17_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17~portadataout\,
	datab => \MEM_WB|q\(22),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[17]~17_combout\);

\regs|registrador_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[17]~17_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 17,
	port_b_last_address => 15,
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

\regs|saidaB[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[17]~15_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(28))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(28),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[17]~15_combout\);

\ID_EX|q[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(59));

\mux_Rt_im|Y[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[17]~15_combout\ = (\ID_EX|q\(59) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(59),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[17]~15_combout\);

\ula|full_adder|c_out[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[17]~17_combout\ = (\ID_EX|q\(91) & ((\ula|full_adder|c_out[16]~16_combout\) # (\mux_Rt_im|Y[17]~15_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(91) & (\ula|full_adder|c_out[16]~16_combout\ & 
-- (\mux_Rt_im|Y[17]~15_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[17]~15_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(91),
	datad => \ula|full_adder|c_out[16]~16_combout\,
	combout => \ula|full_adder|c_out[17]~17_combout\);

\regs|registrador_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[18]~18_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 15,
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

\regs|saidaA[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[18]~14_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(29))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(29),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[18]~14_combout\);

\ID_EX|q[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(92));

\ula|mux4|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[18]~14_combout\ $ (\ID_EX|q\(92))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(92) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[18]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[18]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(92),
	combout => \ula|mux4|Mux13~0_combout\);

\ula|mux4|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux13~0_combout\ $ (((\ula|full_adder|c_out[17]~17_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[17]~17_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux13~0_combout\,
	combout => \ula|mux4|Mux13~1_combout\);

\EX_MEM|q[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(55));

\MEM_WB|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(55),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(23));

\mux_ULA|Y[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[18]~18_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datab => \MEM_WB|q\(23),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[18]~18_combout\);

\regs|registrador_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[18]~18_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 18,
	port_b_last_address => 15,
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

\regs|saidaB[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[18]~14_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(29))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(29),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[18]~14_combout\);

\ID_EX|q[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[18]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(60));

\mux_Rt_im|Y[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[18]~14_combout\ = (\ID_EX|q\(60) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(60),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[18]~14_combout\);

\ula|full_adder|c_out[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[18]~18_combout\ = (\ID_EX|q\(92) & ((\ula|full_adder|c_out[17]~17_combout\) # (\mux_Rt_im|Y[18]~14_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(92) & (\ula|full_adder|c_out[17]~17_combout\ & 
-- (\mux_Rt_im|Y[18]~14_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[18]~14_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(92),
	datad => \ula|full_adder|c_out[17]~17_combout\,
	combout => \ula|full_adder|c_out[18]~18_combout\);

\regs|registrador_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[19]~19_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
	port_b_last_address => 15,
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

\regs|saidaA[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[19]~13_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(30))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(30),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[19]~13_combout\);

\ID_EX|q[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(93));

\ula|mux4|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[19]~13_combout\ $ (\ID_EX|q\(93))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(93) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[19]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[19]~13_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(93),
	combout => \ula|mux4|Mux12~0_combout\);

\ula|mux4|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux12~0_combout\ $ (((\ula|full_adder|c_out[18]~18_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[18]~18_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux12~0_combout\,
	combout => \ula|mux4|Mux12~1_combout\);

\EX_MEM|q[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(56));

\MEM_WB|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(56),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(24));

\mux_ULA|Y[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[19]~19_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19~portadataout\,
	datab => \MEM_WB|q\(24),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[19]~19_combout\);

\regs|registrador_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[19]~19_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 19,
	port_b_last_address => 15,
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

\regs|saidaB[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[19]~13_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(30))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(30),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[19]~13_combout\);

\ID_EX|q[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[19]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(61));

\mux_Rt_im|Y[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[19]~13_combout\ = (\ID_EX|q\(61) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(61),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[19]~13_combout\);

\ula|full_adder|c_out[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[19]~19_combout\ = (\ID_EX|q\(93) & ((\ula|full_adder|c_out[18]~18_combout\) # (\mux_Rt_im|Y[19]~13_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(93) & (\ula|full_adder|c_out[18]~18_combout\ & 
-- (\mux_Rt_im|Y[19]~13_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[19]~13_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(93),
	datad => \ula|full_adder|c_out[18]~18_combout\,
	combout => \ula|full_adder|c_out[19]~19_combout\);

\regs|registrador_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[20]~20_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 15,
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

\regs|saidaA[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[20]~12_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(31))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(31),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[20]~12_combout\);

\ID_EX|q[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(94));

\ula|mux4|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[20]~12_combout\ $ (\ID_EX|q\(94))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(94) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[20]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[20]~12_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(94),
	combout => \ula|mux4|Mux11~0_combout\);

\ula|mux4|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux11~0_combout\ $ (((\ula|full_adder|c_out[19]~19_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[19]~19_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux11~0_combout\,
	combout => \ula|mux4|Mux11~1_combout\);

\EX_MEM|q[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(57));

\MEM_WB|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(57),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(25));

\mux_ULA|Y[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[20]~20_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20~portadataout\,
	datab => \MEM_WB|q\(25),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[20]~20_combout\);

\regs|registrador_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[20]~20_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 20,
	port_b_last_address => 15,
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

\regs|saidaB[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[20]~12_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(31))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(31),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[20]~12_combout\);

\ID_EX|q[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[20]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(62));

\mux_Rt_im|Y[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[20]~12_combout\ = (\ID_EX|q\(62) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(62),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[20]~12_combout\);

\ula|full_adder|c_out[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[20]~20_combout\ = (\ID_EX|q\(94) & ((\ula|full_adder|c_out[19]~19_combout\) # (\mux_Rt_im|Y[20]~12_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(94) & (\ula|full_adder|c_out[19]~19_combout\ & 
-- (\mux_Rt_im|Y[20]~12_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[20]~12_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(94),
	datad => \ula|full_adder|c_out[19]~19_combout\,
	combout => \ula|full_adder|c_out[20]~20_combout\);

\regs|registrador_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[21]~21_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
	port_b_last_address => 15,
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

\regs|saidaA[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[21]~11_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(32))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(32),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[21]~11_combout\);

\ID_EX|q[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(95));

\ula|mux4|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[21]~11_combout\ $ (\ID_EX|q\(95))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(95) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[21]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[21]~11_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(95),
	combout => \ula|mux4|Mux10~0_combout\);

\ula|mux4|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux10~0_combout\ $ (((\ula|full_adder|c_out[20]~20_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[20]~20_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux10~0_combout\,
	combout => \ula|mux4|Mux10~1_combout\);

\EX_MEM|q[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(58));

\MEM_WB|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(58),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(26));

\mux_ULA|Y[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[21]~21_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21~portadataout\,
	datab => \MEM_WB|q\(26),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[21]~21_combout\);

\regs|registrador_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[21]~21_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 21,
	port_b_last_address => 15,
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

\regs|saidaB[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[21]~11_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(32))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(32),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[21]~11_combout\);

\ID_EX|q[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(63));

\mux_Rt_im|Y[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[21]~11_combout\ = (\ID_EX|q\(63) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(63),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[21]~11_combout\);

\ula|full_adder|c_out[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[21]~21_combout\ = (\ID_EX|q\(95) & ((\ula|full_adder|c_out[20]~20_combout\) # (\mux_Rt_im|Y[21]~11_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(95) & (\ula|full_adder|c_out[20]~20_combout\ & 
-- (\mux_Rt_im|Y[21]~11_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[21]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(95),
	datad => \ula|full_adder|c_out[20]~20_combout\,
	combout => \ula|full_adder|c_out[21]~21_combout\);

\regs|registrador_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[22]~22_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 15,
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

\regs|saidaA[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[22]~10_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(33))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(33),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[22]~10_combout\);

\ID_EX|q[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(96));

\ula|mux4|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~0_combout\ = (\ID_EX|q\(96) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[22]~10_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(96) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[22]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(96),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[22]~10_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux9~0_combout\);

\ula|mux4|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux9~0_combout\ $ (((\ula|full_adder|c_out[21]~21_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[21]~21_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux9~0_combout\,
	combout => \ula|mux4|Mux9~1_combout\);

\EX_MEM|q[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(59));

\MEM_WB|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(59),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(27));

\mux_ULA|Y[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[22]~22_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22~portadataout\,
	datab => \MEM_WB|q\(27),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[22]~22_combout\);

\regs|registrador_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[22]~22_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 15,
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

\regs|saidaB[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[22]~10_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(33))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(33),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[22]~10_combout\);

\ID_EX|q[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[22]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(64));

\mux_Rt_im|Y[22]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[22]~10_combout\ = (\ID_EX|q\(64) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(64),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[22]~10_combout\);

\ula|full_adder|c_out[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[22]~22_combout\ = (\ID_EX|q\(96) & ((\ula|full_adder|c_out[21]~21_combout\) # (\mux_Rt_im|Y[22]~10_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(96) & (\ula|full_adder|c_out[21]~21_combout\ & 
-- (\mux_Rt_im|Y[22]~10_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[22]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(96),
	datad => \ula|full_adder|c_out[21]~21_combout\,
	combout => \ula|full_adder|c_out[22]~22_combout\);

\regs|registrador_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[23]~23_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
	port_b_last_address => 15,
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

\regs|saidaA[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[23]~9_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(34))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(34),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[23]~9_combout\);

\ID_EX|q[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(97));

\ula|mux4|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[23]~9_combout\ $ (\ID_EX|q\(97))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(97) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[23]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[23]~9_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(97),
	combout => \ula|mux4|Mux8~0_combout\);

\ula|mux4|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux8~0_combout\ $ (((\ula|full_adder|c_out[22]~22_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[22]~22_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux8~0_combout\,
	combout => \ula|mux4|Mux8~1_combout\);

\EX_MEM|q[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(60));

\MEM_WB|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(60),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(28));

\mux_ULA|Y[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[23]~23_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23~portadataout\,
	datab => \MEM_WB|q\(28),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[23]~23_combout\);

\regs|registrador_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[23]~23_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 23,
	port_b_last_address => 15,
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

\regs|saidaB[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[23]~9_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(34))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(34),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[23]~9_combout\);

\ID_EX|q[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[23]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(65));

\mux_Rt_im|Y[23]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[23]~9_combout\ = (\ID_EX|q\(65) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(65),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[23]~9_combout\);

\ula|full_adder|c_out[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[23]~23_combout\ = (\ID_EX|q\(97) & ((\ula|full_adder|c_out[22]~22_combout\) # (\mux_Rt_im|Y[23]~9_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(97) & (\ula|full_adder|c_out[22]~22_combout\ & 
-- (\mux_Rt_im|Y[23]~9_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[23]~9_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(97),
	datad => \ula|full_adder|c_out[22]~22_combout\,
	combout => \ula|full_adder|c_out[23]~23_combout\);

\regs|registrador_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[24]~24_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
	port_b_last_address => 15,
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

\regs|saidaA[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[24]~8_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(35))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(35),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[24]~8_combout\);

\ID_EX|q[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(98));

\ula|mux4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~0_combout\ = (\ID_EX|q\(98) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[24]~8_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(98) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[24]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(98),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[24]~8_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux7~0_combout\);

\ula|mux4|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux7~0_combout\ $ (((\ula|full_adder|c_out[23]~23_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[23]~23_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux7~0_combout\,
	combout => \ula|mux4|Mux7~1_combout\);

\EX_MEM|q[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(61));

\MEM_WB|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(61),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(29));

\mux_ULA|Y[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[24]~24_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24~portadataout\,
	datab => \MEM_WB|q\(29),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[24]~24_combout\);

\regs|registrador_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[24]~24_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 24,
	port_b_last_address => 15,
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

\regs|saidaB[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[24]~8_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(35))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(35),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[24]~8_combout\);

\ID_EX|q[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[24]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(66));

\mux_Rt_im|Y[24]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[24]~8_combout\ = (\ID_EX|q\(66) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(66),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[24]~8_combout\);

\ula|full_adder|c_out[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[24]~24_combout\ = (\ID_EX|q\(98) & ((\ula|full_adder|c_out[23]~23_combout\) # (\mux_Rt_im|Y[24]~8_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(98) & (\ula|full_adder|c_out[23]~23_combout\ & 
-- (\mux_Rt_im|Y[24]~8_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[24]~8_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(98),
	datad => \ula|full_adder|c_out[23]~23_combout\,
	combout => \ula|full_adder|c_out[24]~24_combout\);

\regs|registrador_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[25]~25_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
	port_b_last_address => 15,
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

\regs|saidaA[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[25]~7_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(36))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(36),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[25]~7_combout\);

\ID_EX|q[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(99));

\ula|mux4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[25]~7_combout\ $ (\ID_EX|q\(99))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(99) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[25]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[25]~7_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(99),
	combout => \ula|mux4|Mux6~0_combout\);

\ula|mux4|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux6~0_combout\ $ (((\ula|full_adder|c_out[24]~24_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[24]~24_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux6~0_combout\,
	combout => \ula|mux4|Mux6~1_combout\);

\EX_MEM|q[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(62));

\MEM_WB|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(62),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(30));

\mux_ULA|Y[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[25]~25_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25~portadataout\,
	datab => \MEM_WB|q\(30),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[25]~25_combout\);

\regs|registrador_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[25]~25_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 25,
	port_b_last_address => 15,
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

\regs|saidaB[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[25]~7_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(36))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(36),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[25]~7_combout\);

\ID_EX|q[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[25]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(67));

\mux_Rt_im|Y[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[25]~7_combout\ = (\ID_EX|q\(67) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(67),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[25]~7_combout\);

\ula|full_adder|c_out[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[25]~25_combout\ = (\ID_EX|q\(99) & ((\ula|full_adder|c_out[24]~24_combout\) # (\mux_Rt_im|Y[25]~7_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(99) & (\ula|full_adder|c_out[24]~24_combout\ & 
-- (\mux_Rt_im|Y[25]~7_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[25]~7_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(99),
	datad => \ula|full_adder|c_out[24]~24_combout\,
	combout => \ula|full_adder|c_out[25]~25_combout\);

\regs|registrador_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[26]~26_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 15,
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

\regs|saidaA[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[26]~6_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(37))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(37),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[26]~6_combout\);

\ID_EX|q[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(100));

\ula|mux4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~0_combout\ = (\ID_EX|q\(100) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[26]~6_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(100) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[26]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(100),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[26]~6_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux5~0_combout\);

\ula|mux4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux5~0_combout\ $ (((\ula|full_adder|c_out[25]~25_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[25]~25_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux5~0_combout\,
	combout => \ula|mux4|Mux5~1_combout\);

\EX_MEM|q[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(63));

\MEM_WB|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(63),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(31));

\mux_ULA|Y[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[26]~26_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26~portadataout\,
	datab => \MEM_WB|q\(31),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[26]~26_combout\);

\regs|registrador_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[26]~26_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 26,
	port_b_last_address => 15,
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

\regs|saidaB[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[26]~6_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(37))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(37),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[26]~6_combout\);

\ID_EX|q[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[26]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(68));

\mux_Rt_im|Y[26]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[26]~6_combout\ = (\ID_EX|q\(68) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(68),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[26]~6_combout\);

\ula|full_adder|c_out[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[26]~26_combout\ = (\ID_EX|q\(100) & ((\ula|full_adder|c_out[25]~25_combout\) # (\mux_Rt_im|Y[26]~6_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(100) & (\ula|full_adder|c_out[25]~25_combout\ & 
-- (\mux_Rt_im|Y[26]~6_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[26]~6_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(100),
	datad => \ula|full_adder|c_out[25]~25_combout\,
	combout => \ula|full_adder|c_out[26]~26_combout\);

\regs|registrador_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[27]~27_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 15,
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

\regs|saidaA[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[27]~5_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(38))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(38),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[27]~5_combout\);

\ID_EX|q[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(101));

\ula|mux4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~0_combout\ = (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[27]~5_combout\ $ (\ID_EX|q\(101))))) # (!\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ID_EX|q\(101) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[27]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[27]~5_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ID_EX|q\(101),
	combout => \ula|mux4|Mux4~0_combout\);

\ula|mux4|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux4~0_combout\ $ (((\ula|full_adder|c_out[26]~26_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[26]~26_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux4~0_combout\,
	combout => \ula|mux4|Mux4~1_combout\);

\EX_MEM|q[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(64));

\MEM_WB|q[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(64),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(32));

\mux_ULA|Y[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[27]~27_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27~portadataout\,
	datab => \MEM_WB|q\(32),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[27]~27_combout\);

\regs|registrador_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[27]~27_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 27,
	port_b_last_address => 15,
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

\regs|saidaB[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[27]~5_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(38))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(38),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[27]~5_combout\);

\ID_EX|q[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(69));

\mux_Rt_im|Y[27]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[27]~5_combout\ = (\ID_EX|q\(69) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(69),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[27]~5_combout\);

\ula|full_adder|c_out[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[27]~27_combout\ = (\ID_EX|q\(101) & ((\ula|full_adder|c_out[26]~26_combout\) # (\mux_Rt_im|Y[27]~5_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(101) & (\ula|full_adder|c_out[26]~26_combout\ & 
-- (\mux_Rt_im|Y[27]~5_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[27]~5_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(101),
	datad => \ula|full_adder|c_out[26]~26_combout\,
	combout => \ula|full_adder|c_out[27]~27_combout\);

\regs|registrador_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[28]~28_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
	port_b_last_address => 15,
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

\regs|saidaA[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[28]~4_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(39))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(39),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[28]~4_combout\);

\ID_EX|q[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(102));

\ula|mux4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~0_combout\ = (\ID_EX|q\(102) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[28]~4_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(102) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[28]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(102),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[28]~4_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux3~0_combout\);

\ula|mux4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux3~0_combout\ $ (((\ula|full_adder|c_out[27]~27_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[27]~27_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux3~0_combout\,
	combout => \ula|mux4|Mux3~1_combout\);

\EX_MEM|q[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(65));

\MEM_WB|q[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(65),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(33));

\mux_ULA|Y[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[28]~28_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28~portadataout\,
	datab => \MEM_WB|q\(33),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[28]~28_combout\);

\regs|registrador_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[28]~28_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 28,
	port_b_last_address => 15,
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

\regs|saidaB[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[28]~4_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(39))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(39),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[28]~4_combout\);

\ID_EX|q[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[28]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(70));

\mux_Rt_im|Y[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[28]~4_combout\ = (\ID_EX|q\(70) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(70),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[28]~4_combout\);

\ula|full_adder|c_out[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[28]~28_combout\ = (\ID_EX|q\(102) & ((\ula|full_adder|c_out[27]~27_combout\) # (\mux_Rt_im|Y[28]~4_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(102) & (\ula|full_adder|c_out[27]~27_combout\ & 
-- (\mux_Rt_im|Y[28]~4_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[28]~4_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(102),
	datad => \ula|full_adder|c_out[27]~27_combout\,
	combout => \ula|full_adder|c_out[28]~28_combout\);

\ula|full_adder|result[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(29) = \ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[29]~3_combout\ $ (\ID_EX|q\(103) $ (!\ula|full_adder|c_out[28]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \mux_Rt_im|Y[29]~3_combout\,
	datac => \ID_EX|q\(103),
	datad => \ula|full_adder|c_out[28]~28_combout\,
	combout => \ula|full_adder|result\(29));

\ula|mux4|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~2_combout\ = (\ID_EX|q\(103) & ((\ula|mux4|Mux2~0_combout\) # ((\ula|mux4|Mux2~1_combout\ & !\ula|full_adder|result\(29))))) # (!\ID_EX|q\(103) & (((\ula|mux4|Mux2~1_combout\ & !\ula|full_adder|result\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(103),
	datab => \ula|mux4|Mux2~0_combout\,
	datac => \ula|mux4|Mux2~1_combout\,
	datad => \ula|full_adder|result\(29),
	combout => \ula|mux4|Mux2~2_combout\);

\EX_MEM|q[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(66));

\MEM_WB|q[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(66),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(34));

\mux_ULA|Y[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[29]~29_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29~portadataout\,
	datab => \MEM_WB|q\(34),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[29]~29_combout\);

\regs|registrador_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[29]~29_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 29,
	port_b_last_address => 15,
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

\regs|saidaB[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[29]~3_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(40))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(40),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[29]~3_combout\);

\ID_EX|q[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(71));

\mux_Rt_im|Y[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[29]~3_combout\ = (\ID_EX|q\(71) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(71),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[29]~3_combout\);

\ula|full_adder|c_out[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[29]~29_combout\ = (\ID_EX|q\(103) & ((\ula|full_adder|c_out[28]~28_combout\) # (\mux_Rt_im|Y[29]~3_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(103) & (\ula|full_adder|c_out[28]~28_combout\ & 
-- (\mux_Rt_im|Y[29]~3_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[29]~3_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(103),
	datad => \ula|full_adder|c_out[28]~28_combout\,
	combout => \ula|full_adder|c_out[29]~29_combout\);

\ula|full_adder|result[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result\(30) = \mux_Rt_im|Y[30]~2_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\ID_EX|q\(104) $ (!\ula|full_adder|c_out[29]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[30]~2_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(104),
	datad => \ula|full_adder|c_out[29]~29_combout\,
	combout => \ula|full_adder|result\(30));

\ula|mux4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~1_combout\ = (\ID_EX|q\(104) & ((\ula|mux4|Mux1~0_combout\) # ((\ula|mux4|Mux2~1_combout\ & !\ula|full_adder|result\(30))))) # (!\ID_EX|q\(104) & (((\ula|mux4|Mux2~1_combout\ & !\ula|full_adder|result\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(104),
	datab => \ula|mux4|Mux1~0_combout\,
	datac => \ula|mux4|Mux2~1_combout\,
	datad => \ula|full_adder|result\(30),
	combout => \ula|mux4|Mux1~1_combout\);

\EX_MEM|q[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(67));

\MEM_WB|q[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(67),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(35));

\mux_ULA|Y[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[30]~30_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30~portadataout\,
	datab => \MEM_WB|q\(35),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[30]~30_combout\);

\regs|registrador_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[30]~30_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 30,
	port_b_last_address => 15,
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

\regs|saidaB[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[30]~2_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(41))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(41),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[30]~2_combout\);

\ID_EX|q[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[30]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(72));

\mux_Rt_im|Y[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[30]~2_combout\ = (\ID_EX|q\(72) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(72),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[30]~2_combout\);

\ula|full_adder|c_out[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[30]~30_combout\ = (\ID_EX|q\(104) & ((\ula|full_adder|c_out[29]~29_combout\) # (\mux_Rt_im|Y[30]~2_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\)))) # (!\ID_EX|q\(104) & (\ula|full_adder|c_out[29]~29_combout\ & 
-- (\mux_Rt_im|Y[30]~2_combout\ $ (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[30]~2_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \ID_EX|q\(104),
	datad => \ula|full_adder|c_out[29]~29_combout\,
	combout => \ula|full_adder|c_out[30]~30_combout\);

\regs|registrador_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[31]~31_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
	port_b_last_address => 15,
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

\regs|saidaA[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[31]~1_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_0_bypass\(42))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(42),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[31]~1_combout\);

\ID_EX|q[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaA[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(105));

\mux_Rt_im|Y[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[31]~1_combout\ = (\ID_EX|q\(73) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(73),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[31]~1_combout\);

\ula|mux4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~0_combout\ = (\ID_EX|q\(105) & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ (\mux_Rt_im|Y[31]~1_combout\ $ (\ula_ctrl|ula_ctrl[1]~1_combout\)))) # (!\ID_EX|q\(105) & (\ula_ctrl|ula_ctrl[1]~1_combout\ & (\ula_ctrl|ula_ctrl[0]~0_combout\ $ 
-- (\mux_Rt_im|Y[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(105),
	datab => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datac => \mux_Rt_im|Y[31]~1_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~1_combout\,
	combout => \ula|mux4|Mux0~0_combout\);

\ula|mux4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~1_combout\ = (!\ula_ctrl|ula_ctrl[0]~2_combout\ & (\ula|mux4|Mux0~0_combout\ $ (((\ula|full_adder|c_out[30]~30_combout\ & \ula_ctrl|ula_ctrl[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[30]~30_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~2_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~1_combout\,
	datad => \ula|mux4|Mux0~0_combout\,
	combout => \ula|mux4|Mux0~1_combout\);

\EX_MEM|q[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(68));

\MEM_WB|q[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q\(68),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(36));

\mux_ULA|Y[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[31]~31_combout\ = (\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31~portadataout\)) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31~portadataout\,
	datab => \MEM_WB|q\(36),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[31]~31_combout\);

\regs|registrador_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[31]~31_combout\,
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
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 31,
	port_b_last_address => 15,
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

\regs|saidaB[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[31]~1_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_1_bypass\(42))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(42),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[31]~1_combout\);

\ID_EX|q[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \regs|saidaB[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(73));

\ula|mux4|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~4_combout\ = (\ID_EX|q\(105) & (\ID_EX|q\(73) & (!\ID_EX|q\(138) & \ula|full_adder|c_out[30]~30_combout\))) # (!\ID_EX|q\(105) & ((\ula|full_adder|c_out[30]~30_combout\) # ((\ID_EX|q\(73) & !\ID_EX|q\(138)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(73),
	datab => \ID_EX|q\(138),
	datac => \ID_EX|q\(105),
	datad => \ula|full_adder|c_out[30]~30_combout\,
	combout => \ula|mux4|Mux31~4_combout\);

\ula|mux4|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~3_combout\ = (\ula|mux4|Mux31~2_combout\) # ((\ula_ctrl|ula_ctrl[0]~0_combout\ & (\ID_EX|q\(13) & !\ula|mux4|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \ID_EX|q\(13),
	datac => \ula|mux4|Mux31~2_combout\,
	datad => \ula|mux4|Mux31~4_combout\,
	combout => \ula|mux4|Mux31~3_combout\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_end1(0) <= \end1[0]~output_o\;

ww_end1(1) <= \end1[1]~output_o\;

ww_end1(2) <= \end1[2]~output_o\;

ww_end1(3) <= \end1[3]~output_o\;

ww_end1(4) <= \end1[4]~output_o\;

ww_end2(0) <= \end2[0]~output_o\;

ww_end2(1) <= \end2[1]~output_o\;

ww_end2(2) <= \end2[2]~output_o\;

ww_end2(3) <= \end2[3]~output_o\;

ww_end2(4) <= \end2[4]~output_o\;

ww_end3(0) <= \end3[0]~output_o\;

ww_end3(1) <= \end3[1]~output_o\;

ww_end3(2) <= \end3[2]~output_o\;

ww_end3(3) <= \end3[3]~output_o\;

ww_end3(4) <= \end3[4]~output_o\;

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;

ww_saida(16) <= \saida[16]~output_o\;

ww_saida(17) <= \saida[17]~output_o\;

ww_saida(18) <= \saida[18]~output_o\;

ww_saida(19) <= \saida[19]~output_o\;

ww_saida(20) <= \saida[20]~output_o\;

ww_saida(21) <= \saida[21]~output_o\;

ww_saida(22) <= \saida[22]~output_o\;

ww_saida(23) <= \saida[23]~output_o\;

ww_saida(24) <= \saida[24]~output_o\;

ww_saida(25) <= \saida[25]~output_o\;

ww_saida(26) <= \saida[26]~output_o\;

ww_saida(27) <= \saida[27]~output_o\;

ww_saida(28) <= \saida[28]~output_o\;

ww_saida(29) <= \saida[29]~output_o\;

ww_saida(30) <= \saida[30]~output_o\;

ww_saida(31) <= \saida[31]~output_o\;

ww_entrada1_ULA(0) <= \entrada1_ULA[0]~output_o\;

ww_entrada1_ULA(1) <= \entrada1_ULA[1]~output_o\;

ww_entrada1_ULA(2) <= \entrada1_ULA[2]~output_o\;

ww_entrada1_ULA(3) <= \entrada1_ULA[3]~output_o\;

ww_entrada1_ULA(4) <= \entrada1_ULA[4]~output_o\;

ww_entrada1_ULA(5) <= \entrada1_ULA[5]~output_o\;

ww_entrada1_ULA(6) <= \entrada1_ULA[6]~output_o\;

ww_entrada1_ULA(7) <= \entrada1_ULA[7]~output_o\;

ww_entrada1_ULA(8) <= \entrada1_ULA[8]~output_o\;

ww_entrada1_ULA(9) <= \entrada1_ULA[9]~output_o\;

ww_entrada1_ULA(10) <= \entrada1_ULA[10]~output_o\;

ww_entrada1_ULA(11) <= \entrada1_ULA[11]~output_o\;

ww_entrada1_ULA(12) <= \entrada1_ULA[12]~output_o\;

ww_entrada1_ULA(13) <= \entrada1_ULA[13]~output_o\;

ww_entrada1_ULA(14) <= \entrada1_ULA[14]~output_o\;

ww_entrada1_ULA(15) <= \entrada1_ULA[15]~output_o\;

ww_entrada1_ULA(16) <= \entrada1_ULA[16]~output_o\;

ww_entrada1_ULA(17) <= \entrada1_ULA[17]~output_o\;

ww_entrada1_ULA(18) <= \entrada1_ULA[18]~output_o\;

ww_entrada1_ULA(19) <= \entrada1_ULA[19]~output_o\;

ww_entrada1_ULA(20) <= \entrada1_ULA[20]~output_o\;

ww_entrada1_ULA(21) <= \entrada1_ULA[21]~output_o\;

ww_entrada1_ULA(22) <= \entrada1_ULA[22]~output_o\;

ww_entrada1_ULA(23) <= \entrada1_ULA[23]~output_o\;

ww_entrada1_ULA(24) <= \entrada1_ULA[24]~output_o\;

ww_entrada1_ULA(25) <= \entrada1_ULA[25]~output_o\;

ww_entrada1_ULA(26) <= \entrada1_ULA[26]~output_o\;

ww_entrada1_ULA(27) <= \entrada1_ULA[27]~output_o\;

ww_entrada1_ULA(28) <= \entrada1_ULA[28]~output_o\;

ww_entrada1_ULA(29) <= \entrada1_ULA[29]~output_o\;

ww_entrada1_ULA(30) <= \entrada1_ULA[30]~output_o\;

ww_entrada1_ULA(31) <= \entrada1_ULA[31]~output_o\;

ww_entrada2_ULA(0) <= \entrada2_ULA[0]~output_o\;

ww_entrada2_ULA(1) <= \entrada2_ULA[1]~output_o\;

ww_entrada2_ULA(2) <= \entrada2_ULA[2]~output_o\;

ww_entrada2_ULA(3) <= \entrada2_ULA[3]~output_o\;

ww_entrada2_ULA(4) <= \entrada2_ULA[4]~output_o\;

ww_entrada2_ULA(5) <= \entrada2_ULA[5]~output_o\;

ww_entrada2_ULA(6) <= \entrada2_ULA[6]~output_o\;

ww_entrada2_ULA(7) <= \entrada2_ULA[7]~output_o\;

ww_entrada2_ULA(8) <= \entrada2_ULA[8]~output_o\;

ww_entrada2_ULA(9) <= \entrada2_ULA[9]~output_o\;

ww_entrada2_ULA(10) <= \entrada2_ULA[10]~output_o\;

ww_entrada2_ULA(11) <= \entrada2_ULA[11]~output_o\;

ww_entrada2_ULA(12) <= \entrada2_ULA[12]~output_o\;

ww_entrada2_ULA(13) <= \entrada2_ULA[13]~output_o\;

ww_entrada2_ULA(14) <= \entrada2_ULA[14]~output_o\;

ww_entrada2_ULA(15) <= \entrada2_ULA[15]~output_o\;

ww_entrada2_ULA(16) <= \entrada2_ULA[16]~output_o\;

ww_entrada2_ULA(17) <= \entrada2_ULA[17]~output_o\;

ww_entrada2_ULA(18) <= \entrada2_ULA[18]~output_o\;

ww_entrada2_ULA(19) <= \entrada2_ULA[19]~output_o\;

ww_entrada2_ULA(20) <= \entrada2_ULA[20]~output_o\;

ww_entrada2_ULA(21) <= \entrada2_ULA[21]~output_o\;

ww_entrada2_ULA(22) <= \entrada2_ULA[22]~output_o\;

ww_entrada2_ULA(23) <= \entrada2_ULA[23]~output_o\;

ww_entrada2_ULA(24) <= \entrada2_ULA[24]~output_o\;

ww_entrada2_ULA(25) <= \entrada2_ULA[25]~output_o\;

ww_entrada2_ULA(26) <= \entrada2_ULA[26]~output_o\;

ww_entrada2_ULA(27) <= \entrada2_ULA[27]~output_o\;

ww_entrada2_ULA(28) <= \entrada2_ULA[28]~output_o\;

ww_entrada2_ULA(29) <= \entrada2_ULA[29]~output_o\;

ww_entrada2_ULA(30) <= \entrada2_ULA[30]~output_o\;

ww_entrada2_ULA(31) <= \entrada2_ULA[31]~output_o\;

ww_dadoescritonoreg(0) <= \dadoescritonoreg[0]~output_o\;

ww_dadoescritonoreg(1) <= \dadoescritonoreg[1]~output_o\;

ww_dadoescritonoreg(2) <= \dadoescritonoreg[2]~output_o\;

ww_dadoescritonoreg(3) <= \dadoescritonoreg[3]~output_o\;

ww_dadoescritonoreg(4) <= \dadoescritonoreg[4]~output_o\;

ww_dadoescritonoreg(5) <= \dadoescritonoreg[5]~output_o\;

ww_dadoescritonoreg(6) <= \dadoescritonoreg[6]~output_o\;

ww_dadoescritonoreg(7) <= \dadoescritonoreg[7]~output_o\;

ww_dadoescritonoreg(8) <= \dadoescritonoreg[8]~output_o\;

ww_dadoescritonoreg(9) <= \dadoescritonoreg[9]~output_o\;

ww_dadoescritonoreg(10) <= \dadoescritonoreg[10]~output_o\;

ww_dadoescritonoreg(11) <= \dadoescritonoreg[11]~output_o\;

ww_dadoescritonoreg(12) <= \dadoescritonoreg[12]~output_o\;

ww_dadoescritonoreg(13) <= \dadoescritonoreg[13]~output_o\;

ww_dadoescritonoreg(14) <= \dadoescritonoreg[14]~output_o\;

ww_dadoescritonoreg(15) <= \dadoescritonoreg[15]~output_o\;

ww_dadoescritonoreg(16) <= \dadoescritonoreg[16]~output_o\;

ww_dadoescritonoreg(17) <= \dadoescritonoreg[17]~output_o\;

ww_dadoescritonoreg(18) <= \dadoescritonoreg[18]~output_o\;

ww_dadoescritonoreg(19) <= \dadoescritonoreg[19]~output_o\;

ww_dadoescritonoreg(20) <= \dadoescritonoreg[20]~output_o\;

ww_dadoescritonoreg(21) <= \dadoescritonoreg[21]~output_o\;

ww_dadoescritonoreg(22) <= \dadoescritonoreg[22]~output_o\;

ww_dadoescritonoreg(23) <= \dadoescritonoreg[23]~output_o\;

ww_dadoescritonoreg(24) <= \dadoescritonoreg[24]~output_o\;

ww_dadoescritonoreg(25) <= \dadoescritonoreg[25]~output_o\;

ww_dadoescritonoreg(26) <= \dadoescritonoreg[26]~output_o\;

ww_dadoescritonoreg(27) <= \dadoescritonoreg[27]~output_o\;

ww_dadoescritonoreg(28) <= \dadoescritonoreg[28]~output_o\;

ww_dadoescritonoreg(29) <= \dadoescritonoreg[29]~output_o\;

ww_dadoescritonoreg(30) <= \dadoescritonoreg[30]~output_o\;

ww_dadoescritonoreg(31) <= \dadoescritonoreg[31]~output_o\;

ww_instrucao(0) <= \instrucao[0]~output_o\;

ww_instrucao(1) <= \instrucao[1]~output_o\;

ww_instrucao(2) <= \instrucao[2]~output_o\;

ww_instrucao(3) <= \instrucao[3]~output_o\;

ww_instrucao(4) <= \instrucao[4]~output_o\;

ww_instrucao(5) <= \instrucao[5]~output_o\;

ww_instrucao(6) <= \instrucao[6]~output_o\;

ww_instrucao(7) <= \instrucao[7]~output_o\;

ww_instrucao(8) <= \instrucao[8]~output_o\;

ww_instrucao(9) <= \instrucao[9]~output_o\;

ww_instrucao(10) <= \instrucao[10]~output_o\;

ww_instrucao(11) <= \instrucao[11]~output_o\;

ww_instrucao(12) <= \instrucao[12]~output_o\;

ww_instrucao(13) <= \instrucao[13]~output_o\;

ww_instrucao(14) <= \instrucao[14]~output_o\;

ww_instrucao(15) <= \instrucao[15]~output_o\;

ww_instrucao(16) <= \instrucao[16]~output_o\;

ww_instrucao(17) <= \instrucao[17]~output_o\;

ww_instrucao(18) <= \instrucao[18]~output_o\;

ww_instrucao(19) <= \instrucao[19]~output_o\;

ww_instrucao(20) <= \instrucao[20]~output_o\;

ww_instrucao(21) <= \instrucao[21]~output_o\;

ww_instrucao(22) <= \instrucao[22]~output_o\;

ww_instrucao(23) <= \instrucao[23]~output_o\;

ww_instrucao(24) <= \instrucao[24]~output_o\;

ww_instrucao(25) <= \instrucao[25]~output_o\;

ww_instrucao(26) <= \instrucao[26]~output_o\;

ww_instrucao(27) <= \instrucao[27]~output_o\;

ww_instrucao(28) <= \instrucao[28]~output_o\;

ww_instrucao(29) <= \instrucao[29]~output_o\;

ww_instrucao(30) <= \instrucao[30]~output_o\;

ww_instrucao(31) <= \instrucao[31]~output_o\;

ww_saida2(0) <= \saida2[0]~output_o\;

ww_saida2(1) <= \saida2[1]~output_o\;

ww_saida2(2) <= \saida2[2]~output_o\;

ww_saida2(3) <= \saida2[3]~output_o\;

ww_seletor <= \seletor~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;
END structure;


