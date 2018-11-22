-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/22/2018 15:18:15"

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

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor|tick~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor|Add0~0_combout\ : std_logic;
SIGNAL \divisor|contador~1_combout\ : std_logic;
SIGNAL \divisor|Add0~1\ : std_logic;
SIGNAL \divisor|Add0~2_combout\ : std_logic;
SIGNAL \divisor|Add0~3\ : std_logic;
SIGNAL \divisor|Add0~4_combout\ : std_logic;
SIGNAL \divisor|Add0~5\ : std_logic;
SIGNAL \divisor|Add0~6_combout\ : std_logic;
SIGNAL \divisor|Add0~7\ : std_logic;
SIGNAL \divisor|Add0~8_combout\ : std_logic;
SIGNAL \divisor|Add0~9\ : std_logic;
SIGNAL \divisor|Add0~10_combout\ : std_logic;
SIGNAL \divisor|Add0~11\ : std_logic;
SIGNAL \divisor|Add0~12_combout\ : std_logic;
SIGNAL \divisor|contador~0_combout\ : std_logic;
SIGNAL \divisor|Add0~13\ : std_logic;
SIGNAL \divisor|Add0~14_combout\ : std_logic;
SIGNAL \divisor|Equal0~0_combout\ : std_logic;
SIGNAL \divisor|Add0~15\ : std_logic;
SIGNAL \divisor|Add0~16_combout\ : std_logic;
SIGNAL \divisor|Add0~17\ : std_logic;
SIGNAL \divisor|Add0~18_combout\ : std_logic;
SIGNAL \divisor|Add0~19\ : std_logic;
SIGNAL \divisor|Add0~20_combout\ : std_logic;
SIGNAL \divisor|Add0~21\ : std_logic;
SIGNAL \divisor|Add0~22_combout\ : std_logic;
SIGNAL \divisor|contador~4_combout\ : std_logic;
SIGNAL \divisor|Add0~23\ : std_logic;
SIGNAL \divisor|Add0~24_combout\ : std_logic;
SIGNAL \divisor|contador~5_combout\ : std_logic;
SIGNAL \divisor|Add0~25\ : std_logic;
SIGNAL \divisor|Add0~26_combout\ : std_logic;
SIGNAL \divisor|contador~2_combout\ : std_logic;
SIGNAL \divisor|Add0~27\ : std_logic;
SIGNAL \divisor|Add0~28_combout\ : std_logic;
SIGNAL \divisor|contador~3_combout\ : std_logic;
SIGNAL \divisor|Add0~29\ : std_logic;
SIGNAL \divisor|Add0~30_combout\ : std_logic;
SIGNAL \divisor|Add0~31\ : std_logic;
SIGNAL \divisor|Add0~32_combout\ : std_logic;
SIGNAL \divisor|contador~8_combout\ : std_logic;
SIGNAL \divisor|Add0~33\ : std_logic;
SIGNAL \divisor|Add0~34_combout\ : std_logic;
SIGNAL \divisor|Add0~35\ : std_logic;
SIGNAL \divisor|Add0~36_combout\ : std_logic;
SIGNAL \divisor|contador~9_combout\ : std_logic;
SIGNAL \divisor|Add0~37\ : std_logic;
SIGNAL \divisor|Add0~38_combout\ : std_logic;
SIGNAL \divisor|contador~10_combout\ : std_logic;
SIGNAL \divisor|Add0~39\ : std_logic;
SIGNAL \divisor|Add0~40_combout\ : std_logic;
SIGNAL \divisor|contador~6_combout\ : std_logic;
SIGNAL \divisor|Add0~41\ : std_logic;
SIGNAL \divisor|Add0~42_combout\ : std_logic;
SIGNAL \divisor|contador~7_combout\ : std_logic;
SIGNAL \divisor|Add0~43\ : std_logic;
SIGNAL \divisor|Add0~44_combout\ : std_logic;
SIGNAL \divisor|contador~11_combout\ : std_logic;
SIGNAL \divisor|Add0~45\ : std_logic;
SIGNAL \divisor|Add0~46_combout\ : std_logic;
SIGNAL \divisor|Add0~47\ : std_logic;
SIGNAL \divisor|Add0~48_combout\ : std_logic;
SIGNAL \divisor|contador~12_combout\ : std_logic;
SIGNAL \divisor|Equal0~6_combout\ : std_logic;
SIGNAL \divisor|Equal0~5_combout\ : std_logic;
SIGNAL \divisor|Equal0~7_combout\ : std_logic;
SIGNAL \divisor|Equal0~1_combout\ : std_logic;
SIGNAL \divisor|Equal0~2_combout\ : std_logic;
SIGNAL \divisor|Equal0~3_combout\ : std_logic;
SIGNAL \divisor|Equal0~4_combout\ : std_logic;
SIGNAL \divisor|Equal0~8_combout\ : std_logic;
SIGNAL \divisor|tick~0_combout\ : std_logic;
SIGNAL \divisor|tick~feeder_combout\ : std_logic;
SIGNAL \divisor|tick~q\ : std_logic;
SIGNAL \divisor|tick~clkctrl_outclk\ : std_logic;
SIGNAL \memoriaInst|rom~47_combout\ : std_logic;
SIGNAL \memoriaInst|rom~48_combout\ : std_logic;
SIGNAL \IF_ID|q[34]~8_combout\ : std_logic;
SIGNAL \ID_EX|q[108]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[72]~8_combout\ : std_logic;
SIGNAL \memoriaInst|rom~45_combout\ : std_logic;
SIGNAL \memoriaInst|rom~46_combout\ : std_logic;
SIGNAL \IF_ID|q[34]~9\ : std_logic;
SIGNAL \IF_ID|q[35]~10_combout\ : std_logic;
SIGNAL \ID_EX|q[109]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[72]~9\ : std_logic;
SIGNAL \EX_MEM|q[73]~10_combout\ : std_logic;
SIGNAL \IF_ID|q[35]~11\ : std_logic;
SIGNAL \IF_ID|q[36]~13\ : std_logic;
SIGNAL \IF_ID|q[37]~14_combout\ : std_logic;
SIGNAL \memoriaInst|rom~41_combout\ : std_logic;
SIGNAL \memoriaInst|rom~42_combout\ : std_logic;
SIGNAL \ID_EX|q[3]~feeder_combout\ : std_logic;
SIGNAL \IF_ID|q[36]~12_combout\ : std_logic;
SIGNAL \ID_EX|q[110]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[73]~11\ : std_logic;
SIGNAL \EX_MEM|q[74]~13\ : std_logic;
SIGNAL \EX_MEM|q[75]~14_combout\ : std_logic;
SIGNAL \memoriaInst|rom~39_combout\ : std_logic;
SIGNAL \memoriaInst|rom~40_combout\ : std_logic;
SIGNAL \IF_ID|q[37]~15\ : std_logic;
SIGNAL \IF_ID|q[38]~16_combout\ : std_logic;
SIGNAL \ID_EX|q[112]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[75]~15\ : std_logic;
SIGNAL \EX_MEM|q[76]~16_combout\ : std_logic;
SIGNAL \IF_ID|q[38]~17\ : std_logic;
SIGNAL \IF_ID|q[39]~18_combout\ : std_logic;
SIGNAL \ID_EX|q[113]~feeder_combout\ : std_logic;
SIGNAL \memoriaInst|rom~37_combout\ : std_logic;
SIGNAL \memoriaInst|rom~11_combout\ : std_logic;
SIGNAL \memoriaInst|rom~28_combout\ : std_logic;
SIGNAL \memoriaInst|rom~38_combout\ : std_logic;
SIGNAL \ID_EX|q[15]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[76]~17\ : std_logic;
SIGNAL \EX_MEM|q[77]~18_combout\ : std_logic;
SIGNAL \IF_ID|q[39]~19\ : std_logic;
SIGNAL \IF_ID|q[40]~20_combout\ : std_logic;
SIGNAL \ID_EX|q[114]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[77]~19\ : std_logic;
SIGNAL \EX_MEM|q[78]~20_combout\ : std_logic;
SIGNAL \PC|q[8]~feeder_combout\ : std_logic;
SIGNAL \IF_ID|q[40]~21\ : std_logic;
SIGNAL \IF_ID|q[41]~22_combout\ : std_logic;
SIGNAL \ID_EX|q[115]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[78]~21\ : std_logic;
SIGNAL \EX_MEM|q[79]~22_combout\ : std_logic;
SIGNAL \memoriaInst|rom~8_combout\ : std_logic;
SIGNAL \memoriaInst|rom~43_combout\ : std_logic;
SIGNAL \memoriaInst|rom~44_combout\ : std_logic;
SIGNAL \ID_EX|q[2]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[74]~12_combout\ : std_logic;
SIGNAL \PC|q[4]~feeder_combout\ : std_logic;
SIGNAL \memoriaInst|rom~17_combout\ : std_logic;
SIGNAL \memoriaInst|rom~18_combout\ : std_logic;
SIGNAL \memoriaInst|rom~19_combout\ : std_logic;
SIGNAL \memoriaInst|rom~15_combout\ : std_logic;
SIGNAL \memoriaInst|rom~16_combout\ : std_logic;
SIGNAL \memoriaInst|rom~20_combout\ : std_logic;
SIGNAL \memoriaInst|rom~21_combout\ : std_logic;
SIGNAL \memoriaInst|rom~22_combout\ : std_logic;
SIGNAL \memoriaInst|rom~23_combout\ : std_logic;
SIGNAL \memoriaInst|rom~12_combout\ : std_logic;
SIGNAL \memoriaInst|rom~50_combout\ : std_logic;
SIGNAL \EX_MEM|q[106]~feeder_combout\ : std_logic;
SIGNAL \MEM_WB|q[70]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \fd_ctrl|op_code_aux~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~13_combout\ : std_logic;
SIGNAL \memoriaInst|rom~14_combout\ : std_logic;
SIGNAL \ID_EX|q[8]~feeder_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[3]~3_combout\ : std_logic;
SIGNAL \MEM_WB|q[3]~feeder_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[2]~2_combout\ : std_logic;
SIGNAL \MEM_WB|q[2]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador~39_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[4]~4_combout\ : std_logic;
SIGNAL \MEM_WB|q[4]~feeder_combout\ : std_logic;
SIGNAL \memoriaInst|rom~6_combout\ : std_logic;
SIGNAL \memoriaInst|rom~7_combout\ : std_logic;
SIGNAL \memoriaInst|rom~9_combout\ : std_logic;
SIGNAL \IF_ID|q[16]~feeder_combout\ : std_logic;
SIGNAL \ID_EX|q[5]~feeder_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[0]~0_combout\ : std_logic;
SIGNAL \MEM_WB|q[0]~feeder_combout\ : std_logic;
SIGNAL \memoriaInst|rom~10_combout\ : std_logic;
SIGNAL \memoriaInst|rom~49_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \IF_ID|q[17]~feeder_combout\ : std_logic;
SIGNAL \ID_EX|q[6]~feeder_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[1]~1_combout\ : std_logic;
SIGNAL \MEM_WB|q[1]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador~38_combout\ : std_logic;
SIGNAL \regs|saidaB[8]~0_combout\ : std_logic;
SIGNAL \regs|Equal1~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~29_combout\ : std_logic;
SIGNAL \memoriaInst|rom~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador~41_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \memoriaInst|rom~26_combout\ : std_logic;
SIGNAL \memoriaInst|rom~27_combout\ : std_logic;
SIGNAL \memoriaInst|rom~51_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \memoriaInst|rom~24_combout\ : std_logic;
SIGNAL \memoriaInst|rom~25_combout\ : std_logic;
SIGNAL \regs|registrador~40_combout\ : std_logic;
SIGNAL \regs|saidaA[8]~44_combout\ : std_logic;
SIGNAL \IF_ID|q[22]~feeder_combout\ : std_logic;
SIGNAL \IF_ID|q[24]~feeder_combout\ : std_logic;
SIGNAL \regs|Equal0~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal3~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[1]~58_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal4~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[0]~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[5]~46_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[7]~46_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[10]~4_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[13]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[11]~6_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[15]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[15]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[35]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[18]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[20]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[16]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[17]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[18]~20_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[23]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[57]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[61]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[25]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[63]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[26]~52_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[27]~6_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[4]~44_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[6]~48_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \regs|saidaB[6]~49_combout\ : std_logic;
SIGNAL \EX_MEM|q[11]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[7]~50_combout\ : std_logic;
SIGNAL \regs|saidaB[7]~51_combout\ : std_logic;
SIGNAL \EX_MEM|q[12]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[27]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[23]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[57]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \regs|saidaB[23]~31_combout\ : std_logic;
SIGNAL \ID_EX|q[65]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[28]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[24]~32_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \regs|saidaB[24]~33_combout\ : std_logic;
SIGNAL \ID_EX|q[66]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[29]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[25]~34_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \regs|saidaB[25]~35_combout\ : std_logic;
SIGNAL \ID_EX|q[67]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[30]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[31]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[27]~54_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[65]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[27]~55_combout\ : std_logic;
SIGNAL \EX_MEM|q[32]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[67]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[28]~60_combout\ : std_logic;
SIGNAL \regs|saidaB[28]~61_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[71]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[30]~56_combout\ : std_logic;
SIGNAL \regs|saidaB[30]~57_combout\ : std_logic;
SIGNAL \EX_MEM|q[35]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[73]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[31]~62_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \regs|saidaB[31]~63_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[31]~62_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[73]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[31]~63_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[31]~57_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[30]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[71]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[30]~0_combout\ : std_logic;
SIGNAL \regs|saidaA[30]~1_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[29]~0_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[28]~1_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[27]~2_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[26]~8_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[63]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \regs|saidaA[26]~9_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[26]~3_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[25]~4_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[24]~5_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[24]~12_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[59]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \regs|saidaA[24]~13_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[23]~6_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[22]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[55]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[22]~17_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[22]~7_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[21]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \regs|saidaA[21]~19_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[53]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[21]~26_combout\ : std_logic;
SIGNAL \regs|saidaB[21]~27_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[21]~8_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[20]~20_combout\ : std_logic;
SIGNAL \regs|saidaA[20]~21_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[20]~24_combout\ : std_logic;
SIGNAL \regs|saidaB[20]~25_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[20]~9_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[19]~22_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[49]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[19]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[19]~22_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \regs|saidaB[19]~23_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[19]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[47]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[18]~24_combout\ : std_logic;
SIGNAL \regs|saidaA[18]~25_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[18]~11_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[17]~26_combout\ : std_logic;
SIGNAL \regs|saidaA[17]~27_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[17]~12_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[16]~13_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[16]~28_combout\ : std_logic;
SIGNAL \regs|saidaA[16]~29_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[16]~17_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[17]~18_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[18]~19_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[19]~20_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[20]~21_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[21]~22_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[22]~23_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[23]~24_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[24]~25_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[25]~26_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[26]~27_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[27]~28_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[67]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[28]~4_combout\ : std_logic;
SIGNAL \regs|saidaA[28]~5_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[28]~29_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[29]~2_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \regs|saidaA[29]~3_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[29]~30_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[30]~31_combout\ : std_logic;
SIGNAL \ula|mux4|Mux0~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[31]~31_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \regs|saidaB[4]~45_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \ula|mux2B|Y[30]~36_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[30]~28_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[69]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[29]~58_combout\ : std_logic;
SIGNAL \regs|saidaB[29]~59_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[29]~37_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \mux_ULA|Y[29]~29_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[3]~42_combout\ : std_logic;
SIGNAL \regs|saidaB[3]~43_combout\ : std_logic;
SIGNAL \ID_EX|q[45]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[8]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \ula|mux2B|Y[28]~54_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[28]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[65]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[27]~7_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[27]~55_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \mux_ULA|Y[27]~27_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \regs|saidaB[26]~53_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[26]~45_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~0_combout\ : std_logic;
SIGNAL \MEM_WB|q[31]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \mux_ULA|Y[26]~26_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \regs|saidaA[25]~11_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[25]~44_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \mux_ULA|Y[25]~17_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[2]~40_combout\ : std_logic;
SIGNAL \regs|saidaB[2]~41_combout\ : std_logic;
SIGNAL \ID_EX|q[44]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[7]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \ula|mux2B|Y[24]~43_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~0_combout\ : std_logic;
SIGNAL \MEM_WB|q[29]~feeder_combout\ : std_logic;
SIGNAL \mux_ULA|Y[24]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \regs|saidaA[23]~15_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[23]~42_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \mux_ULA|Y[23]~15_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[22]~28_combout\ : std_logic;
SIGNAL \regs|saidaB[22]~29_combout\ : std_logic;
SIGNAL \ID_EX|q[64]~feeder_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[22]~53_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \mux_ULA|Y[22]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \regs|saidaB[18]~21_combout\ : std_logic;
SIGNAL \ID_EX|q[60]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[25]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \ula|mux2B|Y[21]~52_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[21]~13_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \regs|saidaB[17]~19_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \ula|mux2B|Y[20]~51_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[20]~12_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \regs|saidaB[16]~17_combout\ : std_logic;
SIGNAL \ID_EX|q[58]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[21]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \ula|mux2B|Y[19]~50_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[19]~11_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[14]~12_combout\ : std_logic;
SIGNAL \regs|saidaB[14]~13_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \ula|mux2B|Y[18]~41_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[18]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[12]~8_combout\ : std_logic;
SIGNAL \regs|saidaB[12]~9_combout\ : std_logic;
SIGNAL \ID_EX|q[54]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \ula|mux2B|Y[17]~40_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[17]~9_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \regs|saidaA[15]~31_combout\ : std_logic;
SIGNAL \memoriaInst|rom~31_combout\ : std_logic;
SIGNAL \memoriaInst|rom~32_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[14]~15_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[14]~32_combout\ : std_logic;
SIGNAL \regs|saidaA[14]~33_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[13]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[13]~34_combout\ : std_logic;
SIGNAL \regs|saidaA[13]~35_combout\ : std_logic;
SIGNAL \memoriaInst|rom~33_combout\ : std_logic;
SIGNAL \memoriaInst|rom~34_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[12]~17_combout\ : std_logic;
SIGNAL \memoriaInst|rom~35_combout\ : std_logic;
SIGNAL \memoriaInst|rom~36_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[11]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[11]~38_combout\ : std_logic;
SIGNAL \regs|saidaA[11]~39_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[10]~19_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[9]~20_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[9]~42_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \regs|saidaA[9]~43_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[8]~21_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[7]~22_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[6]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[5]~50_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \regs|saidaA[5]~51_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[4]~25_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[3]~26_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[2]~27_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[2]~56_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \regs|saidaA[2]~57_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[2]~3_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[3]~4_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[4]~5_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[5]~6_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[6]~7_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[7]~8_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[8]~9_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[9]~10_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[10]~11_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[11]~12_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[12]~13_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[13]~14_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[14]~15_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[15]~16_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[16]~39_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \mux_ULA|Y[16]~8_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[15]~14_combout\ : std_logic;
SIGNAL \regs|saidaB[15]~15_combout\ : std_logic;
SIGNAL \ID_EX|q[57]~feeder_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[15]~38_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~0_combout\ : std_logic;
SIGNAL \MEM_WB|q[20]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \mux_ULA|Y[15]~7_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \regs|saidaB[11]~7_combout\ : std_logic;
SIGNAL \ID_EX|q[53]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[16]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \ula|mux2B|Y[14]~65_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[14]~6_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \regs|saidaB[13]~11_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[13]~46_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \mux_ULA|Y[13]~5_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[12]~36_combout\ : std_logic;
SIGNAL \regs|saidaA[12]~37_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[12]~64_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \mux_ULA|Y[12]~4_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \regs|saidaB[10]~5_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \ula|mux2B|Y[11]~59_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[11]~3_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[10]~40_combout\ : std_logic;
SIGNAL \regs|saidaA[10]~41_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[10]~58_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \mux_ULA|Y[10]~2_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[9]~2_combout\ : std_logic;
SIGNAL \regs|saidaB[9]~3_combout\ : std_logic;
SIGNAL \EX_MEM|q[14]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \ula|mux2B|Y[9]~48_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~0_combout\ : std_logic;
SIGNAL \mux_ULA|Y[9]~1_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \regs|saidaA[7]~47_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[7]~49_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \mux_ULA|Y[7]~25_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[6]~48_combout\ : std_logic;
SIGNAL \regs|saidaA[6]~49_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[6]~47_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \mux_ULA|Y[6]~24_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \regs|saidaB[5]~47_combout\ : std_logic;
SIGNAL \ID_EX|q[47]~feeder_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[5]~24_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[5]~63_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \mux_ULA|Y[5]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[4]~52_combout\ : std_logic;
SIGNAL \regs|saidaA[4]~53_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[4]~62_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \mux_ULA|Y[4]~22_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[3]~54_combout\ : std_logic;
SIGNAL \regs|saidaA[3]~55_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[3]~61_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \mux_ULA|Y[3]~21_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[1]~38_combout\ : std_logic;
SIGNAL \regs|saidaB[1]~39_combout\ : std_logic;
SIGNAL \ID_EX|q[43]~feeder_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[1]~28_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[0]~60_combout\ : std_logic;
SIGNAL \regs|saidaA[0]~61_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[0]~29_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[0]~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[1]~2_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[2]~60_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \mux_ULA|Y[2]~20_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \regs|saidaA[1]~59_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[1]~66_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \mux_ULA|Y[1]~19_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[0]~36_combout\ : std_logic;
SIGNAL \regs|saidaB[0]~37_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \ula|mux4|Mux31~0_combout\ : std_logic;
SIGNAL \EX_MEM|q[37]~feeder_combout\ : std_logic;
SIGNAL \mux_ULA|Y[0]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \regs|saidaA[8]~45_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[8]~56_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \mux_ULA|Y[8]~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \regs|saidaB[8]~1_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~12_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~5_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~2_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~3_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~4_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~15_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~7_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~8_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~9_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~10_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~6_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~11_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~13_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|leds~0_combout\ : std_logic;
SIGNAL \controlador1|decodificador1|seg7~14_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[5]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[4]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[7]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[6]~feeder_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[10]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[11]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[8]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[9]~feeder_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[15]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[13]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[12]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[14]~feeder_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[18]~feeder_combout\ : std_logic;
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
SIGNAL \controlador1|reg_seg7|q[25]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[27]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[26]~feeder_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[31]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[29]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[28]~feeder_combout\ : std_logic;
SIGNAL \controlador1|reg_seg7|q[30]~feeder_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX7|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MEM_WB|q\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \IF_ID|q\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \EX_MEM|q\ : std_logic_vector(106 DOWNTO 0);
SIGNAL \controlador1|reg_leds|q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \controlador1|reg_seg7|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \divisor|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ID_EX|q\ : std_logic_vector(146 DOWNTO 0);
SIGNAL \PC|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \fd_ctrl|saida_fluxo\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \controlador1|conv_HEX7|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX6|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX5|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX4|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX3|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX2|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX1|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \controlador1|conv_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ : std_logic;

BEGIN

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

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \mux_ULA|Y[31]~31_combout\ & \mux_ULA|Y[30]~28_combout\ & \mux_ULA|Y[29]~29_combout\ & \mux_ULA|Y[28]~30_combout\ & \mux_ULA|Y[27]~27_combout\ & 
\mux_ULA|Y[26]~26_combout\ & \mux_ULA|Y[25]~17_combout\ & \mux_ULA|Y[24]~16_combout\ & \mux_ULA|Y[23]~15_combout\ & \mux_ULA|Y[22]~14_combout\ & \mux_ULA|Y[21]~13_combout\ & \mux_ULA|Y[20]~12_combout\ & \mux_ULA|Y[19]~11_combout\ & 
\mux_ULA|Y[18]~10_combout\ & \mux_ULA|Y[17]~9_combout\ & \mux_ULA|Y[16]~8_combout\ & \mux_ULA|Y[15]~7_combout\ & \mux_ULA|Y[14]~6_combout\ & \mux_ULA|Y[13]~5_combout\ & \mux_ULA|Y[12]~4_combout\ & \mux_ULA|Y[11]~3_combout\ & \mux_ULA|Y[10]~2_combout\ & 
\mux_ULA|Y[9]~1_combout\ & \mux_ULA|Y[8]~0_combout\ & \mux_ULA|Y[7]~25_combout\ & \mux_ULA|Y[6]~24_combout\ & \mux_ULA|Y[5]~23_combout\ & \mux_ULA|Y[4]~22_combout\ & \mux_ULA|Y[3]~21_combout\ & \mux_ULA|Y[2]~20_combout\ & \mux_ULA|Y[1]~19_combout\ & 
\mux_ULA|Y[0]~18_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~14_combout\ & \~GND~combout\ & \memoriaInst|rom~49_combout\ & \memoriaInst|rom~9_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\regs|registrador_rtl_1|auto_generated|ram_block1a1\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\regs|registrador_rtl_1|auto_generated|ram_block1a2\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\regs|registrador_rtl_1|auto_generated|ram_block1a3\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\regs|registrador_rtl_1|auto_generated|ram_block1a4\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\regs|registrador_rtl_1|auto_generated|ram_block1a5\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\regs|registrador_rtl_1|auto_generated|ram_block1a6\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\regs|registrador_rtl_1|auto_generated|ram_block1a7\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\regs|registrador_rtl_1|auto_generated|ram_block1a8\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\regs|registrador_rtl_1|auto_generated|ram_block1a9\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\regs|registrador_rtl_1|auto_generated|ram_block1a10\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\regs|registrador_rtl_1|auto_generated|ram_block1a11\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\regs|registrador_rtl_1|auto_generated|ram_block1a12\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\regs|registrador_rtl_1|auto_generated|ram_block1a13\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\regs|registrador_rtl_1|auto_generated|ram_block1a14\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\regs|registrador_rtl_1|auto_generated|ram_block1a15\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\regs|registrador_rtl_1|auto_generated|ram_block1a16\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\regs|registrador_rtl_1|auto_generated|ram_block1a17\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\regs|registrador_rtl_1|auto_generated|ram_block1a18\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\regs|registrador_rtl_1|auto_generated|ram_block1a19\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\regs|registrador_rtl_1|auto_generated|ram_block1a20\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\regs|registrador_rtl_1|auto_generated|ram_block1a21\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\regs|registrador_rtl_1|auto_generated|ram_block1a22\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\regs|registrador_rtl_1|auto_generated|ram_block1a23\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\regs|registrador_rtl_1|auto_generated|ram_block1a24\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\regs|registrador_rtl_1|auto_generated|ram_block1a25\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\regs|registrador_rtl_1|auto_generated|ram_block1a26\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\regs|registrador_rtl_1|auto_generated|ram_block1a27\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\regs|registrador_rtl_1|auto_generated|ram_block1a28\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\regs|registrador_rtl_1|auto_generated|ram_block1a29\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\regs|registrador_rtl_1|auto_generated|ram_block1a30\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\regs|registrador_rtl_1|auto_generated|ram_block1a31\ <= \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \EX_MEM|q\(26) & \EX_MEM|q\(25) & \EX_MEM|q\(24) & \EX_MEM|q\(23) & \EX_MEM|q\(22) & \EX_MEM|q\(21) & \EX_MEM|q\(20) & \EX_MEM|q\(19) & 
\EX_MEM|q\(18) & \EX_MEM|q\(17) & \EX_MEM|q\(16) & \EX_MEM|q\(15) & \EX_MEM|q\(14) & \EX_MEM|q\(13));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(4);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(5);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(6);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(7);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(8);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(9);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(10);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(11);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(12);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(13);

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \mux_ULA|Y[31]~31_combout\ & \mux_ULA|Y[30]~28_combout\ & \mux_ULA|Y[29]~29_combout\ & \mux_ULA|Y[28]~30_combout\ & \mux_ULA|Y[27]~27_combout\ & 
\mux_ULA|Y[26]~26_combout\ & \mux_ULA|Y[25]~17_combout\ & \mux_ULA|Y[24]~16_combout\ & \mux_ULA|Y[23]~15_combout\ & \mux_ULA|Y[22]~14_combout\ & \mux_ULA|Y[21]~13_combout\ & \mux_ULA|Y[20]~12_combout\ & \mux_ULA|Y[19]~11_combout\ & 
\mux_ULA|Y[18]~10_combout\ & \mux_ULA|Y[17]~9_combout\ & \mux_ULA|Y[16]~8_combout\ & \mux_ULA|Y[15]~7_combout\ & \mux_ULA|Y[14]~6_combout\ & \mux_ULA|Y[13]~5_combout\ & \mux_ULA|Y[12]~4_combout\ & \mux_ULA|Y[11]~3_combout\ & \mux_ULA|Y[10]~2_combout\ & 
\mux_ULA|Y[9]~1_combout\ & \mux_ULA|Y[8]~0_combout\ & \mux_ULA|Y[7]~25_combout\ & \mux_ULA|Y[6]~24_combout\ & \mux_ULA|Y[5]~23_combout\ & \mux_ULA|Y[4]~22_combout\ & \mux_ULA|Y[3]~21_combout\ & \mux_ULA|Y[2]~20_combout\ & \mux_ULA|Y[1]~19_combout\ & 
\mux_ULA|Y[0]~18_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(4) & \MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \memoriaInst|rom~30_combout\ & \~GND~combout\ & \memoriaInst|rom~51_combout\ & \memoriaInst|rom~25_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\regs|registrador_rtl_0|auto_generated|ram_block1a1\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\regs|registrador_rtl_0|auto_generated|ram_block1a2\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\regs|registrador_rtl_0|auto_generated|ram_block1a3\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\regs|registrador_rtl_0|auto_generated|ram_block1a4\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\regs|registrador_rtl_0|auto_generated|ram_block1a5\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\regs|registrador_rtl_0|auto_generated|ram_block1a6\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\regs|registrador_rtl_0|auto_generated|ram_block1a7\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\regs|registrador_rtl_0|auto_generated|ram_block1a8\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\regs|registrador_rtl_0|auto_generated|ram_block1a9\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\regs|registrador_rtl_0|auto_generated|ram_block1a10\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\regs|registrador_rtl_0|auto_generated|ram_block1a11\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\regs|registrador_rtl_0|auto_generated|ram_block1a12\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\regs|registrador_rtl_0|auto_generated|ram_block1a13\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\regs|registrador_rtl_0|auto_generated|ram_block1a14\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\regs|registrador_rtl_0|auto_generated|ram_block1a15\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\regs|registrador_rtl_0|auto_generated|ram_block1a16\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\regs|registrador_rtl_0|auto_generated|ram_block1a17\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\regs|registrador_rtl_0|auto_generated|ram_block1a18\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\regs|registrador_rtl_0|auto_generated|ram_block1a19\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\regs|registrador_rtl_0|auto_generated|ram_block1a20\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\regs|registrador_rtl_0|auto_generated|ram_block1a21\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\regs|registrador_rtl_0|auto_generated|ram_block1a22\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\regs|registrador_rtl_0|auto_generated|ram_block1a23\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\regs|registrador_rtl_0|auto_generated|ram_block1a24\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\regs|registrador_rtl_0|auto_generated|ram_block1a25\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\regs|registrador_rtl_0|auto_generated|ram_block1a26\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\regs|registrador_rtl_0|auto_generated|ram_block1a27\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\regs|registrador_rtl_0|auto_generated|ram_block1a28\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\regs|registrador_rtl_0|auto_generated|ram_block1a29\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\regs|registrador_rtl_0|auto_generated|ram_block1a30\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\regs|registrador_rtl_0|auto_generated|ram_block1a31\ <= \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\EX_MEM|q\(36) & \EX_MEM|q\(35) & \EX_MEM|q\(34) & \EX_MEM|q\(33) & \EX_MEM|q\(32) & \EX_MEM|q\(31) & \EX_MEM|q\(30) & \EX_MEM|q\(29) & \EX_MEM|q\(28) & \EX_MEM|q\(27) & 
\EX_MEM|q\(12) & \EX_MEM|q\(11) & \EX_MEM|q\(10) & \EX_MEM|q\(9) & \EX_MEM|q\(8) & \EX_MEM|q\(7) & \EX_MEM|q\(6) & \EX_MEM|q\(5));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\divisor|tick~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor|tick~q\);
\controlador1|conv_HEX7|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \controlador1|conv_HEX7|rascSaida7seg[2]~2_combout\;
\controlador1|conv_HEX6|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \controlador1|conv_HEX6|rascSaida7seg[2]~2_combout\;
\controlador1|conv_HEX5|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \controlador1|conv_HEX5|rascSaida7seg[2]~2_combout\;
\controlador1|conv_HEX4|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \controlador1|conv_HEX4|rascSaida7seg[2]~2_combout\;
\controlador1|conv_HEX3|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \controlador1|conv_HEX3|rascSaida7seg[2]~2_combout\;
\controlador1|conv_HEX2|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \controlador1|conv_HEX2|rascSaida7seg[2]~2_combout\;
\controlador1|conv_HEX1|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \controlador1|conv_HEX1|rascSaida7seg[2]~2_combout\;
\controlador1|conv_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\ <= NOT \controlador1|conv_HEX0|rascSaida7seg[2]~2_combout\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(8),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(9),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(10),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(11),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(12),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(13),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(14),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(15),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(16),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(17),
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(18),
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(19),
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(20),
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(21),
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(22),
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(23),
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(24),
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(25),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(1),
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(2),
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(3),
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(4),
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(5),
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(6),
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|reg_leds|q\(7),
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX6|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|ALT_INV_rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlador1|conv_HEX7|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X35_Y71_N8
\divisor|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~0_combout\ = \divisor|contador\(0) $ (VCC)
-- \divisor|Add0~1\ = CARRY(\divisor|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(0),
	datad => VCC,
	combout => \divisor|Add0~0_combout\,
	cout => \divisor|Add0~1\);

-- Location: LCCOMB_X35_Y71_N0
\divisor|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~1_combout\ = (\divisor|Add0~0_combout\ & !\divisor|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add0~0_combout\,
	datad => \divisor|Equal0~8_combout\,
	combout => \divisor|contador~1_combout\);

-- Location: FF_X35_Y71_N1
\divisor|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(0));

-- Location: LCCOMB_X35_Y71_N10
\divisor|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~2_combout\ = (\divisor|contador\(1) & (!\divisor|Add0~1\)) # (!\divisor|contador\(1) & ((\divisor|Add0~1\) # (GND)))
-- \divisor|Add0~3\ = CARRY((!\divisor|Add0~1\) # (!\divisor|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(1),
	datad => VCC,
	cin => \divisor|Add0~1\,
	combout => \divisor|Add0~2_combout\,
	cout => \divisor|Add0~3\);

-- Location: FF_X35_Y71_N11
\divisor|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(1));

-- Location: LCCOMB_X35_Y71_N12
\divisor|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~4_combout\ = (\divisor|contador\(2) & (\divisor|Add0~3\ $ (GND))) # (!\divisor|contador\(2) & (!\divisor|Add0~3\ & VCC))
-- \divisor|Add0~5\ = CARRY((\divisor|contador\(2) & !\divisor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(2),
	datad => VCC,
	cin => \divisor|Add0~3\,
	combout => \divisor|Add0~4_combout\,
	cout => \divisor|Add0~5\);

-- Location: FF_X35_Y71_N13
\divisor|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(2));

-- Location: LCCOMB_X35_Y71_N14
\divisor|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~6_combout\ = (\divisor|contador\(3) & (!\divisor|Add0~5\)) # (!\divisor|contador\(3) & ((\divisor|Add0~5\) # (GND)))
-- \divisor|Add0~7\ = CARRY((!\divisor|Add0~5\) # (!\divisor|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(3),
	datad => VCC,
	cin => \divisor|Add0~5\,
	combout => \divisor|Add0~6_combout\,
	cout => \divisor|Add0~7\);

-- Location: FF_X35_Y71_N15
\divisor|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(3));

-- Location: LCCOMB_X35_Y71_N16
\divisor|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~8_combout\ = (\divisor|contador\(4) & (\divisor|Add0~7\ $ (GND))) # (!\divisor|contador\(4) & (!\divisor|Add0~7\ & VCC))
-- \divisor|Add0~9\ = CARRY((\divisor|contador\(4) & !\divisor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(4),
	datad => VCC,
	cin => \divisor|Add0~7\,
	combout => \divisor|Add0~8_combout\,
	cout => \divisor|Add0~9\);

-- Location: FF_X35_Y71_N17
\divisor|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(4));

-- Location: LCCOMB_X35_Y71_N18
\divisor|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~10_combout\ = (\divisor|contador\(5) & (!\divisor|Add0~9\)) # (!\divisor|contador\(5) & ((\divisor|Add0~9\) # (GND)))
-- \divisor|Add0~11\ = CARRY((!\divisor|Add0~9\) # (!\divisor|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(5),
	datad => VCC,
	cin => \divisor|Add0~9\,
	combout => \divisor|Add0~10_combout\,
	cout => \divisor|Add0~11\);

-- Location: FF_X35_Y71_N19
\divisor|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(5));

-- Location: LCCOMB_X35_Y71_N20
\divisor|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~12_combout\ = (\divisor|contador\(6) & (\divisor|Add0~11\ $ (GND))) # (!\divisor|contador\(6) & (!\divisor|Add0~11\ & VCC))
-- \divisor|Add0~13\ = CARRY((\divisor|contador\(6) & !\divisor|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(6),
	datad => VCC,
	cin => \divisor|Add0~11\,
	combout => \divisor|Add0~12_combout\,
	cout => \divisor|Add0~13\);

-- Location: LCCOMB_X35_Y71_N4
\divisor|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~0_combout\ = (\divisor|Add0~12_combout\ & !\divisor|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Add0~12_combout\,
	datad => \divisor|Equal0~8_combout\,
	combout => \divisor|contador~0_combout\);

-- Location: FF_X35_Y71_N5
\divisor|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(6));

-- Location: LCCOMB_X35_Y71_N22
\divisor|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~14_combout\ = (\divisor|contador\(7) & (!\divisor|Add0~13\)) # (!\divisor|contador\(7) & ((\divisor|Add0~13\) # (GND)))
-- \divisor|Add0~15\ = CARRY((!\divisor|Add0~13\) # (!\divisor|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(7),
	datad => VCC,
	cin => \divisor|Add0~13\,
	combout => \divisor|Add0~14_combout\,
	cout => \divisor|Add0~15\);

-- Location: FF_X35_Y71_N23
\divisor|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(7));

-- Location: LCCOMB_X35_Y71_N6
\divisor|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~0_combout\ = (!\divisor|contador\(7) & (!\divisor|contador\(5) & (\divisor|contador\(6) & !\divisor|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(7),
	datab => \divisor|contador\(5),
	datac => \divisor|contador\(6),
	datad => \divisor|contador\(4),
	combout => \divisor|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y71_N24
\divisor|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~16_combout\ = (\divisor|contador\(8) & (\divisor|Add0~15\ $ (GND))) # (!\divisor|contador\(8) & (!\divisor|Add0~15\ & VCC))
-- \divisor|Add0~17\ = CARRY((\divisor|contador\(8) & !\divisor|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(8),
	datad => VCC,
	cin => \divisor|Add0~15\,
	combout => \divisor|Add0~16_combout\,
	cout => \divisor|Add0~17\);

-- Location: FF_X35_Y71_N25
\divisor|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(8));

-- Location: LCCOMB_X35_Y71_N26
\divisor|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~18_combout\ = (\divisor|contador\(9) & (!\divisor|Add0~17\)) # (!\divisor|contador\(9) & ((\divisor|Add0~17\) # (GND)))
-- \divisor|Add0~19\ = CARRY((!\divisor|Add0~17\) # (!\divisor|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(9),
	datad => VCC,
	cin => \divisor|Add0~17\,
	combout => \divisor|Add0~18_combout\,
	cout => \divisor|Add0~19\);

-- Location: FF_X35_Y71_N27
\divisor|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(9));

-- Location: LCCOMB_X35_Y71_N28
\divisor|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~20_combout\ = (\divisor|contador\(10) & (\divisor|Add0~19\ $ (GND))) # (!\divisor|contador\(10) & (!\divisor|Add0~19\ & VCC))
-- \divisor|Add0~21\ = CARRY((\divisor|contador\(10) & !\divisor|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(10),
	datad => VCC,
	cin => \divisor|Add0~19\,
	combout => \divisor|Add0~20_combout\,
	cout => \divisor|Add0~21\);

-- Location: FF_X35_Y71_N29
\divisor|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(10));

-- Location: LCCOMB_X35_Y71_N30
\divisor|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~22_combout\ = (\divisor|contador\(11) & (!\divisor|Add0~21\)) # (!\divisor|contador\(11) & ((\divisor|Add0~21\) # (GND)))
-- \divisor|Add0~23\ = CARRY((!\divisor|Add0~21\) # (!\divisor|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(11),
	datad => VCC,
	cin => \divisor|Add0~21\,
	combout => \divisor|Add0~22_combout\,
	cout => \divisor|Add0~23\);

-- Location: LCCOMB_X36_Y70_N4
\divisor|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~4_combout\ = (\divisor|Add0~22_combout\ & !\divisor|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add0~22_combout\,
	datad => \divisor|Equal0~8_combout\,
	combout => \divisor|contador~4_combout\);

-- Location: FF_X36_Y70_N5
\divisor|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(11));

-- Location: LCCOMB_X35_Y70_N0
\divisor|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~24_combout\ = (\divisor|contador\(12) & (\divisor|Add0~23\ $ (GND))) # (!\divisor|contador\(12) & (!\divisor|Add0~23\ & VCC))
-- \divisor|Add0~25\ = CARRY((\divisor|contador\(12) & !\divisor|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(12),
	datad => VCC,
	cin => \divisor|Add0~23\,
	combout => \divisor|Add0~24_combout\,
	cout => \divisor|Add0~25\);

-- Location: LCCOMB_X36_Y70_N30
\divisor|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~5_combout\ = (\divisor|Add0~24_combout\ & !\divisor|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add0~24_combout\,
	datad => \divisor|Equal0~8_combout\,
	combout => \divisor|contador~5_combout\);

-- Location: FF_X36_Y70_N31
\divisor|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(12));

-- Location: LCCOMB_X35_Y70_N2
\divisor|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~26_combout\ = (\divisor|contador\(13) & (!\divisor|Add0~25\)) # (!\divisor|contador\(13) & ((\divisor|Add0~25\) # (GND)))
-- \divisor|Add0~27\ = CARRY((!\divisor|Add0~25\) # (!\divisor|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(13),
	datad => VCC,
	cin => \divisor|Add0~25\,
	combout => \divisor|Add0~26_combout\,
	cout => \divisor|Add0~27\);

-- Location: LCCOMB_X36_Y70_N6
\divisor|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~2_combout\ = (!\divisor|Equal0~8_combout\ & \divisor|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~8_combout\,
	datad => \divisor|Add0~26_combout\,
	combout => \divisor|contador~2_combout\);

-- Location: FF_X36_Y70_N7
\divisor|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(13));

-- Location: LCCOMB_X35_Y70_N4
\divisor|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~28_combout\ = (\divisor|contador\(14) & (\divisor|Add0~27\ $ (GND))) # (!\divisor|contador\(14) & (!\divisor|Add0~27\ & VCC))
-- \divisor|Add0~29\ = CARRY((\divisor|contador\(14) & !\divisor|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(14),
	datad => VCC,
	cin => \divisor|Add0~27\,
	combout => \divisor|Add0~28_combout\,
	cout => \divisor|Add0~29\);

-- Location: LCCOMB_X36_Y70_N20
\divisor|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~3_combout\ = (\divisor|Add0~28_combout\ & !\divisor|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add0~28_combout\,
	datad => \divisor|Equal0~8_combout\,
	combout => \divisor|contador~3_combout\);

-- Location: FF_X36_Y70_N21
\divisor|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(14));

-- Location: LCCOMB_X35_Y70_N6
\divisor|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~30_combout\ = (\divisor|contador\(15) & (!\divisor|Add0~29\)) # (!\divisor|contador\(15) & ((\divisor|Add0~29\) # (GND)))
-- \divisor|Add0~31\ = CARRY((!\divisor|Add0~29\) # (!\divisor|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(15),
	datad => VCC,
	cin => \divisor|Add0~29\,
	combout => \divisor|Add0~30_combout\,
	cout => \divisor|Add0~31\);

-- Location: FF_X35_Y70_N7
\divisor|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(15));

-- Location: LCCOMB_X35_Y70_N8
\divisor|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~32_combout\ = (\divisor|contador\(16) & (\divisor|Add0~31\ $ (GND))) # (!\divisor|contador\(16) & (!\divisor|Add0~31\ & VCC))
-- \divisor|Add0~33\ = CARRY((\divisor|contador\(16) & !\divisor|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(16),
	datad => VCC,
	cin => \divisor|Add0~31\,
	combout => \divisor|Add0~32_combout\,
	cout => \divisor|Add0~33\);

-- Location: LCCOMB_X36_Y70_N26
\divisor|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~8_combout\ = (!\divisor|Equal0~8_combout\ & \divisor|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~8_combout\,
	datad => \divisor|Add0~32_combout\,
	combout => \divisor|contador~8_combout\);

-- Location: FF_X36_Y70_N27
\divisor|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(16));

-- Location: LCCOMB_X35_Y70_N10
\divisor|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~34_combout\ = (\divisor|contador\(17) & (!\divisor|Add0~33\)) # (!\divisor|contador\(17) & ((\divisor|Add0~33\) # (GND)))
-- \divisor|Add0~35\ = CARRY((!\divisor|Add0~33\) # (!\divisor|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(17),
	datad => VCC,
	cin => \divisor|Add0~33\,
	combout => \divisor|Add0~34_combout\,
	cout => \divisor|Add0~35\);

-- Location: FF_X35_Y70_N11
\divisor|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(17));

-- Location: LCCOMB_X35_Y70_N12
\divisor|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~36_combout\ = (\divisor|contador\(18) & (\divisor|Add0~35\ $ (GND))) # (!\divisor|contador\(18) & (!\divisor|Add0~35\ & VCC))
-- \divisor|Add0~37\ = CARRY((\divisor|contador\(18) & !\divisor|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(18),
	datad => VCC,
	cin => \divisor|Add0~35\,
	combout => \divisor|Add0~36_combout\,
	cout => \divisor|Add0~37\);

-- Location: LCCOMB_X35_Y70_N28
\divisor|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~9_combout\ = (!\divisor|Equal0~8_combout\ & \divisor|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Equal0~8_combout\,
	datad => \divisor|Add0~36_combout\,
	combout => \divisor|contador~9_combout\);

-- Location: FF_X35_Y70_N29
\divisor|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(18));

-- Location: LCCOMB_X35_Y70_N14
\divisor|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~38_combout\ = (\divisor|contador\(19) & (!\divisor|Add0~37\)) # (!\divisor|contador\(19) & ((\divisor|Add0~37\) # (GND)))
-- \divisor|Add0~39\ = CARRY((!\divisor|Add0~37\) # (!\divisor|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(19),
	datad => VCC,
	cin => \divisor|Add0~37\,
	combout => \divisor|Add0~38_combout\,
	cout => \divisor|Add0~39\);

-- Location: LCCOMB_X35_Y70_N30
\divisor|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~10_combout\ = (!\divisor|Equal0~8_combout\ & \divisor|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~8_combout\,
	datac => \divisor|Add0~38_combout\,
	combout => \divisor|contador~10_combout\);

-- Location: FF_X35_Y70_N31
\divisor|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(19));

-- Location: LCCOMB_X35_Y70_N16
\divisor|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~40_combout\ = (\divisor|contador\(20) & (\divisor|Add0~39\ $ (GND))) # (!\divisor|contador\(20) & (!\divisor|Add0~39\ & VCC))
-- \divisor|Add0~41\ = CARRY((\divisor|contador\(20) & !\divisor|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(20),
	datad => VCC,
	cin => \divisor|Add0~39\,
	combout => \divisor|Add0~40_combout\,
	cout => \divisor|Add0~41\);

-- Location: LCCOMB_X36_Y70_N28
\divisor|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~6_combout\ = (\divisor|Add0~40_combout\ & !\divisor|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add0~40_combout\,
	datad => \divisor|Equal0~8_combout\,
	combout => \divisor|contador~6_combout\);

-- Location: FF_X36_Y70_N29
\divisor|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(20));

-- Location: LCCOMB_X35_Y70_N18
\divisor|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~42_combout\ = (\divisor|contador\(21) & (!\divisor|Add0~41\)) # (!\divisor|contador\(21) & ((\divisor|Add0~41\) # (GND)))
-- \divisor|Add0~43\ = CARRY((!\divisor|Add0~41\) # (!\divisor|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(21),
	datad => VCC,
	cin => \divisor|Add0~41\,
	combout => \divisor|Add0~42_combout\,
	cout => \divisor|Add0~43\);

-- Location: LCCOMB_X35_Y70_N26
\divisor|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~7_combout\ = (!\divisor|Equal0~8_combout\ & \divisor|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Equal0~8_combout\,
	datad => \divisor|Add0~42_combout\,
	combout => \divisor|contador~7_combout\);

-- Location: FF_X35_Y70_N27
\divisor|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(21));

-- Location: LCCOMB_X35_Y70_N20
\divisor|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~44_combout\ = (\divisor|contador\(22) & (\divisor|Add0~43\ $ (GND))) # (!\divisor|contador\(22) & (!\divisor|Add0~43\ & VCC))
-- \divisor|Add0~45\ = CARRY((\divisor|contador\(22) & !\divisor|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(22),
	datad => VCC,
	cin => \divisor|Add0~43\,
	combout => \divisor|Add0~44_combout\,
	cout => \divisor|Add0~45\);

-- Location: LCCOMB_X36_Y70_N2
\divisor|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~11_combout\ = (!\divisor|Equal0~8_combout\ & \divisor|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~8_combout\,
	datad => \divisor|Add0~44_combout\,
	combout => \divisor|contador~11_combout\);

-- Location: FF_X36_Y70_N3
\divisor|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(22));

-- Location: LCCOMB_X35_Y70_N22
\divisor|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~46_combout\ = (\divisor|contador\(23) & (!\divisor|Add0~45\)) # (!\divisor|contador\(23) & ((\divisor|Add0~45\) # (GND)))
-- \divisor|Add0~47\ = CARRY((!\divisor|Add0~45\) # (!\divisor|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(23),
	datad => VCC,
	cin => \divisor|Add0~45\,
	combout => \divisor|Add0~46_combout\,
	cout => \divisor|Add0~47\);

-- Location: FF_X35_Y70_N23
\divisor|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(23));

-- Location: LCCOMB_X35_Y70_N24
\divisor|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~48_combout\ = \divisor|contador\(24) $ (!\divisor|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(24),
	cin => \divisor|Add0~47\,
	combout => \divisor|Add0~48_combout\);

-- Location: LCCOMB_X36_Y70_N8
\divisor|contador~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~12_combout\ = (!\divisor|Equal0~8_combout\ & \divisor|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~8_combout\,
	datad => \divisor|Add0~48_combout\,
	combout => \divisor|contador~12_combout\);

-- Location: FF_X36_Y70_N9
\divisor|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|contador~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(24));

-- Location: LCCOMB_X36_Y70_N14
\divisor|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~6_combout\ = (\divisor|contador\(22) & (\divisor|contador\(24) & !\divisor|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(22),
	datac => \divisor|contador\(24),
	datad => \divisor|contador\(23),
	combout => \divisor|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y70_N18
\divisor|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~5_combout\ = (!\divisor|contador\(17) & (\divisor|contador\(19) & (\divisor|contador\(16) & \divisor|contador\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(17),
	datab => \divisor|contador\(19),
	datac => \divisor|contador\(16),
	datad => \divisor|contador\(18),
	combout => \divisor|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y70_N16
\divisor|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~7_combout\ = (\divisor|contador\(21) & (\divisor|contador\(20) & (\divisor|Equal0~6_combout\ & \divisor|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(21),
	datab => \divisor|contador\(20),
	datac => \divisor|Equal0~6_combout\,
	datad => \divisor|Equal0~5_combout\,
	combout => \divisor|Equal0~7_combout\);

-- Location: LCCOMB_X36_Y71_N12
\divisor|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~1_combout\ = (!\divisor|contador\(3) & (!\divisor|contador\(0) & (!\divisor|contador\(2) & !\divisor|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(3),
	datab => \divisor|contador\(0),
	datac => \divisor|contador\(2),
	datad => \divisor|contador\(1),
	combout => \divisor|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y71_N2
\divisor|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~2_combout\ = (!\divisor|contador\(9) & !\divisor|contador\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|contador\(9),
	datad => \divisor|contador\(8),
	combout => \divisor|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y70_N12
\divisor|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~3_combout\ = (\divisor|contador\(12) & (\divisor|contador\(11) & (!\divisor|contador\(10) & \divisor|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(12),
	datab => \divisor|contador\(11),
	datac => \divisor|contador\(10),
	datad => \divisor|Equal0~2_combout\,
	combout => \divisor|Equal0~3_combout\);

-- Location: LCCOMB_X36_Y70_N10
\divisor|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~4_combout\ = (\divisor|contador\(13) & (\divisor|contador\(14) & (!\divisor|contador\(15) & \divisor|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(13),
	datab => \divisor|contador\(14),
	datac => \divisor|contador\(15),
	datad => \divisor|Equal0~3_combout\,
	combout => \divisor|Equal0~4_combout\);

-- Location: LCCOMB_X36_Y70_N0
\divisor|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~8_combout\ = (\divisor|Equal0~0_combout\ & (\divisor|Equal0~7_combout\ & (\divisor|Equal0~1_combout\ & \divisor|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Equal0~0_combout\,
	datab => \divisor|Equal0~7_combout\,
	datac => \divisor|Equal0~1_combout\,
	datad => \divisor|Equal0~4_combout\,
	combout => \divisor|Equal0~8_combout\);

-- Location: LCCOMB_X36_Y70_N24
\divisor|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|tick~0_combout\ = \divisor|tick~q\ $ (\divisor|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|tick~q\,
	datad => \divisor|Equal0~8_combout\,
	combout => \divisor|tick~0_combout\);

-- Location: LCCOMB_X36_Y70_N22
\divisor|tick~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|tick~feeder_combout\ = \divisor|tick~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|tick~0_combout\,
	combout => \divisor|tick~feeder_combout\);

-- Location: FF_X36_Y70_N23
\divisor|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|tick~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|tick~q\);

-- Location: CLKCTRL_G12
\divisor|tick~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor|tick~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor|tick~clkctrl_outclk\);

-- Location: LCCOMB_X72_Y57_N26
\memoriaInst|rom~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~47_combout\ = (!\PC|q\(2) & ((\PC|q\(6) & (!\PC|q\(4) & !\PC|q\(5))) # (!\PC|q\(6) & ((\PC|q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \PC|q\(4),
	datac => \PC|q\(6),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~47_combout\);

-- Location: LCCOMB_X72_Y57_N20
\memoriaInst|rom~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~48_combout\ = (\memoriaInst|rom~47_combout\ & (\PC|q\(3) & \memoriaInst|rom~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~47_combout\,
	datab => \PC|q\(3),
	datad => \memoriaInst|rom~8_combout\,
	combout => \memoriaInst|rom~48_combout\);

-- Location: FF_X72_Y57_N21
\IF_ID|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(0));

-- Location: FF_X72_Y59_N29
\ID_EX|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(0));

-- Location: LCCOMB_X72_Y56_N10
\IF_ID|q[34]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[34]~8_combout\ = \PC|q\(2) $ (VCC)
-- \IF_ID|q[34]~9\ = CARRY(\PC|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datad => VCC,
	combout => \IF_ID|q[34]~8_combout\,
	cout => \IF_ID|q[34]~9\);

-- Location: FF_X72_Y56_N11
\IF_ID|q[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[34]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(34));

-- Location: LCCOMB_X73_Y56_N4
\ID_EX|q[108]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[108]~feeder_combout\ = \IF_ID|q\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(34),
	combout => \ID_EX|q[108]~feeder_combout\);

-- Location: FF_X73_Y56_N5
\ID_EX|q[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[108]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(108));

-- Location: LCCOMB_X73_Y56_N12
\EX_MEM|q[72]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[72]~8_combout\ = (\ID_EX|q\(0) & (\ID_EX|q\(108) $ (VCC))) # (!\ID_EX|q\(0) & (\ID_EX|q\(108) & VCC))
-- \EX_MEM|q[72]~9\ = CARRY((\ID_EX|q\(0) & \ID_EX|q\(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(0),
	datab => \ID_EX|q\(108),
	datad => VCC,
	combout => \EX_MEM|q[72]~8_combout\,
	cout => \EX_MEM|q[72]~9\);

-- Location: FF_X73_Y56_N13
\EX_MEM|q[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[72]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(72));

-- Location: FF_X70_Y56_N21
\PC|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(72),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(2));

-- Location: LCCOMB_X72_Y60_N20
\memoriaInst|rom~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~45_combout\ = (!\PC|q\(2) & ((\PC|q\(6) & (!\PC|q\(5) & !\PC|q\(4))) # (!\PC|q\(6) & (\PC|q\(5) & \PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(5),
	datac => \PC|q\(2),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~45_combout\);

-- Location: LCCOMB_X72_Y60_N30
\memoriaInst|rom~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~46_combout\ = (\memoriaInst|rom~45_combout\ & (\memoriaInst|rom~8_combout\ & \PC|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaInst|rom~45_combout\,
	datac => \memoriaInst|rom~8_combout\,
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~46_combout\);

-- Location: FF_X72_Y60_N31
\IF_ID|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(1));

-- Location: FF_X72_Y59_N23
\ID_EX|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(1));

-- Location: LCCOMB_X72_Y56_N12
\IF_ID|q[35]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[35]~10_combout\ = (\PC|q\(3) & (!\IF_ID|q[34]~9\)) # (!\PC|q\(3) & ((\IF_ID|q[34]~9\) # (GND)))
-- \IF_ID|q[35]~11\ = CARRY((!\IF_ID|q[34]~9\) # (!\PC|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(3),
	datad => VCC,
	cin => \IF_ID|q[34]~9\,
	combout => \IF_ID|q[35]~10_combout\,
	cout => \IF_ID|q[35]~11\);

-- Location: FF_X72_Y56_N13
\IF_ID|q[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[35]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(35));

-- Location: LCCOMB_X73_Y56_N2
\ID_EX|q[109]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[109]~feeder_combout\ = \IF_ID|q\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(35),
	combout => \ID_EX|q[109]~feeder_combout\);

-- Location: FF_X73_Y56_N3
\ID_EX|q[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[109]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(109));

-- Location: LCCOMB_X73_Y56_N14
\EX_MEM|q[73]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[73]~10_combout\ = (\ID_EX|q\(1) & ((\ID_EX|q\(109) & (\EX_MEM|q[72]~9\ & VCC)) # (!\ID_EX|q\(109) & (!\EX_MEM|q[72]~9\)))) # (!\ID_EX|q\(1) & ((\ID_EX|q\(109) & (!\EX_MEM|q[72]~9\)) # (!\ID_EX|q\(109) & ((\EX_MEM|q[72]~9\) # (GND)))))
-- \EX_MEM|q[73]~11\ = CARRY((\ID_EX|q\(1) & (!\ID_EX|q\(109) & !\EX_MEM|q[72]~9\)) # (!\ID_EX|q\(1) & ((!\EX_MEM|q[72]~9\) # (!\ID_EX|q\(109)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(1),
	datab => \ID_EX|q\(109),
	datad => VCC,
	cin => \EX_MEM|q[72]~9\,
	combout => \EX_MEM|q[73]~10_combout\,
	cout => \EX_MEM|q[73]~11\);

-- Location: FF_X73_Y56_N15
\EX_MEM|q[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[73]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(73));

-- Location: FF_X72_Y56_N1
\PC|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(73),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(3));

-- Location: LCCOMB_X72_Y56_N14
\IF_ID|q[36]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[36]~12_combout\ = (\PC|q\(4) & (\IF_ID|q[35]~11\ $ (GND))) # (!\PC|q\(4) & (!\IF_ID|q[35]~11\ & VCC))
-- \IF_ID|q[36]~13\ = CARRY((\PC|q\(4) & !\IF_ID|q[35]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datad => VCC,
	cin => \IF_ID|q[35]~11\,
	combout => \IF_ID|q[36]~12_combout\,
	cout => \IF_ID|q[36]~13\);

-- Location: LCCOMB_X72_Y56_N16
\IF_ID|q[37]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[37]~14_combout\ = (\PC|q\(5) & (!\IF_ID|q[36]~13\)) # (!\PC|q\(5) & ((\IF_ID|q[36]~13\) # (GND)))
-- \IF_ID|q[37]~15\ = CARRY((!\IF_ID|q[36]~13\) # (!\PC|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(5),
	datad => VCC,
	cin => \IF_ID|q[36]~13\,
	combout => \IF_ID|q[37]~14_combout\,
	cout => \IF_ID|q[37]~15\);

-- Location: FF_X72_Y56_N17
\IF_ID|q[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[37]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(37));

-- Location: FF_X73_Y56_N31
\ID_EX|q[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(111));

-- Location: LCCOMB_X72_Y57_N12
\memoriaInst|rom~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~41_combout\ = (\PC|q\(5) & (!\PC|q\(6) & \PC|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datac => \PC|q\(6),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~41_combout\);

-- Location: LCCOMB_X72_Y57_N2
\memoriaInst|rom~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~42_combout\ = (\memoriaInst|rom~41_combout\ & (\PC|q\(3) & (!\PC|q\(2) & \memoriaInst|rom~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~41_combout\,
	datab => \PC|q\(3),
	datac => \PC|q\(2),
	datad => \memoriaInst|rom~8_combout\,
	combout => \memoriaInst|rom~42_combout\);

-- Location: FF_X72_Y57_N3
\IF_ID|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(3));

-- Location: LCCOMB_X70_Y59_N10
\ID_EX|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[3]~feeder_combout\ = \IF_ID|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(3),
	combout => \ID_EX|q[3]~feeder_combout\);

-- Location: FF_X70_Y59_N11
\ID_EX|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(3));

-- Location: FF_X72_Y56_N15
\IF_ID|q[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[36]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(36));

-- Location: LCCOMB_X73_Y56_N8
\ID_EX|q[110]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[110]~feeder_combout\ = \IF_ID|q\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(36),
	combout => \ID_EX|q[110]~feeder_combout\);

-- Location: FF_X73_Y56_N9
\ID_EX|q[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[110]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(110));

-- Location: LCCOMB_X73_Y56_N16
\EX_MEM|q[74]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[74]~12_combout\ = ((\ID_EX|q\(2) $ (\ID_EX|q\(110) $ (!\EX_MEM|q[73]~11\)))) # (GND)
-- \EX_MEM|q[74]~13\ = CARRY((\ID_EX|q\(2) & ((\ID_EX|q\(110)) # (!\EX_MEM|q[73]~11\))) # (!\ID_EX|q\(2) & (\ID_EX|q\(110) & !\EX_MEM|q[73]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(2),
	datab => \ID_EX|q\(110),
	datad => VCC,
	cin => \EX_MEM|q[73]~11\,
	combout => \EX_MEM|q[74]~12_combout\,
	cout => \EX_MEM|q[74]~13\);

-- Location: LCCOMB_X73_Y56_N18
\EX_MEM|q[75]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[75]~14_combout\ = (\ID_EX|q\(111) & ((\ID_EX|q\(3) & (\EX_MEM|q[74]~13\ & VCC)) # (!\ID_EX|q\(3) & (!\EX_MEM|q[74]~13\)))) # (!\ID_EX|q\(111) & ((\ID_EX|q\(3) & (!\EX_MEM|q[74]~13\)) # (!\ID_EX|q\(3) & ((\EX_MEM|q[74]~13\) # (GND)))))
-- \EX_MEM|q[75]~15\ = CARRY((\ID_EX|q\(111) & (!\ID_EX|q\(3) & !\EX_MEM|q[74]~13\)) # (!\ID_EX|q\(111) & ((!\EX_MEM|q[74]~13\) # (!\ID_EX|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(111),
	datab => \ID_EX|q\(3),
	datad => VCC,
	cin => \EX_MEM|q[74]~13\,
	combout => \EX_MEM|q[75]~14_combout\,
	cout => \EX_MEM|q[75]~15\);

-- Location: FF_X73_Y56_N19
\EX_MEM|q[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[75]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(75));

-- Location: FF_X70_Y56_N7
\PC|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(75),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(5));

-- Location: LCCOMB_X72_Y57_N18
\memoriaInst|rom~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~39_combout\ = (!\PC|q\(5) & ((\PC|q\(4) & (!\PC|q\(2) & !\PC|q\(3))) # (!\PC|q\(4) & (\PC|q\(2) & \PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(4),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~39_combout\);

-- Location: LCCOMB_X72_Y57_N16
\memoriaInst|rom~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~40_combout\ = (\memoriaInst|rom~39_combout\ & (\PC|q\(6) & \memoriaInst|rom~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaInst|rom~39_combout\,
	datac => \PC|q\(6),
	datad => \memoriaInst|rom~8_combout\,
	combout => \memoriaInst|rom~40_combout\);

-- Location: FF_X72_Y57_N17
\IF_ID|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(4));

-- Location: FF_X72_Y59_N19
\ID_EX|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(4));

-- Location: LCCOMB_X72_Y56_N18
\IF_ID|q[38]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[38]~16_combout\ = (\PC|q\(6) & (\IF_ID|q[37]~15\ $ (GND))) # (!\PC|q\(6) & (!\IF_ID|q[37]~15\ & VCC))
-- \IF_ID|q[38]~17\ = CARRY((\PC|q\(6) & !\IF_ID|q[37]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datad => VCC,
	cin => \IF_ID|q[37]~15\,
	combout => \IF_ID|q[38]~16_combout\,
	cout => \IF_ID|q[38]~17\);

-- Location: FF_X72_Y56_N19
\IF_ID|q[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[38]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(38));

-- Location: LCCOMB_X73_Y56_N0
\ID_EX|q[112]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[112]~feeder_combout\ = \IF_ID|q\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(38),
	combout => \ID_EX|q[112]~feeder_combout\);

-- Location: FF_X73_Y56_N1
\ID_EX|q[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[112]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(112));

-- Location: LCCOMB_X73_Y56_N20
\EX_MEM|q[76]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[76]~16_combout\ = ((\ID_EX|q\(4) $ (\ID_EX|q\(112) $ (!\EX_MEM|q[75]~15\)))) # (GND)
-- \EX_MEM|q[76]~17\ = CARRY((\ID_EX|q\(4) & ((\ID_EX|q\(112)) # (!\EX_MEM|q[75]~15\))) # (!\ID_EX|q\(4) & (\ID_EX|q\(112) & !\EX_MEM|q[75]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(4),
	datab => \ID_EX|q\(112),
	datad => VCC,
	cin => \EX_MEM|q[75]~15\,
	combout => \EX_MEM|q[76]~16_combout\,
	cout => \EX_MEM|q[76]~17\);

-- Location: FF_X73_Y56_N21
\EX_MEM|q[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[76]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(76));

-- Location: FF_X72_Y56_N5
\PC|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(76),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(6));

-- Location: LCCOMB_X72_Y56_N20
\IF_ID|q[39]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[39]~18_combout\ = (\PC|q\(7) & (!\IF_ID|q[38]~17\)) # (!\PC|q\(7) & ((\IF_ID|q[38]~17\) # (GND)))
-- \IF_ID|q[39]~19\ = CARRY((!\IF_ID|q[38]~17\) # (!\PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(7),
	datad => VCC,
	cin => \IF_ID|q[38]~17\,
	combout => \IF_ID|q[39]~18_combout\,
	cout => \IF_ID|q[39]~19\);

-- Location: FF_X72_Y56_N21
\IF_ID|q[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[39]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(39));

-- Location: LCCOMB_X73_Y56_N6
\ID_EX|q[113]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[113]~feeder_combout\ = \IF_ID|q\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(39),
	combout => \ID_EX|q[113]~feeder_combout\);

-- Location: FF_X73_Y56_N7
\ID_EX|q[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[113]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(113));

-- Location: LCCOMB_X72_Y60_N12
\memoriaInst|rom~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~37_combout\ = (\PC|q\(4) & ((\PC|q\(2) $ (!\PC|q\(3))) # (!\PC|q\(5)))) # (!\PC|q\(4) & ((\PC|q\(2)) # (\PC|q\(5) $ (\PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(5),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~37_combout\);

-- Location: LCCOMB_X70_Y56_N28
\memoriaInst|rom~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~11_combout\ = (!\PC|q\(3) & \PC|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|q\(3),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~11_combout\);

-- Location: LCCOMB_X70_Y56_N26
\memoriaInst|rom~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~28_combout\ = (!\PC|q\(5) & (\memoriaInst|rom~11_combout\ & (\PC|q\(6) & !\PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \memoriaInst|rom~11_combout\,
	datac => \PC|q\(6),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~28_combout\);

-- Location: LCCOMB_X72_Y60_N14
\memoriaInst|rom~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~38_combout\ = (\memoriaInst|rom~8_combout\ & ((\memoriaInst|rom~28_combout\) # ((\memoriaInst|rom~37_combout\ & !\PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~37_combout\,
	datab => \memoriaInst|rom~8_combout\,
	datac => \PC|q\(6),
	datad => \memoriaInst|rom~28_combout\,
	combout => \memoriaInst|rom~38_combout\);

-- Location: FF_X72_Y60_N15
\IF_ID|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(5));

-- Location: LCCOMB_X73_Y60_N4
\ID_EX|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[15]~feeder_combout\ = \IF_ID|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(5),
	combout => \ID_EX|q[15]~feeder_combout\);

-- Location: FF_X73_Y60_N5
\ID_EX|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(15));

-- Location: LCCOMB_X73_Y56_N22
\EX_MEM|q[77]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[77]~18_combout\ = (\ID_EX|q\(113) & ((\ID_EX|q\(15) & (\EX_MEM|q[76]~17\ & VCC)) # (!\ID_EX|q\(15) & (!\EX_MEM|q[76]~17\)))) # (!\ID_EX|q\(113) & ((\ID_EX|q\(15) & (!\EX_MEM|q[76]~17\)) # (!\ID_EX|q\(15) & ((\EX_MEM|q[76]~17\) # (GND)))))
-- \EX_MEM|q[77]~19\ = CARRY((\ID_EX|q\(113) & (!\ID_EX|q\(15) & !\EX_MEM|q[76]~17\)) # (!\ID_EX|q\(113) & ((!\EX_MEM|q[76]~17\) # (!\ID_EX|q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(113),
	datab => \ID_EX|q\(15),
	datad => VCC,
	cin => \EX_MEM|q[76]~17\,
	combout => \EX_MEM|q[77]~18_combout\,
	cout => \EX_MEM|q[77]~19\);

-- Location: FF_X73_Y56_N23
\EX_MEM|q[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[77]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(77));

-- Location: FF_X72_Y56_N3
\PC|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(77),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(7));

-- Location: LCCOMB_X72_Y56_N22
\IF_ID|q[40]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[40]~20_combout\ = (\PC|q\(8) & (\IF_ID|q[39]~19\ $ (GND))) # (!\PC|q\(8) & (!\IF_ID|q[39]~19\ & VCC))
-- \IF_ID|q[40]~21\ = CARRY((\PC|q\(8) & !\IF_ID|q[39]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(8),
	datad => VCC,
	cin => \IF_ID|q[39]~19\,
	combout => \IF_ID|q[40]~20_combout\,
	cout => \IF_ID|q[40]~21\);

-- Location: FF_X72_Y56_N23
\IF_ID|q[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[40]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(40));

-- Location: LCCOMB_X73_Y56_N28
\ID_EX|q[114]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[114]~feeder_combout\ = \IF_ID|q\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(40),
	combout => \ID_EX|q[114]~feeder_combout\);

-- Location: FF_X73_Y56_N29
\ID_EX|q[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[114]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(114));

-- Location: LCCOMB_X73_Y56_N24
\EX_MEM|q[78]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[78]~20_combout\ = (\ID_EX|q\(114) & (\EX_MEM|q[77]~19\ $ (GND))) # (!\ID_EX|q\(114) & (!\EX_MEM|q[77]~19\ & VCC))
-- \EX_MEM|q[78]~21\ = CARRY((\ID_EX|q\(114) & !\EX_MEM|q[77]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(114),
	datad => VCC,
	cin => \EX_MEM|q[77]~19\,
	combout => \EX_MEM|q[78]~20_combout\,
	cout => \EX_MEM|q[78]~21\);

-- Location: FF_X73_Y56_N25
\EX_MEM|q[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[78]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(78));

-- Location: LCCOMB_X72_Y56_N28
\PC|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[8]~feeder_combout\ = \EX_MEM|q\(78)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(78),
	combout => \PC|q[8]~feeder_combout\);

-- Location: FF_X72_Y56_N29
\PC|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \PC|q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(8));

-- Location: LCCOMB_X72_Y56_N24
\IF_ID|q[41]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[41]~22_combout\ = \PC|q\(9) $ (\IF_ID|q[40]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(9),
	cin => \IF_ID|q[40]~21\,
	combout => \IF_ID|q[41]~22_combout\);

-- Location: FF_X72_Y56_N25
\IF_ID|q[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[41]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(41));

-- Location: LCCOMB_X72_Y56_N8
\ID_EX|q[115]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[115]~feeder_combout\ = \IF_ID|q\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(41),
	combout => \ID_EX|q[115]~feeder_combout\);

-- Location: FF_X72_Y56_N9
\ID_EX|q[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[115]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(115));

-- Location: LCCOMB_X73_Y56_N26
\EX_MEM|q[79]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[79]~22_combout\ = \EX_MEM|q[78]~21\ $ (\ID_EX|q\(115))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(115),
	cin => \EX_MEM|q[78]~21\,
	combout => \EX_MEM|q[79]~22_combout\);

-- Location: FF_X73_Y56_N27
\EX_MEM|q[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[79]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(79));

-- Location: FF_X72_Y56_N31
\PC|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(79),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(9));

-- Location: LCCOMB_X72_Y56_N2
\memoriaInst|rom~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~8_combout\ = (!\PC|q\(9) & (!\PC|q\(7) & !\PC|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(9),
	datac => \PC|q\(7),
	datad => \PC|q\(8),
	combout => \memoriaInst|rom~8_combout\);

-- Location: LCCOMB_X72_Y60_N6
\memoriaInst|rom~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~43_combout\ = (\PC|q\(6) & (((\PC|q\(5)) # (\PC|q\(3))))) # (!\PC|q\(6) & ((\PC|q\(4)) # (\PC|q\(5) $ (\PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(5),
	datac => \PC|q\(6),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~43_combout\);

-- Location: LCCOMB_X72_Y60_N24
\memoriaInst|rom~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~44_combout\ = (\memoriaInst|rom~8_combout\ & (!\PC|q\(2) & !\memoriaInst|rom~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaInst|rom~8_combout\,
	datac => \PC|q\(2),
	datad => \memoriaInst|rom~43_combout\,
	combout => \memoriaInst|rom~44_combout\);

-- Location: FF_X72_Y60_N25
\IF_ID|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(2));

-- Location: LCCOMB_X73_Y60_N22
\ID_EX|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[2]~feeder_combout\ = \IF_ID|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(2),
	combout => \ID_EX|q[2]~feeder_combout\);

-- Location: FF_X73_Y60_N23
\ID_EX|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(2));

-- Location: FF_X73_Y56_N17
\EX_MEM|q[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[74]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(74));

-- Location: LCCOMB_X72_Y56_N6
\PC|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[4]~feeder_combout\ = \EX_MEM|q\(74)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(74),
	combout => \PC|q[4]~feeder_combout\);

-- Location: FF_X72_Y56_N7
\PC|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \PC|q[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(4));

-- Location: LCCOMB_X70_Y58_N22
\memoriaInst|rom~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~17_combout\ = (\PC|q\(4) & (!\PC|q\(6) & (\PC|q\(2) $ (\PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(2),
	datac => \PC|q\(3),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~17_combout\);

-- Location: LCCOMB_X70_Y58_N16
\memoriaInst|rom~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~18_combout\ = (\PC|q\(3) & ((\PC|q\(4)) # ((!\PC|q\(6))))) # (!\PC|q\(3) & ((\PC|q\(2)) # (\PC|q\(4) $ (\PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(2),
	datac => \PC|q\(3),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~18_combout\);

-- Location: LCCOMB_X70_Y58_N6
\memoriaInst|rom~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~19_combout\ = (\memoriaInst|rom~8_combout\ & ((\PC|q\(5) & (\memoriaInst|rom~17_combout\)) # (!\PC|q\(5) & ((!\memoriaInst|rom~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~17_combout\,
	datab => \memoriaInst|rom~18_combout\,
	datac => \memoriaInst|rom~8_combout\,
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~19_combout\);

-- Location: FF_X70_Y58_N7
\IF_ID|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(27));

-- Location: LCCOMB_X70_Y58_N4
\memoriaInst|rom~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~15_combout\ = (!\PC|q\(2) & ((\PC|q\(3) & (!\PC|q\(6) & \PC|q\(5))) # (!\PC|q\(3) & (\PC|q\(6) & !\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(3),
	datab => \PC|q\(6),
	datac => \PC|q\(2),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~15_combout\);

-- Location: LCCOMB_X70_Y58_N20
\memoriaInst|rom~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~16_combout\ = (\memoriaInst|rom~8_combout\ & (\memoriaInst|rom~15_combout\ & !\PC|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~8_combout\,
	datac => \memoriaInst|rom~15_combout\,
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~16_combout\);

-- Location: FF_X70_Y58_N21
\IF_ID|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(28));

-- Location: LCCOMB_X70_Y56_N20
\memoriaInst|rom~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~20_combout\ = (!\PC|q\(5) & (\PC|q\(6) & (!\PC|q\(2) & !\PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(6),
	datac => \PC|q\(2),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~20_combout\);

-- Location: LCCOMB_X70_Y56_N14
\memoriaInst|rom~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~21_combout\ = (\PC|q\(3) & \memoriaInst|rom~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC|q\(3),
	datad => \memoriaInst|rom~20_combout\,
	combout => \memoriaInst|rom~21_combout\);

-- Location: LCCOMB_X70_Y56_N12
\memoriaInst|rom~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~22_combout\ = (\PC|q\(3)) # ((\PC|q\(5) & ((!\PC|q\(4)) # (!\PC|q\(2)))) # (!\PC|q\(5) & ((\PC|q\(2)) # (\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(2),
	datac => \PC|q\(3),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~22_combout\);

-- Location: LCCOMB_X70_Y56_N2
\memoriaInst|rom~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~23_combout\ = (\memoriaInst|rom~8_combout\ & ((\memoriaInst|rom~21_combout\) # ((!\PC|q\(6) & !\memoriaInst|rom~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~8_combout\,
	datab => \PC|q\(6),
	datac => \memoriaInst|rom~21_combout\,
	datad => \memoriaInst|rom~22_combout\,
	combout => \memoriaInst|rom~23_combout\);

-- Location: FF_X70_Y56_N3
\IF_ID|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(31));

-- Location: LCCOMB_X70_Y56_N22
\memoriaInst|rom~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~12_combout\ = (\PC|q\(5) & (\memoriaInst|rom~11_combout\ & (!\PC|q\(6) & \PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \memoriaInst|rom~11_combout\,
	datac => \PC|q\(6),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~12_combout\);

-- Location: LCCOMB_X70_Y56_N24
\memoriaInst|rom~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~50_combout\ = (\memoriaInst|rom~8_combout\ & ((\memoriaInst|rom~12_combout\) # ((\PC|q\(3) & \memoriaInst|rom~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~8_combout\,
	datab => \memoriaInst|rom~12_combout\,
	datac => \PC|q\(3),
	datad => \memoriaInst|rom~20_combout\,
	combout => \memoriaInst|rom~50_combout\);

-- Location: FF_X70_Y56_N25
\IF_ID|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(29));

-- Location: LCCOMB_X70_Y58_N2
\fd_ctrl|saida_fluxo[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo\(8) = (!\IF_ID|q\(28) & (!\IF_ID|q\(29) & (\IF_ID|q\(27) $ (!\IF_ID|q\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \IF_ID|q\(28),
	datac => \IF_ID|q\(31),
	datad => \IF_ID|q\(29),
	combout => \fd_ctrl|saida_fluxo\(8));

-- Location: FF_X70_Y58_N3
\ID_EX|q[146]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \fd_ctrl|saida_fluxo\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(146));

-- Location: LCCOMB_X70_Y58_N14
\EX_MEM|q[106]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[106]~feeder_combout\ = \ID_EX|q\(146)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(146),
	combout => \EX_MEM|q[106]~feeder_combout\);

-- Location: FF_X70_Y58_N15
\EX_MEM|q[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[106]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(106));

-- Location: LCCOMB_X75_Y58_N30
\MEM_WB|q[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[70]~feeder_combout\ = \EX_MEM|q\(106)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(106),
	combout => \MEM_WB|q[70]~feeder_combout\);

-- Location: FF_X75_Y58_N31
\MEM_WB|q[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(70));

-- Location: LCCOMB_X77_Y57_N6
\regs|registrador_rtl_1_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[0]~feeder_combout\ = \MEM_WB|q\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|q\(70),
	combout => \regs|registrador_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X77_Y57_N7
\regs|registrador_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(0));

-- Location: LCCOMB_X70_Y58_N26
\fd_ctrl|op_code_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|op_code_aux~0_combout\ = (!\IF_ID|q\(27) & (!\IF_ID|q\(28) & (!\IF_ID|q\(31) & !\IF_ID|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \IF_ID|q\(28),
	datac => \IF_ID|q\(31),
	datad => \IF_ID|q\(29),
	combout => \fd_ctrl|op_code_aux~0_combout\);

-- Location: FF_X73_Y59_N31
\ID_EX|q[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \fd_ctrl|op_code_aux~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(140));

-- Location: LCCOMB_X70_Y56_N4
\memoriaInst|rom~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~13_combout\ = (\PC|q\(5) & (!\PC|q\(6) & (\PC|q\(3)))) # (!\PC|q\(5) & (\PC|q\(6) & ((!\PC|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(6),
	datac => \PC|q\(3),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~13_combout\);

-- Location: LCCOMB_X70_Y56_N10
\memoriaInst|rom~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~14_combout\ = (\memoriaInst|rom~8_combout\ & ((\memoriaInst|rom~12_combout\) # ((\memoriaInst|rom~13_combout\ & !\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~8_combout\,
	datab => \memoriaInst|rom~12_combout\,
	datac => \memoriaInst|rom~13_combout\,
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~14_combout\);

-- Location: FF_X73_Y57_N21
\IF_ID|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(19));

-- Location: LCCOMB_X73_Y57_N22
\ID_EX|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[8]~feeder_combout\ = \IF_ID|q\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(19),
	combout => \ID_EX|q[8]~feeder_combout\);

-- Location: FF_X73_Y57_N23
\ID_EX|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(8));

-- Location: LCCOMB_X73_Y57_N18
\mux_RtRd|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[3]~3_combout\ = (\ID_EX|q\(140) & ((\ID_EX|q\(3)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(8),
	datad => \ID_EX|q\(3),
	combout => \mux_RtRd|Y[3]~3_combout\);

-- Location: FF_X73_Y57_N19
\EX_MEM|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_RtRd|Y[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(3));

-- Location: LCCOMB_X74_Y57_N2
\MEM_WB|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[3]~feeder_combout\ = \EX_MEM|q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(3),
	combout => \MEM_WB|q[3]~feeder_combout\);

-- Location: FF_X74_Y57_N3
\MEM_WB|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(3));

-- Location: FF_X77_Y57_N21
\regs|registrador_rtl_1_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \MEM_WB|q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(7));

-- Location: FF_X77_Y57_N11
\regs|registrador_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(8));

-- Location: LCCOMB_X73_Y60_N10
\mux_RtRd|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[2]~2_combout\ = (\ID_EX|q\(140) & \ID_EX|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(2),
	combout => \mux_RtRd|Y[2]~2_combout\);

-- Location: FF_X73_Y60_N11
\EX_MEM|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_RtRd|Y[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(2));

-- Location: LCCOMB_X76_Y60_N16
\MEM_WB|q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[2]~feeder_combout\ = \EX_MEM|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(2),
	combout => \MEM_WB|q[2]~feeder_combout\);

-- Location: FF_X76_Y60_N17
\MEM_WB|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(2));

-- Location: LCCOMB_X77_Y57_N16
\regs|registrador_rtl_1_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[5]~feeder_combout\ = \MEM_WB|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|q\(2),
	combout => \regs|registrador_rtl_1_bypass[5]~feeder_combout\);

-- Location: FF_X77_Y57_N17
\regs|registrador_rtl_1_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(5));

-- Location: LCCOMB_X77_Y57_N10
\regs|registrador~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~39_combout\ = (\regs|registrador_rtl_1_bypass\(0) & (!\regs|registrador_rtl_1_bypass\(5) & (\regs|registrador_rtl_1_bypass\(7) $ (!\regs|registrador_rtl_1_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(0),
	datab => \regs|registrador_rtl_1_bypass\(7),
	datac => \regs|registrador_rtl_1_bypass\(8),
	datad => \regs|registrador_rtl_1_bypass\(5),
	combout => \regs|registrador~39_combout\);

-- Location: LCCOMB_X74_Y60_N16
\regs|registrador_rtl_1_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X74_Y60_N17
\regs|registrador_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(28));

-- Location: LCCOMB_X72_Y57_N28
\mux_RtRd|Y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[4]~4_combout\ = (\ID_EX|q\(4) & \ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(4),
	datad => \ID_EX|q\(140),
	combout => \mux_RtRd|Y[4]~4_combout\);

-- Location: FF_X72_Y57_N29
\EX_MEM|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_RtRd|Y[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(4));

-- Location: LCCOMB_X73_Y57_N10
\MEM_WB|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[4]~feeder_combout\ = \EX_MEM|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(4),
	combout => \MEM_WB|q[4]~feeder_combout\);

-- Location: FF_X73_Y57_N11
\MEM_WB|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(4));

-- Location: FF_X77_Y57_N5
\regs|registrador_rtl_1_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \MEM_WB|q\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(9));

-- Location: LCCOMB_X72_Y57_N10
\memoriaInst|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~6_combout\ = (\PC|q\(5)) # ((\PC|q\(4)) # ((\PC|q\(2) & \PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(4),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~6_combout\);

-- Location: LCCOMB_X72_Y57_N4
\memoriaInst|rom~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~7_combout\ = (\PC|q\(3) & ((\PC|q\(5) $ (!\PC|q\(4))) # (!\PC|q\(2)))) # (!\PC|q\(3) & (\PC|q\(5) $ ((\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(4),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~7_combout\);

-- Location: LCCOMB_X72_Y57_N6
\memoriaInst|rom~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~9_combout\ = (\memoriaInst|rom~8_combout\ & ((\PC|q\(6) & (!\memoriaInst|rom~6_combout\)) # (!\PC|q\(6) & ((!\memoriaInst|rom~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~6_combout\,
	datab => \PC|q\(6),
	datac => \memoriaInst|rom~7_combout\,
	datad => \memoriaInst|rom~8_combout\,
	combout => \memoriaInst|rom~9_combout\);

-- Location: LCCOMB_X72_Y57_N24
\IF_ID|q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[16]~feeder_combout\ = \memoriaInst|rom~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~9_combout\,
	combout => \IF_ID|q[16]~feeder_combout\);

-- Location: FF_X72_Y57_N25
\IF_ID|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(16));

-- Location: LCCOMB_X72_Y57_N8
\ID_EX|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[5]~feeder_combout\ = \IF_ID|q\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(16),
	combout => \ID_EX|q[5]~feeder_combout\);

-- Location: FF_X72_Y57_N9
\ID_EX|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(5));

-- Location: LCCOMB_X72_Y57_N14
\mux_RtRd|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[0]~0_combout\ = (\ID_EX|q\(140) & ((\ID_EX|q\(0)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(5),
	datac => \ID_EX|q\(0),
	datad => \ID_EX|q\(140),
	combout => \mux_RtRd|Y[0]~0_combout\);

-- Location: FF_X72_Y57_N15
\EX_MEM|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_RtRd|Y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(0));

-- Location: LCCOMB_X73_Y57_N26
\MEM_WB|q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[0]~feeder_combout\ = \EX_MEM|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(0),
	combout => \MEM_WB|q[0]~feeder_combout\);

-- Location: FF_X73_Y57_N27
\MEM_WB|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(0));

-- Location: FF_X73_Y57_N9
\regs|registrador_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \MEM_WB|q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(1));

-- Location: LCCOMB_X72_Y56_N0
\memoriaInst|rom~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~10_combout\ = (!\PC|q\(6) & (!\PC|q\(5) & ((\PC|q\(3)) # (\PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(5),
	datac => \PC|q\(3),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~10_combout\);

-- Location: LCCOMB_X72_Y56_N30
\memoriaInst|rom~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~49_combout\ = (\memoriaInst|rom~10_combout\ & (!\PC|q\(7) & (!\PC|q\(9) & !\PC|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~10_combout\,
	datab => \PC|q\(7),
	datac => \PC|q\(9),
	datad => \PC|q\(8),
	combout => \memoriaInst|rom~49_combout\);

-- Location: LCCOMB_X73_Y57_N24
\regs|registrador_rtl_1_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[4]~feeder_combout\ = \memoriaInst|rom~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~49_combout\,
	combout => \regs|registrador_rtl_1_bypass[4]~feeder_combout\);

-- Location: FF_X73_Y57_N25
\regs|registrador_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(4));

-- Location: FF_X74_Y57_N25
\regs|registrador_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(2));

-- Location: LCCOMB_X73_Y57_N2
\IF_ID|q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[17]~feeder_combout\ = \memoriaInst|rom~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~49_combout\,
	combout => \IF_ID|q[17]~feeder_combout\);

-- Location: FF_X73_Y57_N3
\IF_ID|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(17));

-- Location: LCCOMB_X73_Y57_N16
\ID_EX|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[6]~feeder_combout\ = \IF_ID|q\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(17),
	combout => \ID_EX|q[6]~feeder_combout\);

-- Location: FF_X73_Y57_N17
\ID_EX|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(6));

-- Location: LCCOMB_X73_Y57_N12
\mux_RtRd|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[1]~1_combout\ = (\ID_EX|q\(140) & ((\ID_EX|q\(1)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(6),
	datac => \ID_EX|q\(1),
	datad => \ID_EX|q\(140),
	combout => \mux_RtRd|Y[1]~1_combout\);

-- Location: FF_X73_Y57_N13
\EX_MEM|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_RtRd|Y[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(1));

-- Location: LCCOMB_X73_Y57_N0
\MEM_WB|q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[1]~feeder_combout\ = \EX_MEM|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(1),
	combout => \MEM_WB|q[1]~feeder_combout\);

-- Location: FF_X73_Y57_N1
\MEM_WB|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(1));

-- Location: LCCOMB_X73_Y57_N14
\regs|registrador_rtl_1_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[3]~feeder_combout\ = \MEM_WB|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|q\(1),
	combout => \regs|registrador_rtl_1_bypass[3]~feeder_combout\);

-- Location: FF_X73_Y57_N15
\regs|registrador_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(3));

-- Location: LCCOMB_X74_Y57_N24
\regs|registrador~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~38_combout\ = (\regs|registrador_rtl_1_bypass\(1) & (\regs|registrador_rtl_1_bypass\(2) & (\regs|registrador_rtl_1_bypass\(4) $ (!\regs|registrador_rtl_1_bypass\(3))))) # (!\regs|registrador_rtl_1_bypass\(1) & 
-- (!\regs|registrador_rtl_1_bypass\(2) & (\regs|registrador_rtl_1_bypass\(4) $ (!\regs|registrador_rtl_1_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(1),
	datab => \regs|registrador_rtl_1_bypass\(4),
	datac => \regs|registrador_rtl_1_bypass\(2),
	datad => \regs|registrador_rtl_1_bypass\(3),
	combout => \regs|registrador~38_combout\);

-- Location: LCCOMB_X74_Y60_N6
\regs|saidaB[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[8]~0_combout\ = (\regs|registrador_rtl_1_bypass\(28) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(28),
	datac => \regs|registrador_rtl_1_bypass\(9),
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[8]~0_combout\);

-- Location: LCCOMB_X73_Y57_N20
\regs|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|Equal1~0_combout\ = (!\IF_ID|q\(16) & (!\IF_ID|q\(19) & !\IF_ID|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|q\(16),
	datac => \IF_ID|q\(19),
	datad => \IF_ID|q\(17),
	combout => \regs|Equal1~0_combout\);

-- Location: LCCOMB_X70_Y58_N30
\fd_ctrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal0~0_combout\ = (\IF_ID|q\(27) & (!\IF_ID|q\(28) & (\IF_ID|q\(31) & !\IF_ID|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \IF_ID|q\(28),
	datac => \IF_ID|q\(31),
	datad => \IF_ID|q\(29),
	combout => \fd_ctrl|Equal0~0_combout\);

-- Location: FF_X70_Y58_N31
\ID_EX|q[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \fd_ctrl|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(145));

-- Location: FF_X72_Y58_N9
\EX_MEM|q[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(145),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(105));

-- Location: FF_X72_Y58_N11
\MEM_WB|q[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(105),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(69));

-- Location: LCCOMB_X70_Y56_N6
\memoriaInst|rom~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~29_combout\ = (\PC|q\(5) & ((\PC|q\(4) & (!\PC|q\(3) & !\PC|q\(2))) # (!\PC|q\(4) & (\PC|q\(3) & \PC|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(3),
	datac => \PC|q\(5),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~29_combout\);

-- Location: LCCOMB_X70_Y56_N0
\memoriaInst|rom~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~30_combout\ = (\memoriaInst|rom~8_combout\ & ((\memoriaInst|rom~28_combout\) # ((!\PC|q\(6) & \memoriaInst|rom~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~28_combout\,
	datab => \PC|q\(6),
	datac => \memoriaInst|rom~8_combout\,
	datad => \memoriaInst|rom~29_combout\,
	combout => \memoriaInst|rom~30_combout\);

-- Location: LCCOMB_X76_Y57_N12
\regs|registrador_rtl_0_bypass[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[8]~feeder_combout\ = \memoriaInst|rom~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~30_combout\,
	combout => \regs|registrador_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X76_Y57_N13
\regs|registrador_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(8));

-- Location: LCCOMB_X76_Y57_N2
\regs|registrador_rtl_0_bypass[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[5]~feeder_combout\ = \MEM_WB|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|q\(2),
	combout => \regs|registrador_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X76_Y57_N3
\regs|registrador_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(5));

-- Location: FF_X76_Y57_N11
\regs|registrador_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \MEM_WB|q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(7));

-- Location: FF_X76_Y57_N21
\regs|registrador_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \MEM_WB|q\(70),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(0));

-- Location: LCCOMB_X76_Y57_N10
\regs|registrador~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~41_combout\ = (!\regs|registrador_rtl_0_bypass\(5) & (\regs|registrador_rtl_0_bypass\(0) & (\regs|registrador_rtl_0_bypass\(8) $ (!\regs|registrador_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(8),
	datab => \regs|registrador_rtl_0_bypass\(5),
	datac => \regs|registrador_rtl_0_bypass\(7),
	datad => \regs|registrador_rtl_0_bypass\(0),
	combout => \regs|registrador~41_combout\);

-- Location: LCCOMB_X76_Y58_N20
\regs|registrador_rtl_0_bypass[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[9]~feeder_combout\ = \MEM_WB|q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|q\(4),
	combout => \regs|registrador_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X76_Y58_N21
\regs|registrador_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(9));

-- Location: LCCOMB_X76_Y58_N4
\regs|registrador_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X76_Y58_N5
\regs|registrador_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(28));

-- Location: LCCOMB_X73_Y57_N6
\regs|registrador_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[3]~feeder_combout\ = \MEM_WB|q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|q\(1),
	combout => \regs|registrador_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X73_Y57_N7
\regs|registrador_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(3));

-- Location: LCCOMB_X70_Y56_N30
\memoriaInst|rom~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~26_combout\ = (\PC|q\(4) & (!\PC|q\(5))) # (!\PC|q\(4) & (\PC|q\(3) & ((!\PC|q\(2)) # (!\PC|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(2),
	datac => \PC|q\(3),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~26_combout\);

-- Location: LCCOMB_X70_Y56_N8
\memoriaInst|rom~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~27_combout\ = (\memoriaInst|rom~26_combout\ & (((!\PC|q\(3) & \memoriaInst|rom~20_combout\)) # (!\PC|q\(6)))) # (!\memoriaInst|rom~26_combout\ & (((!\PC|q\(3) & \memoriaInst|rom~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~26_combout\,
	datab => \PC|q\(6),
	datac => \PC|q\(3),
	datad => \memoriaInst|rom~20_combout\,
	combout => \memoriaInst|rom~27_combout\);

-- Location: LCCOMB_X72_Y56_N26
\memoriaInst|rom~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~51_combout\ = (!\PC|q\(9) & (!\PC|q\(7) & (\memoriaInst|rom~27_combout\ & !\PC|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(9),
	datab => \PC|q\(7),
	datac => \memoriaInst|rom~27_combout\,
	datad => \PC|q\(8),
	combout => \memoriaInst|rom~51_combout\);

-- Location: LCCOMB_X73_Y57_N4
\regs|registrador_rtl_0_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[4]~feeder_combout\ = \memoriaInst|rom~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoriaInst|rom~51_combout\,
	combout => \regs|registrador_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X73_Y57_N5
\regs|registrador_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(4));

-- Location: LCCOMB_X70_Y58_N18
\memoriaInst|rom~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~24_combout\ = (\PC|q\(4) & ((\PC|q\(6)) # ((\PC|q\(5)) # (!\PC|q\(3))))) # (!\PC|q\(4) & ((\PC|q\(5) & (\PC|q\(6))) # (!\PC|q\(5) & ((\PC|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(6),
	datac => \PC|q\(3),
	datad => \PC|q\(5),
	combout => \memoriaInst|rom~24_combout\);

-- Location: LCCOMB_X70_Y58_N8
\memoriaInst|rom~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~25_combout\ = (\memoriaInst|rom~8_combout\ & (!\memoriaInst|rom~24_combout\ & ((\PC|q\(2)) # (\PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~8_combout\,
	datab => \memoriaInst|rom~24_combout\,
	datac => \PC|q\(2),
	datad => \PC|q\(6),
	combout => \memoriaInst|rom~25_combout\);

-- Location: FF_X73_Y57_N31
\regs|registrador_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(2));

-- Location: FF_X73_Y57_N29
\regs|registrador_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \MEM_WB|q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(1));

-- Location: LCCOMB_X73_Y57_N30
\regs|registrador~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~40_combout\ = (\regs|registrador_rtl_0_bypass\(3) & (\regs|registrador_rtl_0_bypass\(4) & (\regs|registrador_rtl_0_bypass\(2) $ (!\regs|registrador_rtl_0_bypass\(1))))) # (!\regs|registrador_rtl_0_bypass\(3) & 
-- (!\regs|registrador_rtl_0_bypass\(4) & (\regs|registrador_rtl_0_bypass\(2) $ (!\regs|registrador_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(3),
	datab => \regs|registrador_rtl_0_bypass\(4),
	datac => \regs|registrador_rtl_0_bypass\(2),
	datad => \regs|registrador_rtl_0_bypass\(1),
	combout => \regs|registrador~40_combout\);

-- Location: LCCOMB_X76_Y58_N14
\regs|saidaA[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[8]~44_combout\ = (\regs|registrador_rtl_0_bypass\(28) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador_rtl_0_bypass\(28),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[8]~44_combout\);

-- Location: LCCOMB_X70_Y58_N10
\IF_ID|q[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[22]~feeder_combout\ = \memoriaInst|rom~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~51_combout\,
	combout => \IF_ID|q[22]~feeder_combout\);

-- Location: FF_X70_Y58_N11
\IF_ID|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(22));

-- Location: FF_X70_Y58_N13
\IF_ID|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(21));

-- Location: LCCOMB_X70_Y58_N28
\IF_ID|q[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[24]~feeder_combout\ = \memoriaInst|rom~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~30_combout\,
	combout => \IF_ID|q[24]~feeder_combout\);

-- Location: FF_X70_Y58_N29
\IF_ID|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(24));

-- Location: LCCOMB_X70_Y58_N12
\regs|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|Equal0~0_combout\ = (!\IF_ID|q\(22) & (!\IF_ID|q\(21) & !\IF_ID|q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(22),
	datac => \IF_ID|q\(21),
	datad => \IF_ID|q\(24),
	combout => \regs|Equal0~0_combout\);

-- Location: FF_X77_Y58_N5
\regs|registrador_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[8]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(27));

-- Location: LCCOMB_X70_Y58_N24
\fd_ctrl|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal3~0_combout\ = (\IF_ID|q\(27) & (!\IF_ID|q\(28) & (\IF_ID|q\(31) & \IF_ID|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \IF_ID|q\(28),
	datac => \IF_ID|q\(31),
	datad => \IF_ID|q\(29),
	combout => \fd_ctrl|Equal3~0_combout\);

-- Location: FF_X70_Y58_N25
\ID_EX|q[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \fd_ctrl|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(142));

-- Location: FF_X70_Y59_N25
\EX_MEM|q[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(142),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(102));

-- Location: LCCOMB_X79_Y58_N26
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

-- Location: LCCOMB_X76_Y58_N10
\regs|registrador_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X76_Y58_N11
\regs|registrador_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(14));

-- Location: LCCOMB_X76_Y58_N8
\regs|saidaA[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[1]~58_combout\ = (\regs|registrador_rtl_0_bypass\(14) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador~40_combout\,
	datad => \regs|registrador_rtl_0_bypass\(14),
	combout => \regs|saidaA[1]~58_combout\);

-- Location: FF_X77_Y58_N15
\regs|registrador_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[1]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(13));

-- Location: LCCOMB_X70_Y58_N0
\fd_ctrl|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal4~0_combout\ = (!\IF_ID|q\(27) & (\IF_ID|q\(28) & (!\IF_ID|q\(31) & !\IF_ID|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(27),
	datab => \IF_ID|q\(28),
	datac => \IF_ID|q\(31),
	datad => \IF_ID|q\(29),
	combout => \fd_ctrl|Equal4~0_combout\);

-- Location: FF_X73_Y59_N29
\ID_EX|q[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \fd_ctrl|Equal4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(139));

-- Location: LCCOMB_X73_Y59_N12
\ula|full_adder|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[0]~0_combout\ = (!\ID_EX|q\(140) & \ID_EX|q\(139))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datad => \ID_EX|q\(139),
	combout => \ula|full_adder|c_out[0]~0_combout\);

-- Location: LCCOMB_X77_Y56_N14
\regs|registrador_rtl_1_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X77_Y56_N15
\regs|registrador_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(22));

-- Location: LCCOMB_X77_Y56_N12
\regs|saidaB[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[5]~46_combout\ = (\regs|registrador_rtl_1_bypass\(22) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador_rtl_1_bypass\(22),
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[5]~46_combout\);

-- Location: FF_X74_Y56_N3
\regs|registrador_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[5]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(21));

-- Location: LCCOMB_X74_Y58_N18
\regs|registrador_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X74_Y58_N19
\regs|registrador_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(26));

-- Location: LCCOMB_X74_Y58_N16
\regs|saidaA[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[7]~46_combout\ = (\regs|registrador_rtl_0_bypass\(26) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador~41_combout\,
	datad => \regs|registrador_rtl_0_bypass\(26),
	combout => \regs|saidaA[7]~46_combout\);

-- Location: FF_X73_Y59_N15
\ID_EX|q[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[8]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(50));

-- Location: FF_X77_Y59_N29
\EX_MEM|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(50),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(13));

-- Location: LCCOMB_X74_Y60_N18
\regs|registrador_rtl_1_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[32]~feeder_combout\);

-- Location: FF_X74_Y60_N19
\regs|registrador_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(32));

-- Location: LCCOMB_X74_Y60_N4
\regs|saidaB[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[10]~4_combout\ = (\regs|registrador_rtl_1_bypass\(32) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(32),
	datac => \regs|registrador_rtl_1_bypass\(9),
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[10]~4_combout\);

-- Location: FF_X74_Y56_N23
\regs|registrador_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[10]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(31));

-- Location: FF_X72_Y59_N3
\ID_EX|q[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(138));

-- Location: LCCOMB_X80_Y59_N0
\regs|registrador_rtl_1_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[38]~feeder_combout\);

-- Location: FF_X80_Y59_N1
\regs|registrador_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(38));

-- Location: LCCOMB_X80_Y59_N10
\regs|saidaB[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[13]~10_combout\ = (\regs|registrador_rtl_1_bypass\(38) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(38),
	datac => \regs|registrador~38_combout\,
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[13]~10_combout\);

-- Location: FF_X80_Y59_N3
\regs|registrador_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[13]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(37));

-- Location: LCCOMB_X74_Y60_N2
\regs|registrador_rtl_1_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[34]~feeder_combout\);

-- Location: FF_X74_Y60_N3
\regs|registrador_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(34));

-- Location: LCCOMB_X74_Y60_N24
\regs|saidaB[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[11]~6_combout\ = (\regs|registrador_rtl_1_bypass\(34) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(34),
	datac => \regs|registrador_rtl_1_bypass\(9),
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[11]~6_combout\);

-- Location: FF_X75_Y57_N9
\regs|registrador_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[11]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(33));

-- Location: LCCOMB_X74_Y59_N4
\mux_Rt_im|Y[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[15]~14_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(57))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(57),
	combout => \mux_Rt_im|Y[15]~14_combout\);

-- Location: LCCOMB_X77_Y60_N22
\regs|registrador_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X77_Y60_N23
\regs|registrador_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(42));

-- Location: LCCOMB_X77_Y60_N0
\regs|saidaA[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[15]~30_combout\ = (\regs|registrador_rtl_0_bypass\(42) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador_rtl_0_bypass\(42),
	datad => \regs|registrador~41_combout\,
	combout => \regs|saidaA[15]~30_combout\);

-- Location: LCCOMB_X74_Y60_N22
\regs|registrador_rtl_1_bypass[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[35]~feeder_combout\ = \mux_ULA|Y[12]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[12]~4_combout\,
	combout => \regs|registrador_rtl_1_bypass[35]~feeder_combout\);

-- Location: FF_X74_Y60_N23
\regs|registrador_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(35));

-- Location: LCCOMB_X80_Y59_N4
\EX_MEM|q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[18]~feeder_combout\ = \ID_EX|q\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(55),
	combout => \EX_MEM|q[18]~feeder_combout\);

-- Location: FF_X80_Y59_N5
\EX_MEM|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(18));

-- Location: LCCOMB_X75_Y61_N30
\EX_MEM|q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[20]~feeder_combout\ = \ID_EX|q\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(57),
	combout => \EX_MEM|q[20]~feeder_combout\);

-- Location: FF_X75_Y61_N31
\EX_MEM|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(20));

-- Location: LCCOMB_X75_Y57_N16
\regs|registrador_rtl_1_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[44]~feeder_combout\);

-- Location: FF_X75_Y57_N17
\regs|registrador_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(44));

-- Location: LCCOMB_X75_Y57_N18
\regs|saidaB[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[16]~16_combout\ = (\regs|registrador_rtl_1_bypass\(44) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~39_combout\)) # (!\regs|registrador~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~38_combout\,
	datab => \regs|registrador_rtl_1_bypass\(44),
	datac => \regs|registrador_rtl_1_bypass\(9),
	datad => \regs|registrador~39_combout\,
	combout => \regs|saidaB[16]~16_combout\);

-- Location: FF_X75_Y57_N7
\regs|registrador_rtl_1_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[16]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(43));

-- Location: LCCOMB_X76_Y61_N12
\regs|registrador_rtl_1_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[46]~feeder_combout\);

-- Location: FF_X76_Y61_N13
\regs|registrador_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(46));

-- Location: LCCOMB_X76_Y61_N10
\regs|saidaB[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[17]~18_combout\ = (\regs|registrador_rtl_1_bypass\(46) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~39_combout\) # (!\regs|registrador~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador_rtl_1_bypass\(46),
	datad => \regs|registrador~39_combout\,
	combout => \regs|saidaB[17]~18_combout\);

-- Location: LCCOMB_X75_Y57_N22
\regs|registrador_rtl_1_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[48]~feeder_combout\);

-- Location: FF_X75_Y57_N23
\regs|registrador_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(48));

-- Location: LCCOMB_X75_Y57_N20
\regs|saidaB[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[18]~20_combout\ = (\regs|registrador_rtl_1_bypass\(48) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~39_combout\)) # (!\regs|registrador~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~38_combout\,
	datab => \regs|registrador_rtl_1_bypass\(9),
	datac => \regs|registrador_rtl_1_bypass\(48),
	datad => \regs|registrador~39_combout\,
	combout => \regs|saidaB[18]~20_combout\);

-- Location: FF_X75_Y57_N25
\regs|registrador_rtl_1_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[18]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(47));

-- Location: LCCOMB_X79_Y60_N18
\regs|registrador_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X79_Y60_N19
\regs|registrador_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(58));

-- Location: LCCOMB_X79_Y60_N12
\regs|saidaA[23]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[23]~14_combout\ = (\regs|registrador_rtl_0_bypass\(58) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador~41_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador_rtl_0_bypass\(58),
	combout => \regs|saidaA[23]~14_combout\);

-- Location: LCCOMB_X79_Y60_N24
\regs|registrador_rtl_0_bypass[57]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[57]~feeder_combout\ = \mux_ULA|Y[23]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[23]~15_combout\,
	combout => \regs|registrador_rtl_0_bypass[57]~feeder_combout\);

-- Location: FF_X79_Y60_N25
\regs|registrador_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[57]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(57));

-- Location: FF_X72_Y59_N11
\EX_MEM|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(43),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(6));

-- Location: LCCOMB_X76_Y58_N6
\regs|registrador_rtl_0_bypass[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[61]~feeder_combout\ = \mux_ULA|Y[25]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[25]~17_combout\,
	combout => \regs|registrador_rtl_0_bypass[61]~feeder_combout\);

-- Location: FF_X76_Y58_N7
\regs|registrador_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[61]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(61));

-- Location: LCCOMB_X75_Y58_N20
\regs|registrador_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X75_Y58_N21
\regs|registrador_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(62));

-- Location: LCCOMB_X75_Y58_N22
\regs|saidaA[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[25]~10_combout\ = (\regs|registrador_rtl_0_bypass\(62) & ((\regs|registrador_rtl_0_bypass\(9)) # ((!\regs|registrador~41_combout\) # (!\regs|registrador~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(9),
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador~41_combout\,
	datad => \regs|registrador_rtl_0_bypass\(62),
	combout => \regs|saidaA[25]~10_combout\);

-- Location: LCCOMB_X77_Y56_N30
\regs|registrador_rtl_1_bypass[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[63]~feeder_combout\ = \mux_ULA|Y[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[26]~26_combout\,
	combout => \regs|registrador_rtl_1_bypass[63]~feeder_combout\);

-- Location: FF_X77_Y56_N31
\regs|registrador_rtl_1_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(63));

-- Location: LCCOMB_X76_Y56_N2
\regs|registrador_rtl_1_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[64]~feeder_combout\);

-- Location: FF_X76_Y56_N3
\regs|registrador_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(64));

-- Location: LCCOMB_X76_Y56_N24
\regs|saidaB[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[26]~52_combout\ = (\regs|registrador_rtl_1_bypass\(64) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~39_combout\)) # (!\regs|registrador~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~38_combout\,
	datab => \regs|registrador_rtl_1_bypass\(64),
	datac => \regs|registrador~39_combout\,
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[26]~52_combout\);

-- Location: LCCOMB_X76_Y58_N26
\regs|registrador_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X76_Y58_N27
\regs|registrador_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(66));

-- Location: LCCOMB_X76_Y58_N16
\regs|saidaA[27]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[27]~6_combout\ = (\regs|registrador_rtl_0_bypass\(66) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador_rtl_0_bypass\(66),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[27]~6_combout\);

-- Location: LCCOMB_X77_Y56_N2
\regs|registrador_rtl_1_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X77_Y56_N3
\regs|registrador_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(20));

-- Location: LCCOMB_X77_Y56_N16
\regs|saidaB[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[4]~44_combout\ = (\regs|registrador_rtl_1_bypass\(20) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador_rtl_1_bypass\(20),
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[4]~44_combout\);

-- Location: FF_X74_Y56_N1
\regs|registrador_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[4]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(19));

-- Location: FF_X74_Y60_N13
\EX_MEM|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(10));

-- Location: LCCOMB_X79_Y57_N10
\regs|registrador_rtl_1_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X79_Y57_N11
\regs|registrador_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(24));

-- Location: LCCOMB_X79_Y57_N12
\regs|saidaB[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[6]~48_combout\ = (\regs|registrador_rtl_1_bypass\(24) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~39_combout\) # (!\regs|registrador~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador~39_combout\,
	datad => \regs|registrador_rtl_1_bypass\(24),
	combout => \regs|saidaB[6]~48_combout\);

-- Location: M9K_X78_Y57_N0
\regs|registrador_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_1|altsyncram_9ai1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
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
	port_b_data_width => 36,
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
	clk0 => \divisor|tick~clkctrl_outclk\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X79_Y57_N9
\regs|registrador_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[6]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(23));

-- Location: LCCOMB_X79_Y57_N8
\regs|saidaB[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[6]~49_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[6]~48_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a6\)) # (!\regs|saidaB[6]~48_combout\ & ((\regs|registrador_rtl_1_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[6]~48_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a6\,
	datac => \regs|registrador_rtl_1_bypass\(23),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[6]~49_combout\);

-- Location: FF_X73_Y59_N23
\ID_EX|q[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[6]~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(48));

-- Location: LCCOMB_X70_Y59_N12
\EX_MEM|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[11]~feeder_combout\ = \ID_EX|q\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(48),
	combout => \EX_MEM|q[11]~feeder_combout\);

-- Location: FF_X70_Y59_N13
\EX_MEM|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(11));

-- Location: LCCOMB_X79_Y57_N20
\regs|registrador_rtl_1_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X79_Y57_N21
\regs|registrador_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(26));

-- Location: LCCOMB_X79_Y57_N14
\regs|saidaB[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[7]~50_combout\ = (\regs|registrador_rtl_1_bypass\(26) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~38_combout\) # (!\regs|registrador~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador_rtl_1_bypass\(26),
	datac => \regs|registrador~39_combout\,
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[7]~50_combout\);

-- Location: FF_X79_Y57_N7
\regs|registrador_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[7]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(25));

-- Location: LCCOMB_X79_Y57_N6
\regs|saidaB[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[7]~51_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[7]~50_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a7\)) # (!\regs|saidaB[7]~50_combout\ & ((\regs|registrador_rtl_1_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a7\,
	datab => \regs|saidaB[7]~50_combout\,
	datac => \regs|registrador_rtl_1_bypass\(25),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[7]~51_combout\);

-- Location: FF_X73_Y59_N11
\ID_EX|q[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[7]~51_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(49));

-- Location: LCCOMB_X81_Y59_N2
\EX_MEM|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[12]~feeder_combout\ = \ID_EX|q\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(49),
	combout => \EX_MEM|q[12]~feeder_combout\);

-- Location: FF_X81_Y59_N3
\EX_MEM|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(12));

-- Location: LCCOMB_X81_Y59_N16
\EX_MEM|q[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[27]~feeder_combout\ = \ID_EX|q\(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(64),
	combout => \EX_MEM|q[27]~feeder_combout\);

-- Location: FF_X81_Y59_N17
\EX_MEM|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(27));

-- Location: LCCOMB_X74_Y60_N28
\regs|registrador_rtl_1_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[58]~feeder_combout\);

-- Location: FF_X74_Y60_N29
\regs|registrador_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(58));

-- Location: LCCOMB_X74_Y60_N14
\regs|saidaB[23]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[23]~30_combout\ = (\regs|registrador_rtl_1_bypass\(58) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(58),
	datac => \regs|registrador_rtl_1_bypass\(9),
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[23]~30_combout\);

-- Location: LCCOMB_X79_Y60_N22
\regs|registrador_rtl_1_bypass[57]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[57]~feeder_combout\ = \mux_ULA|Y[23]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[23]~15_combout\,
	combout => \regs|registrador_rtl_1_bypass[57]~feeder_combout\);

-- Location: FF_X79_Y60_N23
\regs|registrador_rtl_1_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[57]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(57));

-- Location: LCCOMB_X74_Y60_N8
\regs|saidaB[23]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[23]~31_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[23]~30_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a23\))) # (!\regs|saidaB[23]~30_combout\ & (\regs|registrador_rtl_1_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|saidaB[23]~30_combout\,
	datac => \regs|registrador_rtl_1_bypass\(57),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a23\,
	combout => \regs|saidaB[23]~31_combout\);

-- Location: LCCOMB_X74_Y60_N20
\ID_EX|q[65]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[65]~feeder_combout\ = \regs|saidaB[23]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[23]~31_combout\,
	combout => \ID_EX|q[65]~feeder_combout\);

-- Location: FF_X74_Y60_N21
\ID_EX|q[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[65]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(65));

-- Location: LCCOMB_X75_Y60_N6
\EX_MEM|q[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[28]~feeder_combout\ = \ID_EX|q\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(65),
	combout => \EX_MEM|q[28]~feeder_combout\);

-- Location: FF_X75_Y60_N7
\EX_MEM|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(28));

-- Location: LCCOMB_X76_Y61_N28
\regs|registrador_rtl_1_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[60]~feeder_combout\);

-- Location: FF_X76_Y61_N29
\regs|registrador_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(60));

-- Location: LCCOMB_X76_Y61_N2
\regs|saidaB[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[24]~32_combout\ = (\regs|registrador_rtl_1_bypass\(60) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~39_combout\) # (!\regs|registrador~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador_rtl_1_bypass\(60),
	datac => \regs|registrador~38_combout\,
	datad => \regs|registrador~39_combout\,
	combout => \regs|saidaB[24]~32_combout\);

-- Location: FF_X77_Y61_N31
\regs|registrador_rtl_1_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[24]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(59));

-- Location: LCCOMB_X77_Y61_N30
\regs|saidaB[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[24]~33_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[24]~32_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a24\)) # (!\regs|saidaB[24]~32_combout\ & ((\regs|registrador_rtl_1_bypass\(59))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[24]~32_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a24\,
	datac => \regs|registrador_rtl_1_bypass\(59),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[24]~33_combout\);

-- Location: LCCOMB_X77_Y60_N24
\ID_EX|q[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[66]~feeder_combout\ = \regs|saidaB[24]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[24]~33_combout\,
	combout => \ID_EX|q[66]~feeder_combout\);

-- Location: FF_X77_Y60_N25
\ID_EX|q[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(66));

-- Location: LCCOMB_X77_Y60_N16
\EX_MEM|q[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[29]~feeder_combout\ = \ID_EX|q\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(66),
	combout => \EX_MEM|q[29]~feeder_combout\);

-- Location: FF_X77_Y60_N17
\EX_MEM|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(29));

-- Location: LCCOMB_X76_Y56_N18
\regs|registrador_rtl_1_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[62]~feeder_combout\);

-- Location: FF_X76_Y56_N19
\regs|registrador_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(62));

-- Location: LCCOMB_X76_Y56_N12
\regs|saidaB[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[25]~34_combout\ = (\regs|registrador_rtl_1_bypass\(62) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(9),
	datac => \regs|registrador~38_combout\,
	datad => \regs|registrador_rtl_1_bypass\(62),
	combout => \regs|saidaB[25]~34_combout\);

-- Location: FF_X76_Y56_N5
\regs|registrador_rtl_1_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[25]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(61));

-- Location: LCCOMB_X76_Y56_N4
\regs|saidaB[25]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[25]~35_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[25]~34_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a25\))) # (!\regs|saidaB[25]~34_combout\ & (\regs|registrador_rtl_1_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[25]~34_combout\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(61),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a25\,
	combout => \regs|saidaB[25]~35_combout\);

-- Location: LCCOMB_X75_Y60_N12
\ID_EX|q[67]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[67]~feeder_combout\ = \regs|saidaB[25]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[25]~35_combout\,
	combout => \ID_EX|q[67]~feeder_combout\);

-- Location: FF_X75_Y60_N13
\ID_EX|q[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[67]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(67));

-- Location: LCCOMB_X75_Y60_N28
\EX_MEM|q[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[30]~feeder_combout\ = \ID_EX|q\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(67),
	combout => \EX_MEM|q[30]~feeder_combout\);

-- Location: FF_X75_Y60_N29
\EX_MEM|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(30));

-- Location: LCCOMB_X76_Y60_N12
\EX_MEM|q[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[31]~feeder_combout\ = \ID_EX|q\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(68),
	combout => \EX_MEM|q[31]~feeder_combout\);

-- Location: FF_X76_Y60_N13
\EX_MEM|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(31));

-- Location: LCCOMB_X76_Y56_N14
\regs|registrador_rtl_1_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[66]~feeder_combout\);

-- Location: FF_X76_Y56_N15
\regs|registrador_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(66));

-- Location: LCCOMB_X77_Y56_N6
\regs|saidaB[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[27]~54_combout\ = (\regs|registrador_rtl_1_bypass\(66) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador_rtl_1_bypass\(66),
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[27]~54_combout\);

-- Location: LCCOMB_X77_Y56_N28
\regs|registrador_rtl_1_bypass[65]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[65]~feeder_combout\ = \mux_ULA|Y[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[27]~27_combout\,
	combout => \regs|registrador_rtl_1_bypass[65]~feeder_combout\);

-- Location: FF_X77_Y56_N29
\regs|registrador_rtl_1_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[65]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(65));

-- Location: LCCOMB_X77_Y56_N4
\regs|saidaB[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[27]~55_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[27]~54_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a27\)) # (!\regs|saidaB[27]~54_combout\ & ((\regs|registrador_rtl_1_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[27]~54_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a27\,
	datac => \regs|registrador_rtl_1_bypass\(65),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[27]~55_combout\);

-- Location: FF_X77_Y56_N5
\ID_EX|q[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[27]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(69));

-- Location: LCCOMB_X81_Y59_N12
\EX_MEM|q[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[32]~feeder_combout\ = \ID_EX|q\(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(69),
	combout => \EX_MEM|q[32]~feeder_combout\);

-- Location: FF_X81_Y59_N13
\EX_MEM|q[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(32));

-- Location: LCCOMB_X77_Y57_N2
\regs|registrador_rtl_1_bypass[67]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[67]~feeder_combout\ = \mux_ULA|Y[28]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[28]~30_combout\,
	combout => \regs|registrador_rtl_1_bypass[67]~feeder_combout\);

-- Location: FF_X77_Y57_N3
\regs|registrador_rtl_1_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[67]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(67));

-- Location: LCCOMB_X76_Y57_N14
\regs|registrador_rtl_1_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[68]~feeder_combout\);

-- Location: FF_X76_Y57_N15
\regs|registrador_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(68));

-- Location: LCCOMB_X77_Y57_N4
\regs|saidaB[28]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[28]~60_combout\ = (\regs|registrador_rtl_1_bypass\(68) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador_rtl_1_bypass\(9),
	datad => \regs|registrador_rtl_1_bypass\(68),
	combout => \regs|saidaB[28]~60_combout\);

-- Location: LCCOMB_X77_Y57_N14
\regs|saidaB[28]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[28]~61_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[28]~60_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a28\)) # (!\regs|saidaB[28]~60_combout\ & ((\regs|registrador_rtl_1_bypass\(67))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a28\,
	datab => \regs|registrador_rtl_1_bypass\(67),
	datac => \regs|saidaB[28]~60_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[28]~61_combout\);

-- Location: FF_X77_Y57_N15
\ID_EX|q[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[28]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(70));

-- Location: FF_X77_Y59_N17
\EX_MEM|q[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(70),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(33));

-- Location: FF_X76_Y59_N5
\EX_MEM|q[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(71),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(34));

-- Location: LCCOMB_X77_Y57_N30
\regs|registrador_rtl_1_bypass[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[71]~feeder_combout\ = \mux_ULA|Y[30]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[30]~28_combout\,
	combout => \regs|registrador_rtl_1_bypass[71]~feeder_combout\);

-- Location: FF_X77_Y57_N31
\regs|registrador_rtl_1_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[71]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(71));

-- Location: LCCOMB_X77_Y56_N0
\regs|registrador_rtl_1_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[72]~feeder_combout\);

-- Location: FF_X77_Y56_N1
\regs|registrador_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(72));

-- Location: LCCOMB_X77_Y56_N22
\regs|saidaB[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[30]~56_combout\ = (\regs|registrador_rtl_1_bypass\(72) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(72),
	datac => \regs|registrador~38_combout\,
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[30]~56_combout\);

-- Location: LCCOMB_X77_Y57_N26
\regs|saidaB[30]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[30]~57_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[30]~56_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a30\))) # (!\regs|saidaB[30]~56_combout\ & (\regs|registrador_rtl_1_bypass\(71)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(71),
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a30\,
	datac => \regs|Equal1~0_combout\,
	datad => \regs|saidaB[30]~56_combout\,
	combout => \regs|saidaB[30]~57_combout\);

-- Location: FF_X77_Y57_N27
\ID_EX|q[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[30]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(72));

-- Location: LCCOMB_X81_Y59_N22
\EX_MEM|q[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[35]~feeder_combout\ = \ID_EX|q\(72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(72),
	combout => \EX_MEM|q[35]~feeder_combout\);

-- Location: FF_X81_Y59_N23
\EX_MEM|q[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(35));

-- Location: LCCOMB_X77_Y57_N12
\regs|registrador_rtl_1_bypass[73]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[73]~feeder_combout\ = \mux_ULA|Y[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[31]~31_combout\,
	combout => \regs|registrador_rtl_1_bypass[73]~feeder_combout\);

-- Location: FF_X77_Y57_N13
\regs|registrador_rtl_1_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[73]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(73));

-- Location: LCCOMB_X77_Y57_N18
\regs|registrador_rtl_1_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[74]~feeder_combout\);

-- Location: FF_X77_Y57_N19
\regs|registrador_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(74));

-- Location: LCCOMB_X77_Y57_N8
\regs|saidaB[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[31]~62_combout\ = (\regs|registrador_rtl_1_bypass\(74) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(74),
	datac => \regs|registrador_rtl_1_bypass\(9),
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[31]~62_combout\);

-- Location: LCCOMB_X77_Y57_N22
\regs|saidaB[31]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[31]~63_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[31]~62_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a31\))) # (!\regs|saidaB[31]~62_combout\ & (\regs|registrador_rtl_1_bypass\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(73),
	datab => \regs|saidaB[31]~62_combout\,
	datac => \regs|Equal1~0_combout\,
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a31\,
	combout => \regs|saidaB[31]~63_combout\);

-- Location: FF_X77_Y57_N23
\ID_EX|q[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[31]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(73));

-- Location: FF_X77_Y59_N7
\EX_MEM|q[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(73),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(36));

-- Location: M9K_X78_Y59_N0
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002400080001C0006000140004000040002000040000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_70e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portare => VCC,
	clk0 => \divisor|tick~clkctrl_outclk\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X78_Y58_N0
\regs|registrador_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_bancoRegistradores_57a36dfc.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "bancoRegistradores:regs|altsyncram:registrador_rtl_0|altsyncram_9ai1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
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
	port_b_data_width => 36,
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
	clk0 => \divisor|tick~clkctrl_outclk\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X77_Y60_N26
\regs|registrador_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X77_Y60_N27
\regs|registrador_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(74));

-- Location: LCCOMB_X77_Y60_N4
\regs|saidaA[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[31]~62_combout\ = (\regs|registrador_rtl_0_bypass\(74) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador_rtl_0_bypass\(74),
	datad => \regs|registrador~41_combout\,
	combout => \regs|saidaA[31]~62_combout\);

-- Location: LCCOMB_X77_Y60_N28
\regs|registrador_rtl_0_bypass[73]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[73]~feeder_combout\ = \mux_ULA|Y[31]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[31]~31_combout\,
	combout => \regs|registrador_rtl_0_bypass[73]~feeder_combout\);

-- Location: FF_X77_Y60_N29
\regs|registrador_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[73]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(73));

-- Location: LCCOMB_X77_Y60_N6
\regs|saidaA[31]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[31]~63_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[31]~62_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a31\)) # (!\regs|saidaA[31]~62_combout\ & ((\regs|registrador_rtl_0_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a31\,
	datac => \regs|saidaA[31]~62_combout\,
	datad => \regs|registrador_rtl_0_bypass\(73),
	combout => \regs|saidaA[31]~63_combout\);

-- Location: FF_X77_Y60_N7
\ID_EX|q[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[31]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(105));

-- Location: LCCOMB_X76_Y60_N4
\ula|mux2B|Y[31]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[31]~57_combout\ = (\ID_EX|q\(73) & (\ID_EX|q\(138) $ (((\ID_EX|q\(140)) # (!\ID_EX|q\(139)))))) # (!\ID_EX|q\(73) & (!\ID_EX|q\(140) & (\ID_EX|q\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(73),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(139),
	datad => \ID_EX|q\(138),
	combout => \ula|mux2B|Y[31]~57_combout\);

-- Location: LCCOMB_X76_Y60_N22
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

-- Location: LCCOMB_X79_Y58_N18
\regs|registrador_rtl_0_bypass[71]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[71]~feeder_combout\ = \mux_ULA|Y[30]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[30]~28_combout\,
	combout => \regs|registrador_rtl_0_bypass[71]~feeder_combout\);

-- Location: FF_X79_Y58_N19
\regs|registrador_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[71]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(71));

-- Location: LCCOMB_X80_Y58_N28
\regs|registrador_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X80_Y58_N29
\regs|registrador_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(72));

-- Location: LCCOMB_X80_Y58_N26
\regs|saidaA[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[30]~0_combout\ = (\regs|registrador_rtl_0_bypass\(72) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador_rtl_0_bypass\(72),
	combout => \regs|saidaA[30]~0_combout\);

-- Location: LCCOMB_X79_Y58_N8
\regs|saidaA[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[30]~1_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[30]~0_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a30\)) # (!\regs|saidaA[30]~0_combout\ & ((\regs|registrador_rtl_0_bypass\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a30\,
	datab => \regs|registrador_rtl_0_bypass\(71),
	datac => \regs|saidaA[30]~0_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[30]~1_combout\);

-- Location: FF_X79_Y58_N9
\ID_EX|q[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(104));

-- Location: LCCOMB_X76_Y59_N6
\mux_Rt_im|Y[29]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[29]~0_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(71))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(71),
	combout => \mux_Rt_im|Y[29]~0_combout\);

-- Location: LCCOMB_X77_Y59_N6
\mux_Rt_im|Y[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[28]~1_combout\ = (\ID_EX|q\(70) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(70),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[28]~1_combout\);

-- Location: LCCOMB_X76_Y59_N18
\mux_Rt_im|Y[27]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[27]~2_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(69),
	combout => \mux_Rt_im|Y[27]~2_combout\);

-- Location: LCCOMB_X76_Y58_N18
\regs|registrador_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X76_Y58_N19
\regs|registrador_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(64));

-- Location: LCCOMB_X76_Y58_N12
\regs|saidaA[26]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[26]~8_combout\ = (\regs|registrador_rtl_0_bypass\(64) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador~40_combout\,
	datad => \regs|registrador_rtl_0_bypass\(64),
	combout => \regs|saidaA[26]~8_combout\);

-- Location: LCCOMB_X77_Y58_N30
\regs|registrador_rtl_0_bypass[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[63]~feeder_combout\ = \mux_ULA|Y[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[26]~26_combout\,
	combout => \regs|registrador_rtl_0_bypass[63]~feeder_combout\);

-- Location: FF_X77_Y58_N31
\regs|registrador_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(63));

-- Location: LCCOMB_X77_Y58_N28
\regs|saidaA[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[26]~9_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[26]~8_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a26\))) # (!\regs|saidaA[26]~8_combout\ & (\regs|registrador_rtl_0_bypass\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaA[26]~8_combout\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(63),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a26\,
	combout => \regs|saidaA[26]~9_combout\);

-- Location: FF_X77_Y58_N29
\ID_EX|q[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[26]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(100));

-- Location: LCCOMB_X76_Y59_N0
\mux_Rt_im|Y[26]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[26]~3_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(68))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(68),
	combout => \mux_Rt_im|Y[26]~3_combout\);

-- Location: LCCOMB_X75_Y60_N14
\mux_Rt_im|Y[25]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[25]~4_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(67),
	combout => \mux_Rt_im|Y[25]~4_combout\);

-- Location: LCCOMB_X76_Y60_N24
\mux_Rt_im|Y[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[24]~5_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(66))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(66),
	combout => \mux_Rt_im|Y[24]~5_combout\);

-- Location: LCCOMB_X75_Y60_N18
\regs|registrador_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X75_Y60_N19
\regs|registrador_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(60));

-- Location: LCCOMB_X75_Y60_N16
\regs|saidaA[24]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[24]~12_combout\ = (\regs|registrador_rtl_0_bypass\(60) & ((\regs|registrador_rtl_0_bypass\(9)) # ((!\regs|registrador~41_combout\) # (!\regs|registrador~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(9),
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador~41_combout\,
	datad => \regs|registrador_rtl_0_bypass\(60),
	combout => \regs|saidaA[24]~12_combout\);

-- Location: LCCOMB_X76_Y60_N14
\regs|registrador_rtl_0_bypass[59]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[59]~feeder_combout\ = \mux_ULA|Y[24]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[24]~16_combout\,
	combout => \regs|registrador_rtl_0_bypass[59]~feeder_combout\);

-- Location: FF_X76_Y60_N15
\regs|registrador_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[59]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(59));

-- Location: LCCOMB_X75_Y60_N4
\regs|saidaA[24]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[24]~13_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[24]~12_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a24\))) # (!\regs|saidaA[24]~12_combout\ & (\regs|registrador_rtl_0_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|saidaA[24]~12_combout\,
	datac => \regs|registrador_rtl_0_bypass\(59),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a24\,
	combout => \regs|saidaA[24]~13_combout\);

-- Location: FF_X75_Y60_N5
\ID_EX|q[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(98));

-- Location: LCCOMB_X75_Y60_N30
\mux_Rt_im|Y[23]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[23]~6_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(65))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(65),
	combout => \mux_Rt_im|Y[23]~6_combout\);

-- Location: LCCOMB_X79_Y60_N6
\regs|registrador_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X79_Y60_N7
\regs|registrador_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(56));

-- Location: LCCOMB_X79_Y60_N4
\regs|saidaA[22]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[22]~16_combout\ = (\regs|registrador_rtl_0_bypass\(56) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador~41_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador_rtl_0_bypass\(56),
	combout => \regs|saidaA[22]~16_combout\);

-- Location: LCCOMB_X79_Y59_N0
\regs|registrador_rtl_0_bypass[55]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[55]~feeder_combout\ = \mux_ULA|Y[22]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[22]~14_combout\,
	combout => \regs|registrador_rtl_0_bypass[55]~feeder_combout\);

-- Location: FF_X79_Y59_N1
\regs|registrador_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[55]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(55));

-- Location: LCCOMB_X79_Y59_N4
\regs|saidaA[22]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[22]~17_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[22]~16_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a22\)) # (!\regs|saidaA[22]~16_combout\ & ((\regs|registrador_rtl_0_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a22\,
	datac => \regs|saidaA[22]~16_combout\,
	datad => \regs|registrador_rtl_0_bypass\(55),
	combout => \regs|saidaA[22]~17_combout\);

-- Location: FF_X79_Y59_N5
\ID_EX|q[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[22]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(96));

-- Location: LCCOMB_X76_Y59_N10
\mux_Rt_im|Y[22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[22]~7_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(64),
	combout => \mux_Rt_im|Y[22]~7_combout\);

-- Location: LCCOMB_X79_Y58_N20
\regs|registrador_rtl_0_bypass[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[53]~feeder_combout\ = \mux_ULA|Y[21]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[21]~13_combout\,
	combout => \regs|registrador_rtl_0_bypass[53]~feeder_combout\);

-- Location: FF_X79_Y58_N21
\regs|registrador_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(53));

-- Location: LCCOMB_X79_Y60_N30
\regs|registrador_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X79_Y60_N31
\regs|registrador_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(54));

-- Location: LCCOMB_X79_Y60_N8
\regs|saidaA[21]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[21]~18_combout\ = (\regs|registrador_rtl_0_bypass\(54) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(54),
	datab => \regs|registrador~41_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[21]~18_combout\);

-- Location: LCCOMB_X79_Y58_N22
\regs|saidaA[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[21]~19_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[21]~18_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a21\))) # (!\regs|saidaA[21]~18_combout\ & (\regs|registrador_rtl_0_bypass\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0_bypass\(53),
	datac => \regs|saidaA[21]~18_combout\,
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a21\,
	combout => \regs|saidaA[21]~19_combout\);

-- Location: FF_X79_Y58_N23
\ID_EX|q[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(95));

-- Location: LCCOMB_X79_Y57_N26
\regs|registrador_rtl_1_bypass[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[53]~feeder_combout\ = \mux_ULA|Y[21]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[21]~13_combout\,
	combout => \regs|registrador_rtl_1_bypass[53]~feeder_combout\);

-- Location: FF_X79_Y57_N27
\regs|registrador_rtl_1_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(53));

-- Location: LCCOMB_X74_Y57_N12
\regs|registrador_rtl_1_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[54]~feeder_combout\);

-- Location: FF_X74_Y57_N13
\regs|registrador_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(54));

-- Location: LCCOMB_X74_Y57_N6
\regs|saidaB[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[21]~26_combout\ = (\regs|registrador_rtl_1_bypass\(54) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~39_combout\) # (!\regs|registrador~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador~39_combout\,
	datad => \regs|registrador_rtl_1_bypass\(54),
	combout => \regs|saidaB[21]~26_combout\);

-- Location: LCCOMB_X74_Y57_N14
\regs|saidaB[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[21]~27_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[21]~26_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a21\)) # (!\regs|saidaB[21]~26_combout\ & ((\regs|registrador_rtl_1_bypass\(53))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a21\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(53),
	datad => \regs|saidaB[21]~26_combout\,
	combout => \regs|saidaB[21]~27_combout\);

-- Location: FF_X74_Y57_N15
\ID_EX|q[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[21]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(63));

-- Location: LCCOMB_X70_Y59_N28
\mux_Rt_im|Y[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[21]~8_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(63))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(63),
	combout => \mux_Rt_im|Y[21]~8_combout\);

-- Location: FF_X79_Y58_N27
\regs|registrador_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[20]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(51));

-- Location: LCCOMB_X79_Y60_N2
\regs|registrador_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X79_Y60_N3
\regs|registrador_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(52));

-- Location: LCCOMB_X79_Y60_N16
\regs|saidaA[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[20]~20_combout\ = (\regs|registrador_rtl_0_bypass\(52) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador~41_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador_rtl_0_bypass\(52),
	combout => \regs|saidaA[20]~20_combout\);

-- Location: LCCOMB_X79_Y58_N16
\regs|saidaA[20]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[20]~21_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[20]~20_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a20\))) # (!\regs|saidaA[20]~20_combout\ & (\regs|registrador_rtl_0_bypass\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(51),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a20\,
	datac => \regs|saidaA[20]~20_combout\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[20]~21_combout\);

-- Location: FF_X79_Y58_N17
\ID_EX|q[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[20]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(94));

-- Location: FF_X77_Y57_N25
\regs|registrador_rtl_1_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[20]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(51));

-- Location: LCCOMB_X76_Y61_N8
\regs|registrador_rtl_1_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[52]~feeder_combout\);

-- Location: FF_X76_Y61_N9
\regs|registrador_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(52));

-- Location: LCCOMB_X76_Y61_N14
\regs|saidaB[20]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[20]~24_combout\ = (\regs|registrador_rtl_1_bypass\(52) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~39_combout\) # (!\regs|registrador~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador_rtl_1_bypass\(52),
	datad => \regs|registrador~39_combout\,
	combout => \regs|saidaB[20]~24_combout\);

-- Location: LCCOMB_X77_Y57_N24
\regs|saidaB[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[20]~25_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[20]~24_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a20\)) # (!\regs|saidaB[20]~24_combout\ & ((\regs|registrador_rtl_1_bypass\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a20\,
	datac => \regs|registrador_rtl_1_bypass\(51),
	datad => \regs|saidaB[20]~24_combout\,
	combout => \regs|saidaB[20]~25_combout\);

-- Location: FF_X75_Y61_N29
\ID_EX|q[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[20]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(62));

-- Location: LCCOMB_X75_Y61_N28
\mux_Rt_im|Y[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[20]~9_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(62))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datac => \ID_EX|q\(62),
	combout => \mux_Rt_im|Y[20]~9_combout\);

-- Location: LCCOMB_X80_Y58_N4
\regs|registrador_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X80_Y58_N5
\regs|registrador_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(50));

-- Location: LCCOMB_X80_Y58_N10
\regs|saidaA[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[19]~22_combout\ = (\regs|registrador_rtl_0_bypass\(50) & ((\regs|registrador_rtl_0_bypass\(9)) # ((!\regs|registrador~41_combout\) # (!\regs|registrador~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(9),
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(50),
	datad => \regs|registrador~41_combout\,
	combout => \regs|saidaA[19]~22_combout\);

-- Location: LCCOMB_X79_Y58_N24
\regs|registrador_rtl_0_bypass[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[49]~feeder_combout\ = \mux_ULA|Y[19]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[19]~11_combout\,
	combout => \regs|registrador_rtl_0_bypass[49]~feeder_combout\);

-- Location: FF_X79_Y58_N25
\regs|registrador_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(49));

-- Location: LCCOMB_X79_Y58_N14
\regs|saidaA[19]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[19]~23_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[19]~22_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a19\)) # (!\regs|saidaA[19]~22_combout\ & ((\regs|registrador_rtl_0_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a19\,
	datac => \regs|saidaA[19]~22_combout\,
	datad => \regs|registrador_rtl_0_bypass\(49),
	combout => \regs|saidaA[19]~23_combout\);

-- Location: FF_X79_Y58_N15
\ID_EX|q[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[19]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(93));

-- Location: LCCOMB_X74_Y61_N12
\regs|registrador_rtl_1_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[50]~feeder_combout\);

-- Location: FF_X74_Y61_N13
\regs|registrador_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(50));

-- Location: LCCOMB_X74_Y61_N18
\regs|saidaB[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[19]~22_combout\ = (\regs|registrador_rtl_1_bypass\(50) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(50),
	datab => \regs|registrador~39_combout\,
	datac => \regs|registrador~38_combout\,
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[19]~22_combout\);

-- Location: FF_X75_Y57_N3
\regs|registrador_rtl_1_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[19]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(49));

-- Location: LCCOMB_X75_Y57_N2
\regs|saidaB[19]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[19]~23_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[19]~22_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a19\))) # (!\regs|saidaB[19]~22_combout\ & (\regs|registrador_rtl_1_bypass\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|saidaB[19]~22_combout\,
	datac => \regs|registrador_rtl_1_bypass\(49),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a19\,
	combout => \regs|saidaB[19]~23_combout\);

-- Location: FF_X72_Y59_N17
\ID_EX|q[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[19]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(61));

-- Location: LCCOMB_X72_Y59_N2
\mux_Rt_im|Y[19]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[19]~10_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(61))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(61),
	combout => \mux_Rt_im|Y[19]~10_combout\);

-- Location: LCCOMB_X79_Y58_N30
\regs|registrador_rtl_0_bypass[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[47]~feeder_combout\ = \mux_ULA|Y[18]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[18]~10_combout\,
	combout => \regs|registrador_rtl_0_bypass[47]~feeder_combout\);

-- Location: FF_X79_Y58_N31
\regs|registrador_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(47));

-- Location: LCCOMB_X80_Y58_N12
\regs|registrador_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X80_Y58_N13
\regs|registrador_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(48));

-- Location: LCCOMB_X80_Y58_N6
\regs|saidaA[18]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[18]~24_combout\ = (\regs|registrador_rtl_0_bypass\(48) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador_rtl_0_bypass\(48),
	combout => \regs|saidaA[18]~24_combout\);

-- Location: LCCOMB_X79_Y58_N28
\regs|saidaA[18]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[18]~25_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[18]~24_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a18\)) # (!\regs|saidaA[18]~24_combout\ & ((\regs|registrador_rtl_0_bypass\(47))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a18\,
	datac => \regs|registrador_rtl_0_bypass\(47),
	datad => \regs|saidaA[18]~24_combout\,
	combout => \regs|saidaA[18]~25_combout\);

-- Location: FF_X79_Y58_N29
\ID_EX|q[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[18]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(92));

-- Location: LCCOMB_X75_Y61_N4
\mux_Rt_im|Y[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[18]~11_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(60))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datac => \ID_EX|q\(60),
	combout => \mux_Rt_im|Y[18]~11_combout\);

-- Location: LCCOMB_X80_Y58_N24
\regs|registrador_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X80_Y58_N25
\regs|registrador_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(46));

-- Location: LCCOMB_X80_Y58_N30
\regs|saidaA[17]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[17]~26_combout\ = (\regs|registrador_rtl_0_bypass\(46) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador_rtl_0_bypass\(46),
	combout => \regs|saidaA[17]~26_combout\);

-- Location: FF_X79_Y58_N13
\regs|registrador_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[17]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(45));

-- Location: LCCOMB_X79_Y58_N2
\regs|saidaA[17]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[17]~27_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[17]~26_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a17\)) # (!\regs|saidaA[17]~26_combout\ & ((\regs|registrador_rtl_0_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a17\,
	datac => \regs|saidaA[17]~26_combout\,
	datad => \regs|registrador_rtl_0_bypass\(45),
	combout => \regs|saidaA[17]~27_combout\);

-- Location: FF_X79_Y58_N3
\ID_EX|q[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[17]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(91));

-- Location: LCCOMB_X77_Y59_N16
\mux_Rt_im|Y[17]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[17]~12_combout\ = (\ID_EX|q\(59) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(59),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[17]~12_combout\);

-- Location: LCCOMB_X75_Y61_N0
\mux_Rt_im|Y[16]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[16]~13_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(58))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(58),
	combout => \mux_Rt_im|Y[16]~13_combout\);

-- Location: LCCOMB_X79_Y58_N6
\regs|registrador_rtl_0_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[43]~feeder_combout\ = \mux_ULA|Y[16]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[16]~8_combout\,
	combout => \regs|registrador_rtl_0_bypass[43]~feeder_combout\);

-- Location: FF_X79_Y58_N7
\regs|registrador_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(43));

-- Location: LCCOMB_X80_Y58_N20
\regs|registrador_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X80_Y58_N21
\regs|registrador_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(44));

-- Location: LCCOMB_X80_Y58_N18
\regs|saidaA[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[16]~28_combout\ = (\regs|registrador_rtl_0_bypass\(44) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador_rtl_0_bypass\(44),
	combout => \regs|saidaA[16]~28_combout\);

-- Location: LCCOMB_X79_Y58_N0
\regs|saidaA[16]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[16]~29_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[16]~28_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a16\))) # (!\regs|saidaA[16]~28_combout\ & (\regs|registrador_rtl_0_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(43),
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a16\,
	datad => \regs|saidaA[16]~28_combout\,
	combout => \regs|saidaA[16]~29_combout\);

-- Location: FF_X79_Y58_N1
\ID_EX|q[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[16]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(90));

-- Location: LCCOMB_X74_Y59_N16
\ula|full_adder|c_out[16]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[16]~17_combout\ = (\ID_EX|q\(90) & ((\ula|full_adder|c_out[15]~16_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[16]~13_combout\)))) # (!\ID_EX|q\(90) & (\ula|full_adder|c_out[15]~16_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[16]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \mux_Rt_im|Y[16]~13_combout\,
	datac => \ID_EX|q\(90),
	datad => \ula|full_adder|c_out[15]~16_combout\,
	combout => \ula|full_adder|c_out[16]~17_combout\);

-- Location: LCCOMB_X74_Y59_N14
\ula|full_adder|c_out[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[17]~18_combout\ = (\ID_EX|q\(91) & ((\ula|full_adder|c_out[16]~17_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[17]~12_combout\)))) # (!\ID_EX|q\(91) & (\ula|full_adder|c_out[16]~17_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[17]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \ID_EX|q\(91),
	datac => \mux_Rt_im|Y[17]~12_combout\,
	datad => \ula|full_adder|c_out[16]~17_combout\,
	combout => \ula|full_adder|c_out[17]~18_combout\);

-- Location: LCCOMB_X75_Y59_N28
\ula|full_adder|c_out[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[18]~19_combout\ = (\ID_EX|q\(92) & ((\ula|full_adder|c_out[17]~18_combout\) # (\mux_Rt_im|Y[18]~11_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(92) & (\ula|full_adder|c_out[17]~18_combout\ & 
-- (\mux_Rt_im|Y[18]~11_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(92),
	datab => \mux_Rt_im|Y[18]~11_combout\,
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[17]~18_combout\,
	combout => \ula|full_adder|c_out[18]~19_combout\);

-- Location: LCCOMB_X75_Y59_N6
\ula|full_adder|c_out[19]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[19]~20_combout\ = (\ID_EX|q\(93) & ((\ula|full_adder|c_out[18]~19_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[19]~10_combout\)))) # (!\ID_EX|q\(93) & (\ula|full_adder|c_out[18]~19_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[19]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(93),
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \mux_Rt_im|Y[19]~10_combout\,
	datad => \ula|full_adder|c_out[18]~19_combout\,
	combout => \ula|full_adder|c_out[19]~20_combout\);

-- Location: LCCOMB_X75_Y59_N0
\ula|full_adder|c_out[20]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[20]~21_combout\ = (\ID_EX|q\(94) & ((\ula|full_adder|c_out[19]~20_combout\) # (\mux_Rt_im|Y[20]~9_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(94) & (\ula|full_adder|c_out[19]~20_combout\ & 
-- (\mux_Rt_im|Y[20]~9_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(94),
	datab => \mux_Rt_im|Y[20]~9_combout\,
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[19]~20_combout\,
	combout => \ula|full_adder|c_out[20]~21_combout\);

-- Location: LCCOMB_X75_Y59_N2
\ula|full_adder|c_out[21]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[21]~22_combout\ = (\ID_EX|q\(95) & ((\ula|full_adder|c_out[20]~21_combout\) # (\mux_Rt_im|Y[21]~8_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(95) & (\ula|full_adder|c_out[20]~21_combout\ & 
-- (\mux_Rt_im|Y[21]~8_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(95),
	datab => \mux_Rt_im|Y[21]~8_combout\,
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[20]~21_combout\,
	combout => \ula|full_adder|c_out[21]~22_combout\);

-- Location: LCCOMB_X75_Y59_N20
\ula|full_adder|c_out[22]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[22]~23_combout\ = (\ID_EX|q\(96) & ((\ula|full_adder|c_out[21]~22_combout\) # (\mux_Rt_im|Y[22]~7_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(96) & (\ula|full_adder|c_out[21]~22_combout\ & 
-- (\mux_Rt_im|Y[22]~7_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(96),
	datab => \mux_Rt_im|Y[22]~7_combout\,
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[21]~22_combout\,
	combout => \ula|full_adder|c_out[22]~23_combout\);

-- Location: LCCOMB_X75_Y59_N10
\ula|full_adder|c_out[23]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[23]~24_combout\ = (\ID_EX|q\(97) & ((\ula|full_adder|c_out[22]~23_combout\) # (\mux_Rt_im|Y[23]~6_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(97) & (\ula|full_adder|c_out[22]~23_combout\ & 
-- (\mux_Rt_im|Y[23]~6_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[23]~6_combout\,
	datab => \ID_EX|q\(97),
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[22]~23_combout\,
	combout => \ula|full_adder|c_out[23]~24_combout\);

-- Location: LCCOMB_X75_Y59_N24
\ula|full_adder|c_out[24]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[24]~25_combout\ = (\ID_EX|q\(98) & ((\ula|full_adder|c_out[23]~24_combout\) # (\mux_Rt_im|Y[24]~5_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(98) & (\ula|full_adder|c_out[23]~24_combout\ & 
-- (\mux_Rt_im|Y[24]~5_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[24]~5_combout\,
	datab => \ID_EX|q\(98),
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[23]~24_combout\,
	combout => \ula|full_adder|c_out[24]~25_combout\);

-- Location: LCCOMB_X75_Y59_N18
\ula|full_adder|c_out[25]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[25]~26_combout\ = (\ID_EX|q\(99) & ((\ula|full_adder|c_out[24]~25_combout\) # (\mux_Rt_im|Y[25]~4_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(99) & (\ula|full_adder|c_out[24]~25_combout\ & 
-- (\mux_Rt_im|Y[25]~4_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[25]~4_combout\,
	datab => \ID_EX|q\(99),
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[24]~25_combout\,
	combout => \ula|full_adder|c_out[25]~26_combout\);

-- Location: LCCOMB_X75_Y59_N16
\ula|full_adder|c_out[26]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[26]~27_combout\ = (\ID_EX|q\(100) & ((\ula|full_adder|c_out[25]~26_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[26]~3_combout\)))) # (!\ID_EX|q\(100) & (\ula|full_adder|c_out[25]~26_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[26]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(100),
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \mux_Rt_im|Y[26]~3_combout\,
	datad => \ula|full_adder|c_out[25]~26_combout\,
	combout => \ula|full_adder|c_out[26]~27_combout\);

-- Location: LCCOMB_X75_Y59_N30
\ula|full_adder|c_out[27]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[27]~28_combout\ = (\ID_EX|q\(101) & ((\ula|full_adder|c_out[26]~27_combout\) # (\mux_Rt_im|Y[27]~2_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(101) & (\ula|full_adder|c_out[26]~27_combout\ & 
-- (\mux_Rt_im|Y[27]~2_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(101),
	datab => \mux_Rt_im|Y[27]~2_combout\,
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[26]~27_combout\,
	combout => \ula|full_adder|c_out[27]~28_combout\);

-- Location: LCCOMB_X77_Y58_N26
\regs|registrador_rtl_0_bypass[67]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[67]~feeder_combout\ = \mux_ULA|Y[28]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[28]~30_combout\,
	combout => \regs|registrador_rtl_0_bypass[67]~feeder_combout\);

-- Location: FF_X77_Y58_N27
\regs|registrador_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[67]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(67));

-- Location: LCCOMB_X76_Y58_N30
\regs|registrador_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X76_Y58_N31
\regs|registrador_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(68));

-- Location: LCCOMB_X76_Y58_N28
\regs|saidaA[28]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[28]~4_combout\ = (\regs|registrador_rtl_0_bypass\(68) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador_rtl_0_bypass\(68),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[28]~4_combout\);

-- Location: LCCOMB_X77_Y58_N20
\regs|saidaA[28]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[28]~5_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[28]~4_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a28\))) # (!\regs|saidaA[28]~4_combout\ & (\regs|registrador_rtl_0_bypass\(67)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(67),
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a28\,
	datad => \regs|saidaA[28]~4_combout\,
	combout => \regs|saidaA[28]~5_combout\);

-- Location: FF_X77_Y58_N21
\ID_EX|q[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[28]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(102));

-- Location: LCCOMB_X75_Y59_N8
\ula|full_adder|c_out[28]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[28]~29_combout\ = (\ula|full_adder|c_out[27]~28_combout\ & ((\ID_EX|q\(102)) # (\mux_Rt_im|Y[28]~1_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ula|full_adder|c_out[27]~28_combout\ & (\ID_EX|q\(102) & 
-- (\mux_Rt_im|Y[28]~1_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[28]~1_combout\,
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \ula|full_adder|c_out[27]~28_combout\,
	datad => \ID_EX|q\(102),
	combout => \ula|full_adder|c_out[28]~29_combout\);

-- Location: LCCOMB_X76_Y58_N22
\regs|registrador_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X76_Y58_N23
\regs|registrador_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(70));

-- Location: LCCOMB_X76_Y58_N0
\regs|saidaA[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[29]~2_combout\ = (\regs|registrador_rtl_0_bypass\(70) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador_rtl_0_bypass\(70),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[29]~2_combout\);

-- Location: FF_X76_Y59_N11
\regs|registrador_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[29]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(69));

-- Location: LCCOMB_X76_Y59_N8
\regs|saidaA[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[29]~3_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[29]~2_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a29\)) # (!\regs|saidaA[29]~2_combout\ & ((\regs|registrador_rtl_0_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|saidaA[29]~2_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a29\,
	datad => \regs|registrador_rtl_0_bypass\(69),
	combout => \regs|saidaA[29]~3_combout\);

-- Location: FF_X76_Y59_N9
\ID_EX|q[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[29]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(103));

-- Location: LCCOMB_X75_Y59_N14
\ula|full_adder|c_out[29]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[29]~30_combout\ = (\ula|full_adder|c_out[28]~29_combout\ & ((\ID_EX|q\(103)) # (\mux_Rt_im|Y[29]~0_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ula|full_adder|c_out[28]~29_combout\ & (\ID_EX|q\(103) & 
-- (\mux_Rt_im|Y[29]~0_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[29]~0_combout\,
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \ula|full_adder|c_out[28]~29_combout\,
	datad => \ID_EX|q\(103),
	combout => \ula|full_adder|c_out[29]~30_combout\);

-- Location: LCCOMB_X76_Y60_N18
\ula|full_adder|c_out[30]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[30]~31_combout\ = (\ID_EX|q\(104) & ((\ula|full_adder|c_out[29]~30_combout\) # (\mux_Rt_im|Y[30]~30_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(104) & (\ula|full_adder|c_out[29]~30_combout\ & 
-- (\mux_Rt_im|Y[30]~30_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[30]~30_combout\,
	datab => \ID_EX|q\(104),
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[29]~30_combout\,
	combout => \ula|full_adder|c_out[30]~31_combout\);

-- Location: LCCOMB_X76_Y60_N26
\ula|mux4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(105) & (\ula|mux2B|Y[31]~57_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(105) $ (\ula|mux2B|Y[31]~57_combout\ $ (\ula|full_adder|c_out[30]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(105),
	datab => \ID_EX|q\(140),
	datac => \ula|mux2B|Y[31]~57_combout\,
	datad => \ula|full_adder|c_out[30]~31_combout\,
	combout => \ula|mux4|Mux0~0_combout\);

-- Location: FF_X76_Y60_N27
\EX_MEM|q[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(68));

-- Location: FF_X76_Y60_N23
\MEM_WB|q[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(68),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(36));

-- Location: LCCOMB_X77_Y60_N8
\mux_ULA|Y[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[31]~31_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(36)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\,
	datab => \MEM_WB|q\(36),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[31]~31_combout\);

-- Location: LCCOMB_X74_Y56_N0
\regs|saidaB[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[4]~45_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[4]~44_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a4\))) # (!\regs|saidaB[4]~44_combout\ & (\regs|registrador_rtl_1_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[4]~44_combout\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(19),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a4\,
	combout => \regs|saidaB[4]~45_combout\);

-- Location: FF_X72_Y59_N1
\ID_EX|q[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[4]~45_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(46));

-- Location: FF_X79_Y59_N17
\EX_MEM|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(9));

-- Location: LCCOMB_X81_Y59_N6
\ula|mux2B|Y[30]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[30]~36_combout\ = (\ID_EX|q\(138) & (!\ID_EX|q\(140) & (\ID_EX|q\(139)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(72) $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(139),
	datad => \ID_EX|q\(72),
	combout => \ula|mux2B|Y[30]~36_combout\);

-- Location: LCCOMB_X75_Y59_N4
\ula|mux4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[30]~36_combout\ & (\ID_EX|q\(104)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[30]~36_combout\ $ (\ID_EX|q\(104) $ (\ula|full_adder|c_out[29]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[30]~36_combout\,
	datab => \ID_EX|q\(104),
	datac => \ula|full_adder|c_out[29]~30_combout\,
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux1~0_combout\);

-- Location: FF_X75_Y59_N5
\EX_MEM|q[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(67));

-- Location: FF_X76_Y59_N31
\MEM_WB|q[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(67),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(35));

-- Location: LCCOMB_X76_Y59_N30
\mux_ULA|Y[30]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[30]~28_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(35)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\,
	datac => \MEM_WB|q\(35),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[30]~28_combout\);

-- Location: LCCOMB_X77_Y57_N28
\regs|registrador_rtl_1_bypass[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[69]~feeder_combout\ = \mux_ULA|Y[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[29]~29_combout\,
	combout => \regs|registrador_rtl_1_bypass[69]~feeder_combout\);

-- Location: FF_X77_Y57_N29
\regs|registrador_rtl_1_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(69));

-- Location: LCCOMB_X79_Y57_N4
\regs|registrador_rtl_1_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[70]~feeder_combout\);

-- Location: FF_X79_Y57_N5
\regs|registrador_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(70));

-- Location: LCCOMB_X79_Y57_N22
\regs|saidaB[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[29]~58_combout\ = (\regs|registrador_rtl_1_bypass\(70) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~38_combout\) # (!\regs|registrador~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador_rtl_1_bypass\(70),
	datac => \regs|registrador~39_combout\,
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[29]~58_combout\);

-- Location: LCCOMB_X77_Y57_N0
\regs|saidaB[29]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[29]~59_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[29]~58_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a29\)) # (!\regs|saidaB[29]~58_combout\ & ((\regs|registrador_rtl_1_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a29\,
	datab => \regs|registrador_rtl_1_bypass\(69),
	datac => \regs|Equal1~0_combout\,
	datad => \regs|saidaB[29]~58_combout\,
	combout => \regs|saidaB[29]~59_combout\);

-- Location: FF_X77_Y57_N1
\ID_EX|q[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[29]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(71));

-- Location: LCCOMB_X76_Y59_N4
\ula|mux2B|Y[29]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[29]~37_combout\ = (\ID_EX|q\(140) & (!\ID_EX|q\(138) & (\ID_EX|q\(71)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(139) $ (((!\ID_EX|q\(138) & \ID_EX|q\(71))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(138),
	datac => \ID_EX|q\(71),
	datad => \ID_EX|q\(139),
	combout => \ula|mux2B|Y[29]~37_combout\);

-- Location: LCCOMB_X76_Y59_N26
\ula|mux4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[29]~37_combout\ & (\ID_EX|q\(103)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[29]~37_combout\ $ (\ID_EX|q\(103) $ (\ula|full_adder|c_out[28]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ula|mux2B|Y[29]~37_combout\,
	datac => \ID_EX|q\(103),
	datad => \ula|full_adder|c_out[28]~29_combout\,
	combout => \ula|mux4|Mux2~0_combout\);

-- Location: FF_X76_Y59_N27
\EX_MEM|q[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(66));

-- Location: FF_X76_Y59_N19
\MEM_WB|q[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(66),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(34));

-- Location: LCCOMB_X77_Y59_N0
\mux_ULA|Y[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[29]~29_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(34))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(34),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\,
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[29]~29_combout\);

-- Location: LCCOMB_X77_Y56_N10
\regs|registrador_rtl_1_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X77_Y56_N11
\regs|registrador_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(18));

-- Location: LCCOMB_X77_Y56_N20
\regs|saidaB[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[3]~42_combout\ = (\regs|registrador_rtl_1_bypass\(18) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador_rtl_1_bypass\(18),
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[3]~42_combout\);

-- Location: FF_X79_Y57_N31
\regs|registrador_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[3]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(17));

-- Location: LCCOMB_X79_Y57_N30
\regs|saidaB[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[3]~43_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[3]~42_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a3\)) # (!\regs|saidaB[3]~42_combout\ & ((\regs|registrador_rtl_1_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a3\,
	datab => \regs|saidaB[3]~42_combout\,
	datac => \regs|registrador_rtl_1_bypass\(17),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[3]~43_combout\);

-- Location: LCCOMB_X70_Y59_N6
\ID_EX|q[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[45]~feeder_combout\ = \regs|saidaB[3]~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[3]~43_combout\,
	combout => \ID_EX|q[45]~feeder_combout\);

-- Location: FF_X70_Y59_N7
\ID_EX|q[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(45));

-- Location: LCCOMB_X70_Y59_N4
\EX_MEM|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[8]~feeder_combout\ = \ID_EX|q\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(45),
	combout => \EX_MEM|q[8]~feeder_combout\);

-- Location: FF_X70_Y59_N5
\EX_MEM|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(8));

-- Location: LCCOMB_X76_Y60_N10
\ula|mux2B|Y[28]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[28]~54_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(70) & (!\ID_EX|q\(138)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(139) $ (((\ID_EX|q\(70) & !\ID_EX|q\(138))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(70),
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(139),
	combout => \ula|mux2B|Y[28]~54_combout\);

-- Location: LCCOMB_X77_Y59_N22
\ula|mux4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[28]~54_combout\ & (\ID_EX|q\(102)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[28]~54_combout\ $ (\ID_EX|q\(102) $ (\ula|full_adder|c_out[27]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ula|mux2B|Y[28]~54_combout\,
	datac => \ID_EX|q\(102),
	datad => \ula|full_adder|c_out[27]~28_combout\,
	combout => \ula|mux4|Mux3~0_combout\);

-- Location: FF_X77_Y59_N23
\EX_MEM|q[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(65));

-- Location: FF_X77_Y59_N25
\MEM_WB|q[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(65),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(33));

-- Location: LCCOMB_X77_Y59_N20
\mux_ULA|Y[28]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[28]~30_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(33)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\,
	datab => \MEM_WB|q\(33),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[28]~30_combout\);

-- Location: LCCOMB_X77_Y58_N12
\regs|registrador_rtl_0_bypass[65]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[65]~feeder_combout\ = \mux_ULA|Y[27]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[27]~27_combout\,
	combout => \regs|registrador_rtl_0_bypass[65]~feeder_combout\);

-- Location: FF_X77_Y58_N13
\regs|registrador_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[65]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(65));

-- Location: LCCOMB_X77_Y58_N10
\regs|saidaA[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[27]~7_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[27]~6_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a27\)) # (!\regs|saidaA[27]~6_combout\ & ((\regs|registrador_rtl_0_bypass\(65))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaA[27]~6_combout\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a27\,
	datad => \regs|registrador_rtl_0_bypass\(65),
	combout => \regs|saidaA[27]~7_combout\);

-- Location: FF_X77_Y58_N11
\ID_EX|q[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[27]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(101));

-- Location: LCCOMB_X81_Y59_N20
\ula|mux2B|Y[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[27]~55_combout\ = (\ID_EX|q\(138) & (!\ID_EX|q\(140) & (\ID_EX|q\(139)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(69) $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(139),
	datad => \ID_EX|q\(69),
	combout => \ula|mux2B|Y[27]~55_combout\);

-- Location: LCCOMB_X77_Y59_N8
\ula|mux4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(101) & (\ula|mux2B|Y[27]~55_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(101) $ (\ula|mux2B|Y[27]~55_combout\ $ (\ula|full_adder|c_out[26]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(101),
	datab => \ula|mux2B|Y[27]~55_combout\,
	datac => \ID_EX|q\(140),
	datad => \ula|full_adder|c_out[26]~27_combout\,
	combout => \ula|mux4|Mux4~0_combout\);

-- Location: FF_X77_Y59_N9
\EX_MEM|q[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(64));

-- Location: FF_X77_Y59_N21
\MEM_WB|q[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(64),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(32));

-- Location: LCCOMB_X77_Y59_N24
\mux_ULA|Y[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[27]~27_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(32))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \MEM_WB|q\(32),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\,
	combout => \mux_ULA|Y[27]~27_combout\);

-- Location: LCCOMB_X77_Y56_N26
\regs|saidaB[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[26]~53_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[26]~52_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a26\))) # (!\regs|saidaB[26]~52_combout\ & (\regs|registrador_rtl_1_bypass\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(63),
	datab => \regs|saidaB[26]~52_combout\,
	datac => \regs|registrador_rtl_1|auto_generated|ram_block1a26\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[26]~53_combout\);

-- Location: FF_X77_Y56_N27
\ID_EX|q[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[26]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(68));

-- Location: LCCOMB_X76_Y60_N20
\ula|mux2B|Y[26]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[26]~45_combout\ = (\ID_EX|q\(139) & (\ID_EX|q\(140) $ (((\ID_EX|q\(138)) # (!\ID_EX|q\(68)))))) # (!\ID_EX|q\(139) & (!\ID_EX|q\(138) & ((\ID_EX|q\(68)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(138),
	datac => \ID_EX|q\(140),
	datad => \ID_EX|q\(68),
	combout => \ula|mux2B|Y[26]~45_combout\);

-- Location: LCCOMB_X75_Y60_N10
\ula|mux4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[26]~45_combout\ & (\ID_EX|q\(100)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[26]~45_combout\ $ (\ID_EX|q\(100) $ (\ula|full_adder|c_out[25]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[26]~45_combout\,
	datab => \ID_EX|q\(100),
	datac => \ID_EX|q\(140),
	datad => \ula|full_adder|c_out[25]~26_combout\,
	combout => \ula|mux4|Mux5~0_combout\);

-- Location: FF_X75_Y60_N11
\EX_MEM|q[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(63));

-- Location: LCCOMB_X76_Y60_N28
\MEM_WB|q[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[31]~feeder_combout\ = \EX_MEM|q\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(63),
	combout => \MEM_WB|q[31]~feeder_combout\);

-- Location: FF_X76_Y60_N29
\MEM_WB|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(31));

-- Location: LCCOMB_X77_Y60_N14
\mux_ULA|Y[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[26]~26_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(31))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(31),
	datac => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\,
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[26]~26_combout\);

-- Location: LCCOMB_X75_Y58_N0
\regs|saidaA[25]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[25]~11_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[25]~10_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a25\))) # (!\regs|saidaA[25]~10_combout\ & (\regs|registrador_rtl_0_bypass\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(61),
	datab => \regs|Equal0~0_combout\,
	datac => \regs|saidaA[25]~10_combout\,
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a25\,
	combout => \regs|saidaA[25]~11_combout\);

-- Location: FF_X75_Y58_N1
\ID_EX|q[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[25]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(99));

-- Location: LCCOMB_X75_Y60_N26
\ula|mux2B|Y[25]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[25]~44_combout\ = (\ID_EX|q\(67) & (\ID_EX|q\(138) $ (((\ID_EX|q\(140)) # (!\ID_EX|q\(139)))))) # (!\ID_EX|q\(67) & (\ID_EX|q\(139) & (!\ID_EX|q\(140))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(67),
	datab => \ID_EX|q\(139),
	datac => \ID_EX|q\(140),
	datad => \ID_EX|q\(138),
	combout => \ula|mux2B|Y[25]~44_combout\);

-- Location: LCCOMB_X75_Y60_N8
\ula|mux4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(99) & (\ula|mux2B|Y[25]~44_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(99) $ (\ula|mux2B|Y[25]~44_combout\ $ (\ula|full_adder|c_out[24]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(99),
	datab => \ula|mux2B|Y[25]~44_combout\,
	datac => \ID_EX|q\(140),
	datad => \ula|full_adder|c_out[24]~25_combout\,
	combout => \ula|mux4|Mux6~0_combout\);

-- Location: FF_X75_Y60_N9
\EX_MEM|q[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(62));

-- Location: FF_X76_Y60_N7
\MEM_WB|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(30));

-- Location: LCCOMB_X77_Y60_N20
\mux_ULA|Y[25]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[25]~17_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(30))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \MEM_WB|q\(30),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\,
	combout => \mux_ULA|Y[25]~17_combout\);

-- Location: FF_X77_Y56_N9
\regs|registrador_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[2]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(15));

-- Location: LCCOMB_X77_Y56_N18
\regs|registrador_rtl_1_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X77_Y56_N19
\regs|registrador_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(16));

-- Location: LCCOMB_X77_Y56_N24
\regs|saidaB[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[2]~40_combout\ = (\regs|registrador_rtl_1_bypass\(16) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador_rtl_1_bypass\(16),
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[2]~40_combout\);

-- Location: LCCOMB_X77_Y56_N8
\regs|saidaB[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[2]~41_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[2]~40_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a2\)) # (!\regs|saidaB[2]~40_combout\ & ((\regs|registrador_rtl_1_bypass\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a2\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(15),
	datad => \regs|saidaB[2]~40_combout\,
	combout => \regs|saidaB[2]~41_combout\);

-- Location: LCCOMB_X73_Y60_N24
\ID_EX|q[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[44]~feeder_combout\ = \regs|saidaB[2]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[2]~41_combout\,
	combout => \ID_EX|q[44]~feeder_combout\);

-- Location: FF_X73_Y60_N25
\ID_EX|q[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(44));

-- Location: LCCOMB_X74_Y60_N10
\EX_MEM|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[7]~feeder_combout\ = \ID_EX|q\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(44),
	combout => \EX_MEM|q[7]~feeder_combout\);

-- Location: FF_X74_Y60_N11
\EX_MEM|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(7));

-- Location: LCCOMB_X76_Y60_N30
\ula|mux2B|Y[24]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[24]~43_combout\ = (\ID_EX|q\(139) & (\ID_EX|q\(140) $ (((\ID_EX|q\(138)) # (!\ID_EX|q\(66)))))) # (!\ID_EX|q\(139) & (!\ID_EX|q\(138) & ((\ID_EX|q\(66)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(138),
	datac => \ID_EX|q\(140),
	datad => \ID_EX|q\(66),
	combout => \ula|mux2B|Y[24]~43_combout\);

-- Location: LCCOMB_X75_Y60_N24
\ula|mux4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[24]~43_combout\ & (\ID_EX|q\(98)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[24]~43_combout\ $ (\ID_EX|q\(98) $ (\ula|full_adder|c_out[23]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[24]~43_combout\,
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(98),
	datad => \ula|full_adder|c_out[23]~24_combout\,
	combout => \ula|mux4|Mux7~0_combout\);

-- Location: FF_X75_Y60_N25
\EX_MEM|q[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(61));

-- Location: LCCOMB_X76_Y60_N8
\MEM_WB|q[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[29]~feeder_combout\ = \EX_MEM|q\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(61),
	combout => \MEM_WB|q[29]~feeder_combout\);

-- Location: FF_X76_Y60_N9
\MEM_WB|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(29));

-- Location: LCCOMB_X77_Y60_N18
\mux_ULA|Y[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[24]~16_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(29)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\,
	datad => \MEM_WB|q\(29),
	combout => \mux_ULA|Y[24]~16_combout\);

-- Location: LCCOMB_X79_Y60_N20
\regs|saidaA[23]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[23]~15_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[23]~14_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a23\))) # (!\regs|saidaA[23]~14_combout\ & (\regs|registrador_rtl_0_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaA[23]~14_combout\,
	datab => \regs|registrador_rtl_0_bypass\(57),
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a23\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[23]~15_combout\);

-- Location: FF_X79_Y60_N21
\ID_EX|q[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[23]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(97));

-- Location: LCCOMB_X75_Y60_N0
\ula|mux2B|Y[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[23]~42_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(65) & ((!\ID_EX|q\(138))))) # (!\ID_EX|q\(140) & (\ID_EX|q\(139) $ (((\ID_EX|q\(65) & !\ID_EX|q\(138))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(65),
	datac => \ID_EX|q\(139),
	datad => \ID_EX|q\(138),
	combout => \ula|mux2B|Y[23]~42_combout\);

-- Location: LCCOMB_X75_Y60_N22
\ula|mux4|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(97) & (\ula|mux2B|Y[23]~42_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(97) $ (\ula|mux2B|Y[23]~42_combout\ $ (\ula|full_adder|c_out[22]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(97),
	datab => \ula|mux2B|Y[23]~42_combout\,
	datac => \ula|full_adder|c_out[22]~23_combout\,
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux8~0_combout\);

-- Location: FF_X75_Y60_N23
\EX_MEM|q[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(60));

-- Location: FF_X79_Y60_N15
\MEM_WB|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(60),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(28));

-- Location: LCCOMB_X79_Y60_N14
\mux_ULA|Y[23]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[23]~15_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(28))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(28),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\,
	combout => \mux_ULA|Y[23]~15_combout\);

-- Location: LCCOMB_X74_Y57_N18
\regs|registrador_rtl_1_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[56]~feeder_combout\);

-- Location: FF_X74_Y57_N19
\regs|registrador_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(56));

-- Location: LCCOMB_X74_Y57_N4
\regs|saidaB[22]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[22]~28_combout\ = (\regs|registrador_rtl_1_bypass\(56) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~39_combout\) # (!\regs|registrador~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador~38_combout\,
	datac => \regs|registrador~39_combout\,
	datad => \regs|registrador_rtl_1_bypass\(56),
	combout => \regs|saidaB[22]~28_combout\);

-- Location: FF_X74_Y57_N9
\regs|registrador_rtl_1_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[22]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(55));

-- Location: LCCOMB_X74_Y57_N8
\regs|saidaB[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[22]~29_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[22]~28_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a22\)) # (!\regs|saidaB[22]~28_combout\ & ((\regs|registrador_rtl_1_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a22\,
	datab => \regs|saidaB[22]~28_combout\,
	datac => \regs|registrador_rtl_1_bypass\(55),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[22]~29_combout\);

-- Location: LCCOMB_X81_Y59_N28
\ID_EX|q[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[64]~feeder_combout\ = \regs|saidaB[22]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[22]~29_combout\,
	combout => \ID_EX|q[64]~feeder_combout\);

-- Location: FF_X81_Y59_N29
\ID_EX|q[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(64));

-- Location: LCCOMB_X81_Y59_N14
\ula|mux2B|Y[22]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[22]~53_combout\ = (\ID_EX|q\(138) & (!\ID_EX|q\(140) & (\ID_EX|q\(139)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(64) $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(139),
	datad => \ID_EX|q\(64),
	combout => \ula|mux2B|Y[22]~53_combout\);

-- Location: LCCOMB_X79_Y59_N26
\ula|mux4|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[22]~53_combout\ & (\ID_EX|q\(96)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[22]~53_combout\ $ (\ID_EX|q\(96) $ (\ula|full_adder|c_out[21]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[22]~53_combout\,
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(96),
	datad => \ula|full_adder|c_out[21]~22_combout\,
	combout => \ula|mux4|Mux9~0_combout\);

-- Location: FF_X79_Y59_N27
\EX_MEM|q[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(59));

-- Location: FF_X79_Y59_N3
\MEM_WB|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(59),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(27));

-- Location: LCCOMB_X79_Y59_N30
\mux_ULA|Y[22]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[22]~14_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(27))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \MEM_WB|q\(27),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \mux_ULA|Y[22]~14_combout\);

-- Location: LCCOMB_X75_Y57_N24
\regs|saidaB[18]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[18]~21_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[18]~20_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a18\))) # (!\regs|saidaB[18]~20_combout\ & (\regs|registrador_rtl_1_bypass\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|saidaB[18]~20_combout\,
	datac => \regs|registrador_rtl_1_bypass\(47),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a18\,
	combout => \regs|saidaB[18]~21_combout\);

-- Location: LCCOMB_X75_Y61_N22
\ID_EX|q[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[60]~feeder_combout\ = \regs|saidaB[18]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[18]~21_combout\,
	combout => \ID_EX|q[60]~feeder_combout\);

-- Location: FF_X75_Y61_N23
\ID_EX|q[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(60));

-- Location: FF_X75_Y61_N19
\EX_MEM|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(60),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(23));

-- Location: FF_X77_Y59_N5
\EX_MEM|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(61),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(24));

-- Location: LCCOMB_X75_Y61_N12
\EX_MEM|q[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[25]~feeder_combout\ = \ID_EX|q\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(62),
	combout => \EX_MEM|q[25]~feeder_combout\);

-- Location: FF_X75_Y61_N13
\EX_MEM|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(25));

-- Location: FF_X70_Y59_N19
\EX_MEM|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(63),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(26));

-- Location: M9K_X78_Y59_N0
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_70e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \EX_MEM|q\(102),
	portare => VCC,
	clk0 => \divisor|tick~clkctrl_outclk\,
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X70_Y59_N0
\ula|mux2B|Y[21]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[21]~52_combout\ = (\ID_EX|q\(139) & (\ID_EX|q\(140) $ (((\ID_EX|q\(138)) # (!\ID_EX|q\(63)))))) # (!\ID_EX|q\(139) & (((!\ID_EX|q\(138) & \ID_EX|q\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(63),
	combout => \ula|mux2B|Y[21]~52_combout\);

-- Location: LCCOMB_X79_Y59_N6
\ula|mux4|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(95) & (\ula|mux2B|Y[21]~52_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(95) $ (\ula|mux2B|Y[21]~52_combout\ $ (\ula|full_adder|c_out[20]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(95),
	datab => \ula|mux2B|Y[21]~52_combout\,
	datac => \ula|full_adder|c_out[20]~21_combout\,
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux10~0_combout\);

-- Location: FF_X79_Y59_N7
\EX_MEM|q[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(58));

-- Location: FF_X80_Y59_N27
\MEM_WB|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(26));

-- Location: LCCOMB_X79_Y59_N24
\mux_ULA|Y[21]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[21]~13_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(26)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\,
	datad => \MEM_WB|q\(26),
	combout => \mux_ULA|Y[21]~13_combout\);

-- Location: FF_X77_Y61_N25
\regs|registrador_rtl_1_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[17]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(45));

-- Location: LCCOMB_X77_Y61_N24
\regs|saidaB[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[17]~19_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[17]~18_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a17\)) # (!\regs|saidaB[17]~18_combout\ & ((\regs|registrador_rtl_1_bypass\(45))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[17]~18_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a17\,
	datac => \regs|registrador_rtl_1_bypass\(45),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[17]~19_combout\);

-- Location: FF_X77_Y59_N31
\ID_EX|q[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[17]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(59));

-- Location: FF_X77_Y59_N13
\EX_MEM|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(59),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(22));

-- Location: LCCOMB_X75_Y61_N8
\ula|mux2B|Y[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[20]~51_combout\ = (\ID_EX|q\(138) & (((\ID_EX|q\(139) & !\ID_EX|q\(140))))) # (!\ID_EX|q\(138) & (\ID_EX|q\(62) $ (((\ID_EX|q\(139) & !\ID_EX|q\(140))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(62),
	datac => \ID_EX|q\(139),
	datad => \ID_EX|q\(140),
	combout => \ula|mux2B|Y[20]~51_combout\);

-- Location: LCCOMB_X79_Y59_N22
\ula|mux4|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[20]~51_combout\ & (\ID_EX|q\(94)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[20]~51_combout\ $ (\ID_EX|q\(94) $ (\ula|full_adder|c_out[19]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[20]~51_combout\,
	datab => \ID_EX|q\(94),
	datac => \ula|full_adder|c_out[19]~20_combout\,
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux11~0_combout\);

-- Location: FF_X79_Y59_N23
\EX_MEM|q[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(57));

-- Location: FF_X79_Y59_N25
\MEM_WB|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(57),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(25));

-- Location: LCCOMB_X79_Y59_N2
\mux_ULA|Y[20]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[20]~12_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(25)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\,
	datab => \MEM_WB|q\(25),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[20]~12_combout\);

-- Location: LCCOMB_X75_Y57_N6
\regs|saidaB[16]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[16]~17_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[16]~16_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a16\))) # (!\regs|saidaB[16]~16_combout\ & (\regs|registrador_rtl_1_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|saidaB[16]~16_combout\,
	datac => \regs|registrador_rtl_1_bypass\(43),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a16\,
	combout => \regs|saidaB[16]~17_combout\);

-- Location: LCCOMB_X75_Y61_N10
\ID_EX|q[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[58]~feeder_combout\ = \regs|saidaB[16]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[16]~17_combout\,
	combout => \ID_EX|q[58]~feeder_combout\);

-- Location: FF_X75_Y61_N11
\ID_EX|q[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(58));

-- Location: LCCOMB_X75_Y61_N20
\EX_MEM|q[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[21]~feeder_combout\ = \ID_EX|q\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(58),
	combout => \EX_MEM|q[21]~feeder_combout\);

-- Location: FF_X75_Y61_N21
\EX_MEM|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(21));

-- Location: LCCOMB_X72_Y59_N16
\ula|mux2B|Y[19]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[19]~50_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(139) & ((!\ID_EX|q\(140))))) # (!\ID_EX|q\(138) & (\ID_EX|q\(61) $ (((\ID_EX|q\(139) & !\ID_EX|q\(140))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(139),
	datac => \ID_EX|q\(61),
	datad => \ID_EX|q\(140),
	combout => \ula|mux2B|Y[19]~50_combout\);

-- Location: LCCOMB_X79_Y59_N14
\ula|mux4|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(93) & (\ula|mux2B|Y[19]~50_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(93) $ (\ula|mux2B|Y[19]~50_combout\ $ (\ula|full_adder|c_out[18]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(93),
	datab => \ula|mux2B|Y[19]~50_combout\,
	datac => \ID_EX|q\(140),
	datad => \ula|full_adder|c_out[18]~19_combout\,
	combout => \ula|mux4|Mux12~0_combout\);

-- Location: FF_X79_Y59_N15
\EX_MEM|q[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(56));

-- Location: FF_X79_Y59_N11
\MEM_WB|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(24));

-- Location: LCCOMB_X79_Y59_N10
\mux_ULA|Y[19]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[19]~11_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(24)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\,
	datac => \MEM_WB|q\(24),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[19]~11_combout\);

-- Location: FF_X80_Y59_N25
\regs|registrador_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[14]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(39));

-- Location: LCCOMB_X80_Y59_N18
\regs|registrador_rtl_1_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[40]~feeder_combout\);

-- Location: FF_X80_Y59_N19
\regs|registrador_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(40));

-- Location: LCCOMB_X80_Y59_N12
\regs|saidaB[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[14]~12_combout\ = (\regs|registrador_rtl_1_bypass\(40) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(40),
	datac => \regs|registrador~38_combout\,
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[14]~12_combout\);

-- Location: LCCOMB_X80_Y59_N24
\regs|saidaB[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[14]~13_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[14]~12_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a14\)) # (!\regs|saidaB[14]~12_combout\ & ((\regs|registrador_rtl_1_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a14\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(39),
	datad => \regs|saidaB[14]~12_combout\,
	combout => \regs|saidaB[14]~13_combout\);

-- Location: FF_X72_Y59_N21
\ID_EX|q[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[14]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(56));

-- Location: FF_X79_Y59_N31
\EX_MEM|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(19));

-- Location: LCCOMB_X75_Y61_N14
\ula|mux2B|Y[18]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[18]~41_combout\ = (\ID_EX|q\(60) & (\ID_EX|q\(138) $ (((\ID_EX|q\(140)) # (!\ID_EX|q\(139)))))) # (!\ID_EX|q\(60) & (\ID_EX|q\(139) & ((!\ID_EX|q\(140)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(60),
	datab => \ID_EX|q\(139),
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(140),
	combout => \ula|mux2B|Y[18]~41_combout\);

-- Location: LCCOMB_X74_Y59_N12
\ula|mux4|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(92) & ((\ula|mux2B|Y[18]~41_combout\)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(92) $ (\ula|full_adder|c_out[17]~18_combout\ $ (\ula|mux2B|Y[18]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(92),
	datab => \ID_EX|q\(140),
	datac => \ula|full_adder|c_out[17]~18_combout\,
	datad => \ula|mux2B|Y[18]~41_combout\,
	combout => \ula|mux4|Mux13~0_combout\);

-- Location: FF_X74_Y59_N13
\EX_MEM|q[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(55));

-- Location: FF_X76_Y59_N25
\MEM_WB|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(55),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(23));

-- Location: LCCOMB_X76_Y59_N24
\mux_ULA|Y[18]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[18]~10_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(23)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\,
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(23),
	combout => \mux_ULA|Y[18]~10_combout\);

-- Location: LCCOMB_X74_Y60_N0
\regs|registrador_rtl_1_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[36]~feeder_combout\);

-- Location: FF_X74_Y60_N1
\regs|registrador_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(36));

-- Location: LCCOMB_X74_Y60_N26
\regs|saidaB[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[12]~8_combout\ = (\regs|registrador_rtl_1_bypass\(36) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datab => \regs|registrador_rtl_1_bypass\(36),
	datac => \regs|registrador_rtl_1_bypass\(9),
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[12]~8_combout\);

-- Location: LCCOMB_X73_Y60_N0
\regs|saidaB[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[12]~9_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[12]~8_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a12\))) # (!\regs|saidaB[12]~8_combout\ & (\regs|registrador_rtl_1_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador_rtl_1_bypass\(35),
	datac => \regs|registrador_rtl_1|auto_generated|ram_block1a12\,
	datad => \regs|saidaB[12]~8_combout\,
	combout => \regs|saidaB[12]~9_combout\);

-- Location: LCCOMB_X73_Y60_N18
\ID_EX|q[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[54]~feeder_combout\ = \regs|saidaB[12]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[12]~9_combout\,
	combout => \ID_EX|q[54]~feeder_combout\);

-- Location: FF_X73_Y60_N19
\ID_EX|q[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(54));

-- Location: FF_X77_Y60_N31
\EX_MEM|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(54),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(17));

-- Location: LCCOMB_X77_Y59_N12
\ula|mux2B|Y[17]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[17]~40_combout\ = (\ID_EX|q\(140) & (((\ID_EX|q\(59) & !\ID_EX|q\(138))))) # (!\ID_EX|q\(140) & (\ID_EX|q\(139) $ (((\ID_EX|q\(59) & !\ID_EX|q\(138))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(139),
	datac => \ID_EX|q\(59),
	datad => \ID_EX|q\(138),
	combout => \ula|mux2B|Y[17]~40_combout\);

-- Location: LCCOMB_X74_Y59_N26
\ula|mux4|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(91) & (\ula|mux2B|Y[17]~40_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(91) $ (\ula|mux2B|Y[17]~40_combout\ $ (\ula|full_adder|c_out[16]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(91),
	datab => \ID_EX|q\(140),
	datac => \ula|mux2B|Y[17]~40_combout\,
	datad => \ula|full_adder|c_out[16]~17_combout\,
	combout => \ula|mux4|Mux14~0_combout\);

-- Location: FF_X74_Y59_N27
\EX_MEM|q[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(54));

-- Location: FF_X76_Y59_N7
\MEM_WB|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(54),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(22));

-- Location: LCCOMB_X77_Y59_N10
\mux_ULA|Y[17]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[17]~9_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(22)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\,
	datad => \MEM_WB|q\(22),
	combout => \mux_ULA|Y[17]~9_combout\);

-- Location: FF_X74_Y61_N17
\regs|registrador_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_ULA|Y[15]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(41));

-- Location: LCCOMB_X74_Y61_N30
\regs|saidaA[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[15]~31_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[15]~30_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a15\)) # (!\regs|saidaA[15]~30_combout\ & ((\regs|registrador_rtl_0_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaA[15]~30_combout\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a15\,
	datad => \regs|registrador_rtl_0_bypass\(41),
	combout => \regs|saidaA[15]~31_combout\);

-- Location: FF_X74_Y61_N31
\ID_EX|q[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[15]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(89));

-- Location: LCCOMB_X72_Y60_N28
\memoriaInst|rom~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~31_combout\ = (\PC|q\(5) & ((\PC|q\(2) & ((\PC|q\(3)) # (!\PC|q\(4)))) # (!\PC|q\(2) & ((!\PC|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(5),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~31_combout\);

-- Location: LCCOMB_X72_Y60_N22
\memoriaInst|rom~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~32_combout\ = (\memoriaInst|rom~8_combout\ & ((\memoriaInst|rom~28_combout\) # ((!\PC|q\(6) & \memoriaInst|rom~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~28_combout\,
	datac => \memoriaInst|rom~8_combout\,
	datad => \memoriaInst|rom~31_combout\,
	combout => \memoriaInst|rom~32_combout\);

-- Location: FF_X72_Y60_N23
\IF_ID|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(14));

-- Location: FF_X72_Y59_N31
\ID_EX|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(24));

-- Location: LCCOMB_X72_Y59_N12
\mux_Rt_im|Y[14]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[14]~15_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(24))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(24),
	datab => \ID_EX|q\(56),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[14]~15_combout\);

-- Location: LCCOMB_X77_Y60_N10
\regs|registrador_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X77_Y60_N11
\regs|registrador_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(40));

-- Location: LCCOMB_X77_Y60_N12
\regs|saidaA[14]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[14]~32_combout\ = (\regs|registrador_rtl_0_bypass\(40) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador~41_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador_rtl_0_bypass\(40),
	combout => \regs|saidaA[14]~32_combout\);

-- Location: FF_X77_Y58_N1
\regs|registrador_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[14]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(39));

-- Location: LCCOMB_X77_Y58_N0
\regs|saidaA[14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[14]~33_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[14]~32_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a14\)) # (!\regs|saidaA[14]~32_combout\ & ((\regs|registrador_rtl_0_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a14\,
	datab => \regs|saidaA[14]~32_combout\,
	datac => \regs|registrador_rtl_0_bypass\(39),
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[14]~33_combout\);

-- Location: FF_X74_Y59_N11
\ID_EX|q[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[14]~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(88));

-- Location: LCCOMB_X72_Y59_N30
\mux_Rt_im|Y[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[13]~16_combout\ = (\ID_EX|q\(55) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(55),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[13]~16_combout\);

-- Location: LCCOMB_X75_Y58_N8
\regs|registrador_rtl_0_bypass[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[37]~feeder_combout\ = \mux_ULA|Y[13]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ULA|Y[13]~5_combout\,
	combout => \regs|registrador_rtl_0_bypass[37]~feeder_combout\);

-- Location: FF_X75_Y58_N9
\regs|registrador_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(37));

-- Location: LCCOMB_X74_Y58_N28
\regs|registrador_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X74_Y58_N29
\regs|registrador_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(38));

-- Location: LCCOMB_X74_Y58_N6
\regs|saidaA[13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[13]~34_combout\ = (\regs|registrador_rtl_0_bypass\(38) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador~41_combout\,
	datad => \regs|registrador_rtl_0_bypass\(38),
	combout => \regs|saidaA[13]~34_combout\);

-- Location: LCCOMB_X74_Y58_N12
\regs|saidaA[13]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[13]~35_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[13]~34_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a13\))) # (!\regs|saidaA[13]~34_combout\ & (\regs|registrador_rtl_0_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0_bypass\(37),
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a13\,
	datad => \regs|saidaA[13]~34_combout\,
	combout => \regs|saidaA[13]~35_combout\);

-- Location: FF_X74_Y59_N21
\ID_EX|q[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[13]~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(87));

-- Location: LCCOMB_X72_Y60_N18
\memoriaInst|rom~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~33_combout\ = (!\PC|q\(5) & ((\PC|q\(4)) # ((\PC|q\(2)) # (\PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(5),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~33_combout\);

-- Location: LCCOMB_X72_Y60_N16
\memoriaInst|rom~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~34_combout\ = (!\PC|q\(6) & (\memoriaInst|rom~33_combout\ & \memoriaInst|rom~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~33_combout\,
	datac => \memoriaInst|rom~8_combout\,
	combout => \memoriaInst|rom~34_combout\);

-- Location: FF_X72_Y60_N17
\IF_ID|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(12));

-- Location: FF_X73_Y60_N9
\ID_EX|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(22));

-- Location: LCCOMB_X73_Y60_N8
\mux_Rt_im|Y[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[12]~17_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(22))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datac => \ID_EX|q\(22),
	datad => \ID_EX|q\(54),
	combout => \mux_Rt_im|Y[12]~17_combout\);

-- Location: LCCOMB_X70_Y56_N18
\memoriaInst|rom~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~35_combout\ = (\PC|q\(5) & (\PC|q\(2) & ((\PC|q\(3)) # (!\PC|q\(4))))) # (!\PC|q\(5) & (((\PC|q\(3) & \PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(2),
	datac => \PC|q\(3),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~35_combout\);

-- Location: LCCOMB_X70_Y56_N16
\memoriaInst|rom~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~36_combout\ = (\memoriaInst|rom~8_combout\ & ((\memoriaInst|rom~28_combout\) # ((!\PC|q\(6) & \memoriaInst|rom~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~8_combout\,
	datab => \PC|q\(6),
	datac => \memoriaInst|rom~35_combout\,
	datad => \memoriaInst|rom~28_combout\,
	combout => \memoriaInst|rom~36_combout\);

-- Location: FF_X70_Y56_N17
\IF_ID|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(11));

-- Location: FF_X75_Y56_N27
\ID_EX|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(21));

-- Location: LCCOMB_X75_Y56_N26
\mux_Rt_im|Y[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[11]~18_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(21))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datac => \ID_EX|q\(21),
	datad => \ID_EX|q\(53),
	combout => \mux_Rt_im|Y[11]~18_combout\);

-- Location: FF_X75_Y58_N25
\regs|registrador_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[11]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(33));

-- Location: LCCOMB_X75_Y58_N18
\regs|registrador_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X75_Y58_N19
\regs|registrador_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(34));

-- Location: LCCOMB_X75_Y58_N28
\regs|saidaA[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[11]~38_combout\ = (\regs|registrador_rtl_0_bypass\(34) & ((\regs|registrador_rtl_0_bypass\(9)) # ((!\regs|registrador~41_combout\) # (!\regs|registrador~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(9),
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador~41_combout\,
	datad => \regs|registrador_rtl_0_bypass\(34),
	combout => \regs|saidaA[11]~38_combout\);

-- Location: LCCOMB_X75_Y58_N24
\regs|saidaA[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[11]~39_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[11]~38_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a11\)) # (!\regs|saidaA[11]~38_combout\ & ((\regs|registrador_rtl_0_bypass\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a11\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(33),
	datad => \regs|saidaA[11]~38_combout\,
	combout => \regs|saidaA[11]~39_combout\);

-- Location: FF_X74_Y59_N25
\ID_EX|q[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[11]~39_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(85));

-- Location: FF_X74_Y59_N23
\ID_EX|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(20));

-- Location: LCCOMB_X74_Y59_N22
\mux_Rt_im|Y[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[10]~19_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(20))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datac => \ID_EX|q\(20),
	datad => \ID_EX|q\(52),
	combout => \mux_Rt_im|Y[10]~19_combout\);

-- Location: LCCOMB_X73_Y59_N26
\mux_Rt_im|Y[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[9]~20_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(51))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datad => \ID_EX|q\(51),
	combout => \mux_Rt_im|Y[9]~20_combout\);

-- Location: LCCOMB_X75_Y58_N10
\regs|registrador_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X75_Y58_N11
\regs|registrador_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(30));

-- Location: LCCOMB_X75_Y58_N16
\regs|saidaA[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[9]~42_combout\ = (\regs|registrador_rtl_0_bypass\(30) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(30),
	datab => \regs|registrador~41_combout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|registrador_rtl_0_bypass\(9),
	combout => \regs|saidaA[9]~42_combout\);

-- Location: FF_X79_Y58_N5
\regs|registrador_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(29));

-- Location: LCCOMB_X79_Y58_N4
\regs|saidaA[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[9]~43_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[9]~42_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a9\)) # (!\regs|saidaA[9]~42_combout\ & ((\regs|registrador_rtl_0_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaA[9]~42_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a9\,
	datac => \regs|registrador_rtl_0_bypass\(29),
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[9]~43_combout\);

-- Location: FF_X73_Y59_N9
\ID_EX|q[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[9]~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(83));

-- Location: LCCOMB_X73_Y59_N14
\mux_Rt_im|Y[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[8]~21_combout\ = (\ID_EX|q\(50) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(50),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[8]~21_combout\);

-- Location: LCCOMB_X73_Y59_N10
\mux_Rt_im|Y[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[7]~22_combout\ = (\ID_EX|q\(49) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(49),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[7]~22_combout\);

-- Location: LCCOMB_X73_Y59_N22
\mux_Rt_im|Y[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[6]~23_combout\ = (\ID_EX|q\(48) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(48),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[6]~23_combout\);

-- Location: LCCOMB_X74_Y58_N20
\regs|registrador_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X74_Y58_N21
\regs|registrador_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(22));

-- Location: LCCOMB_X74_Y58_N14
\regs|saidaA[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[5]~50_combout\ = (\regs|registrador_rtl_0_bypass\(22) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador~41_combout\,
	datad => \regs|registrador_rtl_0_bypass\(22),
	combout => \regs|saidaA[5]~50_combout\);

-- Location: FF_X74_Y58_N31
\regs|registrador_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[5]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(21));

-- Location: LCCOMB_X74_Y58_N30
\regs|saidaA[5]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[5]~51_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[5]~50_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a5\))) # (!\regs|saidaA[5]~50_combout\ & (\regs|registrador_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|saidaA[5]~50_combout\,
	datac => \regs|registrador_rtl_0_bypass\(21),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a5\,
	combout => \regs|saidaA[5]~51_combout\);

-- Location: FF_X73_Y59_N7
\ID_EX|q[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[5]~51_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(79));

-- Location: LCCOMB_X72_Y59_N10
\mux_Rt_im|Y[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[4]~25_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(4))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(4),
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(46),
	combout => \mux_Rt_im|Y[4]~25_combout\);

-- Location: LCCOMB_X70_Y59_N24
\mux_Rt_im|Y[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[3]~26_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(3))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(3),
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(45),
	combout => \mux_Rt_im|Y[3]~26_combout\);

-- Location: LCCOMB_X73_Y60_N30
\mux_Rt_im|Y[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[2]~27_combout\ = (\ID_EX|q\(138) & ((\ID_EX|q\(2)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(44),
	datac => \ID_EX|q\(2),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[2]~27_combout\);

-- Location: LCCOMB_X74_Y58_N8
\regs|registrador_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X74_Y58_N9
\regs|registrador_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(16));

-- Location: LCCOMB_X74_Y58_N22
\regs|saidaA[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[2]~56_combout\ = (\regs|registrador_rtl_0_bypass\(16) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador~41_combout\,
	datad => \regs|registrador_rtl_0_bypass\(16),
	combout => \regs|saidaA[2]~56_combout\);

-- Location: FF_X74_Y58_N11
\regs|registrador_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[2]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(15));

-- Location: LCCOMB_X74_Y58_N10
\regs|saidaA[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[2]~57_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[2]~56_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a2\)) # (!\regs|saidaA[2]~56_combout\ & ((\regs|registrador_rtl_0_bypass\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaA[2]~56_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a2\,
	datac => \regs|registrador_rtl_0_bypass\(15),
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[2]~57_combout\);

-- Location: FF_X73_Y59_N21
\ID_EX|q[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[2]~57_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(76));

-- Location: LCCOMB_X73_Y59_N20
\ula|full_adder|c_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[2]~3_combout\ = (\ID_EX|q\(76) & ((\ula|full_adder|c_out[1]~2_combout\) # (\mux_Rt_im|Y[2]~27_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(76) & (\ula|full_adder|c_out[1]~2_combout\ & (\mux_Rt_im|Y[2]~27_combout\ 
-- $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~27_combout\,
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \ID_EX|q\(76),
	datad => \ula|full_adder|c_out[1]~2_combout\,
	combout => \ula|full_adder|c_out[2]~3_combout\);

-- Location: LCCOMB_X73_Y59_N2
\ula|full_adder|c_out[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[3]~4_combout\ = (\ID_EX|q\(77) & ((\ula|full_adder|c_out[2]~3_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[3]~26_combout\)))) # (!\ID_EX|q\(77) & (\ula|full_adder|c_out[2]~3_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[3]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \mux_Rt_im|Y[3]~26_combout\,
	datac => \ID_EX|q\(77),
	datad => \ula|full_adder|c_out[2]~3_combout\,
	combout => \ula|full_adder|c_out[3]~4_combout\);

-- Location: LCCOMB_X73_Y59_N4
\ula|full_adder|c_out[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[4]~5_combout\ = (\ID_EX|q\(78) & ((\ula|full_adder|c_out[3]~4_combout\) # (\mux_Rt_im|Y[4]~25_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(78) & (\ula|full_adder|c_out[3]~4_combout\ & (\mux_Rt_im|Y[4]~25_combout\ 
-- $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[4]~25_combout\,
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \ID_EX|q\(78),
	datad => \ula|full_adder|c_out[3]~4_combout\,
	combout => \ula|full_adder|c_out[4]~5_combout\);

-- Location: LCCOMB_X73_Y59_N6
\ula|full_adder|c_out[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[5]~6_combout\ = (\ID_EX|q\(79) & ((\ula|full_adder|c_out[4]~5_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[5]~24_combout\)))) # (!\ID_EX|q\(79) & (\ula|full_adder|c_out[4]~5_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[5]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \mux_Rt_im|Y[5]~24_combout\,
	datac => \ID_EX|q\(79),
	datad => \ula|full_adder|c_out[4]~5_combout\,
	combout => \ula|full_adder|c_out[5]~6_combout\);

-- Location: LCCOMB_X73_Y59_N0
\ula|full_adder|c_out[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[6]~7_combout\ = (\ID_EX|q\(80) & ((\ula|full_adder|c_out[5]~6_combout\) # (\mux_Rt_im|Y[6]~23_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(80) & (\ula|full_adder|c_out[5]~6_combout\ & (\mux_Rt_im|Y[6]~23_combout\ 
-- $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[6]~23_combout\,
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \ID_EX|q\(80),
	datad => \ula|full_adder|c_out[5]~6_combout\,
	combout => \ula|full_adder|c_out[6]~7_combout\);

-- Location: LCCOMB_X73_Y59_N24
\ula|full_adder|c_out[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[7]~8_combout\ = (\ID_EX|q\(81) & ((\ula|full_adder|c_out[6]~7_combout\) # (\mux_Rt_im|Y[7]~22_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(81) & (\ula|full_adder|c_out[6]~7_combout\ & (\mux_Rt_im|Y[7]~22_combout\ 
-- $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[7]~22_combout\,
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \ID_EX|q\(81),
	datad => \ula|full_adder|c_out[6]~7_combout\,
	combout => \ula|full_adder|c_out[7]~8_combout\);

-- Location: LCCOMB_X73_Y59_N16
\ula|full_adder|c_out[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[8]~9_combout\ = (\ID_EX|q\(82) & ((\ula|full_adder|c_out[7]~8_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[8]~21_combout\)))) # (!\ID_EX|q\(82) & (\ula|full_adder|c_out[7]~8_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[8]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \mux_Rt_im|Y[8]~21_combout\,
	datac => \ID_EX|q\(82),
	datad => \ula|full_adder|c_out[7]~8_combout\,
	combout => \ula|full_adder|c_out[8]~9_combout\);

-- Location: LCCOMB_X73_Y59_N8
\ula|full_adder|c_out[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[9]~10_combout\ = (\ID_EX|q\(83) & ((\ula|full_adder|c_out[8]~9_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[9]~20_combout\)))) # (!\ID_EX|q\(83) & (\ula|full_adder|c_out[8]~9_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[9]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \mux_Rt_im|Y[9]~20_combout\,
	datac => \ID_EX|q\(83),
	datad => \ula|full_adder|c_out[8]~9_combout\,
	combout => \ula|full_adder|c_out[9]~10_combout\);

-- Location: LCCOMB_X74_Y59_N28
\ula|full_adder|c_out[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[10]~11_combout\ = (\ID_EX|q\(84) & ((\ula|full_adder|c_out[9]~10_combout\) # (\mux_Rt_im|Y[10]~19_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(84) & (\ula|full_adder|c_out[9]~10_combout\ & 
-- (\mux_Rt_im|Y[10]~19_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[10]~19_combout\,
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \ID_EX|q\(84),
	datad => \ula|full_adder|c_out[9]~10_combout\,
	combout => \ula|full_adder|c_out[10]~11_combout\);

-- Location: LCCOMB_X74_Y59_N24
\ula|full_adder|c_out[11]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[11]~12_combout\ = (\ID_EX|q\(85) & ((\ula|full_adder|c_out[10]~11_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[11]~18_combout\)))) # (!\ID_EX|q\(85) & (\ula|full_adder|c_out[10]~11_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[11]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \mux_Rt_im|Y[11]~18_combout\,
	datac => \ID_EX|q\(85),
	datad => \ula|full_adder|c_out[10]~11_combout\,
	combout => \ula|full_adder|c_out[11]~12_combout\);

-- Location: LCCOMB_X74_Y59_N2
\ula|full_adder|c_out[12]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[12]~13_combout\ = (\ID_EX|q\(86) & ((\ula|full_adder|c_out[11]~12_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[12]~17_combout\)))) # (!\ID_EX|q\(86) & (\ula|full_adder|c_out[11]~12_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[12]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \mux_Rt_im|Y[12]~17_combout\,
	datac => \ID_EX|q\(86),
	datad => \ula|full_adder|c_out[11]~12_combout\,
	combout => \ula|full_adder|c_out[12]~13_combout\);

-- Location: LCCOMB_X74_Y59_N20
\ula|full_adder|c_out[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[13]~14_combout\ = (\ID_EX|q\(87) & ((\ula|full_adder|c_out[12]~13_combout\) # (\mux_Rt_im|Y[13]~16_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(87) & (\ula|full_adder|c_out[12]~13_combout\ & 
-- (\mux_Rt_im|Y[13]~16_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[13]~16_combout\,
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \ID_EX|q\(87),
	datad => \ula|full_adder|c_out[12]~13_combout\,
	combout => \ula|full_adder|c_out[13]~14_combout\);

-- Location: LCCOMB_X74_Y59_N10
\ula|full_adder|c_out[14]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[14]~15_combout\ = (\ID_EX|q\(88) & ((\ula|full_adder|c_out[13]~14_combout\) # (\mux_Rt_im|Y[14]~15_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(88) & (\ula|full_adder|c_out[13]~14_combout\ & 
-- (\mux_Rt_im|Y[14]~15_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[14]~15_combout\,
	datab => \ula|full_adder|c_out[0]~0_combout\,
	datac => \ID_EX|q\(88),
	datad => \ula|full_adder|c_out[13]~14_combout\,
	combout => \ula|full_adder|c_out[14]~15_combout\);

-- Location: LCCOMB_X74_Y59_N6
\ula|full_adder|c_out[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[15]~16_combout\ = (\ID_EX|q\(89) & ((\ula|full_adder|c_out[14]~15_combout\) # (\mux_Rt_im|Y[15]~14_combout\ $ (\ula|full_adder|c_out[0]~0_combout\)))) # (!\ID_EX|q\(89) & (\ula|full_adder|c_out[14]~15_combout\ & 
-- (\mux_Rt_im|Y[15]~14_combout\ $ (\ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[15]~14_combout\,
	datab => \ID_EX|q\(89),
	datac => \ula|full_adder|c_out[0]~0_combout\,
	datad => \ula|full_adder|c_out[14]~15_combout\,
	combout => \ula|full_adder|c_out[15]~16_combout\);

-- Location: LCCOMB_X75_Y61_N24
\ula|mux2B|Y[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[16]~39_combout\ = (\ID_EX|q\(140) & (((!\ID_EX|q\(138) & \ID_EX|q\(58))))) # (!\ID_EX|q\(140) & (\ID_EX|q\(139) $ (((!\ID_EX|q\(138) & \ID_EX|q\(58))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(139),
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(58),
	combout => \ula|mux2B|Y[16]~39_combout\);

-- Location: LCCOMB_X74_Y59_N0
\ula|mux4|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~0_combout\ = (\ID_EX|q\(140) & (((\ula|mux2B|Y[16]~39_combout\ & \ID_EX|q\(90))))) # (!\ID_EX|q\(140) & (\ula|full_adder|c_out[15]~16_combout\ $ (\ula|mux2B|Y[16]~39_combout\ $ (\ID_EX|q\(90)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[15]~16_combout\,
	datab => \ula|mux2B|Y[16]~39_combout\,
	datac => \ID_EX|q\(90),
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux15~0_combout\);

-- Location: FF_X74_Y59_N1
\EX_MEM|q[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(53));

-- Location: FF_X77_Y59_N3
\MEM_WB|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(21));

-- Location: LCCOMB_X77_Y59_N2
\mux_ULA|Y[16]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[16]~8_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(21))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(21),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\,
	combout => \mux_ULA|Y[16]~8_combout\);

-- Location: FF_X74_Y61_N11
\regs|registrador_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[15]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(41));

-- Location: LCCOMB_X74_Y61_N28
\regs|registrador_rtl_1_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[42]~feeder_combout\);

-- Location: FF_X74_Y61_N29
\regs|registrador_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(42));

-- Location: LCCOMB_X74_Y61_N26
\regs|saidaB[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[15]~14_combout\ = (\regs|registrador_rtl_1_bypass\(42) & (((\regs|registrador_rtl_1_bypass\(9)) # (!\regs|registrador~38_combout\)) # (!\regs|registrador~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(42),
	datab => \regs|registrador~39_combout\,
	datac => \regs|registrador~38_combout\,
	datad => \regs|registrador_rtl_1_bypass\(9),
	combout => \regs|saidaB[15]~14_combout\);

-- Location: LCCOMB_X74_Y61_N10
\regs|saidaB[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[15]~15_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[15]~14_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a15\)) # (!\regs|saidaB[15]~14_combout\ & ((\regs|registrador_rtl_1_bypass\(41))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a15\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(41),
	datad => \regs|saidaB[15]~14_combout\,
	combout => \regs|saidaB[15]~15_combout\);

-- Location: LCCOMB_X74_Y61_N24
\ID_EX|q[57]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[57]~feeder_combout\ = \regs|saidaB[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[15]~15_combout\,
	combout => \ID_EX|q[57]~feeder_combout\);

-- Location: FF_X74_Y61_N25
\ID_EX|q[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[57]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(57));

-- Location: LCCOMB_X75_Y61_N6
\ula|mux2B|Y[15]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[15]~38_combout\ = (\ID_EX|q\(139) & (\ID_EX|q\(140) $ (((\ID_EX|q\(138)) # (!\ID_EX|q\(57)))))) # (!\ID_EX|q\(139) & (((!\ID_EX|q\(138) & \ID_EX|q\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(57),
	combout => \ula|mux2B|Y[15]~38_combout\);

-- Location: LCCOMB_X74_Y61_N20
\ula|mux4|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[15]~38_combout\ & (\ID_EX|q\(89)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[15]~38_combout\ $ (\ID_EX|q\(89) $ (\ula|full_adder|c_out[14]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[15]~38_combout\,
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(89),
	datad => \ula|full_adder|c_out[14]~15_combout\,
	combout => \ula|mux4|Mux16~0_combout\);

-- Location: FF_X74_Y61_N21
\EX_MEM|q[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(52));

-- Location: LCCOMB_X74_Y61_N22
\MEM_WB|q[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[20]~feeder_combout\ = \EX_MEM|q\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(52),
	combout => \MEM_WB|q[20]~feeder_combout\);

-- Location: FF_X74_Y61_N23
\MEM_WB|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(20));

-- Location: LCCOMB_X74_Y61_N16
\mux_ULA|Y[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[15]~7_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(20))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(20),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \mux_ULA|Y[15]~7_combout\);

-- Location: LCCOMB_X75_Y57_N8
\regs|saidaB[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[11]~7_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[11]~6_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a11\))) # (!\regs|saidaB[11]~6_combout\ & (\regs|registrador_rtl_1_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|saidaB[11]~6_combout\,
	datac => \regs|registrador_rtl_1_bypass\(33),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a11\,
	combout => \regs|saidaB[11]~7_combout\);

-- Location: LCCOMB_X75_Y56_N12
\ID_EX|q[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[53]~feeder_combout\ = \regs|saidaB[11]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[11]~7_combout\,
	combout => \ID_EX|q[53]~feeder_combout\);

-- Location: FF_X75_Y56_N13
\ID_EX|q[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(53));

-- Location: LCCOMB_X75_Y56_N14
\EX_MEM|q[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[16]~feeder_combout\ = \ID_EX|q\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(53),
	combout => \EX_MEM|q[16]~feeder_combout\);

-- Location: FF_X75_Y56_N15
\EX_MEM|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(16));

-- Location: LCCOMB_X72_Y59_N0
\ula|mux2B|Y[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[14]~65_combout\ = \mux_Rt_im|Y[14]~15_combout\ $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[14]~15_combout\,
	datab => \ID_EX|q\(140),
	datad => \ID_EX|q\(139),
	combout => \ula|mux2B|Y[14]~65_combout\);

-- Location: LCCOMB_X73_Y58_N6
\ula|mux4|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[14]~65_combout\ & (\ID_EX|q\(88)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[14]~65_combout\ $ (\ID_EX|q\(88) $ (\ula|full_adder|c_out[13]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[14]~65_combout\,
	datab => \ID_EX|q\(88),
	datac => \ula|full_adder|c_out[13]~14_combout\,
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux17~0_combout\);

-- Location: FF_X73_Y58_N7
\EX_MEM|q[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(51));

-- Location: FF_X73_Y58_N19
\MEM_WB|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(51),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(19));

-- Location: LCCOMB_X79_Y58_N10
\mux_ULA|Y[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[14]~6_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(19)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\,
	datad => \MEM_WB|q\(19),
	combout => \mux_ULA|Y[14]~6_combout\);

-- Location: LCCOMB_X80_Y59_N2
\regs|saidaB[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[13]~11_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[13]~10_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a13\))) # (!\regs|saidaB[13]~10_combout\ & (\regs|registrador_rtl_1_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[13]~10_combout\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(37),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a13\,
	combout => \regs|saidaB[13]~11_combout\);

-- Location: FF_X72_Y59_N25
\ID_EX|q[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[13]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(55));

-- Location: LCCOMB_X72_Y59_N24
\ula|mux2B|Y[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[13]~46_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(139) & ((!\ID_EX|q\(140))))) # (!\ID_EX|q\(138) & (\ID_EX|q\(55) $ (((\ID_EX|q\(139) & !\ID_EX|q\(140))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(139),
	datac => \ID_EX|q\(55),
	datad => \ID_EX|q\(140),
	combout => \ula|mux2B|Y[13]~46_combout\);

-- Location: LCCOMB_X74_Y59_N8
\ula|mux4|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[13]~46_combout\ & ((\ID_EX|q\(87))))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[13]~46_combout\ $ (\ula|full_adder|c_out[12]~13_combout\ $ (\ID_EX|q\(87)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[13]~46_combout\,
	datab => \ula|full_adder|c_out[12]~13_combout\,
	datac => \ID_EX|q\(87),
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux18~0_combout\);

-- Location: FF_X74_Y59_N9
\EX_MEM|q[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(50));

-- Location: FF_X76_Y59_N23
\MEM_WB|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(50),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(18));

-- Location: LCCOMB_X76_Y59_N28
\mux_ULA|Y[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[13]~5_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(18))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(18),
	datab => \MEM_WB|q\(69),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \mux_ULA|Y[13]~5_combout\);

-- Location: FF_X75_Y58_N15
\regs|registrador_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[12]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(35));

-- Location: LCCOMB_X75_Y58_N12
\regs|registrador_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X75_Y58_N13
\regs|registrador_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(36));

-- Location: LCCOMB_X75_Y58_N2
\regs|saidaA[12]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[12]~36_combout\ = (\regs|registrador_rtl_0_bypass\(36) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(36),
	datab => \regs|registrador~41_combout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|registrador_rtl_0_bypass\(9),
	combout => \regs|saidaA[12]~36_combout\);

-- Location: LCCOMB_X75_Y58_N14
\regs|saidaA[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[12]~37_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[12]~36_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a12\)) # (!\regs|saidaA[12]~36_combout\ & ((\regs|registrador_rtl_0_bypass\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a12\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(35),
	datad => \regs|saidaA[12]~36_combout\,
	combout => \regs|saidaA[12]~37_combout\);

-- Location: FF_X74_Y59_N3
\ID_EX|q[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[12]~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(86));

-- Location: LCCOMB_X72_Y59_N22
\ula|mux2B|Y[12]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[12]~64_combout\ = \mux_Rt_im|Y[12]~17_combout\ $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(139),
	datad => \mux_Rt_im|Y[12]~17_combout\,
	combout => \ula|mux2B|Y[12]~64_combout\);

-- Location: LCCOMB_X73_Y59_N30
\ula|mux4|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(86) & ((\ula|mux2B|Y[12]~64_combout\)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(86) $ (\ula|full_adder|c_out[11]~12_combout\ $ (\ula|mux2B|Y[12]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(86),
	datab => \ula|full_adder|c_out[11]~12_combout\,
	datac => \ID_EX|q\(140),
	datad => \ula|mux2B|Y[12]~64_combout\,
	combout => \ula|mux4|Mux19~0_combout\);

-- Location: FF_X73_Y59_N27
\EX_MEM|q[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ula|mux4|Mux19~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(49));

-- Location: FF_X76_Y59_N17
\MEM_WB|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(49),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(17));

-- Location: LCCOMB_X76_Y59_N16
\mux_ULA|Y[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[12]~4_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(17))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(17),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\,
	combout => \mux_ULA|Y[12]~4_combout\);

-- Location: LCCOMB_X74_Y56_N22
\regs|saidaB[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[10]~5_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[10]~4_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a10\))) # (!\regs|saidaB[10]~4_combout\ & (\regs|registrador_rtl_1_bypass\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[10]~4_combout\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(31),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a10\,
	combout => \regs|saidaB[10]~5_combout\);

-- Location: FF_X74_Y59_N5
\ID_EX|q[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[10]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(52));

-- Location: FF_X77_Y59_N27
\EX_MEM|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(52),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(15));

-- Location: LCCOMB_X70_Y59_N16
\ula|mux2B|Y[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[11]~59_combout\ = \mux_Rt_im|Y[11]~18_combout\ $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(139),
	datad => \mux_Rt_im|Y[11]~18_combout\,
	combout => \ula|mux2B|Y[11]~59_combout\);

-- Location: LCCOMB_X70_Y59_N22
\ula|mux4|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(85) & (\ula|mux2B|Y[11]~59_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(85) $ (\ula|mux2B|Y[11]~59_combout\ $ (\ula|full_adder|c_out[10]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(85),
	datab => \ID_EX|q\(140),
	datac => \ula|mux2B|Y[11]~59_combout\,
	datad => \ula|full_adder|c_out[10]~11_combout\,
	combout => \ula|mux4|Mux20~0_combout\);

-- Location: FF_X70_Y59_N23
\EX_MEM|q[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(48));

-- Location: FF_X70_Y59_N31
\MEM_WB|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(16));

-- Location: LCCOMB_X76_Y59_N22
\mux_ULA|Y[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[11]~3_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(16)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\,
	datab => \MEM_WB|q\(69),
	datad => \MEM_WB|q\(16),
	combout => \mux_ULA|Y[11]~3_combout\);

-- Location: FF_X77_Y58_N3
\regs|registrador_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[10]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(31));

-- Location: LCCOMB_X77_Y58_N8
\regs|registrador_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X77_Y58_N9
\regs|registrador_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(32));

-- Location: LCCOMB_X77_Y58_N18
\regs|saidaA[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[10]~40_combout\ = (\regs|registrador_rtl_0_bypass\(32) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(32),
	datad => \regs|registrador_rtl_0_bypass\(9),
	combout => \regs|saidaA[10]~40_combout\);

-- Location: LCCOMB_X77_Y58_N2
\regs|saidaA[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[10]~41_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[10]~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a10\)) # (!\regs|saidaA[10]~40_combout\ & ((\regs|registrador_rtl_0_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a10\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(31),
	datad => \regs|saidaA[10]~40_combout\,
	combout => \regs|saidaA[10]~41_combout\);

-- Location: FF_X74_Y59_N29
\ID_EX|q[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[10]~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(84));

-- Location: LCCOMB_X70_Y59_N18
\ula|mux2B|Y[10]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[10]~58_combout\ = \mux_Rt_im|Y[10]~19_combout\ $ (((\ID_EX|q\(139) & !\ID_EX|q\(140))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(140),
	datad => \mux_Rt_im|Y[10]~19_combout\,
	combout => \ula|mux2B|Y[10]~58_combout\);

-- Location: LCCOMB_X70_Y59_N8
\ula|mux4|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(84) & (\ula|mux2B|Y[10]~58_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(84) $ (\ula|mux2B|Y[10]~58_combout\ $ (\ula|full_adder|c_out[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(84),
	datab => \ula|mux2B|Y[10]~58_combout\,
	datac => \ula|full_adder|c_out[9]~10_combout\,
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux21~0_combout\);

-- Location: FF_X70_Y59_N9
\EX_MEM|q[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(47));

-- Location: FF_X70_Y59_N15
\MEM_WB|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(15));

-- Location: LCCOMB_X70_Y59_N14
\mux_ULA|Y[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[10]~2_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(15))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(15),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \mux_ULA|Y[10]~2_combout\);

-- Location: FF_X79_Y57_N25
\regs|registrador_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[9]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(29));

-- Location: LCCOMB_X79_Y57_N18
\regs|registrador_rtl_1_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X79_Y57_N19
\regs|registrador_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(30));

-- Location: LCCOMB_X79_Y57_N0
\regs|saidaB[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[9]~2_combout\ = (\regs|registrador_rtl_1_bypass\(30) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~38_combout\) # (!\regs|registrador~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador_rtl_1_bypass\(30),
	datac => \regs|registrador~39_combout\,
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[9]~2_combout\);

-- Location: LCCOMB_X79_Y57_N24
\regs|saidaB[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[9]~3_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[9]~2_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a9\)) # (!\regs|saidaB[9]~2_combout\ & ((\regs|registrador_rtl_1_bypass\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a9\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(29),
	datad => \regs|saidaB[9]~2_combout\,
	combout => \regs|saidaB[9]~3_combout\);

-- Location: FF_X73_Y59_N13
\ID_EX|q[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[9]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(51));

-- Location: LCCOMB_X81_Y59_N30
\EX_MEM|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[14]~feeder_combout\ = \ID_EX|q\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(51),
	combout => \EX_MEM|q[14]~feeder_combout\);

-- Location: FF_X81_Y59_N31
\EX_MEM|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(14));

-- Location: LCCOMB_X81_Y59_N26
\ula|mux2B|Y[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[9]~48_combout\ = (\ID_EX|q\(138) & (!\ID_EX|q\(140) & (\ID_EX|q\(139)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(51) $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(139),
	datad => \ID_EX|q\(51),
	combout => \ula|mux2B|Y[9]~48_combout\);

-- Location: LCCOMB_X80_Y59_N20
\ula|mux4|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[9]~48_combout\ & (\ID_EX|q\(83)))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[9]~48_combout\ $ (\ID_EX|q\(83) $ (\ula|full_adder|c_out[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[9]~48_combout\,
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(83),
	datad => \ula|full_adder|c_out[8]~9_combout\,
	combout => \ula|mux4|Mux22~0_combout\);

-- Location: FF_X80_Y59_N21
\EX_MEM|q[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(46));

-- Location: FF_X79_Y59_N29
\MEM_WB|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(14));

-- Location: LCCOMB_X79_Y59_N28
\mux_ULA|Y[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[9]~1_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(14)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\,
	datac => \MEM_WB|q\(14),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[9]~1_combout\);

-- Location: FF_X77_Y58_N23
\regs|registrador_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[7]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(25));

-- Location: LCCOMB_X77_Y58_N22
\regs|saidaA[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[7]~47_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[7]~46_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a7\)) # (!\regs|saidaA[7]~46_combout\ & ((\regs|registrador_rtl_0_bypass\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaA[7]~46_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a7\,
	datac => \regs|registrador_rtl_0_bypass\(25),
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[7]~47_combout\);

-- Location: FF_X73_Y59_N25
\ID_EX|q[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[7]~47_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(81));

-- Location: LCCOMB_X81_Y59_N24
\ula|mux2B|Y[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[7]~49_combout\ = (\ID_EX|q\(138) & (!\ID_EX|q\(140) & (\ID_EX|q\(139)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(49) $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(139),
	datad => \ID_EX|q\(49),
	combout => \ula|mux2B|Y[7]~49_combout\);

-- Location: LCCOMB_X77_Y59_N14
\ula|mux4|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(81) & (\ula|mux2B|Y[7]~49_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(81) $ (\ula|mux2B|Y[7]~49_combout\ $ (\ula|full_adder|c_out[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(81),
	datab => \ula|mux2B|Y[7]~49_combout\,
	datac => \ID_EX|q\(140),
	datad => \ula|full_adder|c_out[6]~7_combout\,
	combout => \ula|mux4|Mux24~0_combout\);

-- Location: FF_X77_Y59_N15
\EX_MEM|q[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(44));

-- Location: FF_X77_Y59_N1
\MEM_WB|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(44),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(12));

-- Location: LCCOMB_X77_Y59_N26
\mux_ULA|Y[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[7]~25_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(12)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\,
	datab => \MEM_WB|q\(12),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[7]~25_combout\);

-- Location: FF_X77_Y58_N25
\regs|registrador_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[6]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(23));

-- Location: LCCOMB_X76_Y58_N24
\regs|registrador_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X76_Y58_N25
\regs|registrador_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(24));

-- Location: LCCOMB_X77_Y58_N6
\regs|saidaA[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[6]~48_combout\ = (\regs|registrador_rtl_0_bypass\(24) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador~40_combout\,
	datad => \regs|registrador_rtl_0_bypass\(24),
	combout => \regs|saidaA[6]~48_combout\);

-- Location: LCCOMB_X77_Y58_N24
\regs|saidaA[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[6]~49_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[6]~48_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a6\)) # (!\regs|saidaA[6]~48_combout\ & ((\regs|registrador_rtl_0_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a6\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(23),
	datad => \regs|saidaA[6]~48_combout\,
	combout => \regs|saidaA[6]~49_combout\);

-- Location: FF_X73_Y59_N1
\ID_EX|q[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[6]~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(80));

-- Location: LCCOMB_X70_Y59_N20
\ula|mux2B|Y[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[6]~47_combout\ = (\ID_EX|q\(140) & (((!\ID_EX|q\(138) & \ID_EX|q\(48))))) # (!\ID_EX|q\(140) & (\ID_EX|q\(139) $ (((!\ID_EX|q\(138) & \ID_EX|q\(48))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(139),
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(48),
	combout => \ula|mux2B|Y[6]~47_combout\);

-- Location: LCCOMB_X69_Y59_N28
\ula|mux4|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux25~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(80) & ((\ula|mux2B|Y[6]~47_combout\)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(80) $ (\ula|full_adder|c_out[5]~6_combout\ $ (\ula|mux2B|Y[6]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(80),
	datab => \ula|full_adder|c_out[5]~6_combout\,
	datac => \ID_EX|q\(140),
	datad => \ula|mux2B|Y[6]~47_combout\,
	combout => \ula|mux4|Mux25~0_combout\);

-- Location: FF_X69_Y59_N29
\EX_MEM|q[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(43));

-- Location: FF_X79_Y59_N13
\MEM_WB|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(43),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(11));

-- Location: LCCOMB_X79_Y59_N12
\mux_ULA|Y[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[6]~24_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(11)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\,
	datac => \MEM_WB|q\(11),
	combout => \mux_ULA|Y[6]~24_combout\);

-- Location: LCCOMB_X74_Y56_N2
\regs|saidaB[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[5]~47_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[5]~46_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a5\))) # (!\regs|saidaB[5]~46_combout\ & (\regs|registrador_rtl_1_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[5]~46_combout\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(21),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a5\,
	combout => \regs|saidaB[5]~47_combout\);

-- Location: LCCOMB_X73_Y60_N26
\ID_EX|q[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[47]~feeder_combout\ = \regs|saidaB[5]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[5]~47_combout\,
	combout => \ID_EX|q[47]~feeder_combout\);

-- Location: FF_X73_Y60_N27
\ID_EX|q[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(47));

-- Location: LCCOMB_X73_Y60_N28
\mux_Rt_im|Y[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[5]~24_combout\ = (\ID_EX|q\(138) & ((\ID_EX|q\(15)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(47),
	datac => \ID_EX|q\(15),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[5]~24_combout\);

-- Location: LCCOMB_X73_Y58_N30
\ula|mux2B|Y[5]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[5]~63_combout\ = \mux_Rt_im|Y[5]~24_combout\ $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(140),
	datac => \mux_Rt_im|Y[5]~24_combout\,
	datad => \ID_EX|q\(139),
	combout => \ula|mux2B|Y[5]~63_combout\);

-- Location: LCCOMB_X73_Y58_N26
\ula|mux4|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~0_combout\ = (\ID_EX|q\(140) & (\ula|mux2B|Y[5]~63_combout\ & ((\ID_EX|q\(79))))) # (!\ID_EX|q\(140) & (\ula|mux2B|Y[5]~63_combout\ $ (\ula|full_adder|c_out[4]~5_combout\ $ (\ID_EX|q\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux2B|Y[5]~63_combout\,
	datab => \ula|full_adder|c_out[4]~5_combout\,
	datac => \ID_EX|q\(140),
	datad => \ID_EX|q\(79),
	combout => \ula|mux4|Mux26~0_combout\);

-- Location: FF_X73_Y58_N27
\EX_MEM|q[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(42));

-- Location: FF_X79_Y58_N11
\MEM_WB|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(42),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(10));

-- Location: LCCOMB_X79_Y58_N12
\mux_ULA|Y[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[5]~23_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(10)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \MEM_WB|q\(10),
	combout => \mux_ULA|Y[5]~23_combout\);

-- Location: FF_X74_Y58_N1
\regs|registrador_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[4]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(19));

-- Location: LCCOMB_X74_Y58_N2
\regs|registrador_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X74_Y58_N3
\regs|registrador_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(20));

-- Location: LCCOMB_X74_Y58_N24
\regs|saidaA[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[4]~52_combout\ = (\regs|registrador_rtl_0_bypass\(20) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador~41_combout\,
	datad => \regs|registrador_rtl_0_bypass\(20),
	combout => \regs|saidaA[4]~52_combout\);

-- Location: LCCOMB_X74_Y58_N0
\regs|saidaA[4]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[4]~53_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[4]~52_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a4\)) # (!\regs|saidaA[4]~52_combout\ & ((\regs|registrador_rtl_0_bypass\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a4\,
	datac => \regs|registrador_rtl_0_bypass\(19),
	datad => \regs|saidaA[4]~52_combout\,
	combout => \regs|saidaA[4]~53_combout\);

-- Location: FF_X73_Y59_N5
\ID_EX|q[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[4]~53_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(78));

-- Location: LCCOMB_X72_Y59_N4
\ula|mux2B|Y[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[4]~62_combout\ = \mux_Rt_im|Y[4]~25_combout\ $ (((\ID_EX|q\(139) & !\ID_EX|q\(140))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[4]~25_combout\,
	datab => \ID_EX|q\(139),
	datad => \ID_EX|q\(140),
	combout => \ula|mux2B|Y[4]~62_combout\);

-- Location: LCCOMB_X72_Y59_N26
\ula|mux4|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(78) & (\ula|mux2B|Y[4]~62_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(78) $ (\ula|mux2B|Y[4]~62_combout\ $ (\ula|full_adder|c_out[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(78),
	datab => \ula|mux2B|Y[4]~62_combout\,
	datac => \ID_EX|q\(140),
	datad => \ula|full_adder|c_out[3]~4_combout\,
	combout => \ula|mux4|Mux27~0_combout\);

-- Location: FF_X72_Y59_N27
\EX_MEM|q[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(41));

-- Location: FF_X77_Y59_N19
\MEM_WB|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(41),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(9));

-- Location: LCCOMB_X77_Y59_N18
\mux_ULA|Y[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[4]~22_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(9))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(9),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \mux_ULA|Y[4]~22_combout\);

-- Location: LCCOMB_X74_Y58_N26
\regs|registrador_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X74_Y58_N27
\regs|registrador_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(18));

-- Location: LCCOMB_X74_Y58_N4
\regs|saidaA[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[3]~54_combout\ = (\regs|registrador_rtl_0_bypass\(18) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~40_combout\)) # (!\regs|registrador~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~41_combout\,
	datab => \regs|registrador_rtl_0_bypass\(9),
	datac => \regs|registrador_rtl_0_bypass\(18),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[3]~54_combout\);

-- Location: FF_X77_Y58_N17
\regs|registrador_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[3]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(17));

-- Location: LCCOMB_X77_Y58_N16
\regs|saidaA[3]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[3]~55_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[3]~54_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a3\)) # (!\regs|saidaA[3]~54_combout\ & ((\regs|registrador_rtl_0_bypass\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a3\,
	datab => \regs|saidaA[3]~54_combout\,
	datac => \regs|registrador_rtl_0_bypass\(17),
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[3]~55_combout\);

-- Location: FF_X73_Y59_N3
\ID_EX|q[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[3]~55_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(77));

-- Location: LCCOMB_X72_Y59_N28
\ula|mux2B|Y[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[3]~61_combout\ = \mux_Rt_im|Y[3]~26_combout\ $ (((\ID_EX|q\(139) & !\ID_EX|q\(140))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[3]~26_combout\,
	datab => \ID_EX|q\(139),
	datad => \ID_EX|q\(140),
	combout => \ula|mux2B|Y[3]~61_combout\);

-- Location: LCCOMB_X72_Y59_N8
\ula|mux4|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux28~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(77) & (\ula|mux2B|Y[3]~61_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(77) $ (\ula|mux2B|Y[3]~61_combout\ $ (\ula|full_adder|c_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ula|mux2B|Y[3]~61_combout\,
	datac => \ula|full_adder|c_out[2]~3_combout\,
	datad => \ID_EX|q\(140),
	combout => \ula|mux4|Mux28~0_combout\);

-- Location: FF_X72_Y59_N9
\EX_MEM|q[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(40));

-- Location: FF_X79_Y59_N9
\MEM_WB|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(40),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(8));

-- Location: LCCOMB_X79_Y59_N8
\mux_ULA|Y[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[3]~21_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(8)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\,
	datac => \MEM_WB|q\(8),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[3]~21_combout\);

-- Location: FF_X79_Y57_N29
\regs|registrador_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[1]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(13));

-- Location: LCCOMB_X79_Y57_N2
\regs|registrador_rtl_1_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X79_Y57_N3
\regs|registrador_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(14));

-- Location: LCCOMB_X79_Y57_N16
\regs|saidaB[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[1]~38_combout\ = (\regs|registrador_rtl_1_bypass\(14) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~38_combout\) # (!\regs|registrador~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador_rtl_1_bypass\(14),
	datac => \regs|registrador~39_combout\,
	datad => \regs|registrador~38_combout\,
	combout => \regs|saidaB[1]~38_combout\);

-- Location: LCCOMB_X79_Y57_N28
\regs|saidaB[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[1]~39_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[1]~38_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a1\)) # (!\regs|saidaB[1]~38_combout\ & ((\regs|registrador_rtl_1_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a1\,
	datac => \regs|registrador_rtl_1_bypass\(13),
	datad => \regs|saidaB[1]~38_combout\,
	combout => \regs|saidaB[1]~39_combout\);

-- Location: LCCOMB_X72_Y59_N14
\ID_EX|q[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[43]~feeder_combout\ = \regs|saidaB[1]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[1]~39_combout\,
	combout => \ID_EX|q[43]~feeder_combout\);

-- Location: FF_X72_Y59_N15
\ID_EX|q[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(43));

-- Location: LCCOMB_X72_Y59_N6
\mux_Rt_im|Y[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[1]~28_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(1))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(1),
	datab => \ID_EX|q\(43),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[1]~28_combout\);

-- Location: FF_X76_Y59_N29
\regs|registrador_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[0]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(11));

-- Location: LCCOMB_X79_Y60_N10
\regs|registrador_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X79_Y60_N11
\regs|registrador_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(12));

-- Location: LCCOMB_X79_Y60_N28
\regs|saidaA[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[0]~60_combout\ = (\regs|registrador_rtl_0_bypass\(12) & (((\regs|registrador_rtl_0_bypass\(9)) # (!\regs|registrador~41_combout\)) # (!\regs|registrador~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador~41_combout\,
	datac => \regs|registrador_rtl_0_bypass\(9),
	datad => \regs|registrador_rtl_0_bypass\(12),
	combout => \regs|saidaA[0]~60_combout\);

-- Location: LCCOMB_X76_Y59_N20
\regs|saidaA[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[0]~61_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[0]~60_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\regs|saidaA[0]~60_combout\ & (\regs|registrador_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0_bypass\(11),
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \regs|saidaA[0]~60_combout\,
	combout => \regs|saidaA[0]~61_combout\);

-- Location: FF_X76_Y59_N21
\ID_EX|q[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(74));

-- Location: LCCOMB_X72_Y59_N20
\mux_Rt_im|Y[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[0]~29_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(0))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(0),
	datab => \ID_EX|q\(42),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[0]~29_combout\);

-- Location: LCCOMB_X73_Y59_N28
\ula|full_adder|c_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[0]~1_combout\ = (\mux_Rt_im|Y[0]~29_combout\ & (((\ID_EX|q\(74))))) # (!\mux_Rt_im|Y[0]~29_combout\ & (!\ID_EX|q\(140) & ((\ID_EX|q\(139)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(74),
	datac => \ID_EX|q\(139),
	datad => \mux_Rt_im|Y[0]~29_combout\,
	combout => \ula|full_adder|c_out[0]~1_combout\);

-- Location: LCCOMB_X73_Y59_N18
\ula|full_adder|c_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[1]~2_combout\ = (\ID_EX|q\(75) & ((\ula|full_adder|c_out[0]~1_combout\) # (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[1]~28_combout\)))) # (!\ID_EX|q\(75) & (\ula|full_adder|c_out[0]~1_combout\ & 
-- (\ula|full_adder|c_out[0]~0_combout\ $ (\mux_Rt_im|Y[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[0]~0_combout\,
	datab => \mux_Rt_im|Y[1]~28_combout\,
	datac => \ID_EX|q\(75),
	datad => \ula|full_adder|c_out[0]~1_combout\,
	combout => \ula|full_adder|c_out[1]~2_combout\);

-- Location: LCCOMB_X73_Y58_N0
\ula|mux2B|Y[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[2]~60_combout\ = \mux_Rt_im|Y[2]~27_combout\ $ (((!\ID_EX|q\(140) & \ID_EX|q\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(140),
	datac => \mux_Rt_im|Y[2]~27_combout\,
	datad => \ID_EX|q\(139),
	combout => \ula|mux2B|Y[2]~60_combout\);

-- Location: LCCOMB_X73_Y58_N16
\ula|mux4|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~0_combout\ = (\ID_EX|q\(140) & (((\ula|mux2B|Y[2]~60_combout\ & \ID_EX|q\(76))))) # (!\ID_EX|q\(140) & (\ula|full_adder|c_out[1]~2_combout\ $ (\ula|mux2B|Y[2]~60_combout\ $ (\ID_EX|q\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[1]~2_combout\,
	datab => \ula|mux2B|Y[2]~60_combout\,
	datac => \ID_EX|q\(140),
	datad => \ID_EX|q\(76),
	combout => \ula|mux4|Mux29~0_combout\);

-- Location: FF_X73_Y58_N17
\EX_MEM|q[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(39));

-- Location: FF_X77_Y59_N11
\MEM_WB|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(39),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(7));

-- Location: LCCOMB_X77_Y59_N30
\mux_ULA|Y[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[2]~20_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(7))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(7),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[2]~20_combout\);

-- Location: LCCOMB_X77_Y58_N14
\regs|saidaA[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[1]~59_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[1]~58_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a1\))) # (!\regs|saidaA[1]~58_combout\ & (\regs|registrador_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaA[1]~58_combout\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(13),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a1\,
	combout => \regs|saidaA[1]~59_combout\);

-- Location: FF_X73_Y59_N19
\ID_EX|q[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[1]~59_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(75));

-- Location: LCCOMB_X72_Y59_N18
\ula|mux2B|Y[1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[1]~66_combout\ = \mux_Rt_im|Y[1]~28_combout\ $ (((\ID_EX|q\(139) & !\ID_EX|q\(140))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[1]~28_combout\,
	datab => \ID_EX|q\(139),
	datad => \ID_EX|q\(140),
	combout => \ula|mux2B|Y[1]~66_combout\);

-- Location: LCCOMB_X72_Y58_N0
\ula|mux4|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(75) & (\ula|mux2B|Y[1]~66_combout\))) # (!\ID_EX|q\(140) & (\ID_EX|q\(75) $ (\ula|mux2B|Y[1]~66_combout\ $ (\ula|full_adder|c_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(75),
	datac => \ula|mux2B|Y[1]~66_combout\,
	datad => \ula|full_adder|c_out[0]~1_combout\,
	combout => \ula|mux4|Mux30~0_combout\);

-- Location: FF_X72_Y58_N31
\EX_MEM|q[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ula|mux4|Mux30~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(38));

-- Location: FF_X72_Y58_N17
\MEM_WB|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(6));

-- Location: LCCOMB_X72_Y58_N30
\mux_ULA|Y[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[1]~19_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(6))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \MEM_WB|q\(6),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \mux_ULA|Y[1]~19_combout\);

-- Location: LCCOMB_X76_Y61_N20
\regs|registrador_rtl_1_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \regs|registrador_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X76_Y61_N21
\regs|registrador_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(12));

-- Location: LCCOMB_X76_Y61_N18
\regs|saidaB[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[0]~36_combout\ = (\regs|registrador_rtl_1_bypass\(12) & ((\regs|registrador_rtl_1_bypass\(9)) # ((!\regs|registrador~39_combout\) # (!\regs|registrador~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(9),
	datab => \regs|registrador_rtl_1_bypass\(12),
	datac => \regs|registrador~38_combout\,
	datad => \regs|registrador~39_combout\,
	combout => \regs|saidaB[0]~36_combout\);

-- Location: FF_X77_Y61_N21
\regs|registrador_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[0]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(11));

-- Location: LCCOMB_X77_Y61_N20
\regs|saidaB[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[0]~37_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[0]~36_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\)) # (!\regs|saidaB[0]~36_combout\ & ((\regs|registrador_rtl_1_bypass\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datab => \regs|saidaB[0]~36_combout\,
	datac => \regs|registrador_rtl_1_bypass\(11),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[0]~37_combout\);

-- Location: FF_X72_Y59_N5
\ID_EX|q[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[0]~37_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(42));

-- Location: FF_X72_Y59_N13
\EX_MEM|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(42),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(5));

-- Location: LCCOMB_X76_Y59_N12
\ula|mux4|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(74) & \mux_Rt_im|Y[0]~29_combout\)) # (!\ID_EX|q\(140) & (\ID_EX|q\(74) $ (\mux_Rt_im|Y[0]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(140),
	datab => \ID_EX|q\(74),
	datad => \mux_Rt_im|Y[0]~29_combout\,
	combout => \ula|mux4|Mux31~0_combout\);

-- Location: LCCOMB_X76_Y59_N14
\EX_MEM|q[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[37]~feeder_combout\ = \ula|mux4|Mux31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|mux4|Mux31~0_combout\,
	combout => \EX_MEM|q[37]~feeder_combout\);

-- Location: FF_X76_Y59_N15
\EX_MEM|q[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(37));

-- Location: FF_X76_Y59_N3
\MEM_WB|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(5));

-- Location: LCCOMB_X76_Y59_N2
\mux_ULA|Y[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[0]~18_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(5)))) # (!\MEM_WB|q\(69) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \MEM_WB|q\(5),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[0]~18_combout\);

-- Location: LCCOMB_X77_Y58_N4
\regs|saidaA[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[8]~45_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|saidaA[8]~44_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a8\))) # (!\regs|saidaA[8]~44_combout\ & (\regs|registrador_rtl_0_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaA[8]~44_combout\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(27),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a8\,
	combout => \regs|saidaA[8]~45_combout\);

-- Location: FF_X73_Y59_N17
\ID_EX|q[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[8]~45_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(82));

-- Location: LCCOMB_X70_Y59_N26
\ula|mux2B|Y[8]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[8]~56_combout\ = (\ID_EX|q\(139) & (\ID_EX|q\(140) $ (((\ID_EX|q\(138)) # (!\ID_EX|q\(50)))))) # (!\ID_EX|q\(139) & (((!\ID_EX|q\(138) & \ID_EX|q\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(50),
	combout => \ula|mux2B|Y[8]~56_combout\);

-- Location: LCCOMB_X69_Y59_N26
\ula|mux4|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~0_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(82) & ((\ula|mux2B|Y[8]~56_combout\)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(82) $ (\ula|full_adder|c_out[7]~8_combout\ $ (\ula|mux2B|Y[8]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(82),
	datab => \ID_EX|q\(140),
	datac => \ula|full_adder|c_out[7]~8_combout\,
	datad => \ula|mux2B|Y[8]~56_combout\,
	combout => \ula|mux4|Mux23~0_combout\);

-- Location: FF_X69_Y59_N27
\EX_MEM|q[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(45));

-- Location: FF_X69_Y59_N25
\MEM_WB|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(13));

-- Location: LCCOMB_X77_Y59_N28
\mux_ULA|Y[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[8]~0_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(13))) # (!\MEM_WB|q\(69) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \MEM_WB|q\(13),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8~portadataout\,
	combout => \mux_ULA|Y[8]~0_combout\);

-- Location: FF_X74_Y57_N11
\regs|registrador_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[8]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(27));

-- Location: LCCOMB_X74_Y57_N10
\regs|saidaB[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[8]~1_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|saidaB[8]~0_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a8\))) # (!\regs|saidaB[8]~0_combout\ & (\regs|registrador_rtl_1_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|saidaB[8]~0_combout\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(27),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a8\,
	combout => \regs|saidaB[8]~1_combout\);

-- Location: LCCOMB_X77_Y59_N4
\controlador1|decodificador1|seg7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~12_combout\ = (!\ula|mux4|Mux3~0_combout\ & !\ula|mux4|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux3~0_combout\,
	datad => \ula|mux4|Mux4~0_combout\,
	combout => \controlador1|decodificador1|seg7~12_combout\);

-- Location: LCCOMB_X74_Y59_N30
\controlador1|decodificador1|seg7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~5_combout\ = (!\ula|mux4|Mux13~0_combout\ & (!\ula|mux4|Mux15~0_combout\ & (!\ula|mux4|Mux14~0_combout\ & !\ula|mux4|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux13~0_combout\,
	datab => \ula|mux4|Mux15~0_combout\,
	datac => \ula|mux4|Mux14~0_combout\,
	datad => \ula|mux4|Mux16~0_combout\,
	combout => \controlador1|decodificador1|seg7~5_combout\);

-- Location: LCCOMB_X70_Y59_N30
\controlador1|decodificador1|seg7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~2_combout\ = (!\ula|mux4|Mux20~0_combout\ & \ula|mux4|Mux21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux20~0_combout\,
	datad => \ula|mux4|Mux21~0_combout\,
	combout => \controlador1|decodificador1|seg7~2_combout\);

-- Location: LCCOMB_X73_Y58_N28
\controlador1|decodificador1|seg7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~3_combout\ = (!\ula|mux4|Mux26~0_combout\ & (!\ula|mux4|Mux29~0_combout\ & (!\ula|mux4|Mux28~0_combout\ & !\ula|mux4|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux26~0_combout\,
	datab => \ula|mux4|Mux29~0_combout\,
	datac => \ula|mux4|Mux28~0_combout\,
	datad => \ula|mux4|Mux27~0_combout\,
	combout => \controlador1|decodificador1|seg7~3_combout\);

-- Location: LCCOMB_X73_Y58_N4
\controlador1|decodificador1|seg7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~4_combout\ = (\controlador1|decodificador1|seg7~2_combout\ & (\controlador1|decodificador1|seg7~3_combout\ & (!\ula|mux4|Mux19~0_combout\ & !\ula|mux4|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|seg7~2_combout\,
	datab => \controlador1|decodificador1|seg7~3_combout\,
	datac => \ula|mux4|Mux19~0_combout\,
	datad => \ula|mux4|Mux17~0_combout\,
	combout => \controlador1|decodificador1|seg7~4_combout\);

-- Location: LCCOMB_X70_Y59_N2
\controlador1|decodificador1|seg7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~15_combout\ = (\ID_EX|q\(140) & (\ID_EX|q\(82) & ((\mux_Rt_im|Y[8]~21_combout\)))) # (!\ID_EX|q\(140) & (\ID_EX|q\(82) $ (\ID_EX|q\(139) $ (\mux_Rt_im|Y[8]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(82),
	datab => \ID_EX|q\(139),
	datac => \mux_Rt_im|Y[8]~21_combout\,
	datad => \ID_EX|q\(140),
	combout => \controlador1|decodificador1|seg7~15_combout\);

-- Location: LCCOMB_X69_Y59_N18
\controlador1|decodificador1|seg7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~7_combout\ = (!\ula|mux4|Mux25~0_combout\ & (\controlador1|decodificador1|seg7~15_combout\ $ (((\ID_EX|q\(140)) # (!\ula|full_adder|c_out[7]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|seg7~15_combout\,
	datab => \ula|full_adder|c_out[7]~8_combout\,
	datac => \ID_EX|q\(140),
	datad => \ula|mux4|Mux25~0_combout\,
	combout => \controlador1|decodificador1|seg7~7_combout\);

-- Location: LCCOMB_X79_Y59_N16
\controlador1|decodificador1|seg7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~8_combout\ = (!\ula|mux4|Mux12~0_combout\ & !\ula|mux4|Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux12~0_combout\,
	datad => \ula|mux4|Mux11~0_combout\,
	combout => \controlador1|decodificador1|seg7~8_combout\);

-- Location: LCCOMB_X79_Y59_N18
\controlador1|decodificador1|seg7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~9_combout\ = (!\ula|mux4|Mux24~0_combout\ & (\controlador1|decodificador1|seg7~8_combout\ & (!\ula|mux4|Mux9~0_combout\ & !\ula|mux4|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux24~0_combout\,
	datab => \controlador1|decodificador1|seg7~8_combout\,
	datac => \ula|mux4|Mux9~0_combout\,
	datad => \ula|mux4|Mux10~0_combout\,
	combout => \controlador1|decodificador1|seg7~9_combout\);

-- Location: LCCOMB_X79_Y59_N20
\controlador1|decodificador1|seg7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~10_combout\ = (\controlador1|decodificador1|seg7~7_combout\ & (!\ula|mux4|Mux18~0_combout\ & (!\ula|mux4|Mux22~0_combout\ & \controlador1|decodificador1|seg7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|seg7~7_combout\,
	datab => \ula|mux4|Mux18~0_combout\,
	datac => \ula|mux4|Mux22~0_combout\,
	datad => \controlador1|decodificador1|seg7~9_combout\,
	combout => \controlador1|decodificador1|seg7~10_combout\);

-- Location: LCCOMB_X75_Y60_N20
\controlador1|decodificador1|seg7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~6_combout\ = (!\ula|mux4|Mux8~0_combout\ & (!\ula|mux4|Mux7~0_combout\ & (!\ula|mux4|Mux6~0_combout\ & !\ula|mux4|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux8~0_combout\,
	datab => \ula|mux4|Mux7~0_combout\,
	datac => \ula|mux4|Mux6~0_combout\,
	datad => \ula|mux4|Mux5~0_combout\,
	combout => \controlador1|decodificador1|seg7~6_combout\);

-- Location: LCCOMB_X74_Y59_N18
\controlador1|decodificador1|seg7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~11_combout\ = (\controlador1|decodificador1|seg7~5_combout\ & (\controlador1|decodificador1|seg7~4_combout\ & (\controlador1|decodificador1|seg7~10_combout\ & \controlador1|decodificador1|seg7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|seg7~5_combout\,
	datab => \controlador1|decodificador1|seg7~4_combout\,
	datac => \controlador1|decodificador1|seg7~10_combout\,
	datad => \controlador1|decodificador1|seg7~6_combout\,
	combout => \controlador1|decodificador1|seg7~11_combout\);

-- Location: LCCOMB_X75_Y59_N26
\controlador1|decodificador1|seg7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~13_combout\ = (!\ula|mux4|Mux2~0_combout\ & (!\ula|mux4|Mux1~0_combout\ & (\controlador1|decodificador1|seg7~12_combout\ & \controlador1|decodificador1|seg7~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux2~0_combout\,
	datab => \ula|mux4|Mux1~0_combout\,
	datac => \controlador1|decodificador1|seg7~12_combout\,
	datad => \controlador1|decodificador1|seg7~11_combout\,
	combout => \controlador1|decodificador1|seg7~13_combout\);

-- Location: LCCOMB_X75_Y59_N12
\controlador1|decodificador1|leds~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|leds~0_combout\ = (!\ula|mux4|Mux31~0_combout\ & (!\ula|mux4|Mux30~0_combout\ & \controlador1|decodificador1|seg7~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux31~0_combout\,
	datab => \ula|mux4|Mux30~0_combout\,
	datad => \controlador1|decodificador1|seg7~13_combout\,
	combout => \controlador1|decodificador1|leds~0_combout\);

-- Location: DDIOOUTCELL_X69_Y73_N18
\controlador1|reg_leds|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[8]~1_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(8));

-- Location: DDIOOUTCELL_X94_Y73_N4
\controlador1|reg_leds|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[9]~3_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(9));

-- Location: DDIOOUTCELL_X94_Y73_N11
\controlador1|reg_leds|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[10]~5_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(10));

-- Location: DDIOOUTCELL_X107_Y73_N18
\controlador1|reg_leds|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[11]~7_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(11));

-- Location: DDIOOUTCELL_X87_Y73_N18
\controlador1|reg_leds|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[12]~9_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(12));

-- Location: DDIOOUTCELL_X87_Y73_N11
\controlador1|reg_leds|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[13]~11_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(13));

-- Location: DDIOOUTCELL_X72_Y73_N11
\controlador1|reg_leds|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[14]~13_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(14));

-- Location: DDIOOUTCELL_X72_Y73_N4
\controlador1|reg_leds|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[15]~15_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(15));

-- Location: DDIOOUTCELL_X69_Y73_N4
\controlador1|reg_leds|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[16]~17_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(16));

-- Location: DDIOOUTCELL_X83_Y73_N25
\controlador1|reg_leds|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[17]~19_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(17));

-- Location: DDIOOUTCELL_X60_Y73_N25
\controlador1|reg_leds|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[18]~21_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(18));

-- Location: DDIOOUTCELL_X65_Y73_N25
\controlador1|reg_leds|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[19]~23_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(19));

-- Location: DDIOOUTCELL_X65_Y73_N18
\controlador1|reg_leds|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[20]~25_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(20));

-- Location: DDIOOUTCELL_X67_Y73_N11
\controlador1|reg_leds|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[21]~27_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(21));

-- Location: DDIOOUTCELL_X58_Y73_N4
\controlador1|reg_leds|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[22]~29_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(22));

-- Location: DDIOOUTCELL_X65_Y73_N11
\controlador1|reg_leds|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[23]~31_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(23));

-- Location: DDIOOUTCELL_X67_Y73_N4
\controlador1|reg_leds|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[24]~33_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(24));

-- Location: DDIOOUTCELL_X60_Y73_N18
\controlador1|reg_leds|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[25]~35_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(25));

-- Location: DDIOOUTCELL_X107_Y73_N11
\controlador1|reg_leds|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[0]~37_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(0));

-- Location: DDIOOUTCELL_X111_Y73_N11
\controlador1|reg_leds|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[1]~39_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(1));

-- Location: DDIOOUTCELL_X83_Y73_N4
\controlador1|reg_leds|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[2]~41_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(2));

-- Location: DDIOOUTCELL_X85_Y73_N25
\controlador1|reg_leds|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[3]~43_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(3));

-- Location: DDIOOUTCELL_X72_Y73_N18
\controlador1|reg_leds|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[4]~45_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(4));

-- Location: DDIOOUTCELL_X74_Y73_N18
\controlador1|reg_leds|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[5]~47_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(5));

-- Location: DDIOOUTCELL_X72_Y73_N25
\controlador1|reg_leds|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[6]~49_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(6));

-- Location: DDIOOUTCELL_X74_Y73_N25
\controlador1|reg_leds|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[7]~51_combout\,
	ena => \controlador1|decodificador1|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_leds|q\(7));

-- Location: LCCOMB_X75_Y59_N22
\controlador1|decodificador1|seg7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|decodificador1|seg7~14_combout\ = (\controlador1|decodificador1|seg7~13_combout\ & (\ula|mux4|Mux30~0_combout\ & \ula|mux4|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|decodificador1|seg7~13_combout\,
	datab => \ula|mux4|Mux30~0_combout\,
	datad => \ula|mux4|Mux31~0_combout\,
	combout => \controlador1|decodificador1|seg7~14_combout\);

-- Location: FF_X70_Y59_N29
\controlador1|reg_seg7|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[3]~43_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(3));

-- Location: FF_X75_Y59_N13
\controlador1|reg_seg7|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[0]~37_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(0));

-- Location: FF_X76_Y59_N1
\controlador1|reg_seg7|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[2]~41_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(2));

-- Location: FF_X72_Y59_N7
\controlador1|reg_seg7|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[1]~39_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(1));

-- Location: LCCOMB_X72_Y60_N0
\controlador1|conv_HEX0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(3) & (\controlador1|reg_seg7|q\(0) & (\controlador1|reg_seg7|q\(2) $ (\controlador1|reg_seg7|q\(1))))) # (!\controlador1|reg_seg7|q\(3) & (!\controlador1|reg_seg7|q\(1) & 
-- (\controlador1|reg_seg7|q\(0) $ (\controlador1|reg_seg7|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(3),
	datab => \controlador1|reg_seg7|q\(0),
	datac => \controlador1|reg_seg7|q\(2),
	datad => \controlador1|reg_seg7|q\(1),
	combout => \controlador1|conv_HEX0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X72_Y60_N10
\controlador1|conv_HEX0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(3) & ((\controlador1|reg_seg7|q\(0) & ((\controlador1|reg_seg7|q\(1)))) # (!\controlador1|reg_seg7|q\(0) & (\controlador1|reg_seg7|q\(2))))) # (!\controlador1|reg_seg7|q\(3) 
-- & (\controlador1|reg_seg7|q\(2) & (\controlador1|reg_seg7|q\(0) $ (\controlador1|reg_seg7|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(3),
	datab => \controlador1|reg_seg7|q\(0),
	datac => \controlador1|reg_seg7|q\(2),
	datad => \controlador1|reg_seg7|q\(1),
	combout => \controlador1|conv_HEX0|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X72_Y60_N8
\controlador1|conv_HEX0|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(3) & (((\controlador1|reg_seg7|q\(0) & !\controlador1|reg_seg7|q\(1))) # (!\controlador1|reg_seg7|q\(2)))) # (!\controlador1|reg_seg7|q\(3) & ((\controlador1|reg_seg7|q\(0)) 
-- # ((\controlador1|reg_seg7|q\(2)) # (!\controlador1|reg_seg7|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(3),
	datab => \controlador1|reg_seg7|q\(0),
	datac => \controlador1|reg_seg7|q\(2),
	datad => \controlador1|reg_seg7|q\(1),
	combout => \controlador1|conv_HEX0|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X73_Y58_N20
\controlador1|conv_HEX0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(1) & ((\controlador1|reg_seg7|q\(2) & ((\controlador1|reg_seg7|q\(0)))) # (!\controlador1|reg_seg7|q\(2) & (\controlador1|reg_seg7|q\(3) & !\controlador1|reg_seg7|q\(0))))) # 
-- (!\controlador1|reg_seg7|q\(1) & (!\controlador1|reg_seg7|q\(3) & (\controlador1|reg_seg7|q\(2) $ (\controlador1|reg_seg7|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(2),
	datab => \controlador1|reg_seg7|q\(3),
	datac => \controlador1|reg_seg7|q\(0),
	datad => \controlador1|reg_seg7|q\(1),
	combout => \controlador1|conv_HEX0|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X73_Y58_N2
\controlador1|conv_HEX0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(1) & (((!\controlador1|reg_seg7|q\(3) & \controlador1|reg_seg7|q\(0))))) # (!\controlador1|reg_seg7|q\(1) & ((\controlador1|reg_seg7|q\(2) & (!\controlador1|reg_seg7|q\(3))) 
-- # (!\controlador1|reg_seg7|q\(2) & ((\controlador1|reg_seg7|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(2),
	datab => \controlador1|reg_seg7|q\(3),
	datac => \controlador1|reg_seg7|q\(0),
	datad => \controlador1|reg_seg7|q\(1),
	combout => \controlador1|conv_HEX0|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X72_Y60_N26
\controlador1|conv_HEX0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(0) & (\controlador1|reg_seg7|q\(3) $ (((\controlador1|reg_seg7|q\(1)) # (!\controlador1|reg_seg7|q\(2)))))) # (!\controlador1|reg_seg7|q\(0) & (!\controlador1|reg_seg7|q\(3) 
-- & (!\controlador1|reg_seg7|q\(2) & \controlador1|reg_seg7|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(3),
	datab => \controlador1|reg_seg7|q\(0),
	datac => \controlador1|reg_seg7|q\(2),
	datad => \controlador1|reg_seg7|q\(1),
	combout => \controlador1|conv_HEX0|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X72_Y60_N4
\controlador1|conv_HEX0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX0|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(0) & (!\controlador1|reg_seg7|q\(3) & (\controlador1|reg_seg7|q\(2) $ (!\controlador1|reg_seg7|q\(1))))) # (!\controlador1|reg_seg7|q\(0) & (!\controlador1|reg_seg7|q\(1) & 
-- (\controlador1|reg_seg7|q\(3) $ (!\controlador1|reg_seg7|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(3),
	datab => \controlador1|reg_seg7|q\(0),
	datac => \controlador1|reg_seg7|q\(2),
	datad => \controlador1|reg_seg7|q\(1),
	combout => \controlador1|conv_HEX0|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X74_Y56_N10
\controlador1|reg_seg7|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[5]~feeder_combout\ = \regs|saidaB[5]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[5]~47_combout\,
	combout => \controlador1|reg_seg7|q[5]~feeder_combout\);

-- Location: FF_X74_Y56_N11
\controlador1|reg_seg7|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[5]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(5));

-- Location: LCCOMB_X74_Y56_N24
\controlador1|reg_seg7|q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[4]~feeder_combout\ = \regs|saidaB[4]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[4]~45_combout\,
	combout => \controlador1|reg_seg7|q[4]~feeder_combout\);

-- Location: FF_X74_Y56_N25
\controlador1|reg_seg7|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[4]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(4));

-- Location: LCCOMB_X74_Y56_N26
\controlador1|reg_seg7|q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[7]~feeder_combout\ = \regs|saidaB[7]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[7]~51_combout\,
	combout => \controlador1|reg_seg7|q[7]~feeder_combout\);

-- Location: FF_X74_Y56_N27
\controlador1|reg_seg7|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[7]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(7));

-- Location: LCCOMB_X74_Y56_N28
\controlador1|reg_seg7|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[6]~feeder_combout\ = \regs|saidaB[6]~49_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[6]~49_combout\,
	combout => \controlador1|reg_seg7|q[6]~feeder_combout\);

-- Location: FF_X74_Y56_N29
\controlador1|reg_seg7|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[6]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(6));

-- Location: LCCOMB_X74_Y56_N12
\controlador1|conv_HEX1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(7) & (\controlador1|reg_seg7|q\(4) & (\controlador1|reg_seg7|q\(5) $ (\controlador1|reg_seg7|q\(6))))) # (!\controlador1|reg_seg7|q\(7) & (!\controlador1|reg_seg7|q\(5) & 
-- (\controlador1|reg_seg7|q\(4) $ (\controlador1|reg_seg7|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(5),
	datab => \controlador1|reg_seg7|q\(4),
	datac => \controlador1|reg_seg7|q\(7),
	datad => \controlador1|reg_seg7|q\(6),
	combout => \controlador1|conv_HEX1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X74_Y56_N18
\controlador1|conv_HEX1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(5) & ((\controlador1|reg_seg7|q\(4) & (\controlador1|reg_seg7|q\(7))) # (!\controlador1|reg_seg7|q\(4) & ((\controlador1|reg_seg7|q\(6)))))) # (!\controlador1|reg_seg7|q\(5) 
-- & (\controlador1|reg_seg7|q\(6) & (\controlador1|reg_seg7|q\(4) $ (\controlador1|reg_seg7|q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(5),
	datab => \controlador1|reg_seg7|q\(4),
	datac => \controlador1|reg_seg7|q\(7),
	datad => \controlador1|reg_seg7|q\(6),
	combout => \controlador1|conv_HEX1|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X74_Y56_N8
\controlador1|conv_HEX1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(7) & (((!\controlador1|reg_seg7|q\(5) & \controlador1|reg_seg7|q\(4))) # (!\controlador1|reg_seg7|q\(6)))) # (!\controlador1|reg_seg7|q\(7) & (((\controlador1|reg_seg7|q\(4)) 
-- # (\controlador1|reg_seg7|q\(6))) # (!\controlador1|reg_seg7|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(5),
	datab => \controlador1|reg_seg7|q\(4),
	datac => \controlador1|reg_seg7|q\(7),
	datad => \controlador1|reg_seg7|q\(6),
	combout => \controlador1|conv_HEX1|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X74_Y56_N6
\controlador1|conv_HEX1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(5) & ((\controlador1|reg_seg7|q\(4) & ((\controlador1|reg_seg7|q\(6)))) # (!\controlador1|reg_seg7|q\(4) & (\controlador1|reg_seg7|q\(7) & !\controlador1|reg_seg7|q\(6))))) # 
-- (!\controlador1|reg_seg7|q\(5) & (!\controlador1|reg_seg7|q\(7) & (\controlador1|reg_seg7|q\(4) $ (\controlador1|reg_seg7|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(5),
	datab => \controlador1|reg_seg7|q\(4),
	datac => \controlador1|reg_seg7|q\(7),
	datad => \controlador1|reg_seg7|q\(6),
	combout => \controlador1|conv_HEX1|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X74_Y56_N20
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

-- Location: LCCOMB_X74_Y56_N30
\controlador1|conv_HEX1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(5) & (!\controlador1|reg_seg7|q\(7) & ((\controlador1|reg_seg7|q\(4)) # (!\controlador1|reg_seg7|q\(6))))) # (!\controlador1|reg_seg7|q\(5) & (\controlador1|reg_seg7|q\(4) & 
-- (\controlador1|reg_seg7|q\(7) $ (!\controlador1|reg_seg7|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(5),
	datab => \controlador1|reg_seg7|q\(4),
	datac => \controlador1|reg_seg7|q\(7),
	datad => \controlador1|reg_seg7|q\(6),
	combout => \controlador1|conv_HEX1|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X74_Y56_N4
\controlador1|conv_HEX1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX1|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(4) & (!\controlador1|reg_seg7|q\(7) & (\controlador1|reg_seg7|q\(5) $ (!\controlador1|reg_seg7|q\(6))))) # (!\controlador1|reg_seg7|q\(4) & (!\controlador1|reg_seg7|q\(5) & 
-- (\controlador1|reg_seg7|q\(7) $ (!\controlador1|reg_seg7|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(5),
	datab => \controlador1|reg_seg7|q\(4),
	datac => \controlador1|reg_seg7|q\(7),
	datad => \controlador1|reg_seg7|q\(6),
	combout => \controlador1|conv_HEX1|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X74_Y56_N14
\controlador1|reg_seg7|q[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[10]~feeder_combout\ = \regs|saidaB[10]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[10]~5_combout\,
	combout => \controlador1|reg_seg7|q[10]~feeder_combout\);

-- Location: FF_X74_Y56_N15
\controlador1|reg_seg7|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[10]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(10));

-- Location: LCCOMB_X75_Y56_N18
\controlador1|reg_seg7|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[11]~feeder_combout\ = \regs|saidaB[11]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[11]~7_combout\,
	combout => \controlador1|reg_seg7|q[11]~feeder_combout\);

-- Location: FF_X75_Y56_N19
\controlador1|reg_seg7|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[11]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(11));

-- Location: LCCOMB_X74_Y56_N16
\controlador1|reg_seg7|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[8]~feeder_combout\ = \regs|saidaB[8]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[8]~1_combout\,
	combout => \controlador1|reg_seg7|q[8]~feeder_combout\);

-- Location: FF_X74_Y56_N17
\controlador1|reg_seg7|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[8]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(8));

-- Location: LCCOMB_X75_Y56_N20
\controlador1|reg_seg7|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[9]~feeder_combout\ = \regs|saidaB[9]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[9]~3_combout\,
	combout => \controlador1|reg_seg7|q[9]~feeder_combout\);

-- Location: FF_X75_Y56_N21
\controlador1|reg_seg7|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[9]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(9));

-- Location: LCCOMB_X75_Y56_N24
\controlador1|conv_HEX2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(10) & (!\controlador1|reg_seg7|q\(9) & (\controlador1|reg_seg7|q\(11) $ (!\controlador1|reg_seg7|q\(8))))) # (!\controlador1|reg_seg7|q\(10) & (\controlador1|reg_seg7|q\(8) & 
-- (\controlador1|reg_seg7|q\(11) $ (!\controlador1|reg_seg7|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(8),
	datad => \controlador1|reg_seg7|q\(9),
	combout => \controlador1|conv_HEX2|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X75_Y56_N22
\controlador1|conv_HEX2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(11) & ((\controlador1|reg_seg7|q\(8) & ((\controlador1|reg_seg7|q\(9)))) # (!\controlador1|reg_seg7|q\(8) & (\controlador1|reg_seg7|q\(10))))) # 
-- (!\controlador1|reg_seg7|q\(11) & (\controlador1|reg_seg7|q\(10) & (\controlador1|reg_seg7|q\(8) $ (\controlador1|reg_seg7|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(8),
	datad => \controlador1|reg_seg7|q\(9),
	combout => \controlador1|conv_HEX2|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X75_Y56_N8
\controlador1|conv_HEX2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(10) & (((\controlador1|reg_seg7|q\(8) & !\controlador1|reg_seg7|q\(9))) # (!\controlador1|reg_seg7|q\(11)))) # (!\controlador1|reg_seg7|q\(10) & 
-- ((\controlador1|reg_seg7|q\(11)) # ((\controlador1|reg_seg7|q\(8)) # (!\controlador1|reg_seg7|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(8),
	datad => \controlador1|reg_seg7|q\(9),
	combout => \controlador1|conv_HEX2|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X75_Y56_N6
\controlador1|conv_HEX2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(9) & ((\controlador1|reg_seg7|q\(10) & ((\controlador1|reg_seg7|q\(8)))) # (!\controlador1|reg_seg7|q\(10) & (\controlador1|reg_seg7|q\(11) & 
-- !\controlador1|reg_seg7|q\(8))))) # (!\controlador1|reg_seg7|q\(9) & (!\controlador1|reg_seg7|q\(11) & (\controlador1|reg_seg7|q\(10) $ (\controlador1|reg_seg7|q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(8),
	datad => \controlador1|reg_seg7|q\(9),
	combout => \controlador1|conv_HEX2|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X75_Y56_N28
\controlador1|conv_HEX2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(9) & (((!\controlador1|reg_seg7|q\(11) & \controlador1|reg_seg7|q\(8))))) # (!\controlador1|reg_seg7|q\(9) & ((\controlador1|reg_seg7|q\(10) & 
-- (!\controlador1|reg_seg7|q\(11))) # (!\controlador1|reg_seg7|q\(10) & ((\controlador1|reg_seg7|q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(8),
	datad => \controlador1|reg_seg7|q\(9),
	combout => \controlador1|conv_HEX2|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X75_Y56_N10
\controlador1|conv_HEX2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(10) & (\controlador1|reg_seg7|q\(8) & (\controlador1|reg_seg7|q\(11) $ (\controlador1|reg_seg7|q\(9))))) # (!\controlador1|reg_seg7|q\(10) & (!\controlador1|reg_seg7|q\(11) & 
-- ((\controlador1|reg_seg7|q\(8)) # (\controlador1|reg_seg7|q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(8),
	datad => \controlador1|reg_seg7|q\(9),
	combout => \controlador1|conv_HEX2|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X75_Y56_N4
\controlador1|conv_HEX2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX2|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(8) & (!\controlador1|reg_seg7|q\(11) & (\controlador1|reg_seg7|q\(10) $ (!\controlador1|reg_seg7|q\(9))))) # (!\controlador1|reg_seg7|q\(8) & (!\controlador1|reg_seg7|q\(9) & 
-- (\controlador1|reg_seg7|q\(10) $ (!\controlador1|reg_seg7|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(10),
	datab => \controlador1|reg_seg7|q\(11),
	datac => \controlador1|reg_seg7|q\(8),
	datad => \controlador1|reg_seg7|q\(9),
	combout => \controlador1|conv_HEX2|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X80_Y59_N6
\controlador1|reg_seg7|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[15]~feeder_combout\ = \regs|saidaB[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[15]~15_combout\,
	combout => \controlador1|reg_seg7|q[15]~feeder_combout\);

-- Location: FF_X80_Y59_N7
\controlador1|reg_seg7|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[15]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(15));

-- Location: LCCOMB_X80_Y59_N14
\controlador1|reg_seg7|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[13]~feeder_combout\ = \regs|saidaB[13]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[13]~11_combout\,
	combout => \controlador1|reg_seg7|q[13]~feeder_combout\);

-- Location: FF_X80_Y59_N15
\controlador1|reg_seg7|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[13]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(13));

-- Location: LCCOMB_X80_Y59_N8
\controlador1|reg_seg7|q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[12]~feeder_combout\ = \regs|saidaB[12]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[12]~9_combout\,
	combout => \controlador1|reg_seg7|q[12]~feeder_combout\);

-- Location: FF_X80_Y59_N9
\controlador1|reg_seg7|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[12]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(12));

-- Location: LCCOMB_X80_Y59_N28
\controlador1|reg_seg7|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[14]~feeder_combout\ = \regs|saidaB[14]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[14]~13_combout\,
	combout => \controlador1|reg_seg7|q[14]~feeder_combout\);

-- Location: FF_X80_Y59_N29
\controlador1|reg_seg7|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[14]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(14));

-- Location: LCCOMB_X80_Y59_N16
\controlador1|conv_HEX3|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(15) & (\controlador1|reg_seg7|q\(12) & (\controlador1|reg_seg7|q\(13) $ (\controlador1|reg_seg7|q\(14))))) # (!\controlador1|reg_seg7|q\(15) & (!\controlador1|reg_seg7|q\(13) 
-- & (\controlador1|reg_seg7|q\(12) $ (\controlador1|reg_seg7|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(15),
	datab => \controlador1|reg_seg7|q\(13),
	datac => \controlador1|reg_seg7|q\(12),
	datad => \controlador1|reg_seg7|q\(14),
	combout => \controlador1|conv_HEX3|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X81_Y59_N0
\controlador1|conv_HEX3|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(15) & ((\controlador1|reg_seg7|q\(12) & ((\controlador1|reg_seg7|q\(13)))) # (!\controlador1|reg_seg7|q\(12) & (\controlador1|reg_seg7|q\(14))))) # 
-- (!\controlador1|reg_seg7|q\(15) & (\controlador1|reg_seg7|q\(14) & (\controlador1|reg_seg7|q\(12) $ (\controlador1|reg_seg7|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(12),
	datab => \controlador1|reg_seg7|q\(14),
	datac => \controlador1|reg_seg7|q\(15),
	datad => \controlador1|reg_seg7|q\(13),
	combout => \controlador1|conv_HEX3|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X81_Y59_N10
\controlador1|conv_HEX3|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(14) & (((\controlador1|reg_seg7|q\(12) & !\controlador1|reg_seg7|q\(13))) # (!\controlador1|reg_seg7|q\(15)))) # (!\controlador1|reg_seg7|q\(14) & 
-- ((\controlador1|reg_seg7|q\(12)) # ((\controlador1|reg_seg7|q\(15)) # (!\controlador1|reg_seg7|q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(12),
	datab => \controlador1|reg_seg7|q\(14),
	datac => \controlador1|reg_seg7|q\(15),
	datad => \controlador1|reg_seg7|q\(13),
	combout => \controlador1|conv_HEX3|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X81_Y59_N8
\controlador1|conv_HEX3|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(13) & ((\controlador1|reg_seg7|q\(12) & (\controlador1|reg_seg7|q\(14))) # (!\controlador1|reg_seg7|q\(12) & (!\controlador1|reg_seg7|q\(14) & 
-- \controlador1|reg_seg7|q\(15))))) # (!\controlador1|reg_seg7|q\(13) & (!\controlador1|reg_seg7|q\(15) & (\controlador1|reg_seg7|q\(12) $ (\controlador1|reg_seg7|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(12),
	datab => \controlador1|reg_seg7|q\(14),
	datac => \controlador1|reg_seg7|q\(15),
	datad => \controlador1|reg_seg7|q\(13),
	combout => \controlador1|conv_HEX3|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X81_Y59_N18
\controlador1|conv_HEX3|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(13) & (\controlador1|reg_seg7|q\(12) & ((!\controlador1|reg_seg7|q\(15))))) # (!\controlador1|reg_seg7|q\(13) & ((\controlador1|reg_seg7|q\(14) & 
-- ((!\controlador1|reg_seg7|q\(15)))) # (!\controlador1|reg_seg7|q\(14) & (\controlador1|reg_seg7|q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(12),
	datab => \controlador1|reg_seg7|q\(14),
	datac => \controlador1|reg_seg7|q\(15),
	datad => \controlador1|reg_seg7|q\(13),
	combout => \controlador1|conv_HEX3|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X81_Y59_N4
\controlador1|conv_HEX3|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(12) & (\controlador1|reg_seg7|q\(15) $ (((\controlador1|reg_seg7|q\(13)) # (!\controlador1|reg_seg7|q\(14)))))) # (!\controlador1|reg_seg7|q\(12) & 
-- (!\controlador1|reg_seg7|q\(14) & (!\controlador1|reg_seg7|q\(15) & \controlador1|reg_seg7|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(12),
	datab => \controlador1|reg_seg7|q\(14),
	datac => \controlador1|reg_seg7|q\(15),
	datad => \controlador1|reg_seg7|q\(13),
	combout => \controlador1|conv_HEX3|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X80_Y59_N22
\controlador1|conv_HEX3|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX3|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(12) & (!\controlador1|reg_seg7|q\(15) & (\controlador1|reg_seg7|q\(13) $ (!\controlador1|reg_seg7|q\(14))))) # (!\controlador1|reg_seg7|q\(12) & 
-- (!\controlador1|reg_seg7|q\(13) & (\controlador1|reg_seg7|q\(15) $ (!\controlador1|reg_seg7|q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(15),
	datab => \controlador1|reg_seg7|q\(13),
	datac => \controlador1|reg_seg7|q\(12),
	datad => \controlador1|reg_seg7|q\(14),
	combout => \controlador1|conv_HEX3|rascSaida7seg[6]~6_combout\);

-- Location: FF_X75_Y57_N27
\controlador1|reg_seg7|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[16]~17_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(16));

-- Location: LCCOMB_X75_Y57_N28
\controlador1|reg_seg7|q[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[18]~feeder_combout\ = \regs|saidaB[18]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[18]~21_combout\,
	combout => \controlador1|reg_seg7|q[18]~feeder_combout\);

-- Location: FF_X75_Y57_N29
\controlador1|reg_seg7|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[18]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(18));

-- Location: FF_X75_Y57_N5
\controlador1|reg_seg7|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[19]~23_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(19));

-- Location: FF_X75_Y59_N23
\controlador1|reg_seg7|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[17]~19_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(17));

-- Location: LCCOMB_X75_Y57_N14
\controlador1|conv_HEX4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(18) & (!\controlador1|reg_seg7|q\(17) & (\controlador1|reg_seg7|q\(16) $ (!\controlador1|reg_seg7|q\(19))))) # (!\controlador1|reg_seg7|q\(18) & 
-- (\controlador1|reg_seg7|q\(16) & (\controlador1|reg_seg7|q\(19) $ (!\controlador1|reg_seg7|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(16),
	datab => \controlador1|reg_seg7|q\(18),
	datac => \controlador1|reg_seg7|q\(19),
	datad => \controlador1|reg_seg7|q\(17),
	combout => \controlador1|conv_HEX4|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X75_Y57_N12
\controlador1|conv_HEX4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(19) & ((\controlador1|reg_seg7|q\(16) & ((\controlador1|reg_seg7|q\(17)))) # (!\controlador1|reg_seg7|q\(16) & (\controlador1|reg_seg7|q\(18))))) # 
-- (!\controlador1|reg_seg7|q\(19) & (\controlador1|reg_seg7|q\(18) & (\controlador1|reg_seg7|q\(16) $ (\controlador1|reg_seg7|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(16),
	datab => \controlador1|reg_seg7|q\(18),
	datac => \controlador1|reg_seg7|q\(19),
	datad => \controlador1|reg_seg7|q\(17),
	combout => \controlador1|conv_HEX4|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X75_Y57_N10
\controlador1|conv_HEX4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(18) & (((\controlador1|reg_seg7|q\(16) & !\controlador1|reg_seg7|q\(17))) # (!\controlador1|reg_seg7|q\(19)))) # (!\controlador1|reg_seg7|q\(18) & 
-- ((\controlador1|reg_seg7|q\(16)) # ((\controlador1|reg_seg7|q\(19)) # (!\controlador1|reg_seg7|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(16),
	datab => \controlador1|reg_seg7|q\(18),
	datac => \controlador1|reg_seg7|q\(19),
	datad => \controlador1|reg_seg7|q\(17),
	combout => \controlador1|conv_HEX4|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X75_Y57_N0
\controlador1|conv_HEX4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(17) & ((\controlador1|reg_seg7|q\(16) & (\controlador1|reg_seg7|q\(18))) # (!\controlador1|reg_seg7|q\(16) & (!\controlador1|reg_seg7|q\(18) & 
-- \controlador1|reg_seg7|q\(19))))) # (!\controlador1|reg_seg7|q\(17) & (!\controlador1|reg_seg7|q\(19) & (\controlador1|reg_seg7|q\(16) $ (\controlador1|reg_seg7|q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(16),
	datab => \controlador1|reg_seg7|q\(18),
	datac => \controlador1|reg_seg7|q\(19),
	datad => \controlador1|reg_seg7|q\(17),
	combout => \controlador1|conv_HEX4|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X75_Y57_N30
\controlador1|conv_HEX4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(17) & (\controlador1|reg_seg7|q\(16) & ((!\controlador1|reg_seg7|q\(19))))) # (!\controlador1|reg_seg7|q\(17) & ((\controlador1|reg_seg7|q\(18) & 
-- ((!\controlador1|reg_seg7|q\(19)))) # (!\controlador1|reg_seg7|q\(18) & (\controlador1|reg_seg7|q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(16),
	datab => \controlador1|reg_seg7|q\(18),
	datac => \controlador1|reg_seg7|q\(19),
	datad => \controlador1|reg_seg7|q\(17),
	combout => \controlador1|conv_HEX4|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X75_Y57_N26
\controlador1|conv_HEX4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(18) & (\controlador1|reg_seg7|q\(16) & (\controlador1|reg_seg7|q\(19) $ (\controlador1|reg_seg7|q\(17))))) # (!\controlador1|reg_seg7|q\(18) & (!\controlador1|reg_seg7|q\(19) 
-- & ((\controlador1|reg_seg7|q\(16)) # (\controlador1|reg_seg7|q\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(18),
	datab => \controlador1|reg_seg7|q\(19),
	datac => \controlador1|reg_seg7|q\(16),
	datad => \controlador1|reg_seg7|q\(17),
	combout => \controlador1|conv_HEX4|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X75_Y57_N4
\controlador1|conv_HEX4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX4|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(16) & (!\controlador1|reg_seg7|q\(19) & (\controlador1|reg_seg7|q\(18) $ (!\controlador1|reg_seg7|q\(17))))) # (!\controlador1|reg_seg7|q\(16) & 
-- (!\controlador1|reg_seg7|q\(17) & (\controlador1|reg_seg7|q\(18) $ (!\controlador1|reg_seg7|q\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(16),
	datab => \controlador1|reg_seg7|q\(18),
	datac => \controlador1|reg_seg7|q\(19),
	datad => \controlador1|reg_seg7|q\(17),
	combout => \controlador1|conv_HEX4|rascSaida7seg[6]~6_combout\);

-- Location: FF_X74_Y57_N23
\controlador1|reg_seg7|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[23]~31_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(23));

-- Location: FF_X74_Y57_N1
\controlador1|reg_seg7|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[22]~29_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(22));

-- Location: FF_X74_Y57_N27
\controlador1|reg_seg7|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[21]~27_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(21));

-- Location: FF_X74_Y57_N29
\controlador1|reg_seg7|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[20]~25_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(20));

-- Location: LCCOMB_X74_Y57_N16
\controlador1|conv_HEX5|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(23) & (\controlador1|reg_seg7|q\(20) & (\controlador1|reg_seg7|q\(22) $ (\controlador1|reg_seg7|q\(21))))) # (!\controlador1|reg_seg7|q\(23) & (!\controlador1|reg_seg7|q\(21) 
-- & (\controlador1|reg_seg7|q\(22) $ (\controlador1|reg_seg7|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(23),
	datab => \controlador1|reg_seg7|q\(22),
	datac => \controlador1|reg_seg7|q\(21),
	datad => \controlador1|reg_seg7|q\(20),
	combout => \controlador1|conv_HEX5|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X74_Y57_N30
\controlador1|conv_HEX5|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(23) & ((\controlador1|reg_seg7|q\(20) & ((\controlador1|reg_seg7|q\(21)))) # (!\controlador1|reg_seg7|q\(20) & (\controlador1|reg_seg7|q\(22))))) # 
-- (!\controlador1|reg_seg7|q\(23) & (\controlador1|reg_seg7|q\(22) & (\controlador1|reg_seg7|q\(21) $ (\controlador1|reg_seg7|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(23),
	datab => \controlador1|reg_seg7|q\(22),
	datac => \controlador1|reg_seg7|q\(21),
	datad => \controlador1|reg_seg7|q\(20),
	combout => \controlador1|conv_HEX5|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X74_Y57_N20
\controlador1|conv_HEX5|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(23) & (((!\controlador1|reg_seg7|q\(21) & \controlador1|reg_seg7|q\(20))) # (!\controlador1|reg_seg7|q\(22)))) # (!\controlador1|reg_seg7|q\(23) & 
-- ((\controlador1|reg_seg7|q\(22)) # ((\controlador1|reg_seg7|q\(20)) # (!\controlador1|reg_seg7|q\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(23),
	datab => \controlador1|reg_seg7|q\(22),
	datac => \controlador1|reg_seg7|q\(21),
	datad => \controlador1|reg_seg7|q\(20),
	combout => \controlador1|conv_HEX5|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X74_Y57_N0
\controlador1|conv_HEX5|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(21) & ((\controlador1|reg_seg7|q\(22) & ((\controlador1|reg_seg7|q\(20)))) # (!\controlador1|reg_seg7|q\(22) & (\controlador1|reg_seg7|q\(23) & 
-- !\controlador1|reg_seg7|q\(20))))) # (!\controlador1|reg_seg7|q\(21) & (!\controlador1|reg_seg7|q\(23) & (\controlador1|reg_seg7|q\(22) $ (\controlador1|reg_seg7|q\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(23),
	datab => \controlador1|reg_seg7|q\(21),
	datac => \controlador1|reg_seg7|q\(22),
	datad => \controlador1|reg_seg7|q\(20),
	combout => \controlador1|conv_HEX5|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X74_Y57_N26
\controlador1|conv_HEX5|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(21) & (!\controlador1|reg_seg7|q\(23) & ((\controlador1|reg_seg7|q\(20))))) # (!\controlador1|reg_seg7|q\(21) & ((\controlador1|reg_seg7|q\(22) & 
-- (!\controlador1|reg_seg7|q\(23))) # (!\controlador1|reg_seg7|q\(22) & ((\controlador1|reg_seg7|q\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(23),
	datab => \controlador1|reg_seg7|q\(22),
	datac => \controlador1|reg_seg7|q\(21),
	datad => \controlador1|reg_seg7|q\(20),
	combout => \controlador1|conv_HEX5|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X74_Y57_N28
\controlador1|conv_HEX5|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(21) & (!\controlador1|reg_seg7|q\(23) & ((\controlador1|reg_seg7|q\(20)) # (!\controlador1|reg_seg7|q\(22))))) # (!\controlador1|reg_seg7|q\(21) & 
-- (\controlador1|reg_seg7|q\(20) & (\controlador1|reg_seg7|q\(23) $ (!\controlador1|reg_seg7|q\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(23),
	datab => \controlador1|reg_seg7|q\(21),
	datac => \controlador1|reg_seg7|q\(20),
	datad => \controlador1|reg_seg7|q\(22),
	combout => \controlador1|conv_HEX5|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X74_Y57_N22
\controlador1|conv_HEX5|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX5|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(20) & (!\controlador1|reg_seg7|q\(23) & (\controlador1|reg_seg7|q\(21) $ (!\controlador1|reg_seg7|q\(22))))) # (!\controlador1|reg_seg7|q\(20) & 
-- (!\controlador1|reg_seg7|q\(21) & (\controlador1|reg_seg7|q\(22) $ (!\controlador1|reg_seg7|q\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(21),
	datab => \controlador1|reg_seg7|q\(22),
	datac => \controlador1|reg_seg7|q\(23),
	datad => \controlador1|reg_seg7|q\(20),
	combout => \controlador1|conv_HEX5|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X76_Y56_N6
\controlador1|reg_seg7|q[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[25]~feeder_combout\ = \regs|saidaB[25]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[25]~35_combout\,
	combout => \controlador1|reg_seg7|q[25]~feeder_combout\);

-- Location: FF_X76_Y56_N7
\controlador1|reg_seg7|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[25]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(25));

-- Location: FF_X76_Y59_N13
\controlador1|reg_seg7|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[24]~33_combout\,
	sload => VCC,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(24));

-- Location: LCCOMB_X76_Y56_N8
\controlador1|reg_seg7|q[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[27]~feeder_combout\ = \regs|saidaB[27]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[27]~55_combout\,
	combout => \controlador1|reg_seg7|q[27]~feeder_combout\);

-- Location: FF_X76_Y56_N9
\controlador1|reg_seg7|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[27]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(27));

-- Location: LCCOMB_X76_Y56_N16
\controlador1|reg_seg7|q[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[26]~feeder_combout\ = \regs|saidaB[26]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[26]~53_combout\,
	combout => \controlador1|reg_seg7|q[26]~feeder_combout\);

-- Location: FF_X76_Y56_N17
\controlador1|reg_seg7|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[26]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(26));

-- Location: LCCOMB_X76_Y56_N10
\controlador1|conv_HEX6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(27) & (\controlador1|reg_seg7|q\(24) & (\controlador1|reg_seg7|q\(25) $ (\controlador1|reg_seg7|q\(26))))) # (!\controlador1|reg_seg7|q\(27) & (!\controlador1|reg_seg7|q\(25) 
-- & (\controlador1|reg_seg7|q\(24) $ (\controlador1|reg_seg7|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datab => \controlador1|reg_seg7|q\(24),
	datac => \controlador1|reg_seg7|q\(27),
	datad => \controlador1|reg_seg7|q\(26),
	combout => \controlador1|conv_HEX6|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X76_Y56_N28
\controlador1|conv_HEX6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(25) & ((\controlador1|reg_seg7|q\(24) & (\controlador1|reg_seg7|q\(27))) # (!\controlador1|reg_seg7|q\(24) & ((\controlador1|reg_seg7|q\(26)))))) # 
-- (!\controlador1|reg_seg7|q\(25) & (\controlador1|reg_seg7|q\(26) & (\controlador1|reg_seg7|q\(24) $ (\controlador1|reg_seg7|q\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datab => \controlador1|reg_seg7|q\(24),
	datac => \controlador1|reg_seg7|q\(27),
	datad => \controlador1|reg_seg7|q\(26),
	combout => \controlador1|conv_HEX6|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X76_Y56_N22
\controlador1|conv_HEX6|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(27) & (((!\controlador1|reg_seg7|q\(25) & \controlador1|reg_seg7|q\(24))) # (!\controlador1|reg_seg7|q\(26)))) # (!\controlador1|reg_seg7|q\(27) & 
-- (((\controlador1|reg_seg7|q\(24)) # (\controlador1|reg_seg7|q\(26))) # (!\controlador1|reg_seg7|q\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datab => \controlador1|reg_seg7|q\(24),
	datac => \controlador1|reg_seg7|q\(27),
	datad => \controlador1|reg_seg7|q\(26),
	combout => \controlador1|conv_HEX6|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X76_Y56_N0
\controlador1|conv_HEX6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(25) & ((\controlador1|reg_seg7|q\(24) & ((\controlador1|reg_seg7|q\(26)))) # (!\controlador1|reg_seg7|q\(24) & (\controlador1|reg_seg7|q\(27) & 
-- !\controlador1|reg_seg7|q\(26))))) # (!\controlador1|reg_seg7|q\(25) & (!\controlador1|reg_seg7|q\(27) & (\controlador1|reg_seg7|q\(24) $ (\controlador1|reg_seg7|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datab => \controlador1|reg_seg7|q\(24),
	datac => \controlador1|reg_seg7|q\(27),
	datad => \controlador1|reg_seg7|q\(26),
	combout => \controlador1|conv_HEX6|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X76_Y56_N26
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

-- Location: LCCOMB_X76_Y56_N20
\controlador1|conv_HEX6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(25) & (!\controlador1|reg_seg7|q\(27) & ((\controlador1|reg_seg7|q\(24)) # (!\controlador1|reg_seg7|q\(26))))) # (!\controlador1|reg_seg7|q\(25) & 
-- (\controlador1|reg_seg7|q\(24) & (\controlador1|reg_seg7|q\(27) $ (!\controlador1|reg_seg7|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datab => \controlador1|reg_seg7|q\(24),
	datac => \controlador1|reg_seg7|q\(27),
	datad => \controlador1|reg_seg7|q\(26),
	combout => \controlador1|conv_HEX6|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X76_Y56_N30
\controlador1|conv_HEX6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX6|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(24) & (!\controlador1|reg_seg7|q\(27) & (\controlador1|reg_seg7|q\(25) $ (!\controlador1|reg_seg7|q\(26))))) # (!\controlador1|reg_seg7|q\(24) & 
-- (!\controlador1|reg_seg7|q\(25) & (\controlador1|reg_seg7|q\(27) $ (!\controlador1|reg_seg7|q\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(25),
	datab => \controlador1|reg_seg7|q\(24),
	datac => \controlador1|reg_seg7|q\(27),
	datad => \controlador1|reg_seg7|q\(26),
	combout => \controlador1|conv_HEX6|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X76_Y57_N26
\controlador1|reg_seg7|q[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[31]~feeder_combout\ = \regs|saidaB[31]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[31]~63_combout\,
	combout => \controlador1|reg_seg7|q[31]~feeder_combout\);

-- Location: FF_X76_Y57_N27
\controlador1|reg_seg7|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[31]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(31));

-- Location: LCCOMB_X76_Y57_N18
\controlador1|reg_seg7|q[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[29]~feeder_combout\ = \regs|saidaB[29]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \regs|saidaB[29]~59_combout\,
	combout => \controlador1|reg_seg7|q[29]~feeder_combout\);

-- Location: FF_X76_Y57_N19
\controlador1|reg_seg7|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[29]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(29));

-- Location: LCCOMB_X76_Y57_N8
\controlador1|reg_seg7|q[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[28]~feeder_combout\ = \regs|saidaB[28]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[28]~61_combout\,
	combout => \controlador1|reg_seg7|q[28]~feeder_combout\);

-- Location: FF_X76_Y57_N9
\controlador1|reg_seg7|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[28]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(28));

-- Location: LCCOMB_X76_Y57_N28
\controlador1|reg_seg7|q[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|reg_seg7|q[30]~feeder_combout\ = \regs|saidaB[30]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \regs|saidaB[30]~57_combout\,
	combout => \controlador1|reg_seg7|q[30]~feeder_combout\);

-- Location: FF_X76_Y57_N29
\controlador1|reg_seg7|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \controlador1|reg_seg7|q[30]~feeder_combout\,
	ena => \controlador1|decodificador1|seg7~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlador1|reg_seg7|q\(30));

-- Location: LCCOMB_X76_Y57_N4
\controlador1|conv_HEX7|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[0]~0_combout\ = (\controlador1|reg_seg7|q\(31) & (\controlador1|reg_seg7|q\(28) & (\controlador1|reg_seg7|q\(29) $ (\controlador1|reg_seg7|q\(30))))) # (!\controlador1|reg_seg7|q\(31) & (!\controlador1|reg_seg7|q\(29) 
-- & (\controlador1|reg_seg7|q\(28) $ (\controlador1|reg_seg7|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(31),
	datab => \controlador1|reg_seg7|q\(29),
	datac => \controlador1|reg_seg7|q\(28),
	datad => \controlador1|reg_seg7|q\(30),
	combout => \controlador1|conv_HEX7|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X76_Y57_N6
\controlador1|conv_HEX7|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[1]~1_combout\ = (\controlador1|reg_seg7|q\(31) & ((\controlador1|reg_seg7|q\(28) & (\controlador1|reg_seg7|q\(29))) # (!\controlador1|reg_seg7|q\(28) & ((\controlador1|reg_seg7|q\(30)))))) # 
-- (!\controlador1|reg_seg7|q\(31) & (\controlador1|reg_seg7|q\(30) & (\controlador1|reg_seg7|q\(29) $ (\controlador1|reg_seg7|q\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(31),
	datab => \controlador1|reg_seg7|q\(29),
	datac => \controlador1|reg_seg7|q\(28),
	datad => \controlador1|reg_seg7|q\(30),
	combout => \controlador1|conv_HEX7|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X76_Y57_N0
\controlador1|conv_HEX7|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[2]~2_combout\ = (\controlador1|reg_seg7|q\(31) & (((!\controlador1|reg_seg7|q\(29) & \controlador1|reg_seg7|q\(28))) # (!\controlador1|reg_seg7|q\(30)))) # (!\controlador1|reg_seg7|q\(31) & 
-- (((\controlador1|reg_seg7|q\(28)) # (\controlador1|reg_seg7|q\(30))) # (!\controlador1|reg_seg7|q\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(31),
	datab => \controlador1|reg_seg7|q\(29),
	datac => \controlador1|reg_seg7|q\(28),
	datad => \controlador1|reg_seg7|q\(30),
	combout => \controlador1|conv_HEX7|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X76_Y57_N30
\controlador1|conv_HEX7|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[3]~3_combout\ = (\controlador1|reg_seg7|q\(29) & ((\controlador1|reg_seg7|q\(28) & ((\controlador1|reg_seg7|q\(30)))) # (!\controlador1|reg_seg7|q\(28) & (\controlador1|reg_seg7|q\(31) & 
-- !\controlador1|reg_seg7|q\(30))))) # (!\controlador1|reg_seg7|q\(29) & (!\controlador1|reg_seg7|q\(31) & (\controlador1|reg_seg7|q\(28) $ (\controlador1|reg_seg7|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(31),
	datab => \controlador1|reg_seg7|q\(29),
	datac => \controlador1|reg_seg7|q\(28),
	datad => \controlador1|reg_seg7|q\(30),
	combout => \controlador1|conv_HEX7|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X76_Y57_N16
\controlador1|conv_HEX7|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[4]~4_combout\ = (\controlador1|reg_seg7|q\(29) & (!\controlador1|reg_seg7|q\(31) & (\controlador1|reg_seg7|q\(28)))) # (!\controlador1|reg_seg7|q\(29) & ((\controlador1|reg_seg7|q\(30) & 
-- (!\controlador1|reg_seg7|q\(31))) # (!\controlador1|reg_seg7|q\(30) & ((\controlador1|reg_seg7|q\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(31),
	datab => \controlador1|reg_seg7|q\(29),
	datac => \controlador1|reg_seg7|q\(28),
	datad => \controlador1|reg_seg7|q\(30),
	combout => \controlador1|conv_HEX7|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X76_Y57_N22
\controlador1|conv_HEX7|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[5]~5_combout\ = (\controlador1|reg_seg7|q\(29) & (!\controlador1|reg_seg7|q\(31) & ((\controlador1|reg_seg7|q\(28)) # (!\controlador1|reg_seg7|q\(30))))) # (!\controlador1|reg_seg7|q\(29) & 
-- (\controlador1|reg_seg7|q\(28) & (\controlador1|reg_seg7|q\(31) $ (!\controlador1|reg_seg7|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(31),
	datab => \controlador1|reg_seg7|q\(29),
	datac => \controlador1|reg_seg7|q\(28),
	datad => \controlador1|reg_seg7|q\(30),
	combout => \controlador1|conv_HEX7|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X76_Y57_N24
\controlador1|conv_HEX7|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlador1|conv_HEX7|rascSaida7seg[6]~6_combout\ = (\controlador1|reg_seg7|q\(28) & (!\controlador1|reg_seg7|q\(31) & (\controlador1|reg_seg7|q\(29) $ (!\controlador1|reg_seg7|q\(30))))) # (!\controlador1|reg_seg7|q\(28) & 
-- (!\controlador1|reg_seg7|q\(29) & (\controlador1|reg_seg7|q\(31) $ (!\controlador1|reg_seg7|q\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlador1|reg_seg7|q\(31),
	datab => \controlador1|reg_seg7|q\(29),
	datac => \controlador1|reg_seg7|q\(28),
	datad => \controlador1|reg_seg7|q\(30),
	combout => \controlador1|conv_HEX7|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

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

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


