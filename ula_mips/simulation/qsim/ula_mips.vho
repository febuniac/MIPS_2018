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

-- DATE "11/23/2018 20:17:28"

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
	entrada1_ULA : OUT std_logic_vector(31 DOWNTO 0);
	entrada2_ULA : OUT std_logic_vector(31 DOWNTO 0);
	saida : OUT std_logic_vector(31 DOWNTO 0);
	imm : OUT std_logic_vector(2 DOWNTO 0);
	ula_control : OUT std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
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
SIGNAL ww_entrada1_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entrada2_ULA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_imm : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ula_control : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
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
SIGNAL \imm[0]~output_o\ : std_logic;
SIGNAL \imm[1]~output_o\ : std_logic;
SIGNAL \imm[2]~output_o\ : std_logic;
SIGNAL \ula_control[0]~output_o\ : std_logic;
SIGNAL \ula_control[1]~output_o\ : std_logic;
SIGNAL \ula_control[2]~output_o\ : std_logic;
SIGNAL \ula_control[3]~output_o\ : std_logic;
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
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \somador1|Y[2]~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~0_combout\ : std_logic;
SIGNAL \somador1|Y[6]~9\ : std_logic;
SIGNAL \somador1|Y[7]~10_combout\ : std_logic;
SIGNAL \memoriaInst|rom~7_combout\ : std_logic;
SIGNAL \memoriaInst|rom~8_combout\ : std_logic;
SIGNAL \memoriaInst|rom~9_combout\ : std_logic;
SIGNAL \memoriaInst|rom~5_combout\ : std_logic;
SIGNAL \memoriaInst|rom~6_combout\ : std_logic;
SIGNAL \memoriaInst|rom~3_combout\ : std_logic;
SIGNAL \memoriaInst|rom~4_combout\ : std_logic;
SIGNAL \EX_MEM|q[72]~9\ : std_logic;
SIGNAL \EX_MEM|q[73]~11\ : std_logic;
SIGNAL \EX_MEM|q[74]~13\ : std_logic;
SIGNAL \EX_MEM|q[75]~15\ : std_logic;
SIGNAL \EX_MEM|q[76]~17\ : std_logic;
SIGNAL \EX_MEM|q[77]~18_combout\ : std_logic;
SIGNAL \memoriaInst|rom~12_combout\ : std_logic;
SIGNAL \memoriaInst|rom~13_combout\ : std_logic;
SIGNAL \memoriaInst|rom~10_combout\ : std_logic;
SIGNAL \memoriaInst|rom~11_combout\ : std_logic;
SIGNAL \memoriaInst|rom~17_combout\ : std_logic;
SIGNAL \memoriaInst|rom~18_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal7~0_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[8]~16_combout\ : std_logic;
SIGNAL \fd_ctrl|op_code_aux~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~21_combout\ : std_logic;
SIGNAL \memoriaInst|rom~22_combout\ : std_logic;
SIGNAL \memoriaInst|rom~23_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[0]~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~26_combout\ : std_logic;
SIGNAL \memoriaInst|rom~27_combout\ : std_logic;
SIGNAL \memoriaInst|rom~28_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[1]~1_combout\ : std_logic;
SIGNAL \memoriaInst|rom~19_combout\ : std_logic;
SIGNAL \memoriaInst|rom~20_combout\ : std_logic;
SIGNAL \memoriaInst|rom~14_combout\ : std_logic;
SIGNAL \memoriaInst|rom~24_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[2]~2_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[3]~3_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \regs|registrador~41_combout\ : std_logic;
SIGNAL \regs|registrador~42_combout\ : std_logic;
SIGNAL \regs|registrador~43_combout\ : std_logic;
SIGNAL \regs|Equal1~0_combout\ : std_logic;
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
SIGNAL \fd_ctrl|Equal1~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[7]~7_combout\ : std_logic;
SIGNAL \memoriaInst|rom~25_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \regs|registrador~38_combout\ : std_logic;
SIGNAL \regs|registrador~39_combout\ : std_logic;
SIGNAL \regs|registrador~40_combout\ : std_logic;
SIGNAL \regs|Equal0~0_combout\ : std_logic;
SIGNAL \regs|saidaA[7]~7_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[1]~15_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~4_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal5~0_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[2]~14_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~5_combout\ : std_logic;
SIGNAL \ula_ctrl|Equal7~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal9~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal7~1_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[10]~12_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[11]~13_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~6_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~7_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~8_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~9_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~10_combout\ : std_logic;
SIGNAL \ula_ctrl|Equal12~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~1_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~2_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~0_combout\ : std_logic;
SIGNAL \ula_ctrl|Equal12~1_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~3_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~14_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[1]~11_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[7]~7_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[2]~12_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[2]~13_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[2]~15_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[6]~6_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[5]~5_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[4]~4_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[3]~3_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[2]~2_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~43_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[1]~1_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[0]~0_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[0]~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[0]~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[1]~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[1]~1_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[1]~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[1]~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[2]~2_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[3]~3_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[4]~4_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[5]~5_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[6]~6_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~49_combout\ : std_logic;
SIGNAL \mux_ULA|Y[6]~6_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[6]~6_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~48_combout\ : std_logic;
SIGNAL \mux_ULA|Y[5]~5_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[5]~5_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~47_combout\ : std_logic;
SIGNAL \mux_ULA|Y[4]~4_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[4]~4_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~44_combout\ : std_logic;
SIGNAL \mux_ULA|Y[3]~1_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~46_combout\ : std_logic;
SIGNAL \mux_ULA|Y[2]~3_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[2]~2_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~74_combout\ : std_logic;
SIGNAL \mux_ULA|Y[31]~31_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[31]~31_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[31]~31_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~73_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[30]~30_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~72_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[29]~29_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~71_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[28]~28_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~70_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[27]~27_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~69_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[26]~26_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~68_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[25]~25_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~67_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[24]~24_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~66_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[23]~23_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~65_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[22]~22_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~64_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[21]~21_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~63_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[20]~20_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~62_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[19]~19_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~61_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[18]~18_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~60_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[17]~17_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~59_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[16]~16_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~58_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[15]~15_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~57_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[14]~14_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~56_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[13]~13_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~55_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[12]~12_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~54_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[11]~11_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~53_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[10]~10_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~52_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[9]~9_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram~51_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[8]~8_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[7]~7_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[8]~8_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[8]~8_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[8]~8_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[8]~8_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[9]~9_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[9]~9_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[9]~9_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[9]~9_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[10]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[10]~10_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[10]~10_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[10]~10_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[11]~11_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[11]~11_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[11]~11_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[11]~11_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[12]~12_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[12]~12_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[12]~12_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[12]~12_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[13]~13_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[13]~13_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[13]~13_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[13]~13_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[14]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[14]~14_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[14]~14_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[14]~14_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[15]~15_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[15]~15_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[15]~15_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[15]~15_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[16]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[16]~16_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[16]~16_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[16]~16_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[17]~17_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[17]~17_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[17]~17_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[17]~17_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[18]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[18]~18_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[18]~18_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[18]~18_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[19]~19_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[19]~19_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[19]~19_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[19]~19_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[20]~20_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[20]~20_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[20]~20_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[20]~20_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[21]~21_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[21]~21_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[21]~21_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[21]~21_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[22]~22_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[22]~22_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[22]~22_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[22]~22_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[23]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[23]~23_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[23]~23_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[23]~23_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[24]~24_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[24]~24_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[24]~24_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[24]~24_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[25]~25_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[25]~25_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[25]~25_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[25]~25_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[26]~26_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[26]~26_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[26]~26_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[26]~26_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[27]~27_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[27]~27_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[27]~27_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[27]~27_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[28]~28_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[28]~28_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[28]~28_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[28]~28_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[29]~29_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[29]~29_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[29]~29_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[29]~29_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[30]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[30]~30_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[30]~30_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[30]~30_combout\ : std_logic;
SIGNAL \ula|mux4|Mux0~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux0~1_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[0]~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~0_combout\ : std_logic;
SIGNAL \ula|result_slt[0]~0_combout\ : std_logic;
SIGNAL \ula|full_adder|result[0]~0_combout\ : std_logic;
SIGNAL \ula|zero~0_combout\ : std_logic;
SIGNAL \ula|zero~1_combout\ : std_logic;
SIGNAL \ula|zero~2_combout\ : std_logic;
SIGNAL \ula|zero~3_combout\ : std_logic;
SIGNAL \ula|zero~4_combout\ : std_logic;
SIGNAL \ula|zero~5_combout\ : std_logic;
SIGNAL \ula|zero~6_combout\ : std_logic;
SIGNAL \ula|zero~7_combout\ : std_logic;
SIGNAL \ula|zero~8_combout\ : std_logic;
SIGNAL \ula|zero~9_combout\ : std_logic;
SIGNAL \ula|zero~10_combout\ : std_logic;
SIGNAL \ula|zero~11_combout\ : std_logic;
SIGNAL \ula|zero~12_combout\ : std_logic;
SIGNAL \and_beq~combout\ : std_logic;
SIGNAL \PC|q[7]~3_combout\ : std_logic;
SIGNAL \somador1|Y[7]~11\ : std_logic;
SIGNAL \somador1|Y[8]~12_combout\ : std_logic;
SIGNAL \EX_MEM|q[77]~19\ : std_logic;
SIGNAL \EX_MEM|q[78]~20_combout\ : std_logic;
SIGNAL \mux_PC|Y[8]~2_combout\ : std_logic;
SIGNAL \somador1|Y[8]~13\ : std_logic;
SIGNAL \somador1|Y[9]~14_combout\ : std_logic;
SIGNAL \EX_MEM|q[78]~21\ : std_logic;
SIGNAL \EX_MEM|q[79]~22_combout\ : std_logic;
SIGNAL \mux_PC|Y[9]~3_combout\ : std_logic;
SIGNAL \memoriaInst|rom~1_combout\ : std_logic;
SIGNAL \memoriaInst|rom~2_combout\ : std_logic;
SIGNAL \EX_MEM|q[72]~8_combout\ : std_logic;
SIGNAL \PC|q[2]~0_combout\ : std_logic;
SIGNAL \somador1|Y[2]~1\ : std_logic;
SIGNAL \somador1|Y[3]~2_combout\ : std_logic;
SIGNAL \EX_MEM|q[73]~10_combout\ : std_logic;
SIGNAL \PC|q[3]~1_combout\ : std_logic;
SIGNAL \somador1|Y[3]~3\ : std_logic;
SIGNAL \somador1|Y[4]~4_combout\ : std_logic;
SIGNAL \EX_MEM|q[74]~12_combout\ : std_logic;
SIGNAL \PC|q[4]~2_combout\ : std_logic;
SIGNAL \somador1|Y[4]~5\ : std_logic;
SIGNAL \somador1|Y[5]~6_combout\ : std_logic;
SIGNAL \EX_MEM|q[75]~14_combout\ : std_logic;
SIGNAL \mux_PC|Y[5]~0_combout\ : std_logic;
SIGNAL \somador1|Y[5]~7\ : std_logic;
SIGNAL \somador1|Y[6]~8_combout\ : std_logic;
SIGNAL \EX_MEM|q[76]~16_combout\ : std_logic;
SIGNAL \mux_PC|Y[6]~1_combout\ : std_logic;
SIGNAL \memoriaInst|rom~15_combout\ : std_logic;
SIGNAL \memoriaInst|rom~16_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal4~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[13]~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram~45_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[0]~2_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[0]~0_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~1_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~2_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~3_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~4_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~5_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~6_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[1]~7_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[2]~8_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[3]~9_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~10_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[4]~11_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~12_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[4]~13_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[5]~14_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[6]~15_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[6]~16_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display6|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MEM_WB|q\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \EX_MEM|q\ : std_logic_vector(106 DOWNTO 0);
SIGNAL \PC|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ID_EX|q\ : std_logic_vector(149 DOWNTO 0);
SIGNAL \IF_ID|q\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \memoriaDados|ram_rtl_0_bypass\ : std_logic_vector(0 TO 76);
SIGNAL \regs|registrador_rtl_0_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \fd_ctrl|saida_fluxo\ : std_logic_vector(12 DOWNTO 0);

BEGIN

entrada1_ULA <= ww_entrada1_ULA;
entrada2_ULA <= ww_entrada2_ULA;
saida <= ww_saida;
imm <= ww_imm;
ula_control <= ww_ula_control;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
HEX6 <= ww_HEX6;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \EX_MEM|q\(6);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \EX_MEM|q\(8);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \EX_MEM|q\(5);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \EX_MEM|q\(7);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \mux_ULA|Y[0]~2_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \mux_ULA|Y[1]~0_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \mux_ULA|Y[2]~3_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \mux_ULA|Y[3]~1_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \mux_ULA|Y[4]~4_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \mux_ULA|Y[5]~5_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \mux_ULA|Y[6]~6_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \mux_ULA|Y[7]~7_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \mux_ULA|Y[8]~8_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a8~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \mux_ULA|Y[9]~9_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a9~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \mux_ULA|Y[10]~10_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a10~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \mux_ULA|Y[11]~11_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a11~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \mux_ULA|Y[12]~12_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a12~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \mux_ULA|Y[13]~13_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a13~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \mux_ULA|Y[14]~14_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a14~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \mux_ULA|Y[15]~15_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a15~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \mux_ULA|Y[16]~16_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a16~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \mux_ULA|Y[17]~17_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a17~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \mux_ULA|Y[18]~18_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a18~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \mux_ULA|Y[19]~19_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a19~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \mux_ULA|Y[20]~20_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a20~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \mux_ULA|Y[21]~21_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a21~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \mux_ULA|Y[22]~22_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a22~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \mux_ULA|Y[23]~23_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a23~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \mux_ULA|Y[24]~24_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a24~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \mux_ULA|Y[25]~25_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a25~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \mux_ULA|Y[26]~26_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a26~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \mux_ULA|Y[27]~27_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a27~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \mux_ULA|Y[28]~28_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a28~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \mux_ULA|Y[29]~29_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a29~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \mux_ULA|Y[30]~30_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a30~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \mux_ULA|Y[31]~31_combout\;

\regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~23_combout\ & \memoriaInst|rom~20_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a31~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \mux_ULA|Y[0]~2_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \mux_ULA|Y[1]~0_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a1~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \mux_ULA|Y[2]~3_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a2~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \mux_ULA|Y[3]~1_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a3~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \mux_ULA|Y[4]~4_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a4~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \mux_ULA|Y[5]~5_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a5~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \mux_ULA|Y[6]~6_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a6~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \mux_ULA|Y[7]~7_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a7~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \mux_ULA|Y[8]~8_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a8~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a8_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \mux_ULA|Y[9]~9_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a9~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a9_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \mux_ULA|Y[10]~10_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a10~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a10_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \mux_ULA|Y[11]~11_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a11~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a11_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \mux_ULA|Y[12]~12_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a12~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \mux_ULA|Y[13]~13_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a13~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a13_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \mux_ULA|Y[14]~14_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a14~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a14_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \mux_ULA|Y[15]~15_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a15~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a15_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \mux_ULA|Y[16]~16_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a16~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a16_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \mux_ULA|Y[17]~17_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a17~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a17_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \mux_ULA|Y[18]~18_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a18~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a18_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \mux_ULA|Y[19]~19_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a19~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a19_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \mux_ULA|Y[20]~20_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a20~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a20_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \mux_ULA|Y[21]~21_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a21~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a21_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \mux_ULA|Y[22]~22_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a22~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \mux_ULA|Y[23]~23_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a23~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a23_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \mux_ULA|Y[24]~24_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a24~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a24_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \mux_ULA|Y[25]~25_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a25~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a25_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \mux_ULA|Y[26]~26_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a26~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a26_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \mux_ULA|Y[27]~27_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a27~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a27_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \mux_ULA|Y[28]~28_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a28~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a28_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \mux_ULA|Y[29]~29_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a29~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a29_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \mux_ULA|Y[30]~30_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a30~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a30_PORTBDATAOUT_bus\(0);

\regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \mux_ULA|Y[31]~31_combout\;

\regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBADDR_bus\ <= (\memoriaInst|rom~28_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~28_combout\ & \memoriaInst|rom~23_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a31~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a31_PORTBDATAOUT_bus\(0);

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
	i => \mux_Rt_im|Y[1]~1_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[1]~output_o\);

\entrada2_ULA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[2]~2_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[2]~output_o\);

\entrada2_ULA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[3]~3_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[3]~output_o\);

\entrada2_ULA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[4]~4_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[4]~output_o\);

\entrada2_ULA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[5]~5_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[5]~output_o\);

\entrada2_ULA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[6]~6_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[6]~output_o\);

\entrada2_ULA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[7]~7_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[7]~output_o\);

\entrada2_ULA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[8]~8_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[8]~output_o\);

\entrada2_ULA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[9]~9_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[9]~output_o\);

\entrada2_ULA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[10]~10_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[10]~output_o\);

\entrada2_ULA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[11]~11_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[11]~output_o\);

\entrada2_ULA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[12]~12_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[12]~output_o\);

\entrada2_ULA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[13]~13_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[13]~output_o\);

\entrada2_ULA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[14]~14_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[14]~output_o\);

\entrada2_ULA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[15]~15_combout\,
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
	i => \mux_Rt_im|Y[17]~17_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[17]~output_o\);

\entrada2_ULA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[18]~18_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[18]~output_o\);

\entrada2_ULA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[19]~19_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[19]~output_o\);

\entrada2_ULA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[20]~20_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[20]~output_o\);

\entrada2_ULA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[21]~21_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[21]~output_o\);

\entrada2_ULA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[22]~22_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[22]~output_o\);

\entrada2_ULA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[23]~23_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[23]~output_o\);

\entrada2_ULA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[24]~24_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[24]~output_o\);

\entrada2_ULA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[25]~25_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[25]~output_o\);

\entrada2_ULA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[26]~26_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[26]~output_o\);

\entrada2_ULA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[27]~27_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[27]~output_o\);

\entrada2_ULA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[28]~28_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[28]~output_o\);

\entrada2_ULA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[29]~29_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[29]~output_o\);

\entrada2_ULA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[30]~30_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[30]~output_o\);

\entrada2_ULA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_Rt_im|Y[31]~31_combout\,
	devoe => ww_devoe,
	o => \entrada2_ULA[31]~output_o\);

\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux31~1_combout\,
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
	i => \ula|mux4|Mux2~1_combout\,
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

\imm[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(147),
	devoe => ww_devoe,
	o => \imm[0]~output_o\);

\imm[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(148),
	devoe => ww_devoe,
	o => \imm[1]~output_o\);

\imm[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ID_EX|q\(149),
	devoe => ww_devoe,
	o => \imm[2]~output_o\);

\ula_control[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_ctrl|ula_ctrl[0]~14_combout\,
	devoe => ww_devoe,
	o => \ula_control[0]~output_o\);

\ula_control[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_ctrl|ula_ctrl[1]~11_combout\,
	devoe => ww_devoe,
	o => \ula_control[1]~output_o\);

\ula_control[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_ctrl|ula_ctrl[2]~15_combout\,
	devoe => ww_devoe,
	o => \ula_control[2]~output_o\);

\ula_control[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_control[3]~output_o\);

\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(2),
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
	i => \IF_ID|q\(5),
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
	i => \IF_ID|q\(26),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(27),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(0),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q\(29),
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
	i => \IF_ID|q\(31),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[1]~7_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[2]~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[3]~9_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[4]~13_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[5]~14_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[6]~16_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display6|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

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

\memoriaInst|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~0_combout\ = (\PC|q\(3) & ((\PC|q\(2) & (!\PC|q\(4) & \PC|q\(5))) # (!\PC|q\(2) & (\PC|q\(4) & !\PC|q\(5)))))

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
	combout => \memoriaInst|rom~0_combout\);

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

\memoriaInst|rom~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~7_combout\ = (\PC|q\(2) & (\PC|q\(5) $ (((!\PC|q\(3) & !\PC|q\(4)))))) # (!\PC|q\(2) & (\PC|q\(4) & ((\PC|q\(3)) # (\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~7_combout\);

\memoriaInst|rom~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~8_combout\ = (\PC|q\(3) & (!\PC|q\(5) & (\PC|q\(2) $ (!\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
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
-- \memoriaInst|rom~9_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(6) & (!\memoriaInst|rom~7_combout\)) # (!\PC|q\(6) & ((!\memoriaInst|rom~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~7_combout\,
	datab => \memoriaInst|rom~8_combout\,
	datac => \PC|q\(6),
	datad => \memoriaInst|rom~1_combout\,
	combout => \memoriaInst|rom~9_combout\);

\IF_ID|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~9_combout\,
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

\memoriaInst|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~5_combout\ = (\PC|q\(2) & (\PC|q\(6) & !\PC|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(6),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~5_combout\);

\memoriaInst|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~6_combout\ = (\memoriaInst|rom~1_combout\ & (\memoriaInst|rom~5_combout\ & (!\PC|q\(3) & !\PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~1_combout\,
	datab => \memoriaInst|rom~5_combout\,
	datac => \PC|q\(3),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~6_combout\);

\IF_ID|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~6_combout\,
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

\memoriaInst|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~3_combout\ = (\PC|q\(2) & ((\PC|q\(3) & (\PC|q\(4) & !\PC|q\(6))) # (!\PC|q\(3) & (!\PC|q\(4) & \PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~3_combout\);

\memoriaInst|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~4_combout\ = (\memoriaInst|rom~1_combout\ & (\memoriaInst|rom~3_combout\ & !\PC|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~1_combout\,
	datab => \memoriaInst|rom~3_combout\,
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~4_combout\);

\IF_ID|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~4_combout\,
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

\EX_MEM|q[72]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[72]~8_combout\ = (\ID_EX|q\(10) & (\ID_EX|q\(108) $ (VCC))) # (!\ID_EX|q\(10) & (\ID_EX|q\(108) & VCC))
-- \EX_MEM|q[72]~9\ = CARRY((\ID_EX|q\(10) & \ID_EX|q\(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(10),
	datab => \ID_EX|q\(108),
	datad => VCC,
	combout => \EX_MEM|q[72]~8_combout\,
	cout => \EX_MEM|q[72]~9\);

\EX_MEM|q[73]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[73]~10_combout\ = (\ID_EX|q\(11) & ((\ID_EX|q\(109) & (\EX_MEM|q[72]~9\ & VCC)) # (!\ID_EX|q\(109) & (!\EX_MEM|q[72]~9\)))) # (!\ID_EX|q\(11) & ((\ID_EX|q\(109) & (!\EX_MEM|q[72]~9\)) # (!\ID_EX|q\(109) & ((\EX_MEM|q[72]~9\) # (GND)))))
-- \EX_MEM|q[73]~11\ = CARRY((\ID_EX|q\(11) & (!\ID_EX|q\(109) & !\EX_MEM|q[72]~9\)) # (!\ID_EX|q\(11) & ((!\EX_MEM|q[72]~9\) # (!\ID_EX|q\(109)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(109),
	datad => VCC,
	cin => \EX_MEM|q[72]~9\,
	combout => \EX_MEM|q[73]~10_combout\,
	cout => \EX_MEM|q[73]~11\);

\EX_MEM|q[74]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[74]~12_combout\ = ((\ID_EX|q\(12) $ (\ID_EX|q\(110) $ (!\EX_MEM|q[73]~11\)))) # (GND)
-- \EX_MEM|q[74]~13\ = CARRY((\ID_EX|q\(12) & ((\ID_EX|q\(110)) # (!\EX_MEM|q[73]~11\))) # (!\ID_EX|q\(12) & (\ID_EX|q\(110) & !\EX_MEM|q[73]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(12),
	datab => \ID_EX|q\(110),
	datad => VCC,
	cin => \EX_MEM|q[73]~11\,
	combout => \EX_MEM|q[74]~12_combout\,
	cout => \EX_MEM|q[74]~13\);

\EX_MEM|q[75]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[75]~14_combout\ = (\ID_EX|q\(111) & (!\EX_MEM|q[74]~13\)) # (!\ID_EX|q\(111) & ((\EX_MEM|q[74]~13\) # (GND)))
-- \EX_MEM|q[75]~15\ = CARRY((!\EX_MEM|q[74]~13\) # (!\ID_EX|q\(111)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(111),
	datad => VCC,
	cin => \EX_MEM|q[74]~13\,
	combout => \EX_MEM|q[75]~14_combout\,
	cout => \EX_MEM|q[75]~15\);

\EX_MEM|q[76]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[76]~16_combout\ = (\ID_EX|q\(112) & (\EX_MEM|q[75]~15\ $ (GND))) # (!\ID_EX|q\(112) & (!\EX_MEM|q[75]~15\ & VCC))
-- \EX_MEM|q[76]~17\ = CARRY((\ID_EX|q\(112) & !\EX_MEM|q[75]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(112),
	datad => VCC,
	cin => \EX_MEM|q[75]~15\,
	combout => \EX_MEM|q[76]~16_combout\,
	cout => \EX_MEM|q[76]~17\);

\EX_MEM|q[77]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[77]~18_combout\ = (\ID_EX|q\(15) & ((\ID_EX|q\(113) & (\EX_MEM|q[76]~17\ & VCC)) # (!\ID_EX|q\(113) & (!\EX_MEM|q[76]~17\)))) # (!\ID_EX|q\(15) & ((\ID_EX|q\(113) & (!\EX_MEM|q[76]~17\)) # (!\ID_EX|q\(113) & ((\EX_MEM|q[76]~17\) # (GND)))))
-- \EX_MEM|q[77]~19\ = CARRY((\ID_EX|q\(15) & (!\ID_EX|q\(113) & !\EX_MEM|q[76]~17\)) # (!\ID_EX|q\(15) & ((!\EX_MEM|q[76]~17\) # (!\ID_EX|q\(113)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(113),
	datad => VCC,
	cin => \EX_MEM|q[76]~17\,
	combout => \EX_MEM|q[77]~18_combout\,
	cout => \EX_MEM|q[77]~19\);

\EX_MEM|q[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(77));

\memoriaInst|rom~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~12_combout\ = (!\PC|q\(4) & ((\PC|q\(2) & (!\PC|q\(3) & \PC|q\(6))) # (!\PC|q\(2) & (\PC|q\(3) & !\PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~12_combout\);

\memoriaInst|rom~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~13_combout\ = (\memoriaInst|rom~1_combout\ & (\memoriaInst|rom~12_combout\ & !\PC|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~1_combout\,
	datab => \memoriaInst|rom~12_combout\,
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~13_combout\);

\IF_ID|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(27));

\memoriaInst|rom~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~10_combout\ = (\PC|q\(3) & ((\PC|q\(2) & (\PC|q\(6) & \PC|q\(5))) # (!\PC|q\(2) & (!\PC|q\(6) & !\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(6),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~10_combout\);

\memoriaInst|rom~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~11_combout\ = (\memoriaInst|rom~1_combout\ & (\memoriaInst|rom~10_combout\ & !\PC|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~1_combout\,
	datab => \memoriaInst|rom~10_combout\,
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~11_combout\);

\IF_ID|q[26]\ : dffeas
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
	q => \IF_ID|q\(26));

\memoriaInst|rom~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~17_combout\ = (\PC|q\(4) & ((\PC|q\(2) & (\PC|q\(3) & !\PC|q\(5))) # (!\PC|q\(2) & (!\PC|q\(3) & \PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~17_combout\);

\memoriaInst|rom~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~18_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(6) & (!\memoriaInst|rom~7_combout\)) # (!\PC|q\(6) & ((!\memoriaInst|rom~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~7_combout\,
	datab => \memoriaInst|rom~17_combout\,
	datac => \PC|q\(6),
	datad => \memoriaInst|rom~1_combout\,
	combout => \memoriaInst|rom~18_combout\);

\IF_ID|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(31));

\fd_ctrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal0~0_combout\ = (!\IF_ID|q\(0) & (!\IF_ID|q\(26) & (!\IF_ID|q\(29) & !\IF_ID|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(0),
	datab => \IF_ID|q\(26),
	datac => \IF_ID|q\(29),
	datad => \IF_ID|q\(31),
	combout => \fd_ctrl|Equal0~0_combout\);

\fd_ctrl|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal0~1_combout\ = (\IF_ID|q\(27) & \fd_ctrl|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \fd_ctrl|Equal0~0_combout\,
	combout => \fd_ctrl|Equal0~1_combout\);

\ID_EX|q[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|Equal0~1_combout\,
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

\fd_ctrl|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal1~0_combout\ = (\IF_ID|q\(26) & (\IF_ID|q\(27) & (\IF_ID|q\(31) & !\IF_ID|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(26),
	datab => \IF_ID|q\(27),
	datac => \IF_ID|q\(31),
	datad => \IF_ID|q\(0),
	combout => \fd_ctrl|Equal1~0_combout\);

\fd_ctrl|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal7~0_combout\ = (\IF_ID|q\(29) & (!\IF_ID|q\(0) & (!\IF_ID|q\(26) & !\IF_ID|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(29),
	datab => \IF_ID|q\(0),
	datac => \IF_ID|q\(26),
	datad => \IF_ID|q\(31),
	combout => \fd_ctrl|Equal7~0_combout\);

\fd_ctrl|saida_fluxo[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[8]~16_combout\ = (\IF_ID|q\(27) & (!\fd_ctrl|Equal7~0_combout\)) # (!\IF_ID|q\(27) & (((\IF_ID|q\(31)) # (!\IF_ID|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \fd_ctrl|Equal7~0_combout\,
	datac => \IF_ID|q\(29),
	datad => \IF_ID|q\(31),
	combout => \fd_ctrl|saida_fluxo[8]~16_combout\);

\fd_ctrl|op_code_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|op_code_aux~0_combout\ = (!\IF_ID|q\(27) & \fd_ctrl|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datad => \fd_ctrl|Equal0~0_combout\,
	combout => \fd_ctrl|op_code_aux~0_combout\);

\fd_ctrl|saida_fluxo[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo\(8) = ((\fd_ctrl|op_code_aux~0_combout\) # ((\fd_ctrl|Equal1~0_combout\ & !\IF_ID|q\(29)))) # (!\fd_ctrl|saida_fluxo[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_ctrl|Equal1~0_combout\,
	datab => \IF_ID|q\(29),
	datac => \fd_ctrl|saida_fluxo[8]~16_combout\,
	datad => \fd_ctrl|op_code_aux~0_combout\,
	combout => \fd_ctrl|saida_fluxo\(8));

\ID_EX|q[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|saida_fluxo\(8),
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

\memoriaInst|rom~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~21_combout\ = (\PC|q\(3) & (\PC|q\(5) & \memoriaInst|rom~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datab => \PC|q\(5),
	datac => \memoriaInst|rom~5_combout\,
	combout => \memoriaInst|rom~21_combout\);

\memoriaInst|rom~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~22_combout\ = (\PC|q\(3) & (!\PC|q\(5) & (\PC|q\(2) $ (\PC|q\(6))))) # (!\PC|q\(3) & (!\PC|q\(2) & (!\PC|q\(6) & \PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(6),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~22_combout\);

\memoriaInst|rom~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~23_combout\ = (\memoriaInst|rom~1_combout\ & ((\memoriaInst|rom~21_combout\) # ((\PC|q\(4) & \memoriaInst|rom~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~1_combout\,
	datab => \memoriaInst|rom~21_combout\,
	datac => \PC|q\(4),
	datad => \memoriaInst|rom~22_combout\,
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

\ID_EX|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \IF_ID|q\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(5));

\ID_EX|q[141]\ : dffeas
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
	q => \ID_EX|q\(141));

\mux_RtRd|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[0]~0_combout\ = (\ID_EX|q\(5) & !\ID_EX|q\(141))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(5),
	datad => \ID_EX|q\(141),
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

\memoriaInst|rom~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~26_combout\ = (\PC|q\(2) & (\PC|q\(3) & (!\PC|q\(4) & \PC|q\(6)))) # (!\PC|q\(2) & (!\PC|q\(3) & (\PC|q\(4) & !\PC|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~26_combout\);

\memoriaInst|rom~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~27_combout\ = (\PC|q\(2) & ((\PC|q\(3) & (\PC|q\(4) & !\PC|q\(6))) # (!\PC|q\(3) & (!\PC|q\(4) & \PC|q\(6))))) # (!\PC|q\(2) & (\PC|q\(3) & (\PC|q\(4) $ (!\PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~27_combout\);

\memoriaInst|rom~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~28_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(5) & (\memoriaInst|rom~26_combout\)) # (!\PC|q\(5) & ((\memoriaInst|rom~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~1_combout\,
	datab => \memoriaInst|rom~26_combout\,
	datac => \memoriaInst|rom~27_combout\,
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~28_combout\);

\IF_ID|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(19));

\ID_EX|q[6]\ : dffeas
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
	q => \ID_EX|q\(6));

\mux_RtRd|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[1]~1_combout\ = (\ID_EX|q\(6) & !\ID_EX|q\(141))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(6),
	datad => \ID_EX|q\(141),
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

\memoriaInst|rom~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~19_combout\ = (\PC|q\(4) & (!\PC|q\(2) & (!\PC|q\(3) & !\PC|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(2),
	datac => \PC|q\(3),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~19_combout\);

\memoriaInst|rom~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~20_combout\ = (\PC|q\(5) & (\memoriaInst|rom~1_combout\ & \memoriaInst|rom~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \memoriaInst|rom~1_combout\,
	datac => \memoriaInst|rom~19_combout\,
	combout => \memoriaInst|rom~20_combout\);

\IF_ID|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(21));

\ID_EX|q[23]\ : dffeas
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
	q => \ID_EX|q\(23));

\memoriaInst|rom~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~14_combout\ = (\PC|q\(2) & (!\PC|q\(4) & (\PC|q\(3) $ (!\PC|q\(5))))) # (!\PC|q\(2) & (\PC|q\(3) & (\PC|q\(4) & !\PC|q\(5))))

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
	combout => \memoriaInst|rom~14_combout\);

\memoriaInst|rom~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~24_combout\ = (\PC|q\(6) & (\memoriaInst|rom~1_combout\ & \memoriaInst|rom~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~1_combout\,
	datac => \memoriaInst|rom~14_combout\,
	combout => \memoriaInst|rom~24_combout\);

\IF_ID|q[23]\ : dffeas
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
	q => \IF_ID|q\(23));

\ID_EX|q[7]\ : dffeas
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
	q => \ID_EX|q\(7));

\mux_RtRd|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[2]~2_combout\ = (\ID_EX|q\(141) & (\ID_EX|q\(23))) # (!\ID_EX|q\(141) & ((\ID_EX|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(23),
	datab => \ID_EX|q\(7),
	datad => \ID_EX|q\(141),
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

\mux_RtRd|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[3]~3_combout\ = (\ID_EX|q\(141) & (\ID_EX|q\(23))) # (!\ID_EX|q\(141) & ((\ID_EX|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(23),
	datab => \ID_EX|q\(6),
	datad => \ID_EX|q\(141),
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
	d => \memoriaInst|rom~28_combout\,
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
	d => \memoriaInst|rom~23_combout\,
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
	d => \memoriaInst|rom~28_combout\,
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
	d => \memoriaInst|rom~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(6));

\regs|registrador~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~42_combout\ = (\regs|registrador_rtl_1_bypass\(5) & (\regs|registrador_rtl_1_bypass\(6) & (\regs|registrador_rtl_1_bypass\(7) $ (!\regs|registrador_rtl_1_bypass\(8))))) # (!\regs|registrador_rtl_1_bypass\(5) & 
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
-- \regs|Equal1~0_combout\ = (!\IF_ID|q\(23) & (!\IF_ID|q\(22) & !\IF_ID|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|q\(23),
	datac => \IF_ID|q\(22),
	datad => \IF_ID|q\(19),
	combout => \regs|Equal1~0_combout\);

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

\ID_EX|q[73]\ : dffeas
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
	q => \ID_EX|q\(73));

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
	d => \mux_ULA|Y[2]~3_combout\,
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

\ID_EX|q[44]\ : dffeas
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
	q => \ID_EX|q\(44));

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
	d => \mux_ULA|Y[3]~1_combout\,
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

\ID_EX|q[45]\ : dffeas
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
	q => \ID_EX|q\(45));

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

\ID_EX|q[46]\ : dffeas
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
	q => \ID_EX|q\(46));

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

\ID_EX|q[47]\ : dffeas
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
	q => \ID_EX|q\(47));

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
	d => \mux_ULA|Y[6]~6_combout\,
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

\ID_EX|q[48]\ : dffeas
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
	q => \ID_EX|q\(48));

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

\ID_EX|q[49]\ : dffeas
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

\fd_ctrl|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal1~1_combout\ = (\fd_ctrl|Equal1~0_combout\ & !\IF_ID|q\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_ctrl|Equal1~0_combout\,
	datad => \IF_ID|q\(29),
	combout => \fd_ctrl|Equal1~1_combout\);

\ID_EX|q[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|Equal1~1_combout\,
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

\mux_ULA|Y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[7]~7_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(44))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(44),
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

\memoriaInst|rom~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~25_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(6) & (\memoriaInst|rom~14_combout\)) # (!\PC|q\(6) & ((\memoriaInst|rom~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~1_combout\,
	datab => \memoriaInst|rom~14_combout\,
	datac => \memoriaInst|rom~17_combout\,
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~25_combout\);

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
	d => \memoriaInst|rom~20_combout\,
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
	d => \memoriaInst|rom~25_combout\,
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
	d => \memoriaInst|rom~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(6));

\regs|registrador~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~39_combout\ = (\regs|registrador_rtl_0_bypass\(5) & (\regs|registrador_rtl_0_bypass\(6) & (\regs|registrador_rtl_0_bypass\(7) $ (!\regs|registrador_rtl_0_bypass\(8))))) # (!\regs|registrador_rtl_0_bypass\(5) & 
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
	combout => \regs|registrador~39_combout\);

\regs|registrador~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~40_combout\ = (\regs|registrador~38_combout\ & (\regs|registrador_rtl_0_bypass\(0) & \regs|registrador~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~38_combout\,
	datab => \regs|registrador_rtl_0_bypass\(0),
	datac => \regs|registrador~39_combout\,
	combout => \regs|registrador~40_combout\);

\IF_ID|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(24));

\regs|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|Equal0~0_combout\ = (!\IF_ID|q\(23) & (!\IF_ID|q\(22) & (!\IF_ID|q\(24) & !\IF_ID|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(23),
	datab => \IF_ID|q\(22),
	datac => \IF_ID|q\(24),
	datad => \IF_ID|q\(21),
	combout => \regs|Equal0~0_combout\);

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

\fd_ctrl|saida_fluxo[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[1]~15_combout\ = (!\IF_ID|q\(31) & ((\IF_ID|q\(27)) # (!\fd_ctrl|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datac => \fd_ctrl|Equal0~0_combout\,
	datad => \IF_ID|q\(31),
	combout => \fd_ctrl|saida_fluxo[1]~15_combout\);

\ID_EX|q[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|saida_fluxo[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(139));

\ula_ctrl|ula_ctrl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~4_combout\ = (\ID_EX|q\(15) & (!\ID_EX|q\(10) & (!\ID_EX|q\(12) & !\ID_EX|q\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(10),
	datac => \ID_EX|q\(12),
	datad => \ID_EX|q\(139),
	combout => \ula_ctrl|ula_ctrl~4_combout\);

\fd_ctrl|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal5~0_combout\ = (\IF_ID|q\(0) & (!\IF_ID|q\(26) & (!\IF_ID|q\(27) & !\IF_ID|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(0),
	datab => \IF_ID|q\(26),
	datac => \IF_ID|q\(27),
	datad => \IF_ID|q\(29),
	combout => \fd_ctrl|Equal5~0_combout\);

\fd_ctrl|saida_fluxo[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[2]~14_combout\ = (!\IF_ID|q\(31) & !\fd_ctrl|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(31),
	datab => \fd_ctrl|Equal5~0_combout\,
	combout => \fd_ctrl|saida_fluxo[2]~14_combout\);

\ID_EX|q[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|saida_fluxo[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(140));

\ula_ctrl|ula_ctrl~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~5_combout\ = (\ID_EX|q\(11) & \ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(140),
	combout => \ula_ctrl|ula_ctrl~5_combout\);

\ula_ctrl|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|Equal7~0_combout\ = (\ID_EX|q\(139) & !\ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datad => \ID_EX|q\(140),
	combout => \ula_ctrl|Equal7~0_combout\);

\fd_ctrl|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal9~0_combout\ = ((\IF_ID|q\(27)) # (\IF_ID|q\(31))) # (!\IF_ID|q\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(29),
	datac => \IF_ID|q\(27),
	datad => \IF_ID|q\(31),
	combout => \fd_ctrl|Equal9~0_combout\);

\fd_ctrl|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal7~1_combout\ = (\IF_ID|q\(27) & \fd_ctrl|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \fd_ctrl|Equal7~0_combout\,
	combout => \fd_ctrl|Equal7~1_combout\);

\fd_ctrl|saida_fluxo[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[10]~12_combout\ = (\fd_ctrl|Equal9~0_combout\ & (((!\fd_ctrl|Equal7~1_combout\)))) # (!\fd_ctrl|Equal9~0_combout\ & (\IF_ID|q\(26) & ((!\fd_ctrl|Equal7~1_combout\) # (!\IF_ID|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(26),
	datab => \fd_ctrl|Equal9~0_combout\,
	datac => \IF_ID|q\(0),
	datad => \fd_ctrl|Equal7~1_combout\,
	combout => \fd_ctrl|saida_fluxo[10]~12_combout\);

\ID_EX|q[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|saida_fluxo[10]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(147));

\ID_EX|q[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(149));

\fd_ctrl|saida_fluxo[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[11]~13_combout\ = (\fd_ctrl|Equal9~0_combout\ & (((!\fd_ctrl|Equal7~1_combout\)))) # (!\fd_ctrl|Equal9~0_combout\ & (\IF_ID|q\(0) & ((!\fd_ctrl|Equal7~1_combout\) # (!\IF_ID|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(0),
	datab => \fd_ctrl|Equal9~0_combout\,
	datac => \IF_ID|q\(26),
	datad => \fd_ctrl|Equal7~1_combout\,
	combout => \fd_ctrl|saida_fluxo[11]~13_combout\);

\ID_EX|q[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|saida_fluxo[11]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(148));

\ula_ctrl|ula_ctrl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~6_combout\ = (\ula_ctrl|Equal7~0_combout\) # ((\ID_EX|q\(147) & (!\ID_EX|q\(149) & !\ID_EX|q\(148))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|Equal7~0_combout\,
	datab => \ID_EX|q\(147),
	datac => \ID_EX|q\(149),
	datad => \ID_EX|q\(148),
	combout => \ula_ctrl|ula_ctrl~6_combout\);

\ula_ctrl|ula_ctrl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~7_combout\ = (!\ID_EX|q\(11) & (\ID_EX|q\(15) & (!\ID_EX|q\(10) & !\ID_EX|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(15),
	datac => \ID_EX|q\(10),
	datad => \ID_EX|q\(12),
	combout => \ula_ctrl|ula_ctrl~7_combout\);

\ula_ctrl|ula_ctrl~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~8_combout\ = (!\ID_EX|q\(147) & (!\ID_EX|q\(149) & !\ID_EX|q\(148)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(147),
	datab => \ID_EX|q\(149),
	datac => \ID_EX|q\(148),
	combout => \ula_ctrl|ula_ctrl~8_combout\);

\ula_ctrl|ula_ctrl~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~9_combout\ = (\ula_ctrl|ula_ctrl~8_combout\) # ((!\ID_EX|q\(139) & ((\ula_ctrl|ula_ctrl~7_combout\) # (!\ID_EX|q\(140)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(140),
	datac => \ula_ctrl|ula_ctrl~7_combout\,
	datad => \ula_ctrl|ula_ctrl~8_combout\,
	combout => \ula_ctrl|ula_ctrl~9_combout\);

\ula_ctrl|ula_ctrl[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~10_combout\ = (!\ula_ctrl|ula_ctrl~6_combout\ & (!\ula_ctrl|ula_ctrl~9_combout\ & ((!\ula_ctrl|ula_ctrl~5_combout\) # (!\ula_ctrl|ula_ctrl~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl~4_combout\,
	datab => \ula_ctrl|ula_ctrl~5_combout\,
	datac => \ula_ctrl|ula_ctrl~6_combout\,
	datad => \ula_ctrl|ula_ctrl~9_combout\,
	combout => \ula_ctrl|ula_ctrl[0]~10_combout\);

\ula_ctrl|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|Equal12~0_combout\ = (\ID_EX|q\(147) & (\ID_EX|q\(148) & !\ID_EX|q\(149)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(147),
	datab => \ID_EX|q\(148),
	datad => \ID_EX|q\(149),
	combout => \ula_ctrl|Equal12~0_combout\);

\ula_ctrl|ula_ctrl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~1_combout\ = (\ID_EX|q\(12) & (\ID_EX|q\(15) & (\ID_EX|q\(140) & !\ID_EX|q\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(12),
	datab => \ID_EX|q\(15),
	datac => \ID_EX|q\(140),
	datad => \ID_EX|q\(139),
	combout => \ula_ctrl|ula_ctrl~1_combout\);

\ula_ctrl|ula_ctrl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~2_combout\ = (\ula_ctrl|Equal12~0_combout\) # ((\ID_EX|q\(10) & (\ula_ctrl|ula_ctrl~1_combout\ & !\ID_EX|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|Equal12~0_combout\,
	datab => \ID_EX|q\(10),
	datac => \ula_ctrl|ula_ctrl~1_combout\,
	datad => \ID_EX|q\(11),
	combout => \ula_ctrl|ula_ctrl~2_combout\);

\ula_ctrl|ula_ctrl[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~0_combout\ = (\ID_EX|q\(149) & (!\ID_EX|q\(147) & !\ID_EX|q\(148)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(149),
	datac => \ID_EX|q\(147),
	datad => \ID_EX|q\(148),
	combout => \ula_ctrl|ula_ctrl[0]~0_combout\);

\ula_ctrl|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|Equal12~1_combout\ = (\ID_EX|q\(148) & (!\ID_EX|q\(147) & !\ID_EX|q\(149)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(148),
	datac => \ID_EX|q\(147),
	datad => \ID_EX|q\(149),
	combout => \ula_ctrl|Equal12~1_combout\);

\ula_ctrl|ula_ctrl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~3_combout\ = (\ula_ctrl|Equal12~1_combout\) # ((\ula_ctrl|ula_ctrl~1_combout\ & (!\ID_EX|q\(10) & !\ID_EX|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|Equal12~1_combout\,
	datab => \ula_ctrl|ula_ctrl~1_combout\,
	datac => \ID_EX|q\(10),
	datad => \ID_EX|q\(11),
	combout => \ula_ctrl|ula_ctrl~3_combout\);

\ula_ctrl|ula_ctrl[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~14_combout\ = (\ula_ctrl|ula_ctrl[0]~10_combout\ & (!\ula_ctrl|ula_ctrl~3_combout\ & ((\ula_ctrl|ula_ctrl~2_combout\) # (\ula_ctrl|ula_ctrl[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ula_ctrl|ula_ctrl~2_combout\,
	datac => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datad => \ula_ctrl|ula_ctrl~3_combout\,
	combout => \ula_ctrl|ula_ctrl[0]~14_combout\);

\ula_ctrl|ula_ctrl[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[1]~11_combout\ = ((\ula_ctrl|ula_ctrl[0]~0_combout\ & (!\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~3_combout\))) # (!\ula_ctrl|ula_ctrl[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \ula_ctrl|ula_ctrl~2_combout\,
	datac => \ula_ctrl|ula_ctrl~3_combout\,
	datad => \ula_ctrl|ula_ctrl[0]~10_combout\,
	combout => \ula_ctrl|ula_ctrl[1]~11_combout\);

\fd_ctrl|saida_fluxo[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo\(0) = (\IF_ID|q\(31)) # ((\IF_ID|q\(27) & (\fd_ctrl|Equal7~0_combout\)) # (!\IF_ID|q\(27) & ((\IF_ID|q\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \fd_ctrl|Equal7~0_combout\,
	datac => \IF_ID|q\(29),
	datad => \IF_ID|q\(31),
	combout => \fd_ctrl|saida_fluxo\(0));

\ID_EX|q[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \fd_ctrl|saida_fluxo\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(138));

\mux_Rt_im|Y[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[7]~7_combout\ = (\ID_EX|q\(49) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(49),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[7]~7_combout\);

\ula_ctrl|ula_ctrl[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[2]~12_combout\ = (!\ula_ctrl|ula_ctrl~9_combout\ & ((\ula_ctrl|ula_ctrl~6_combout\) # ((\ula_ctrl|ula_ctrl~4_combout\ & \ula_ctrl|ula_ctrl~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl~6_combout\,
	datab => \ula_ctrl|ula_ctrl~4_combout\,
	datac => \ula_ctrl|ula_ctrl~5_combout\,
	datad => \ula_ctrl|ula_ctrl~9_combout\,
	combout => \ula_ctrl|ula_ctrl[2]~12_combout\);

\ula_ctrl|ula_ctrl[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[2]~13_combout\ = (\ula_ctrl|ula_ctrl[0]~0_combout\ & (!\ula_ctrl|ula_ctrl~9_combout\ & (!\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~0_combout\,
	datab => \ula_ctrl|ula_ctrl~9_combout\,
	datac => \ula_ctrl|ula_ctrl~2_combout\,
	datad => \ula_ctrl|ula_ctrl~3_combout\,
	combout => \ula_ctrl|ula_ctrl[2]~13_combout\);

\ula_ctrl|ula_ctrl[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[2]~15_combout\ = (\ula_ctrl|ula_ctrl[2]~12_combout\) # (\ula_ctrl|ula_ctrl[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~13_combout\,
	combout => \ula_ctrl|ula_ctrl[2]~15_combout\);

\mux_Rt_im|Y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[6]~6_combout\ = (\ID_EX|q\(48) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(48),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[6]~6_combout\);

\mux_Rt_im|Y[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[5]~5_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(15))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(47),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[5]~5_combout\);

\mux_Rt_im|Y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[4]~4_combout\ = (\ID_EX|q\(46) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(46),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[4]~4_combout\);

\mux_Rt_im|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[3]~3_combout\ = (\ID_EX|q\(45) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(45),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[3]~3_combout\);

\mux_Rt_im|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[2]~2_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(12))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(12),
	datab => \ID_EX|q\(44),
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
	d => \ID_EX|q\(43),
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
	mem_init0 => X"0000000000000266",
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

\memoriaDados|ram~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~43_combout\ = (\memoriaDados|ram_rtl_0_bypass\(16) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(15))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1~portbdataout\))))) # 
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
	combout => \memoriaDados|ram~43_combout\);

\MEM_WB|q[38]\ : dffeas
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
	q => \MEM_WB|q\(38));

\regs|registrador_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[1]~0_combout\,
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

\regs|registrador_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[0]~2_combout\,
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
-- \mux_Rt_im|Y[0]~0_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(10))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(10),
	datab => \ID_EX|q\(42),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[0]~0_combout\);

\ula|full_adder|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[0]~0_combout\ = (\mux_Rt_im|Y[0]~0_combout\ & (\ID_EX|q\(74))) # (!\mux_Rt_im|Y[0]~0_combout\ & (((\ula_ctrl|ula_ctrl[2]~12_combout\) # (\ula_ctrl|ula_ctrl[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(74),
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~13_combout\,
	datad => \mux_Rt_im|Y[0]~0_combout\,
	combout => \ula|full_adder|c_out[0]~0_combout\);

\ula|mux4|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~0_combout\ = \mux_Rt_im|Y[1]~1_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[0]~0_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[1]~1_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux30~0_combout\);

\ula|mux4|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~1_combout\ = (\ID_EX|q\(75) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux30~0_combout\))))) # (!\ID_EX|q\(75) & (\ula|mux4|Mux30~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(75),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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

\mux_ULA|Y[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[1]~0_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(38))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(38),
	datab => \MEM_WB|q\(6),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[1]~0_combout\);

\regs|registrador_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[1]~0_combout\,
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

\ID_EX|q[43]\ : dffeas
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
	q => \ID_EX|q\(43));

\mux_Rt_im|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[1]~1_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(11))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(43),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[1]~1_combout\);

\ula|full_adder|c_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[1]~1_combout\ = (\ID_EX|q\(75) & ((\ula|full_adder|c_out[0]~0_combout\) # (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (\mux_Rt_im|Y[1]~1_combout\)))) # (!\ID_EX|q\(75) & (\ula|full_adder|c_out[0]~0_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (\mux_Rt_im|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \ID_EX|q\(75),
	datad => \ula|full_adder|c_out[0]~0_combout\,
	combout => \ula|full_adder|c_out[1]~1_combout\);

\ula|full_adder|c_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[2]~2_combout\ = (\ID_EX|q\(76) & ((\ula|full_adder|c_out[1]~1_combout\) # (\mux_Rt_im|Y[2]~2_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(76) & (\ula|full_adder|c_out[1]~1_combout\ & (\mux_Rt_im|Y[2]~2_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~2_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(76),
	datad => \ula|full_adder|c_out[1]~1_combout\,
	combout => \ula|full_adder|c_out[2]~2_combout\);

\ula|full_adder|c_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[3]~3_combout\ = (\ID_EX|q\(77) & ((\ula|full_adder|c_out[2]~2_combout\) # (\mux_Rt_im|Y[3]~3_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(77) & (\ula|full_adder|c_out[2]~2_combout\ & (\mux_Rt_im|Y[3]~3_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[3]~3_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(77),
	datad => \ula|full_adder|c_out[2]~2_combout\,
	combout => \ula|full_adder|c_out[3]~3_combout\);

\ula|full_adder|c_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[4]~4_combout\ = (\ID_EX|q\(78) & ((\ula|full_adder|c_out[3]~3_combout\) # (\mux_Rt_im|Y[4]~4_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(78) & (\ula|full_adder|c_out[3]~3_combout\ & (\mux_Rt_im|Y[4]~4_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[4]~4_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(78),
	datad => \ula|full_adder|c_out[3]~3_combout\,
	combout => \ula|full_adder|c_out[4]~4_combout\);

\ula|full_adder|c_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[5]~5_combout\ = (\ID_EX|q\(79) & ((\ula|full_adder|c_out[4]~4_combout\) # (\mux_Rt_im|Y[5]~5_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(79) & (\ula|full_adder|c_out[4]~4_combout\ & (\mux_Rt_im|Y[5]~5_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[5]~5_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(79),
	datad => \ula|full_adder|c_out[4]~4_combout\,
	combout => \ula|full_adder|c_out[5]~5_combout\);

\ula|full_adder|c_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[6]~6_combout\ = (\ID_EX|q\(80) & ((\ula|full_adder|c_out[5]~5_combout\) # (\mux_Rt_im|Y[6]~6_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(80) & (\ula|full_adder|c_out[5]~5_combout\ & (\mux_Rt_im|Y[6]~6_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[6]~6_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(80),
	datad => \ula|full_adder|c_out[5]~5_combout\,
	combout => \ula|full_adder|c_out[6]~6_combout\);

\ula|mux4|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~0_combout\ = \mux_Rt_im|Y[7]~7_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[6]~6_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[7]~7_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[6]~6_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux24~0_combout\);

\ula|mux4|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~1_combout\ = (\ID_EX|q\(81) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux24~0_combout\))))) # (!\ID_EX|q\(81) & (\ula|mux4|Mux24~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(81),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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

\mux_ULA|Y[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[6]~6_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(43))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(43),
	datab => \MEM_WB|q\(11),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[6]~6_combout\);

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
-- \ula|mux4|Mux25~0_combout\ = \mux_Rt_im|Y[6]~6_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[5]~5_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[6]~6_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[5]~5_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux25~0_combout\);

\ula|mux4|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux25~1_combout\ = (\ID_EX|q\(80) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux25~0_combout\))))) # (!\ID_EX|q\(80) & (\ula|mux4|Mux25~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(80),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
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
-- \mux_ULA|Y[5]~5_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(42))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(42),
	datab => \MEM_WB|q\(10),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[5]~5_combout\);

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
-- \ula|mux4|Mux26~0_combout\ = \mux_Rt_im|Y[5]~5_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[4]~4_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[5]~5_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[4]~4_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux26~0_combout\);

\ula|mux4|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~1_combout\ = (\ID_EX|q\(79) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux26~0_combout\))))) # (!\ID_EX|q\(79) & (\ula|mux4|Mux26~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(79),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
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
-- \mux_ULA|Y[4]~4_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(41))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(41),
	datab => \MEM_WB|q\(9),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[4]~4_combout\);

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
-- \ula|mux4|Mux27~0_combout\ = \mux_Rt_im|Y[4]~4_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[3]~3_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[4]~4_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[3]~3_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux27~0_combout\);

\ula|mux4|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~1_combout\ = (\ID_EX|q\(78) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux27~0_combout\))))) # (!\ID_EX|q\(78) & (\ula|mux4|Mux27~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(78),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000380",
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

\memoriaDados|ram~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~44_combout\ = (\memoriaDados|ram_rtl_0_bypass\(20) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(19))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3~portbdataout\))))) # 
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
	combout => \memoriaDados|ram~44_combout\);

\MEM_WB|q[40]\ : dffeas
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
	q => \MEM_WB|q\(40));

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

\mux_ULA|Y[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[3]~1_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(40))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(40),
	datab => \MEM_WB|q\(8),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[3]~1_combout\);

\regs|registrador_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[3]~1_combout\,
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
-- \ula|mux4|Mux28~0_combout\ = \mux_Rt_im|Y[3]~3_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[2]~2_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[3]~3_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[2]~2_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux28~0_combout\);

\ula|mux4|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux28~1_combout\ = (\ID_EX|q\(77) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux28~0_combout\))))) # (!\ID_EX|q\(77) & (\ula|mux4|Mux28~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000078",
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

\memoriaDados|ram~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~46_combout\ = (\memoriaDados|ram_rtl_0_bypass\(18) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(17))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2~portbdataout\))))) # 
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
	combout => \memoriaDados|ram~46_combout\);

\MEM_WB|q[39]\ : dffeas
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
	q => \MEM_WB|q\(39));

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

\mux_ULA|Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[2]~3_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(39))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(39),
	datab => \MEM_WB|q\(7),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[2]~3_combout\);

\regs|registrador_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[2]~3_combout\,
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
-- \ula|mux4|Mux29~0_combout\ = \mux_Rt_im|Y[2]~2_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[1]~1_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~2_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[1]~1_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux29~0_combout\);

\ula|mux4|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~1_combout\ = (\ID_EX|q\(76) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux29~0_combout\))))) # (!\ID_EX|q\(76) & (\ula|mux4|Mux29~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(76),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[31]~31_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(68))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(68),
	datab => \MEM_WB|q\(36),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[31]~31_combout\);

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
-- \mux_Rt_im|Y[31]~31_combout\ = (\ID_EX|q\(73) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(73),
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
	d => \ID_EX|q\(72),
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
	d => \ID_EX|q\(71),
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
	d => \ID_EX|q\(70),
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
	d => \ID_EX|q\(69),
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
	d => \ID_EX|q\(68),
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
	d => \ID_EX|q\(67),
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
	d => \ID_EX|q\(66),
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
	d => \ID_EX|q\(65),
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
	d => \ID_EX|q\(64),
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
	d => \ID_EX|q\(63),
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
	d => \ID_EX|q\(62),
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
	d => \ID_EX|q\(61),
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
	d => \ID_EX|q\(60),
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
	d => \ID_EX|q\(59),
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
	d => \ID_EX|q\(58),
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
	d => \ID_EX|q\(57),
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
	d => \ID_EX|q\(56),
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
	d => \ID_EX|q\(55),
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
	d => \ID_EX|q\(54),
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
	d => \ID_EX|q\(53),
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
	d => \ID_EX|q\(52),
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
	d => \ID_EX|q\(51),
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
	d => \ID_EX|q\(50),
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
-- \ula|full_adder|c_out[7]~7_combout\ = (\ID_EX|q\(81) & ((\ula|full_adder|c_out[6]~6_combout\) # (\mux_Rt_im|Y[7]~7_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(81) & (\ula|full_adder|c_out[6]~6_combout\ & (\mux_Rt_im|Y[7]~7_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[7]~7_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(81),
	datad => \ula|full_adder|c_out[6]~6_combout\,
	combout => \ula|full_adder|c_out[7]~7_combout\);

\ula|mux4|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~0_combout\ = \mux_Rt_im|Y[8]~8_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[7]~7_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[8]~8_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[7]~7_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux23~0_combout\);

\ula|mux4|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~1_combout\ = (\ID_EX|q\(82) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux23~0_combout\))))) # (!\ID_EX|q\(82) & (\ula|mux4|Mux23~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(82),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[8]~8_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(45))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(45),
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

\ID_EX|q[50]\ : dffeas
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
	q => \ID_EX|q\(50));

\mux_Rt_im|Y[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[8]~8_combout\ = (\ID_EX|q\(50) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(50),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[8]~8_combout\);

\ula|full_adder|c_out[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[8]~8_combout\ = (\ID_EX|q\(82) & ((\ula|full_adder|c_out[7]~7_combout\) # (\mux_Rt_im|Y[8]~8_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(82) & (\ula|full_adder|c_out[7]~7_combout\ & (\mux_Rt_im|Y[8]~8_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[8]~8_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(82),
	datad => \ula|full_adder|c_out[7]~7_combout\,
	combout => \ula|full_adder|c_out[8]~8_combout\);

\ula|mux4|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~0_combout\ = \mux_Rt_im|Y[9]~9_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[8]~8_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[9]~9_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[8]~8_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux22~0_combout\);

\ula|mux4|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~1_combout\ = (\ID_EX|q\(83) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux22~0_combout\))))) # (!\ID_EX|q\(83) & (\ula|mux4|Mux22~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(83),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[9]~9_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(46))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(46),
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

\ID_EX|q[51]\ : dffeas
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
	q => \ID_EX|q\(51));

\mux_Rt_im|Y[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[9]~9_combout\ = (\ID_EX|q\(51) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(51),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[9]~9_combout\);

\ula|full_adder|c_out[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[9]~9_combout\ = (\ID_EX|q\(83) & ((\ula|full_adder|c_out[8]~8_combout\) # (\mux_Rt_im|Y[9]~9_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(83) & (\ula|full_adder|c_out[8]~8_combout\ & (\mux_Rt_im|Y[9]~9_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[9]~9_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(83),
	datad => \ula|full_adder|c_out[8]~8_combout\,
	combout => \ula|full_adder|c_out[9]~9_combout\);

\ula|mux4|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~0_combout\ = \mux_Rt_im|Y[10]~10_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[9]~9_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[10]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[9]~9_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux21~0_combout\);

\ula|mux4|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~1_combout\ = (\ID_EX|q\(84) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux21~0_combout\))))) # (!\ID_EX|q\(84) & (\ula|mux4|Mux21~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(84),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[10]~10_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(47))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(47),
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

\ID_EX|q[52]\ : dffeas
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
	q => \ID_EX|q\(52));

\mux_Rt_im|Y[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[10]~10_combout\ = (\ID_EX|q\(52) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(52),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[10]~10_combout\);

\ula|full_adder|c_out[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[10]~10_combout\ = (\ID_EX|q\(84) & ((\ula|full_adder|c_out[9]~9_combout\) # (\mux_Rt_im|Y[10]~10_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(84) & (\ula|full_adder|c_out[9]~9_combout\ & 
-- (\mux_Rt_im|Y[10]~10_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[10]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(84),
	datad => \ula|full_adder|c_out[9]~9_combout\,
	combout => \ula|full_adder|c_out[10]~10_combout\);

\ula|mux4|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~0_combout\ = \mux_Rt_im|Y[11]~11_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[10]~10_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[11]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[10]~10_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux20~0_combout\);

\ula|mux4|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~1_combout\ = (\ID_EX|q\(85) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux20~0_combout\))))) # (!\ID_EX|q\(85) & (\ula|mux4|Mux20~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(85),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[11]~11_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(48))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(48),
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

\ID_EX|q[53]\ : dffeas
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
	q => \ID_EX|q\(53));

\mux_Rt_im|Y[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[11]~11_combout\ = (\ID_EX|q\(53) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(53),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[11]~11_combout\);

\ula|full_adder|c_out[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[11]~11_combout\ = (\ID_EX|q\(85) & ((\ula|full_adder|c_out[10]~10_combout\) # (\mux_Rt_im|Y[11]~11_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(85) & (\ula|full_adder|c_out[10]~10_combout\ & 
-- (\mux_Rt_im|Y[11]~11_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[11]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(85),
	datad => \ula|full_adder|c_out[10]~10_combout\,
	combout => \ula|full_adder|c_out[11]~11_combout\);

\ula|mux4|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~0_combout\ = \mux_Rt_im|Y[12]~12_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[11]~11_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[12]~12_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[11]~11_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux19~0_combout\);

\ula|mux4|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~1_combout\ = (\ID_EX|q\(86) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux19~0_combout\))))) # (!\ID_EX|q\(86) & (\ula|mux4|Mux19~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(86),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[12]~12_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(49))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(49),
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

\ID_EX|q[54]\ : dffeas
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
	q => \ID_EX|q\(54));

\mux_Rt_im|Y[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[12]~12_combout\ = (\ID_EX|q\(54) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(54),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[12]~12_combout\);

\ula|full_adder|c_out[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[12]~12_combout\ = (\ID_EX|q\(86) & ((\ula|full_adder|c_out[11]~11_combout\) # (\mux_Rt_im|Y[12]~12_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(86) & (\ula|full_adder|c_out[11]~11_combout\ & 
-- (\mux_Rt_im|Y[12]~12_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[12]~12_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(86),
	datad => \ula|full_adder|c_out[11]~11_combout\,
	combout => \ula|full_adder|c_out[12]~12_combout\);

\ula|mux4|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~0_combout\ = \mux_Rt_im|Y[13]~13_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[12]~12_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[13]~13_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[12]~12_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux18~0_combout\);

\ula|mux4|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~1_combout\ = (\ID_EX|q\(87) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux18~0_combout\))))) # (!\ID_EX|q\(87) & (\ula|mux4|Mux18~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(87),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[13]~13_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(50))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(50),
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

\ID_EX|q[55]\ : dffeas
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
	q => \ID_EX|q\(55));

\mux_Rt_im|Y[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[13]~13_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(23))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(23),
	datab => \ID_EX|q\(55),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[13]~13_combout\);

\ula|full_adder|c_out[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[13]~13_combout\ = (\ID_EX|q\(87) & ((\ula|full_adder|c_out[12]~12_combout\) # (\mux_Rt_im|Y[13]~13_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(87) & (\ula|full_adder|c_out[12]~12_combout\ & 
-- (\mux_Rt_im|Y[13]~13_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[13]~13_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(87),
	datad => \ula|full_adder|c_out[12]~12_combout\,
	combout => \ula|full_adder|c_out[13]~13_combout\);

\ula|mux4|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~0_combout\ = \mux_Rt_im|Y[14]~14_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[13]~13_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[14]~14_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[13]~13_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux17~0_combout\);

\ula|mux4|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~1_combout\ = (\ID_EX|q\(88) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux17~0_combout\))))) # (!\ID_EX|q\(88) & (\ula|mux4|Mux17~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(88),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[14]~14_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(51))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(51),
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

\ID_EX|q[56]\ : dffeas
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
	q => \ID_EX|q\(56));

\mux_Rt_im|Y[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[14]~14_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(23))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(23),
	datab => \ID_EX|q\(56),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[14]~14_combout\);

\ula|full_adder|c_out[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[14]~14_combout\ = (\ID_EX|q\(88) & ((\ula|full_adder|c_out[13]~13_combout\) # (\mux_Rt_im|Y[14]~14_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(88) & (\ula|full_adder|c_out[13]~13_combout\ & 
-- (\mux_Rt_im|Y[14]~14_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[14]~14_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(88),
	datad => \ula|full_adder|c_out[13]~13_combout\,
	combout => \ula|full_adder|c_out[14]~14_combout\);

\ula|mux4|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~0_combout\ = \mux_Rt_im|Y[15]~15_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[14]~14_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[15]~15_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[14]~14_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux16~0_combout\);

\ula|mux4|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~1_combout\ = (\ID_EX|q\(89) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux16~0_combout\))))) # (!\ID_EX|q\(89) & (\ula|mux4|Mux16~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(89),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[15]~15_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(52))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(52),
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

\ID_EX|q[57]\ : dffeas
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
	q => \ID_EX|q\(57));

\mux_Rt_im|Y[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[15]~15_combout\ = (\ID_EX|q\(57) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(57),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[15]~15_combout\);

\ula|full_adder|c_out[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[15]~15_combout\ = (\ID_EX|q\(89) & ((\ula|full_adder|c_out[14]~14_combout\) # (\mux_Rt_im|Y[15]~15_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(89) & (\ula|full_adder|c_out[14]~14_combout\ & 
-- (\mux_Rt_im|Y[15]~15_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[15]~15_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(89),
	datad => \ula|full_adder|c_out[14]~14_combout\,
	combout => \ula|full_adder|c_out[15]~15_combout\);

\ula|mux4|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~0_combout\ = \mux_Rt_im|Y[16]~16_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[15]~15_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[16]~16_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[15]~15_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux15~0_combout\);

\ula|mux4|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~1_combout\ = (\ID_EX|q\(90) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux15~0_combout\))))) # (!\ID_EX|q\(90) & (\ula|mux4|Mux15~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(90),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[16]~16_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(53))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(53),
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
-- \ula|full_adder|c_out[16]~16_combout\ = (\ID_EX|q\(90) & ((\ula|full_adder|c_out[15]~15_combout\) # (\mux_Rt_im|Y[16]~16_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(90) & (\ula|full_adder|c_out[15]~15_combout\ & 
-- (\mux_Rt_im|Y[16]~16_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[16]~16_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(90),
	datad => \ula|full_adder|c_out[15]~15_combout\,
	combout => \ula|full_adder|c_out[16]~16_combout\);

\ula|mux4|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~0_combout\ = \mux_Rt_im|Y[17]~17_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[16]~16_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[17]~17_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[16]~16_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux14~0_combout\);

\ula|mux4|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~1_combout\ = (\ID_EX|q\(91) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux14~0_combout\))))) # (!\ID_EX|q\(91) & (\ula|mux4|Mux14~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(91),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[17]~17_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(54))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(54),
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

\ID_EX|q[59]\ : dffeas
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
	q => \ID_EX|q\(59));

\mux_Rt_im|Y[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[17]~17_combout\ = (\ID_EX|q\(59) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(59),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[17]~17_combout\);

\ula|full_adder|c_out[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[17]~17_combout\ = (\ID_EX|q\(91) & ((\ula|full_adder|c_out[16]~16_combout\) # (\mux_Rt_im|Y[17]~17_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(91) & (\ula|full_adder|c_out[16]~16_combout\ & 
-- (\mux_Rt_im|Y[17]~17_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[17]~17_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(91),
	datad => \ula|full_adder|c_out[16]~16_combout\,
	combout => \ula|full_adder|c_out[17]~17_combout\);

\ula|mux4|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~0_combout\ = \mux_Rt_im|Y[18]~18_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[17]~17_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[18]~18_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[17]~17_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux13~0_combout\);

\ula|mux4|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~1_combout\ = (\ID_EX|q\(92) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux13~0_combout\))))) # (!\ID_EX|q\(92) & (\ula|mux4|Mux13~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(92),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[18]~18_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(55))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(55),
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

\ID_EX|q[60]\ : dffeas
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
	q => \ID_EX|q\(60));

\mux_Rt_im|Y[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[18]~18_combout\ = (\ID_EX|q\(60) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(60),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[18]~18_combout\);

\ula|full_adder|c_out[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[18]~18_combout\ = (\ID_EX|q\(92) & ((\ula|full_adder|c_out[17]~17_combout\) # (\mux_Rt_im|Y[18]~18_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(92) & (\ula|full_adder|c_out[17]~17_combout\ & 
-- (\mux_Rt_im|Y[18]~18_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[18]~18_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(92),
	datad => \ula|full_adder|c_out[17]~17_combout\,
	combout => \ula|full_adder|c_out[18]~18_combout\);

\ula|mux4|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~0_combout\ = \mux_Rt_im|Y[19]~19_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[18]~18_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[19]~19_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[18]~18_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux12~0_combout\);

\ula|mux4|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~1_combout\ = (\ID_EX|q\(93) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux12~0_combout\))))) # (!\ID_EX|q\(93) & (\ula|mux4|Mux12~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(93),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[19]~19_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(56))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(56),
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

\ID_EX|q[61]\ : dffeas
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
	q => \ID_EX|q\(61));

\mux_Rt_im|Y[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[19]~19_combout\ = (\ID_EX|q\(61) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(61),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[19]~19_combout\);

\ula|full_adder|c_out[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[19]~19_combout\ = (\ID_EX|q\(93) & ((\ula|full_adder|c_out[18]~18_combout\) # (\mux_Rt_im|Y[19]~19_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(93) & (\ula|full_adder|c_out[18]~18_combout\ & 
-- (\mux_Rt_im|Y[19]~19_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[19]~19_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(93),
	datad => \ula|full_adder|c_out[18]~18_combout\,
	combout => \ula|full_adder|c_out[19]~19_combout\);

\ula|mux4|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~0_combout\ = \mux_Rt_im|Y[20]~20_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[19]~19_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[20]~20_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[19]~19_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux11~0_combout\);

\ula|mux4|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~1_combout\ = (\ID_EX|q\(94) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux11~0_combout\))))) # (!\ID_EX|q\(94) & (\ula|mux4|Mux11~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(94),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[20]~20_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(57))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(57),
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

\ID_EX|q[62]\ : dffeas
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
	q => \ID_EX|q\(62));

\mux_Rt_im|Y[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[20]~20_combout\ = (\ID_EX|q\(62) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(62),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[20]~20_combout\);

\ula|full_adder|c_out[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[20]~20_combout\ = (\ID_EX|q\(94) & ((\ula|full_adder|c_out[19]~19_combout\) # (\mux_Rt_im|Y[20]~20_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(94) & (\ula|full_adder|c_out[19]~19_combout\ & 
-- (\mux_Rt_im|Y[20]~20_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[20]~20_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(94),
	datad => \ula|full_adder|c_out[19]~19_combout\,
	combout => \ula|full_adder|c_out[20]~20_combout\);

\ula|mux4|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~0_combout\ = \mux_Rt_im|Y[21]~21_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[20]~20_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[21]~21_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[20]~20_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux10~0_combout\);

\ula|mux4|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~1_combout\ = (\ID_EX|q\(95) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux10~0_combout\))))) # (!\ID_EX|q\(95) & (\ula|mux4|Mux10~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(95),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[21]~21_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(58))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(58),
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

\ID_EX|q[63]\ : dffeas
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
	q => \ID_EX|q\(63));

\mux_Rt_im|Y[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[21]~21_combout\ = (\ID_EX|q\(63) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(63),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[21]~21_combout\);

\ula|full_adder|c_out[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[21]~21_combout\ = (\ID_EX|q\(95) & ((\ula|full_adder|c_out[20]~20_combout\) # (\mux_Rt_im|Y[21]~21_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(95) & (\ula|full_adder|c_out[20]~20_combout\ & 
-- (\mux_Rt_im|Y[21]~21_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[21]~21_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(95),
	datad => \ula|full_adder|c_out[20]~20_combout\,
	combout => \ula|full_adder|c_out[21]~21_combout\);

\ula|mux4|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~0_combout\ = \mux_Rt_im|Y[22]~22_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[21]~21_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[22]~22_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[21]~21_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux9~0_combout\);

\ula|mux4|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~1_combout\ = (\ID_EX|q\(96) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux9~0_combout\))))) # (!\ID_EX|q\(96) & (\ula|mux4|Mux9~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(96),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[22]~22_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(59))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(59),
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

\ID_EX|q[64]\ : dffeas
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
	q => \ID_EX|q\(64));

\mux_Rt_im|Y[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[22]~22_combout\ = (\ID_EX|q\(64) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(64),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[22]~22_combout\);

\ula|full_adder|c_out[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[22]~22_combout\ = (\ID_EX|q\(96) & ((\ula|full_adder|c_out[21]~21_combout\) # (\mux_Rt_im|Y[22]~22_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(96) & (\ula|full_adder|c_out[21]~21_combout\ & 
-- (\mux_Rt_im|Y[22]~22_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[22]~22_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(96),
	datad => \ula|full_adder|c_out[21]~21_combout\,
	combout => \ula|full_adder|c_out[22]~22_combout\);

\ula|mux4|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~0_combout\ = \mux_Rt_im|Y[23]~23_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[22]~22_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[23]~23_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[22]~22_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux8~0_combout\);

\ula|mux4|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~1_combout\ = (\ID_EX|q\(97) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux8~0_combout\))))) # (!\ID_EX|q\(97) & (\ula|mux4|Mux8~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(97),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[23]~23_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(60))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(60),
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

\ID_EX|q[65]\ : dffeas
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
	q => \ID_EX|q\(65));

\mux_Rt_im|Y[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[23]~23_combout\ = (\ID_EX|q\(65) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(65),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[23]~23_combout\);

\ula|full_adder|c_out[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[23]~23_combout\ = (\ID_EX|q\(97) & ((\ula|full_adder|c_out[22]~22_combout\) # (\mux_Rt_im|Y[23]~23_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(97) & (\ula|full_adder|c_out[22]~22_combout\ & 
-- (\mux_Rt_im|Y[23]~23_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[23]~23_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(97),
	datad => \ula|full_adder|c_out[22]~22_combout\,
	combout => \ula|full_adder|c_out[23]~23_combout\);

\ula|mux4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~0_combout\ = \mux_Rt_im|Y[24]~24_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[23]~23_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[24]~24_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[23]~23_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux7~0_combout\);

\ula|mux4|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~1_combout\ = (\ID_EX|q\(98) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux7~0_combout\))))) # (!\ID_EX|q\(98) & (\ula|mux4|Mux7~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(98),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[24]~24_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(61))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(61),
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

\ID_EX|q[66]\ : dffeas
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
	q => \ID_EX|q\(66));

\mux_Rt_im|Y[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[24]~24_combout\ = (\ID_EX|q\(66) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(66),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[24]~24_combout\);

\ula|full_adder|c_out[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[24]~24_combout\ = (\ID_EX|q\(98) & ((\ula|full_adder|c_out[23]~23_combout\) # (\mux_Rt_im|Y[24]~24_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(98) & (\ula|full_adder|c_out[23]~23_combout\ & 
-- (\mux_Rt_im|Y[24]~24_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[24]~24_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(98),
	datad => \ula|full_adder|c_out[23]~23_combout\,
	combout => \ula|full_adder|c_out[24]~24_combout\);

\ula|mux4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~0_combout\ = \mux_Rt_im|Y[25]~25_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[24]~24_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[25]~25_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[24]~24_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux6~0_combout\);

\ula|mux4|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~1_combout\ = (\ID_EX|q\(99) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux6~0_combout\))))) # (!\ID_EX|q\(99) & (\ula|mux4|Mux6~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(99),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[25]~25_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(62))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(62),
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

\ID_EX|q[67]\ : dffeas
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
	q => \ID_EX|q\(67));

\mux_Rt_im|Y[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[25]~25_combout\ = (\ID_EX|q\(67) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(67),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[25]~25_combout\);

\ula|full_adder|c_out[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[25]~25_combout\ = (\ID_EX|q\(99) & ((\ula|full_adder|c_out[24]~24_combout\) # (\mux_Rt_im|Y[25]~25_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(99) & (\ula|full_adder|c_out[24]~24_combout\ & 
-- (\mux_Rt_im|Y[25]~25_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[25]~25_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(99),
	datad => \ula|full_adder|c_out[24]~24_combout\,
	combout => \ula|full_adder|c_out[25]~25_combout\);

\ula|mux4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~0_combout\ = \mux_Rt_im|Y[26]~26_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[25]~25_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[26]~26_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[25]~25_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux5~0_combout\);

\ula|mux4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~1_combout\ = (\ID_EX|q\(100) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux5~0_combout\))))) # (!\ID_EX|q\(100) & (\ula|mux4|Mux5~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(100),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[26]~26_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(63))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(63),
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

\ID_EX|q[68]\ : dffeas
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
	q => \ID_EX|q\(68));

\mux_Rt_im|Y[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[26]~26_combout\ = (\ID_EX|q\(68) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(68),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[26]~26_combout\);

\ula|full_adder|c_out[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[26]~26_combout\ = (\ID_EX|q\(100) & ((\ula|full_adder|c_out[25]~25_combout\) # (\mux_Rt_im|Y[26]~26_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(100) & (\ula|full_adder|c_out[25]~25_combout\ & 
-- (\mux_Rt_im|Y[26]~26_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[26]~26_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(100),
	datad => \ula|full_adder|c_out[25]~25_combout\,
	combout => \ula|full_adder|c_out[26]~26_combout\);

\ula|mux4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~0_combout\ = \mux_Rt_im|Y[27]~27_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[26]~26_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[27]~27_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[26]~26_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux4~0_combout\);

\ula|mux4|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~1_combout\ = (\ID_EX|q\(101) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux4~0_combout\))))) # (!\ID_EX|q\(101) & (\ula|mux4|Mux4~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(101),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[27]~27_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(64))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(64),
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

\ID_EX|q[69]\ : dffeas
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
	q => \ID_EX|q\(69));

\mux_Rt_im|Y[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[27]~27_combout\ = (\ID_EX|q\(69) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(69),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[27]~27_combout\);

\ula|full_adder|c_out[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[27]~27_combout\ = (\ID_EX|q\(101) & ((\ula|full_adder|c_out[26]~26_combout\) # (\mux_Rt_im|Y[27]~27_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(101) & (\ula|full_adder|c_out[26]~26_combout\ & 
-- (\mux_Rt_im|Y[27]~27_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[27]~27_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(101),
	datad => \ula|full_adder|c_out[26]~26_combout\,
	combout => \ula|full_adder|c_out[27]~27_combout\);

\ula|mux4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~0_combout\ = \mux_Rt_im|Y[28]~28_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[27]~27_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[28]~28_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[27]~27_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux3~0_combout\);

\ula|mux4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~1_combout\ = (\ID_EX|q\(102) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux3~0_combout\))))) # (!\ID_EX|q\(102) & (\ula|mux4|Mux3~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(102),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
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
-- \mux_ULA|Y[28]~28_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(65))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(65),
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

\ID_EX|q[70]\ : dffeas
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
	q => \ID_EX|q\(70));

\mux_Rt_im|Y[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[28]~28_combout\ = (\ID_EX|q\(70) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(70),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[28]~28_combout\);

\ula|full_adder|c_out[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[28]~28_combout\ = (\ID_EX|q\(102) & ((\ula|full_adder|c_out[27]~27_combout\) # (\mux_Rt_im|Y[28]~28_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(102) & (\ula|full_adder|c_out[27]~27_combout\ & 
-- (\mux_Rt_im|Y[28]~28_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[28]~28_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(102),
	datad => \ula|full_adder|c_out[27]~27_combout\,
	combout => \ula|full_adder|c_out[28]~28_combout\);

\ula|mux4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~0_combout\ = \mux_Rt_im|Y[29]~29_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[28]~28_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[29]~29_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[28]~28_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux2~0_combout\);

\ula|mux4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~1_combout\ = (\ID_EX|q\(103) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux2~0_combout\))))) # (!\ID_EX|q\(103) & (\ula|mux4|Mux2~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(103),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux2~0_combout\,
	combout => \ula|mux4|Mux2~1_combout\);

\EX_MEM|q[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux2~1_combout\,
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
-- \mux_ULA|Y[29]~29_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(66))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(66),
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

\ID_EX|q[71]\ : dffeas
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
	q => \ID_EX|q\(71));

\mux_Rt_im|Y[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[29]~29_combout\ = (\ID_EX|q\(71) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(71),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[29]~29_combout\);

\ula|full_adder|c_out[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[29]~29_combout\ = (\ID_EX|q\(103) & ((\ula|full_adder|c_out[28]~28_combout\) # (\mux_Rt_im|Y[29]~29_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(103) & (\ula|full_adder|c_out[28]~28_combout\ & 
-- (\mux_Rt_im|Y[29]~29_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[29]~29_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(103),
	datad => \ula|full_adder|c_out[28]~28_combout\,
	combout => \ula|full_adder|c_out[29]~29_combout\);

\ula|mux4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~0_combout\ = \mux_Rt_im|Y[30]~30_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[29]~29_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[30]~30_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[29]~29_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux1~0_combout\);

\ula|mux4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~1_combout\ = (\ID_EX|q\(104) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux1~0_combout\))))) # (!\ID_EX|q\(104) & (\ula|mux4|Mux1~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(104),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux1~0_combout\,
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
-- \mux_ULA|Y[30]~30_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(67))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(67),
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

\ID_EX|q[72]\ : dffeas
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
	q => \ID_EX|q\(72));

\mux_Rt_im|Y[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[30]~30_combout\ = (\ID_EX|q\(72) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(72),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[30]~30_combout\);

\ula|full_adder|c_out[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[30]~30_combout\ = (\ID_EX|q\(104) & ((\ula|full_adder|c_out[29]~29_combout\) # (\mux_Rt_im|Y[30]~30_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)))) # (!\ID_EX|q\(104) & (\ula|full_adder|c_out[29]~29_combout\ & 
-- (\mux_Rt_im|Y[30]~30_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[30]~30_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ID_EX|q\(104),
	datad => \ula|full_adder|c_out[29]~29_combout\,
	combout => \ula|full_adder|c_out[30]~30_combout\);

\ula|mux4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~0_combout\ = \mux_Rt_im|Y[31]~31_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\ $ (((\ula|full_adder|c_out[30]~30_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[31]~31_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datac => \ula|full_adder|c_out[30]~30_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux0~0_combout\);

\ula|mux4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~1_combout\ = (\ID_EX|q\(105) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~14_combout\) # (\ula|mux4|Mux0~0_combout\))))) # (!\ID_EX|q\(105) & (\ula|mux4|Mux0~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(105),
	datab => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux0~0_combout\,
	combout => \ula|mux4|Mux0~1_combout\);

\ula|mux2B|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[0]~0_combout\ = \mux_Rt_im|Y[0]~0_combout\ $ (((\ula_ctrl|ula_ctrl[2]~12_combout\) # (\ula_ctrl|ula_ctrl[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~13_combout\,
	datad => \mux_Rt_im|Y[0]~0_combout\,
	combout => \ula|mux2B|Y[0]~0_combout\);

\ula|mux4|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~0_combout\ = (\ula|mux2B|Y[0]~0_combout\ & ((\ula_ctrl|ula_ctrl[0]~14_combout\) # ((\ID_EX|q\(74) & !\ula_ctrl|ula_ctrl[1]~11_combout\)))) # (!\ula|mux2B|Y[0]~0_combout\ & (\ula_ctrl|ula_ctrl[0]~14_combout\ & ((\ID_EX|q\(74)) # 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[0]~0_combout\,
	datab => \ID_EX|q\(74),
	datac => \ula_ctrl|ula_ctrl[0]~14_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux31~0_combout\);

\ula|result_slt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|result_slt[0]~0_combout\ = (\ID_EX|q\(105) & ((\mux_Rt_im|Y[31]~31_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\)) # (!\ula|full_adder|c_out[30]~30_combout\))) # (!\ID_EX|q\(105) & (!\ula|full_adder|c_out[30]~30_combout\ & 
-- (\mux_Rt_im|Y[31]~31_combout\ $ (\ula_ctrl|ula_ctrl[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(105),
	datab => \mux_Rt_im|Y[31]~31_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~15_combout\,
	datad => \ula|full_adder|c_out[30]~30_combout\,
	combout => \ula|result_slt[0]~0_combout\);

\ula|full_adder|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result[0]~0_combout\ = \ID_EX|q\(74) $ (((\ID_EX|q\(138) & ((\ID_EX|q\(10)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(42),
	datac => \ID_EX|q\(10),
	datad => \ID_EX|q\(74),
	combout => \ula|full_adder|result[0]~0_combout\);

\ula|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~0_combout\ = (\ula|mux4|Mux21~1_combout\) # ((\ula_ctrl|ula_ctrl[1]~11_combout\ & (\ula|full_adder|result[0]~0_combout\ & !\ula|mux4|Mux31~0_combout\)) # (!\ula_ctrl|ula_ctrl[1]~11_combout\ & ((\ula|mux4|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|result[0]~0_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ula|mux4|Mux31~0_combout\,
	datad => \ula|mux4|Mux21~1_combout\,
	combout => \ula|zero~0_combout\);

\ula|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~1_combout\ = (\ula|mux4|Mux24~1_combout\) # ((\ula|mux4|Mux23~1_combout\) # ((\ula|mux4|Mux22~1_combout\) # (\ula|zero~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux24~1_combout\,
	datab => \ula|mux4|Mux23~1_combout\,
	datac => \ula|mux4|Mux22~1_combout\,
	datad => \ula|zero~0_combout\,
	combout => \ula|zero~1_combout\);

\ula|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~2_combout\ = (\ula|mux4|Mux19~1_combout\) # ((\ula|mux4|Mux18~1_combout\) # ((\ula|mux4|Mux17~1_combout\) # (\ula|zero~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux19~1_combout\,
	datab => \ula|mux4|Mux18~1_combout\,
	datac => \ula|mux4|Mux17~1_combout\,
	datad => \ula|zero~1_combout\,
	combout => \ula|zero~2_combout\);

\ula|zero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~3_combout\ = (\ula|mux4|Mux30~1_combout\) # ((\ula|mux4|Mux27~1_combout\) # ((\ula|mux4|Mux26~1_combout\) # (\ula|mux4|Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux30~1_combout\,
	datab => \ula|mux4|Mux27~1_combout\,
	datac => \ula|mux4|Mux26~1_combout\,
	datad => \ula|mux4|Mux25~1_combout\,
	combout => \ula|zero~3_combout\);

\ula|zero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~4_combout\ = (\ula|mux4|Mux29~1_combout\) # ((\ula|mux4|Mux28~1_combout\) # ((\ula|zero~3_combout\) # (\ula|mux4|Mux20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|zero~3_combout\,
	datad => \ula|mux4|Mux20~1_combout\,
	combout => \ula|zero~4_combout\);

\ula|zero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~5_combout\ = (\ula|zero~2_combout\) # ((\ula|zero~4_combout\) # ((\ula|mux4|Mux31~0_combout\ & \ula|result_slt[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux31~0_combout\,
	datab => \ula|result_slt[0]~0_combout\,
	datac => \ula|zero~2_combout\,
	datad => \ula|zero~4_combout\,
	combout => \ula|zero~5_combout\);

\ula|zero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~6_combout\ = (\ula|mux4|Mux16~1_combout\) # (\ula|mux4|Mux15~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux16~1_combout\,
	datab => \ula|mux4|Mux15~1_combout\,
	combout => \ula|zero~6_combout\);

\ula|zero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~7_combout\ = (\ula|mux4|Mux12~1_combout\) # ((\ula|mux4|Mux11~1_combout\) # ((\ula|mux4|Mux10~1_combout\) # (\ula|mux4|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux12~1_combout\,
	datab => \ula|mux4|Mux11~1_combout\,
	datac => \ula|mux4|Mux10~1_combout\,
	datad => \ula|mux4|Mux9~1_combout\,
	combout => \ula|zero~7_combout\);

\ula|zero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~8_combout\ = (\ula|mux4|Mux14~1_combout\) # ((\ula|mux4|Mux13~1_combout\) # ((\ula|zero~6_combout\) # (\ula|zero~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux14~1_combout\,
	datab => \ula|mux4|Mux13~1_combout\,
	datac => \ula|zero~6_combout\,
	datad => \ula|zero~7_combout\,
	combout => \ula|zero~8_combout\);

\ula|zero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~9_combout\ = (\ula|mux4|Mux8~1_combout\) # ((\ula|mux4|Mux7~1_combout\) # ((\ula|mux4|Mux6~1_combout\) # (\ula|mux4|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux8~1_combout\,
	datab => \ula|mux4|Mux7~1_combout\,
	datac => \ula|mux4|Mux6~1_combout\,
	datad => \ula|mux4|Mux5~1_combout\,
	combout => \ula|zero~9_combout\);

\ula|zero~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~10_combout\ = (\ula|mux4|Mux4~1_combout\) # (\ula|mux4|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux4~1_combout\,
	datab => \ula|mux4|Mux3~1_combout\,
	combout => \ula|zero~10_combout\);

\ula|zero~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~11_combout\ = (\ula|mux4|Mux2~1_combout\) # ((\ula|mux4|Mux1~1_combout\) # ((\ula|zero~9_combout\) # (\ula|zero~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux2~1_combout\,
	datab => \ula|mux4|Mux1~1_combout\,
	datac => \ula|zero~9_combout\,
	datad => \ula|zero~10_combout\,
	combout => \ula|zero~11_combout\);

\ula|zero~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~12_combout\ = (!\ula|mux4|Mux0~1_combout\ & (!\ula|zero~5_combout\ & (!\ula|zero~8_combout\ & !\ula|zero~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux0~1_combout\,
	datab => \ula|zero~5_combout\,
	datac => \ula|zero~8_combout\,
	datad => \ula|zero~11_combout\,
	combout => \ula|zero~12_combout\);

\EX_MEM|q[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|zero~12_combout\,
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

\PC|q[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[7]~3_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(77)))) # (!\and_beq~combout\ & (\somador1|Y[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[7]~10_combout\,
	datab => \EX_MEM|q\(77),
	datad => \and_beq~combout\,
	combout => \PC|q[7]~3_combout\);

\PC|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \PC|q[7]~3_combout\,
	asdata => \memoriaInst|rom~9_combout\,
	sload => \fd_ctrl|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(7));

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

\EX_MEM|q[78]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[78]~20_combout\ = (\ID_EX|q\(114) & (\EX_MEM|q[77]~19\ $ (GND))) # (!\ID_EX|q\(114) & (!\EX_MEM|q[77]~19\ & VCC))
-- \EX_MEM|q[78]~21\ = CARRY((\ID_EX|q\(114) & !\EX_MEM|q[77]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(114),
	datad => VCC,
	cin => \EX_MEM|q[77]~19\,
	combout => \EX_MEM|q[78]~20_combout\,
	cout => \EX_MEM|q[78]~21\);

\EX_MEM|q[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[78]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(78));

\mux_PC|Y[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[8]~2_combout\ = (!\fd_ctrl|Equal0~1_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(78))) # (!\and_beq~combout\ & ((\somador1|Y[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(78),
	datab => \somador1|Y[8]~12_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~1_combout\,
	combout => \mux_PC|Y[8]~2_combout\);

\PC|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(8));

\somador1|Y[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[9]~14_combout\ = \PC|q\(9) $ (\somador1|Y[8]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(9),
	cin => \somador1|Y[8]~13\,
	combout => \somador1|Y[9]~14_combout\);

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

\EX_MEM|q[79]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[79]~22_combout\ = \ID_EX|q\(115) $ (\EX_MEM|q[78]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(115),
	cin => \EX_MEM|q[78]~21\,
	combout => \EX_MEM|q[79]~22_combout\);

\EX_MEM|q[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[79]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(79));

\mux_PC|Y[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[9]~3_combout\ = (!\fd_ctrl|Equal0~1_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(79))) # (!\and_beq~combout\ & ((\somador1|Y[9]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(79),
	datab => \somador1|Y[9]~14_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~1_combout\,
	combout => \mux_PC|Y[9]~3_combout\);

\PC|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(9));

\memoriaInst|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~1_combout\ = (!\PC|q\(8) & (!\PC|q\(9) & !\PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(8),
	datac => \PC|q\(9),
	datad => \PC|q\(7),
	combout => \memoriaInst|rom~1_combout\);

\memoriaInst|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~2_combout\ = (\memoriaInst|rom~0_combout\ & (\PC|q\(6) & \memoriaInst|rom~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~0_combout\,
	datab => \PC|q\(6),
	datac => \memoriaInst|rom~1_combout\,
	combout => \memoriaInst|rom~2_combout\);

\IF_ID|q[0]\ : dffeas
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
	d => \EX_MEM|q[72]~8_combout\,
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
	asdata => \memoriaInst|rom~2_combout\,
	sload => \fd_ctrl|Equal0~1_combout\,
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
	d => \EX_MEM|q[73]~10_combout\,
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
	asdata => \memoriaInst|rom~4_combout\,
	sload => \fd_ctrl|Equal0~1_combout\,
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
	d => \EX_MEM|q[74]~12_combout\,
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
	asdata => \memoriaInst|rom~6_combout\,
	sload => \fd_ctrl|Equal0~1_combout\,
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

\EX_MEM|q[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \EX_MEM|q[75]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(75));

\mux_PC|Y[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[5]~0_combout\ = (!\fd_ctrl|Equal0~1_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(75))) # (!\and_beq~combout\ & ((\somador1|Y[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(75),
	datab => \somador1|Y[5]~6_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~1_combout\,
	combout => \mux_PC|Y[5]~0_combout\);

\PC|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(5));

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
	d => \EX_MEM|q[76]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(76));

\mux_PC|Y[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[6]~1_combout\ = (!\fd_ctrl|Equal0~1_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(76))) # (!\and_beq~combout\ & ((\somador1|Y[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(76),
	datab => \somador1|Y[6]~8_combout\,
	datac => \and_beq~combout\,
	datad => \fd_ctrl|Equal0~1_combout\,
	combout => \mux_PC|Y[6]~1_combout\);

\PC|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_PC|Y[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(6));

\memoriaInst|rom~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~15_combout\ = (\PC|q\(2) & (\PC|q\(4) & (!\PC|q\(5) & \PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(4),
	datac => \PC|q\(5),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~15_combout\);

\memoriaInst|rom~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~16_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(6) & (\memoriaInst|rom~14_combout\)) # (!\PC|q\(6) & ((\memoriaInst|rom~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~14_combout\,
	datac => \memoriaInst|rom~1_combout\,
	datad => \memoriaInst|rom~15_combout\,
	combout => \memoriaInst|rom~16_combout\);

\IF_ID|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \memoriaInst|rom~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(29));

\fd_ctrl|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal4~0_combout\ = (\IF_ID|q\(29) & \fd_ctrl|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(29),
	datab => \fd_ctrl|Equal1~0_combout\,
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
	d => \ID_EX|q\(42),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(5));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000155",
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

\memoriaDados|ram~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~45_combout\ = (\memoriaDados|ram_rtl_0_bypass\(14) & ((\memoriaDados|ram~42_combout\ & ((!\memoriaDados|ram_rtl_0_bypass\(13)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)))) # 
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
	combout => \memoriaDados|ram~45_combout\);

\MEM_WB|q[37]\ : dffeas
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
	q => \MEM_WB|q\(37));

\ula|mux4|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~1_combout\ = (\ula_ctrl|ula_ctrl[1]~11_combout\ & ((\ula|mux4|Mux31~0_combout\ & ((\ula|result_slt[0]~0_combout\))) # (!\ula|mux4|Mux31~0_combout\ & (\ula|full_adder|result[0]~0_combout\)))) # (!\ula_ctrl|ula_ctrl[1]~11_combout\ & 
-- (((\ula|mux4|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|result[0]~0_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ula|mux4|Mux31~0_combout\,
	datad => \ula|result_slt[0]~0_combout\,
	combout => \ula|mux4|Mux31~1_combout\);

\EX_MEM|q[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ula|mux4|Mux31~1_combout\,
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

\mux_ULA|Y[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[0]~2_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(37))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(37),
	datab => \MEM_WB|q\(5),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[0]~2_combout\);

\regs|registrador_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \mux_ULA|Y[0]~2_combout\,
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

\display0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[0]~0_combout\ = (\ula|mux4|Mux29~1_combout\ & (!\ula|mux4|Mux30~1_combout\ & (\ula|mux4|Mux28~1_combout\ $ (!\ula|mux4|Mux31~1_combout\)))) # (!\ula|mux4|Mux29~1_combout\ & (\ula|mux4|Mux31~1_combout\ & (\ula|mux4|Mux28~1_combout\ 
-- $ (!\ula|mux4|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux31~1_combout\,
	datad => \ula|mux4|Mux30~1_combout\,
	combout => \display0|rascSaida7seg[0]~0_combout\);

\display0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[1]~1_combout\ = (\ula|mux4|Mux30~1_combout\ & ((\ula|mux4|Mux31~1_combout\ & (\ula|mux4|Mux28~1_combout\)) # (!\ula|mux4|Mux31~1_combout\ & ((\ula|mux4|Mux29~1_combout\))))) # (!\ula|mux4|Mux30~1_combout\ & 
-- (\ula|mux4|Mux29~1_combout\ & (\ula|mux4|Mux28~1_combout\ $ (\ula|mux4|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux30~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux29~1_combout\,
	datad => \ula|mux4|Mux31~1_combout\,
	combout => \display0|rascSaida7seg[1]~1_combout\);

\display0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[2]~2_combout\ = (\ula|mux4|Mux29~1_combout\ & (\ula|mux4|Mux28~1_combout\ & ((\ula|mux4|Mux30~1_combout\) # (!\ula|mux4|Mux31~1_combout\)))) # (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux4|Mux28~1_combout\ & 
-- (\ula|mux4|Mux30~1_combout\ & !\ula|mux4|Mux31~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux30~1_combout\,
	datad => \ula|mux4|Mux31~1_combout\,
	combout => \display0|rascSaida7seg[2]~2_combout\);

\display0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[3]~3_combout\ = (\ula|mux4|Mux30~1_combout\ & ((\ula|mux4|Mux31~1_combout\ & (\ula|mux4|Mux29~1_combout\)) # (!\ula|mux4|Mux31~1_combout\ & (!\ula|mux4|Mux29~1_combout\ & \ula|mux4|Mux28~1_combout\)))) # 
-- (!\ula|mux4|Mux30~1_combout\ & (!\ula|mux4|Mux28~1_combout\ & (\ula|mux4|Mux31~1_combout\ $ (\ula|mux4|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux31~1_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula|mux4|Mux29~1_combout\,
	datad => \ula|mux4|Mux28~1_combout\,
	combout => \display0|rascSaida7seg[3]~3_combout\);

\display0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[4]~4_combout\ = (\ula|mux4|Mux30~1_combout\ & (\ula|mux4|Mux31~1_combout\ & (!\ula|mux4|Mux28~1_combout\))) # (!\ula|mux4|Mux30~1_combout\ & ((\ula|mux4|Mux29~1_combout\ & ((!\ula|mux4|Mux28~1_combout\))) # 
-- (!\ula|mux4|Mux29~1_combout\ & (\ula|mux4|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux30~1_combout\,
	datab => \ula|mux4|Mux31~1_combout\,
	datac => \ula|mux4|Mux28~1_combout\,
	datad => \ula|mux4|Mux29~1_combout\,
	combout => \display0|rascSaida7seg[4]~4_combout\);

\display0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[5]~5_combout\ = (\ula|mux4|Mux29~1_combout\ & (\ula|mux4|Mux31~1_combout\ & (\ula|mux4|Mux30~1_combout\ $ (\ula|mux4|Mux28~1_combout\)))) # (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux4|Mux28~1_combout\ & ((\ula|mux4|Mux31~1_combout\) 
-- # (\ula|mux4|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux31~1_combout\,
	datac => \ula|mux4|Mux30~1_combout\,
	datad => \ula|mux4|Mux28~1_combout\,
	combout => \display0|rascSaida7seg[5]~5_combout\);

\display0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[6]~6_combout\ = (\ula|mux4|Mux31~1_combout\ & (!\ula|mux4|Mux28~1_combout\ & (\ula|mux4|Mux29~1_combout\ $ (!\ula|mux4|Mux30~1_combout\)))) # (!\ula|mux4|Mux31~1_combout\ & (!\ula|mux4|Mux30~1_combout\ & (\ula|mux4|Mux29~1_combout\ 
-- $ (!\ula|mux4|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux31~1_combout\,
	datac => \ula|mux4|Mux30~1_combout\,
	datad => \ula|mux4|Mux28~1_combout\,
	combout => \display0|rascSaida7seg[6]~6_combout\);

\display1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~0_combout\ = (\ID_EX|q\(44) & ((\ID_EX|q\(43)) # (!\ID_EX|q\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(44),
	datab => \ID_EX|q\(43),
	datac => \ID_EX|q\(42),
	combout => \display1|rascSaida7seg[0]~0_combout\);

\display1|rascSaida7seg[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~1_combout\ = (\ID_EX|q\(138) & ((\ID_EX|q\(10)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(45),
	datab => \ID_EX|q\(138),
	datac => \ID_EX|q\(10),
	combout => \display1|rascSaida7seg[0]~1_combout\);

\display1|rascSaida7seg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~2_combout\ = (\mux_Rt_im|Y[2]~2_combout\ & ((\mux_Rt_im|Y[1]~1_combout\) # ((!\ID_EX|q\(138) & \ID_EX|q\(42))))) # (!\mux_Rt_im|Y[2]~2_combout\ & ((\mux_Rt_im|Y[1]~1_combout\ & (!\ID_EX|q\(138) & \ID_EX|q\(42))) # 
-- (!\mux_Rt_im|Y[1]~1_combout\ & (\ID_EX|q\(138)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~2_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(42),
	combout => \display1|rascSaida7seg[0]~2_combout\);

\display1|rascSaida7seg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~3_combout\ = (!\mux_Rt_im|Y[1]~1_combout\ & ((\ID_EX|q\(138) & (\mux_Rt_im|Y[2]~2_combout\)) # (!\ID_EX|q\(138) & ((\ID_EX|q\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~2_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(42),
	combout => \display1|rascSaida7seg[0]~3_combout\);

\display1|rascSaida7seg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~4_combout\ = (\display1|rascSaida7seg[0]~1_combout\ & (((\display1|rascSaida7seg[0]~2_combout\ & !\display1|rascSaida7seg[0]~3_combout\)))) # (!\display1|rascSaida7seg[0]~1_combout\ & ((\display1|rascSaida7seg[0]~3_combout\ & 
-- ((!\display1|rascSaida7seg[0]~2_combout\))) # (!\display1|rascSaida7seg[0]~3_combout\ & (\mux_Rt_im|Y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display1|rascSaida7seg[0]~1_combout\,
	datab => \mux_Rt_im|Y[2]~2_combout\,
	datac => \display1|rascSaida7seg[0]~2_combout\,
	datad => \display1|rascSaida7seg[0]~3_combout\,
	combout => \display1|rascSaida7seg[0]~4_combout\);

\display1|rascSaida7seg[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~5_combout\ = (\mux_Rt_im|Y[2]~2_combout\ & ((\display1|rascSaida7seg[0]~1_combout\ & ((\display1|rascSaida7seg[0]~2_combout\) # (!\display1|rascSaida7seg[0]~3_combout\))) # (!\display1|rascSaida7seg[0]~1_combout\ & 
-- (\display1|rascSaida7seg[0]~2_combout\ & !\display1|rascSaida7seg[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display1|rascSaida7seg[0]~1_combout\,
	datab => \mux_Rt_im|Y[2]~2_combout\,
	datac => \display1|rascSaida7seg[0]~2_combout\,
	datad => \display1|rascSaida7seg[0]~3_combout\,
	combout => \display1|rascSaida7seg[0]~5_combout\);

\display1|rascSaida7seg[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~6_combout\ = (\display1|rascSaida7seg[0]~5_combout\ & ((\mux_Rt_im|Y[3]~3_combout\ & (!\display1|rascSaida7seg[0]~0_combout\)) # (!\mux_Rt_im|Y[3]~3_combout\ & ((!\display1|rascSaida7seg[0]~4_combout\))))) # 
-- (!\display1|rascSaida7seg[0]~5_combout\ & (((\display1|rascSaida7seg[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[3]~3_combout\,
	datab => \display1|rascSaida7seg[0]~0_combout\,
	datac => \display1|rascSaida7seg[0]~4_combout\,
	datad => \display1|rascSaida7seg[0]~5_combout\,
	combout => \display1|rascSaida7seg[0]~6_combout\);

\display1|rascSaida7seg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[1]~7_combout\ = (\mux_Rt_im|Y[1]~1_combout\ & ((\mux_Rt_im|Y[0]~0_combout\ & (\mux_Rt_im|Y[3]~3_combout\)) # (!\mux_Rt_im|Y[0]~0_combout\ & ((\mux_Rt_im|Y[2]~2_combout\))))) # (!\mux_Rt_im|Y[1]~1_combout\ & 
-- (\mux_Rt_im|Y[2]~2_combout\ & (\mux_Rt_im|Y[3]~3_combout\ $ (\mux_Rt_im|Y[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[1]~1_combout\,
	datab => \mux_Rt_im|Y[3]~3_combout\,
	datac => \mux_Rt_im|Y[2]~2_combout\,
	datad => \mux_Rt_im|Y[0]~0_combout\,
	combout => \display1|rascSaida7seg[1]~7_combout\);

\display1|rascSaida7seg[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[2]~8_combout\ = (\mux_Rt_im|Y[2]~2_combout\ & (\mux_Rt_im|Y[3]~3_combout\ & ((\mux_Rt_im|Y[1]~1_combout\) # (!\mux_Rt_im|Y[0]~0_combout\)))) # (!\mux_Rt_im|Y[2]~2_combout\ & (!\mux_Rt_im|Y[3]~3_combout\ & 
-- (\mux_Rt_im|Y[1]~1_combout\ & !\mux_Rt_im|Y[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~2_combout\,
	datab => \mux_Rt_im|Y[3]~3_combout\,
	datac => \mux_Rt_im|Y[1]~1_combout\,
	datad => \mux_Rt_im|Y[0]~0_combout\,
	combout => \display1|rascSaida7seg[2]~8_combout\);

\display1|rascSaida7seg[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[3]~9_combout\ = (\mux_Rt_im|Y[1]~1_combout\ & ((\mux_Rt_im|Y[0]~0_combout\ & (\mux_Rt_im|Y[2]~2_combout\)) # (!\mux_Rt_im|Y[0]~0_combout\ & (!\mux_Rt_im|Y[2]~2_combout\ & \mux_Rt_im|Y[3]~3_combout\)))) # 
-- (!\mux_Rt_im|Y[1]~1_combout\ & (!\mux_Rt_im|Y[3]~3_combout\ & (\mux_Rt_im|Y[0]~0_combout\ $ (\mux_Rt_im|Y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~0_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \mux_Rt_im|Y[2]~2_combout\,
	datad => \mux_Rt_im|Y[3]~3_combout\,
	combout => \display1|rascSaida7seg[3]~9_combout\);

\display1|rascSaida7seg[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~10_combout\ = (\ID_EX|q\(138)) # (((\ID_EX|q\(42) & !\ID_EX|q\(44))) # (!\ID_EX|q\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(42),
	datac => \ID_EX|q\(44),
	datad => \ID_EX|q\(45),
	combout => \display1|rascSaida7seg[0]~10_combout\);

\display1|rascSaida7seg[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~11_combout\ = (\mux_Rt_im|Y[2]~2_combout\ & (((\mux_Rt_im|Y[1]~1_combout\)))) # (!\mux_Rt_im|Y[2]~2_combout\ & (\mux_Rt_im|Y[0]~0_combout\ & ((!\mux_Rt_im|Y[1]~1_combout\) # (!\mux_Rt_im|Y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[3]~3_combout\,
	datab => \mux_Rt_im|Y[0]~0_combout\,
	datac => \mux_Rt_im|Y[1]~1_combout\,
	datad => \mux_Rt_im|Y[2]~2_combout\,
	combout => \display1|rascSaida7seg[4]~11_combout\);

\display1|rascSaida7seg[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~12_combout\ = (\mux_Rt_im|Y[3]~3_combout\ & (((!\mux_Rt_im|Y[0]~0_combout\ & !\mux_Rt_im|Y[1]~1_combout\)) # (!\mux_Rt_im|Y[2]~2_combout\))) # (!\mux_Rt_im|Y[3]~3_combout\ & (\mux_Rt_im|Y[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~0_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \mux_Rt_im|Y[3]~3_combout\,
	datad => \mux_Rt_im|Y[2]~2_combout\,
	combout => \display1|rascSaida7seg[0]~12_combout\);

\display1|rascSaida7seg[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~13_combout\ = (\mux_Rt_im|Y[2]~2_combout\ & ((\display1|rascSaida7seg[4]~11_combout\ & ((\display1|rascSaida7seg[0]~12_combout\))) # (!\display1|rascSaida7seg[4]~11_combout\ & (\display1|rascSaida7seg[0]~10_combout\)))) # 
-- (!\mux_Rt_im|Y[2]~2_combout\ & (((\display1|rascSaida7seg[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display1|rascSaida7seg[0]~10_combout\,
	datab => \mux_Rt_im|Y[2]~2_combout\,
	datac => \display1|rascSaida7seg[4]~11_combout\,
	datad => \display1|rascSaida7seg[0]~12_combout\,
	combout => \display1|rascSaida7seg[4]~13_combout\);

\display1|rascSaida7seg[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[5]~14_combout\ = (\mux_Rt_im|Y[2]~2_combout\ & (\mux_Rt_im|Y[0]~0_combout\ & (\mux_Rt_im|Y[1]~1_combout\ $ (\mux_Rt_im|Y[3]~3_combout\)))) # (!\mux_Rt_im|Y[2]~2_combout\ & (!\mux_Rt_im|Y[3]~3_combout\ & 
-- ((\mux_Rt_im|Y[0]~0_combout\) # (\mux_Rt_im|Y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~2_combout\,
	datab => \mux_Rt_im|Y[0]~0_combout\,
	datac => \mux_Rt_im|Y[1]~1_combout\,
	datad => \mux_Rt_im|Y[3]~3_combout\,
	combout => \display1|rascSaida7seg[5]~14_combout\);

\display1|rascSaida7seg[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~15_combout\ = (\mux_Rt_im|Y[3]~3_combout\ & (\ID_EX|q\(44) & ((!\ID_EX|q\(42))))) # (!\mux_Rt_im|Y[3]~3_combout\ & (((!\mux_Rt_im|Y[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(44),
	datab => \mux_Rt_im|Y[3]~3_combout\,
	datac => \mux_Rt_im|Y[2]~2_combout\,
	datad => \ID_EX|q\(42),
	combout => \display1|rascSaida7seg[6]~15_combout\);

\display1|rascSaida7seg[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~16_combout\ = (\mux_Rt_im|Y[1]~1_combout\ & (\mux_Rt_im|Y[2]~2_combout\ & (\display1|rascSaida7seg[0]~12_combout\))) # (!\mux_Rt_im|Y[1]~1_combout\ & (((\display1|rascSaida7seg[6]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~2_combout\,
	datab => \display1|rascSaida7seg[0]~12_combout\,
	datac => \display1|rascSaida7seg[6]~15_combout\,
	datad => \mux_Rt_im|Y[1]~1_combout\,
	combout => \display1|rascSaida7seg[6]~16_combout\);

\display2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[0]~0_combout\ = (\ID_EX|q\(77) & (\ID_EX|q\(74) & (\ID_EX|q\(75) $ (\ID_EX|q\(76))))) # (!\ID_EX|q\(77) & (!\ID_EX|q\(75) & (\ID_EX|q\(74) $ (\ID_EX|q\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(75),
	datab => \ID_EX|q\(77),
	datac => \ID_EX|q\(74),
	datad => \ID_EX|q\(76),
	combout => \display2|rascSaida7seg[0]~0_combout\);

\display2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[1]~1_combout\ = (\ID_EX|q\(75) & ((\ID_EX|q\(74) & (\ID_EX|q\(77))) # (!\ID_EX|q\(74) & ((\ID_EX|q\(76)))))) # (!\ID_EX|q\(75) & (\ID_EX|q\(76) & (\ID_EX|q\(77) $ (\ID_EX|q\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(75),
	datab => \ID_EX|q\(77),
	datac => \ID_EX|q\(76),
	datad => \ID_EX|q\(74),
	combout => \display2|rascSaida7seg[1]~1_combout\);

\display2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[2]~2_combout\ = (\ID_EX|q\(76) & (\ID_EX|q\(77) & ((\ID_EX|q\(75)) # (!\ID_EX|q\(74))))) # (!\ID_EX|q\(76) & (!\ID_EX|q\(77) & (\ID_EX|q\(75) & !\ID_EX|q\(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(76),
	datab => \ID_EX|q\(77),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(74),
	combout => \display2|rascSaida7seg[2]~2_combout\);

\display2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[3]~3_combout\ = (\ID_EX|q\(75) & ((\ID_EX|q\(74) & (\ID_EX|q\(76))) # (!\ID_EX|q\(74) & (!\ID_EX|q\(76) & \ID_EX|q\(77))))) # (!\ID_EX|q\(75) & (!\ID_EX|q\(77) & (\ID_EX|q\(74) $ (\ID_EX|q\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(74),
	datab => \ID_EX|q\(75),
	datac => \ID_EX|q\(76),
	datad => \ID_EX|q\(77),
	combout => \display2|rascSaida7seg[3]~3_combout\);

\display2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[4]~4_combout\ = (\ID_EX|q\(75) & (\ID_EX|q\(74) & (!\ID_EX|q\(77)))) # (!\ID_EX|q\(75) & ((\ID_EX|q\(76) & ((!\ID_EX|q\(77)))) # (!\ID_EX|q\(76) & (\ID_EX|q\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(75),
	datab => \ID_EX|q\(74),
	datac => \ID_EX|q\(77),
	datad => \ID_EX|q\(76),
	combout => \display2|rascSaida7seg[4]~4_combout\);

\display2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[5]~5_combout\ = (\ID_EX|q\(76) & (\ID_EX|q\(74) & (\ID_EX|q\(75) $ (\ID_EX|q\(77))))) # (!\ID_EX|q\(76) & (!\ID_EX|q\(77) & ((\ID_EX|q\(74)) # (\ID_EX|q\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(76),
	datab => \ID_EX|q\(74),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(77),
	combout => \display2|rascSaida7seg[5]~5_combout\);

\display2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[6]~6_combout\ = (\ID_EX|q\(74) & (!\ID_EX|q\(77) & (\ID_EX|q\(76) $ (!\ID_EX|q\(75))))) # (!\ID_EX|q\(74) & (!\ID_EX|q\(75) & (\ID_EX|q\(76) $ (!\ID_EX|q\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(76),
	datab => \ID_EX|q\(74),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(77),
	combout => \display2|rascSaida7seg[6]~6_combout\);

\display4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[0]~0_combout\ = (\memoriaDados|ram~44_combout\ & (\memoriaDados|ram~45_combout\ & (\memoriaDados|ram~43_combout\ $ (\memoriaDados|ram~46_combout\)))) # (!\memoriaDados|ram~44_combout\ & (!\memoriaDados|ram~43_combout\ & 
-- (\memoriaDados|ram~45_combout\ $ (\memoriaDados|ram~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~43_combout\,
	datab => \memoriaDados|ram~44_combout\,
	datac => \memoriaDados|ram~45_combout\,
	datad => \memoriaDados|ram~46_combout\,
	combout => \display4|rascSaida7seg[0]~0_combout\);

\display4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[1]~1_combout\ = (\memoriaDados|ram~43_combout\ & ((\memoriaDados|ram~45_combout\ & (\memoriaDados|ram~44_combout\)) # (!\memoriaDados|ram~45_combout\ & ((\memoriaDados|ram~46_combout\))))) # (!\memoriaDados|ram~43_combout\ & 
-- (\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~44_combout\ $ (\memoriaDados|ram~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~43_combout\,
	datab => \memoriaDados|ram~44_combout\,
	datac => \memoriaDados|ram~46_combout\,
	datad => \memoriaDados|ram~45_combout\,
	combout => \display4|rascSaida7seg[1]~1_combout\);

\display4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[2]~2_combout\ = (\memoriaDados|ram~44_combout\ & (\memoriaDados|ram~46_combout\ & ((\memoriaDados|ram~43_combout\) # (!\memoriaDados|ram~45_combout\)))) # (!\memoriaDados|ram~44_combout\ & (!\memoriaDados|ram~46_combout\ & 
-- (\memoriaDados|ram~43_combout\ & !\memoriaDados|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~44_combout\,
	datab => \memoriaDados|ram~46_combout\,
	datac => \memoriaDados|ram~43_combout\,
	datad => \memoriaDados|ram~45_combout\,
	combout => \display4|rascSaida7seg[2]~2_combout\);

\display4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[3]~3_combout\ = (\memoriaDados|ram~43_combout\ & ((\memoriaDados|ram~45_combout\ & (\memoriaDados|ram~46_combout\)) # (!\memoriaDados|ram~45_combout\ & (!\memoriaDados|ram~46_combout\ & \memoriaDados|ram~44_combout\)))) # 
-- (!\memoriaDados|ram~43_combout\ & (!\memoriaDados|ram~44_combout\ & (\memoriaDados|ram~45_combout\ $ (\memoriaDados|ram~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~45_combout\,
	datab => \memoriaDados|ram~43_combout\,
	datac => \memoriaDados|ram~46_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[3]~3_combout\);

\display4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[4]~4_combout\ = (\memoriaDados|ram~43_combout\ & (\memoriaDados|ram~45_combout\ & ((!\memoriaDados|ram~44_combout\)))) # (!\memoriaDados|ram~43_combout\ & ((\memoriaDados|ram~46_combout\ & ((!\memoriaDados|ram~44_combout\))) # 
-- (!\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~43_combout\,
	datab => \memoriaDados|ram~45_combout\,
	datac => \memoriaDados|ram~46_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[4]~4_combout\);

\display4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[5]~5_combout\ = (\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~45_combout\ & (\memoriaDados|ram~43_combout\ $ (\memoriaDados|ram~44_combout\)))) # (!\memoriaDados|ram~46_combout\ & (!\memoriaDados|ram~44_combout\ & 
-- ((\memoriaDados|ram~45_combout\) # (\memoriaDados|ram~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~46_combout\,
	datab => \memoriaDados|ram~45_combout\,
	datac => \memoriaDados|ram~43_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[5]~5_combout\);

\display4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[6]~6_combout\ = (\memoriaDados|ram~45_combout\ & (!\memoriaDados|ram~44_combout\ & (\memoriaDados|ram~46_combout\ $ (!\memoriaDados|ram~43_combout\)))) # (!\memoriaDados|ram~45_combout\ & (!\memoriaDados|ram~43_combout\ & 
-- (\memoriaDados|ram~46_combout\ $ (!\memoriaDados|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~46_combout\,
	datab => \memoriaDados|ram~45_combout\,
	datac => \memoriaDados|ram~43_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[6]~6_combout\);

\display6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[0]~0_combout\ = (\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[0]~2_combout\ & (\mux_ULA|Y[1]~0_combout\ $ (\mux_ULA|Y[2]~3_combout\)))) # (!\mux_ULA|Y[3]~1_combout\ & (!\mux_ULA|Y[1]~0_combout\ & (\mux_ULA|Y[0]~2_combout\ $ 
-- (\mux_ULA|Y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[1]~0_combout\,
	datab => \mux_ULA|Y[3]~1_combout\,
	datac => \mux_ULA|Y[0]~2_combout\,
	datad => \mux_ULA|Y[2]~3_combout\,
	combout => \display6|rascSaida7seg[0]~0_combout\);

\display6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[1]~1_combout\ = (\mux_ULA|Y[1]~0_combout\ & ((\mux_ULA|Y[0]~2_combout\ & (\mux_ULA|Y[3]~1_combout\)) # (!\mux_ULA|Y[0]~2_combout\ & ((\mux_ULA|Y[2]~3_combout\))))) # (!\mux_ULA|Y[1]~0_combout\ & (\mux_ULA|Y[2]~3_combout\ & 
-- (\mux_ULA|Y[3]~1_combout\ $ (\mux_ULA|Y[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[1]~0_combout\,
	datab => \mux_ULA|Y[3]~1_combout\,
	datac => \mux_ULA|Y[2]~3_combout\,
	datad => \mux_ULA|Y[0]~2_combout\,
	combout => \display6|rascSaida7seg[1]~1_combout\);

\display6|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[2]~2_combout\ = (\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[2]~3_combout\ & ((\mux_ULA|Y[1]~0_combout\) # (!\mux_ULA|Y[0]~2_combout\)))) # (!\mux_ULA|Y[3]~1_combout\ & (!\mux_ULA|Y[2]~3_combout\ & (\mux_ULA|Y[1]~0_combout\ & 
-- !\mux_ULA|Y[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[3]~1_combout\,
	datab => \mux_ULA|Y[2]~3_combout\,
	datac => \mux_ULA|Y[1]~0_combout\,
	datad => \mux_ULA|Y[0]~2_combout\,
	combout => \display6|rascSaida7seg[2]~2_combout\);

\display6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[3]~3_combout\ = (\mux_ULA|Y[1]~0_combout\ & ((\mux_ULA|Y[0]~2_combout\ & (\mux_ULA|Y[2]~3_combout\)) # (!\mux_ULA|Y[0]~2_combout\ & (!\mux_ULA|Y[2]~3_combout\ & \mux_ULA|Y[3]~1_combout\)))) # (!\mux_ULA|Y[1]~0_combout\ & 
-- (!\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[0]~2_combout\ $ (\mux_ULA|Y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[0]~2_combout\,
	datab => \mux_ULA|Y[1]~0_combout\,
	datac => \mux_ULA|Y[2]~3_combout\,
	datad => \mux_ULA|Y[3]~1_combout\,
	combout => \display6|rascSaida7seg[3]~3_combout\);

\display6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[4]~4_combout\ = (\mux_ULA|Y[1]~0_combout\ & (\mux_ULA|Y[0]~2_combout\ & (!\mux_ULA|Y[3]~1_combout\))) # (!\mux_ULA|Y[1]~0_combout\ & ((\mux_ULA|Y[2]~3_combout\ & ((!\mux_ULA|Y[3]~1_combout\))) # (!\mux_ULA|Y[2]~3_combout\ & 
-- (\mux_ULA|Y[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[1]~0_combout\,
	datab => \mux_ULA|Y[0]~2_combout\,
	datac => \mux_ULA|Y[3]~1_combout\,
	datad => \mux_ULA|Y[2]~3_combout\,
	combout => \display6|rascSaida7seg[4]~4_combout\);

\display6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[5]~5_combout\ = (\mux_ULA|Y[2]~3_combout\ & (\mux_ULA|Y[0]~2_combout\ & (\mux_ULA|Y[1]~0_combout\ $ (\mux_ULA|Y[3]~1_combout\)))) # (!\mux_ULA|Y[2]~3_combout\ & (!\mux_ULA|Y[3]~1_combout\ & ((\mux_ULA|Y[0]~2_combout\) # 
-- (\mux_ULA|Y[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[2]~3_combout\,
	datab => \mux_ULA|Y[0]~2_combout\,
	datac => \mux_ULA|Y[1]~0_combout\,
	datad => \mux_ULA|Y[3]~1_combout\,
	combout => \display6|rascSaida7seg[5]~5_combout\);

\display6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[6]~6_combout\ = (\mux_ULA|Y[0]~2_combout\ & (!\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[2]~3_combout\ $ (!\mux_ULA|Y[1]~0_combout\)))) # (!\mux_ULA|Y[0]~2_combout\ & (!\mux_ULA|Y[1]~0_combout\ & (\mux_ULA|Y[2]~3_combout\ $ 
-- (!\mux_ULA|Y[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[2]~3_combout\,
	datab => \mux_ULA|Y[0]~2_combout\,
	datac => \mux_ULA|Y[1]~0_combout\,
	datad => \mux_ULA|Y[3]~1_combout\,
	combout => \display6|rascSaida7seg[6]~6_combout\);

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

ww_imm(0) <= \imm[0]~output_o\;

ww_imm(1) <= \imm[1]~output_o\;

ww_imm(2) <= \imm[2]~output_o\;

ww_ula_control(0) <= \ula_control[0]~output_o\;

ww_ula_control(1) <= \ula_control[1]~output_o\;

ww_ula_control(2) <= \ula_control[2]~output_o\;

ww_ula_control(3) <= \ula_control[3]~output_o\;

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

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;
END structure;


