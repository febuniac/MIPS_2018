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

-- DATE "11/23/2018 20:20:57"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips_teste IS
    PORT (
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END mips_teste;

-- Design Ports Information
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
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor|tick~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \divisor|Add0~15\ : std_logic;
SIGNAL \divisor|Add0~16_combout\ : std_logic;
SIGNAL \divisor|Add0~17\ : std_logic;
SIGNAL \divisor|Add0~18_combout\ : std_logic;
SIGNAL \divisor|Add0~19\ : std_logic;
SIGNAL \divisor|Add0~20_combout\ : std_logic;
SIGNAL \divisor|Add0~21\ : std_logic;
SIGNAL \divisor|Add0~22_combout\ : std_logic;
SIGNAL \divisor|contador~2_combout\ : std_logic;
SIGNAL \divisor|Add0~23\ : std_logic;
SIGNAL \divisor|Add0~24_combout\ : std_logic;
SIGNAL \divisor|contador~3_combout\ : std_logic;
SIGNAL \divisor|Add0~25\ : std_logic;
SIGNAL \divisor|Add0~26_combout\ : std_logic;
SIGNAL \divisor|contador~4_combout\ : std_logic;
SIGNAL \divisor|Add0~27\ : std_logic;
SIGNAL \divisor|Add0~28_combout\ : std_logic;
SIGNAL \divisor|contador~5_combout\ : std_logic;
SIGNAL \divisor|Add0~29\ : std_logic;
SIGNAL \divisor|Add0~30_combout\ : std_logic;
SIGNAL \divisor|Add0~31\ : std_logic;
SIGNAL \divisor|Add0~32_combout\ : std_logic;
SIGNAL \divisor|contador~6_combout\ : std_logic;
SIGNAL \divisor|Add0~33\ : std_logic;
SIGNAL \divisor|Add0~34_combout\ : std_logic;
SIGNAL \divisor|Add0~35\ : std_logic;
SIGNAL \divisor|Add0~36_combout\ : std_logic;
SIGNAL \divisor|contador~7_combout\ : std_logic;
SIGNAL \divisor|Add0~37\ : std_logic;
SIGNAL \divisor|Add0~38_combout\ : std_logic;
SIGNAL \divisor|contador~8_combout\ : std_logic;
SIGNAL \divisor|Add0~39\ : std_logic;
SIGNAL \divisor|Add0~40_combout\ : std_logic;
SIGNAL \divisor|contador~10_combout\ : std_logic;
SIGNAL \divisor|Add0~41\ : std_logic;
SIGNAL \divisor|Add0~42_combout\ : std_logic;
SIGNAL \divisor|contador~11_combout\ : std_logic;
SIGNAL \divisor|Add0~43\ : std_logic;
SIGNAL \divisor|Add0~44_combout\ : std_logic;
SIGNAL \divisor|contador~12_combout\ : std_logic;
SIGNAL \divisor|Add0~45\ : std_logic;
SIGNAL \divisor|Add0~46_combout\ : std_logic;
SIGNAL \divisor|Add0~47\ : std_logic;
SIGNAL \divisor|Add0~48_combout\ : std_logic;
SIGNAL \divisor|contador~9_combout\ : std_logic;
SIGNAL \divisor|Equal0~6_combout\ : std_logic;
SIGNAL \divisor|Equal0~5_combout\ : std_logic;
SIGNAL \divisor|Equal0~1_combout\ : std_logic;
SIGNAL \divisor|Equal0~3_combout\ : std_logic;
SIGNAL \divisor|Equal0~0_combout\ : std_logic;
SIGNAL \divisor|Equal0~2_combout\ : std_logic;
SIGNAL \divisor|Equal0~4_combout\ : std_logic;
SIGNAL \divisor|Equal0~7_combout\ : std_logic;
SIGNAL \divisor|tick~0_combout\ : std_logic;
SIGNAL \divisor|tick~feeder_combout\ : std_logic;
SIGNAL \divisor|tick~q\ : std_logic;
SIGNAL \divisor|tick~clkctrl_outclk\ : std_logic;
SIGNAL \somador1|Y[6]~9\ : std_logic;
SIGNAL \somador1|Y[7]~10_combout\ : std_logic;
SIGNAL \somador1|Y[2]~0_combout\ : std_logic;
SIGNAL \IF_ID|q[0]~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \IF_ID|q[0]~_Duplicate_2_q\ : std_logic;
SIGNAL \EX_MEM|q[72]~8_combout\ : std_logic;
SIGNAL \PC|q[2]~0_combout\ : std_logic;
SIGNAL \somador1|Y[2]~1\ : std_logic;
SIGNAL \somador1|Y[3]~2_combout\ : std_logic;
SIGNAL \memoriaInst|rom~3_combout\ : std_logic;
SIGNAL \memoriaInst|rom~4_combout\ : std_logic;
SIGNAL \IF_ID|q[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \EX_MEM|q[72]~9\ : std_logic;
SIGNAL \EX_MEM|q[73]~10_combout\ : std_logic;
SIGNAL \PC|q[3]~1_combout\ : std_logic;
SIGNAL \memoriaInst|rom~8_combout\ : std_logic;
SIGNAL \memoriaInst|rom~9_combout\ : std_logic;
SIGNAL \memoriaInst|rom~10_combout\ : std_logic;
SIGNAL \IF_ID|q[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \ID_EX|q[113]~feeder_combout\ : std_logic;
SIGNAL \memoriaInst|rom~6_combout\ : std_logic;
SIGNAL \somador1|Y[7]~11\ : std_logic;
SIGNAL \somador1|Y[8]~12_combout\ : std_logic;
SIGNAL \ID_EX|q[114]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[77]~19\ : std_logic;
SIGNAL \EX_MEM|q[78]~20_combout\ : std_logic;
SIGNAL \mux_PC|Y[8]~2_combout\ : std_logic;
SIGNAL \somador1|Y[8]~13\ : std_logic;
SIGNAL \somador1|Y[9]~14_combout\ : std_logic;
SIGNAL \ID_EX|q[115]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[78]~21\ : std_logic;
SIGNAL \EX_MEM|q[79]~22_combout\ : std_logic;
SIGNAL \mux_PC|Y[9]~3_combout\ : std_logic;
SIGNAL \memoriaInst|rom~5_combout\ : std_logic;
SIGNAL \memoriaInst|rom~7_combout\ : std_logic;
SIGNAL \IF_ID|q[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \somador1|Y[3]~3\ : std_logic;
SIGNAL \somador1|Y[4]~4_combout\ : std_logic;
SIGNAL \ID_EX|q[110]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[73]~11\ : std_logic;
SIGNAL \EX_MEM|q[74]~13\ : std_logic;
SIGNAL \EX_MEM|q[75]~15\ : std_logic;
SIGNAL \EX_MEM|q[76]~17\ : std_logic;
SIGNAL \EX_MEM|q[77]~18_combout\ : std_logic;
SIGNAL \PC|q[7]~3_combout\ : std_logic;
SIGNAL \memoriaInst|rom~1_combout\ : std_logic;
SIGNAL \memoriaInst|rom~18_combout\ : std_logic;
SIGNAL \memoriaInst|rom~19_combout\ : std_logic;
SIGNAL \IF_ID|q[31]~_Duplicate_1_q\ : std_logic;
SIGNAL \memoriaInst|rom~11_combout\ : std_logic;
SIGNAL \memoriaInst|rom~12_combout\ : std_logic;
SIGNAL \IF_ID|q[26]~_Duplicate_1_q\ : std_logic;
SIGNAL \memoriaInst|rom~16_combout\ : std_logic;
SIGNAL \memoriaInst|rom~15_combout\ : std_logic;
SIGNAL \memoriaInst|rom~17_combout\ : std_logic;
SIGNAL \IF_ID|q[29]~_Duplicate_1_q\ : std_logic;
SIGNAL \fd_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~13_combout\ : std_logic;
SIGNAL \memoriaInst|rom~14_combout\ : std_logic;
SIGNAL \IF_ID|q[27]~_Duplicate_1_q\ : std_logic;
SIGNAL \fd_ctrl|Equal0~1_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal9~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal7~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal7~1_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[11]~15_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[10]~14_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~8_combout\ : std_logic;
SIGNAL \ula_ctrl|Equal6~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal5~0_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[2]~13_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[1]~12_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~6_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~9_combout\ : std_logic;
SIGNAL \ula_ctrl|Equal4~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~7_combout\ : std_logic;
SIGNAL \ula_ctrl|Equal7~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~4_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~2_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~3_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~1_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~5_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~10_combout\ : std_logic;
SIGNAL \memoriaInst|rom~25_combout\ : std_logic;
SIGNAL \IF_ID|q[23]~feeder_combout\ : std_logic;
SIGNAL \memoriaInst|rom~22_combout\ : std_logic;
SIGNAL \memoriaInst|rom~23_combout\ : std_logic;
SIGNAL \memoriaInst|rom~24_combout\ : std_logic;
SIGNAL \IF_ID|q[22]~feeder_combout\ : std_logic;
SIGNAL \memoriaInst|rom~20_combout\ : std_logic;
SIGNAL \memoriaInst|rom~21_combout\ : std_logic;
SIGNAL \memoriaInst|rom~26_combout\ : std_logic;
SIGNAL \regs|Equal0~0_combout\ : std_logic;
SIGNAL \fd_ctrl|op_code_aux~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~27_combout\ : std_logic;
SIGNAL \memoriaInst|rom~28_combout\ : std_logic;
SIGNAL \memoriaInst|rom~29_combout\ : std_logic;
SIGNAL \ID_EX|q[6]~feeder_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[3]~3_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[2]~2_combout\ : std_logic;
SIGNAL \MEM_WB|q[2]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador~39_combout\ : std_logic;
SIGNAL \fd_ctrl|saida_fluxo[8]~16_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \EX_MEM|q[106]~feeder_combout\ : std_logic;
SIGNAL \MEM_WB|q[70]~feeder_combout\ : std_logic;
SIGNAL \ID_EX|q[5]~feeder_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[0]~0_combout\ : std_logic;
SIGNAL \MEM_WB|q[0]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \mux_RtRd|Y[1]~1_combout\ : std_logic;
SIGNAL \MEM_WB|q[1]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador~38_combout\ : std_logic;
SIGNAL \regs|registrador~40_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal4~0_combout\ : std_logic;
SIGNAL \EX_MEM|q[102]~feeder_combout\ : std_logic;
SIGNAL \regs|Equal1~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal1~1_combout\ : std_logic;
SIGNAL \EX_MEM|q[105]~feeder_combout\ : std_logic;
SIGNAL \MEM_WB|q[69]~feeder_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[1]~11_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[2]~13_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[2]~12_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[0]~2_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[0]~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[2]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador~42_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador~41_combout\ : std_logic;
SIGNAL \regs|registrador~43_combout\ : std_logic;
SIGNAL \EX_MEM|q[41]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[9]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[6]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \regs|saidaA[31]~4_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \regs|saidaB[31]~4_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[31]~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux0~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \regs|saidaB[30]~5_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[30]~4_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[29]~5_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \regs|saidaA[29]~6_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \regs|saidaA[28]~7_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \regs|saidaB[28]~7_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[28]~6_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \regs|saidaB[27]~8_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[27]~7_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \regs|saidaB[26]~9_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[26]~8_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \regs|saidaB[25]~10_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[25]~9_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \regs|saidaB[24]~11_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[24]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \regs|saidaB[23]~12_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[23]~11_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \regs|saidaB[22]~13_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[22]~12_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[21]~14_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[21]~13_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \regs|saidaB[20]~15_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[20]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[19]~16_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[19]~15_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[18]~17_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[18]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \regs|saidaB[17]~18_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[17]~17_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[16]~19_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[16]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \regs|saidaB[15]~20_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[15]~19_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \regs|saidaB[14]~21_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[14]~20_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \regs|saidaB[13]~22_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[13]~21_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[12]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \regs|saidaB[12]~23_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[12]~22_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \regs|registrador_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaB[11]~24_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[11]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[11]~24_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \regs|saidaB[10]~25_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[10]~24_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \regs|saidaB[9]~26_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[9]~25_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \regs|saidaA[9]~26_combout\ : std_logic;
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
SIGNAL \ula|mux4|Mux0~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[76]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[13]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[14]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[18]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[19]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[23]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[26]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[27]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[28]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[29]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[31]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[32]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[33]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[35]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[36]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[75]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~47_combout\ : std_logic;
SIGNAL \mux_ULA|Y[31]~4_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \regs|saidaA[30]~5_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~1_combout\ : std_logic;
SIGNAL \MEM_WB|q[35]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \memoriaDados|ram~48_combout\ : std_logic;
SIGNAL \mux_ULA|Y[30]~5_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \regs|saidaB[29]~6_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~49_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[29]~6_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \regs|saidaB[7]~28_combout\ : std_logic;
SIGNAL \EX_MEM|q[12]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~50_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[28]~7_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[27]~8_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[67]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~51_combout\ : std_logic;
SIGNAL \mux_ULA|Y[27]~8_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[26]~9_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \memoriaDados|ram~52_combout\ : std_logic;
SIGNAL \mux_ULA|Y[26]~9_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \regs|saidaA[25]~10_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[63]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~53_combout\ : std_logic;
SIGNAL \mux_ULA|Y[25]~10_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \regs|saidaA[24]~11_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[61]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~54_combout\ : std_logic;
SIGNAL \mux_ULA|Y[24]~11_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \regs|saidaA[23]~12_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~55_combout\ : std_logic;
SIGNAL \mux_ULA|Y[23]~12_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \regs|saidaA[22]~13_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[57]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~56_combout\ : std_logic;
SIGNAL \mux_ULA|Y[22]~13_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[21]~14_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~57_combout\ : std_logic;
SIGNAL \mux_ULA|Y[21]~14_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[31]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[20]~15_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \memoriaDados|ram~58_combout\ : std_logic;
SIGNAL \mux_ULA|Y[20]~15_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \regs|saidaA[19]~16_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[51]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~59_combout\ : std_logic;
SIGNAL \mux_ULA|Y[19]~16_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[18]~17_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[49]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~60_combout\ : std_logic;
SIGNAL \mux_ULA|Y[18]~17_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \regs|saidaA[17]~18_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[47]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~61_combout\ : std_logic;
SIGNAL \mux_ULA|Y[17]~18_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \regs|saidaA[16]~19_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[45]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \memoriaDados|ram~62_combout\ : std_logic;
SIGNAL \mux_ULA|Y[16]~19_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \regs|saidaA[14]~21_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \memoriaDados|ram~64_combout\ : std_logic;
SIGNAL \mux_ULA|Y[14]~21_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \regs|saidaA[13]~22_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~65_combout\ : std_logic;
SIGNAL \mux_ULA|Y[13]~22_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \regs|saidaB[6]~29_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \memoriaDados|ram~66_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~1_combout\ : std_logic;
SIGNAL \MEM_WB|q[17]~feeder_combout\ : std_logic;
SIGNAL \mux_ULA|Y[12]~23_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \regs|saidaB[5]~30_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \memoriaDados|ram~67_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~1_combout\ : std_logic;
SIGNAL \mux_ULA|Y[11]~24_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \regs|saidaA[10]~25_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~1_combout\ : std_logic;
SIGNAL \MEM_WB|q[15]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \memoriaDados|ram~68_combout\ : std_logic;
SIGNAL \mux_ULA|Y[10]~25_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \regs|saidaB[8]~27_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[8]~26_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[7]~27_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[6]~28_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[5]~29_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \regs|saidaA[4]~31_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[3]~3_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[2]~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \regs|registrador_rtl_0_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \regs|saidaA[2]~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[2]~2_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[3]~3_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[4]~4_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[5]~5_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[6]~6_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[7]~7_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \regs|saidaA[8]~27_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[8]~8_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~1_combout\ : std_logic;
SIGNAL \MEM_WB|q[14]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~69_combout\ : std_logic;
SIGNAL \mux_ULA|Y[9]~26_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \regs|saidaB[3]~3_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~70_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~1_combout\ : std_logic;
SIGNAL \MEM_WB|q[13]~feeder_combout\ : std_logic;
SIGNAL \mux_ULA|Y[8]~27_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \regs|saidaA[7]~28_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~1_combout\ : std_logic;
SIGNAL \EX_MEM|q[44]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \memoriaDados|ram~71_combout\ : std_logic;
SIGNAL \mux_ULA|Y[7]~28_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \regs|saidaA[6]~29_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~1_combout\ : std_logic;
SIGNAL \EX_MEM|q[43]~feeder_combout\ : std_logic;
SIGNAL \MEM_WB|q[11]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \memoriaDados|ram~72_combout\ : std_logic;
SIGNAL \mux_ULA|Y[6]~29_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \regs|saidaA[5]~30_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~1_combout\ : std_logic;
SIGNAL \EX_MEM|q[42]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~73_combout\ : std_logic;
SIGNAL \mux_ULA|Y[5]~30_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \regs|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~1_combout\ : std_logic;
SIGNAL \EX_MEM|q[40]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~44_combout\ : std_logic;
SIGNAL \MEM_WB|q[8]~feeder_combout\ : std_logic;
SIGNAL \mux_ULA|Y[3]~1_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \regs|saidaB[2]~0_combout\ : std_logic;
SIGNAL \EX_MEM|q[7]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \memoriaDados|ram~46_combout\ : std_logic;
SIGNAL \mux_ULA|Y[2]~3_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \regs|saidaB[1]~1_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[1]~1_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \regs|saidaA[1]~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[0]~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[1]~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~1_combout\ : std_logic;
SIGNAL \EX_MEM|q[39]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \memoriaDados|ram~74_combout\ : std_logic;
SIGNAL \mux_ULA|Y[4]~31_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \regs|saidaB[4]~31_combout\ : std_logic;
SIGNAL \mux_Rt_im|Y[4]~30_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[6]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~40_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[2]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~39_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~41_combout\ : std_logic;
SIGNAL \memoriaDados|ram~42_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~43_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~1_combout\ : std_logic;
SIGNAL \EX_MEM|q[38]~feeder_combout\ : std_logic;
SIGNAL \MEM_WB|q[6]~feeder_combout\ : std_logic;
SIGNAL \mux_ULA|Y[1]~0_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|saidaA[0]~2_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~0_combout\ : std_logic;
SIGNAL \ula|full_adder|result[0]~0_combout\ : std_logic;
SIGNAL \ula|result_slt[0]~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~1_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[13]~0_combout\ : std_logic;
SIGNAL \memoriaDados|ram~45_combout\ : std_logic;
SIGNAL \MEM_WB|q[37]~feeder_combout\ : std_logic;
SIGNAL \mux_ULA|Y[0]~2_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \regs|saidaB[0]~2_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram_rtl_0_bypass[43]~feeder_combout\ : std_logic;
SIGNAL \memoriaDados|ram~63_combout\ : std_logic;
SIGNAL \MEM_WB|q[20]~feeder_combout\ : std_logic;
SIGNAL \mux_ULA|Y[15]~20_combout\ : std_logic;
SIGNAL \regs|registrador_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \regs|saidaA[15]~20_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~1_combout\ : std_logic;
SIGNAL \ula|zero~6_combout\ : std_logic;
SIGNAL \ula|zero~7_combout\ : std_logic;
SIGNAL \ula|zero~8_combout\ : std_logic;
SIGNAL \ula|zero~3_combout\ : std_logic;
SIGNAL \ula|zero~4_combout\ : std_logic;
SIGNAL \ula|zero~0_combout\ : std_logic;
SIGNAL \ula|zero~1_combout\ : std_logic;
SIGNAL \ula|zero~2_combout\ : std_logic;
SIGNAL \ula|zero~5_combout\ : std_logic;
SIGNAL \ula|zero~9_combout\ : std_logic;
SIGNAL \ula|zero~10_combout\ : std_logic;
SIGNAL \ula|zero~11_combout\ : std_logic;
SIGNAL \ula|zero~12_combout\ : std_logic;
SIGNAL \and_beq~combout\ : std_logic;
SIGNAL \EX_MEM|q[74]~12_combout\ : std_logic;
SIGNAL \PC|q[4]~2_combout\ : std_logic;
SIGNAL \somador1|Y[4]~5\ : std_logic;
SIGNAL \somador1|Y[5]~6_combout\ : std_logic;
SIGNAL \ID_EX|q[111]~feeder_combout\ : std_logic;
SIGNAL \EX_MEM|q[75]~14_combout\ : std_logic;
SIGNAL \mux_PC|Y[5]~0_combout\ : std_logic;
SIGNAL \somador1|Y[5]~7\ : std_logic;
SIGNAL \somador1|Y[6]~8_combout\ : std_logic;
SIGNAL \EX_MEM|q[76]~16_combout\ : std_logic;
SIGNAL \mux_PC|Y[6]~1_combout\ : std_logic;
SIGNAL \memoriaInst|rom~0_combout\ : std_logic;
SIGNAL \memoriaInst|rom~2_combout\ : std_logic;
SIGNAL \IF_ID|q[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \display0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[6]~6_combout\ : std_logic;
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
SIGNAL \PC|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EX_MEM|q\ : std_logic_vector(106 DOWNTO 0);
SIGNAL \divisor|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \regs|registrador_rtl_0_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \MEM_WB|q\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \ID_EX|q\ : std_logic_vector(149 DOWNTO 0);
SIGNAL \regs|registrador_rtl_1_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \memoriaDados|ram_rtl_0_bypass\ : std_logic_vector(0 TO 76);
SIGNAL \IF_ID|q\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \fd_ctrl|saida_fluxo\ : std_logic_vector(12 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

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

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \EX_MEM|q\(36) & \EX_MEM|q\(35) & \EX_MEM|q\(34) & \EX_MEM|q\(33) & \EX_MEM|q\(32) & \EX_MEM|q\(31) & \EX_MEM|q\(30) & \EX_MEM|q\(29) & 
\EX_MEM|q\(28) & \EX_MEM|q\(27) & \EX_MEM|q\(26) & \EX_MEM|q\(25) & \EX_MEM|q\(24) & \EX_MEM|q\(23) & \EX_MEM|q\(22) & \EX_MEM|q\(21) & \EX_MEM|q\(20) & \EX_MEM|q\(19) & \EX_MEM|q\(18) & \EX_MEM|q\(17) & \EX_MEM|q\(16) & \EX_MEM|q\(15) & 
\EX_MEM|q\(14) & \EX_MEM|q\(13) & \EX_MEM|q\(12) & \EX_MEM|q\(11) & \EX_MEM|q\(10) & \EX_MEM|q\(9) & \EX_MEM|q\(8) & \EX_MEM|q\(7) & \EX_MEM|q\(6) & \EX_MEM|q\(5));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\EX_MEM|q\(44) & \EX_MEM|q\(43) & \EX_MEM|q\(42) & \EX_MEM|q\(41) & \EX_MEM|q\(40) & \EX_MEM|q\(39));

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\ula|mux4|Mux24~1_combout\ & \ula|mux4|Mux25~1_combout\ & \ula|mux4|Mux26~1_combout\ & \ula|mux4|Mux27~1_combout\ & \ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux29~1_combout\);

\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\ <= \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \mux_ULA|Y[31]~4_combout\ & \mux_ULA|Y[30]~5_combout\ & \mux_ULA|Y[29]~6_combout\ & \mux_ULA|Y[28]~7_combout\ & \mux_ULA|Y[27]~8_combout\ & 
\mux_ULA|Y[26]~9_combout\ & \mux_ULA|Y[25]~10_combout\ & \mux_ULA|Y[24]~11_combout\ & \mux_ULA|Y[23]~12_combout\ & \mux_ULA|Y[22]~13_combout\ & \mux_ULA|Y[21]~14_combout\ & \mux_ULA|Y[20]~15_combout\ & \mux_ULA|Y[19]~16_combout\ & 
\mux_ULA|Y[18]~17_combout\ & \mux_ULA|Y[17]~18_combout\ & \mux_ULA|Y[16]~19_combout\ & \mux_ULA|Y[15]~20_combout\ & \mux_ULA|Y[14]~21_combout\ & \mux_ULA|Y[13]~22_combout\ & \mux_ULA|Y[12]~23_combout\ & \mux_ULA|Y[11]~24_combout\ & 
\mux_ULA|Y[10]~25_combout\ & \mux_ULA|Y[9]~26_combout\ & \mux_ULA|Y[8]~27_combout\ & \mux_ULA|Y[7]~28_combout\ & \mux_ULA|Y[6]~29_combout\ & \mux_ULA|Y[5]~30_combout\ & \mux_ULA|Y[4]~31_combout\ & \mux_ULA|Y[3]~1_combout\ & \mux_ULA|Y[2]~3_combout\ & 
\mux_ULA|Y[1]~0_combout\ & \mux_ULA|Y[0]~2_combout\);

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\memoriaInst|rom~26_combout\ & \memoriaInst|rom~25_combout\ & \memoriaInst|rom~24_combout\ & \memoriaInst|rom~21_combout\);

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

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \mux_ULA|Y[31]~4_combout\ & \mux_ULA|Y[30]~5_combout\ & \mux_ULA|Y[29]~6_combout\ & \mux_ULA|Y[28]~7_combout\ & \mux_ULA|Y[27]~8_combout\ & 
\mux_ULA|Y[26]~9_combout\ & \mux_ULA|Y[25]~10_combout\ & \mux_ULA|Y[24]~11_combout\ & \mux_ULA|Y[23]~12_combout\ & \mux_ULA|Y[22]~13_combout\ & \mux_ULA|Y[21]~14_combout\ & \mux_ULA|Y[20]~15_combout\ & \mux_ULA|Y[19]~16_combout\ & 
\mux_ULA|Y[18]~17_combout\ & \mux_ULA|Y[17]~18_combout\ & \mux_ULA|Y[16]~19_combout\ & \mux_ULA|Y[15]~20_combout\ & \mux_ULA|Y[14]~21_combout\ & \mux_ULA|Y[13]~22_combout\ & \mux_ULA|Y[12]~23_combout\ & \mux_ULA|Y[11]~24_combout\ & 
\mux_ULA|Y[10]~25_combout\ & \mux_ULA|Y[9]~26_combout\ & \mux_ULA|Y[8]~27_combout\ & \mux_ULA|Y[7]~28_combout\ & \mux_ULA|Y[6]~29_combout\ & \mux_ULA|Y[5]~30_combout\ & \mux_ULA|Y[4]~31_combout\ & \mux_ULA|Y[3]~1_combout\ & \mux_ULA|Y[2]~3_combout\ & 
\mux_ULA|Y[1]~0_combout\ & \mux_ULA|Y[0]~2_combout\);

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\MEM_WB|q\(3) & \MEM_WB|q\(2) & \MEM_WB|q\(1) & \MEM_WB|q\(0));

\regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\memoriaInst|rom~29_combout\ & \memoriaInst|rom~25_combout\ & \memoriaInst|rom~29_combout\ & \memoriaInst|rom~24_combout\);

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

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\divisor|tick~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor|tick~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X87_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X83_Y73_N23
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IF_ID|q[0]~_Duplicate_1_q\,
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
	i => \IF_ID|q\(29),
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
	i => GND,
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
	i => \IF_ID|q\(31),
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: IOOBUF_X115_Y69_N2
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

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[0]~0_combout\,
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
	i => \display1|rascSaida7seg[1]~1_combout\,
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
	i => \display1|rascSaida7seg[2]~2_combout\,
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
	i => \display1|rascSaida7seg[3]~3_combout\,
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
	i => \display1|rascSaida7seg[4]~4_combout\,
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
	i => \display1|rascSaida7seg[5]~5_combout\,
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
	i => \display1|rascSaida7seg[6]~6_combout\,
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
	i => \display2|rascSaida7seg[0]~0_combout\,
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
	i => \display2|rascSaida7seg[1]~1_combout\,
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
	i => \display2|rascSaida7seg[2]~2_combout\,
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
	i => \display2|rascSaida7seg[3]~3_combout\,
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
	i => \display2|rascSaida7seg[4]~4_combout\,
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
	i => \display2|rascSaida7seg[5]~5_combout\,
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
	i => \display2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
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

-- Location: IOOBUF_X107_Y0_N9
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

-- Location: IOOBUF_X74_Y0_N9
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

-- Location: IOOBUF_X74_Y0_N2
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

-- Location: IOOBUF_X83_Y0_N23
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

-- Location: IOOBUF_X83_Y0_N16
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

-- Location: IOOBUF_X79_Y0_N23
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

-- Location: IOOBUF_X89_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X89_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X74_Y0_N23
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

-- Location: LCCOMB_X60_Y71_N8
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

-- Location: LCCOMB_X60_Y71_N2
\divisor|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~1_combout\ = (\divisor|Add0~0_combout\ & !\divisor|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Add0~0_combout\,
	datac => \divisor|Equal0~7_combout\,
	combout => \divisor|contador~1_combout\);

-- Location: FF_X60_Y71_N3
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

-- Location: LCCOMB_X60_Y71_N10
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

-- Location: FF_X60_Y71_N11
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

-- Location: LCCOMB_X60_Y71_N12
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

-- Location: FF_X60_Y71_N13
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

-- Location: LCCOMB_X60_Y71_N14
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

-- Location: FF_X60_Y71_N15
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

-- Location: LCCOMB_X60_Y71_N16
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

-- Location: FF_X60_Y71_N17
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

-- Location: LCCOMB_X60_Y71_N18
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

-- Location: FF_X60_Y71_N19
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

-- Location: LCCOMB_X60_Y71_N20
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

-- Location: LCCOMB_X60_Y71_N0
\divisor|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~0_combout\ = (\divisor|Add0~12_combout\ & !\divisor|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Add0~12_combout\,
	datac => \divisor|Equal0~7_combout\,
	combout => \divisor|contador~0_combout\);

-- Location: FF_X60_Y71_N1
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

-- Location: LCCOMB_X60_Y71_N22
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

-- Location: FF_X60_Y71_N23
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

-- Location: LCCOMB_X60_Y71_N24
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

-- Location: FF_X60_Y71_N25
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

-- Location: LCCOMB_X60_Y71_N26
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

-- Location: FF_X60_Y71_N27
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

-- Location: LCCOMB_X60_Y71_N28
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

-- Location: FF_X60_Y71_N29
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

-- Location: LCCOMB_X60_Y71_N30
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

-- Location: LCCOMB_X60_Y71_N4
\divisor|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~2_combout\ = (\divisor|Add0~22_combout\ & !\divisor|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Add0~22_combout\,
	datad => \divisor|Equal0~7_combout\,
	combout => \divisor|contador~2_combout\);

-- Location: FF_X60_Y71_N5
\divisor|contador[11]\ : dffeas
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
	q => \divisor|contador\(11));

-- Location: LCCOMB_X60_Y70_N0
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

-- Location: LCCOMB_X59_Y70_N14
\divisor|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~3_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~7_combout\,
	datac => \divisor|Add0~24_combout\,
	combout => \divisor|contador~3_combout\);

-- Location: FF_X59_Y70_N15
\divisor|contador[12]\ : dffeas
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
	q => \divisor|contador\(12));

-- Location: LCCOMB_X60_Y70_N2
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

-- Location: LCCOMB_X59_Y70_N16
\divisor|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~4_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Equal0~7_combout\,
	datad => \divisor|Add0~26_combout\,
	combout => \divisor|contador~4_combout\);

-- Location: FF_X59_Y70_N17
\divisor|contador[13]\ : dffeas
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
	q => \divisor|contador\(13));

-- Location: LCCOMB_X60_Y70_N4
\divisor|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~28_combout\ = (\divisor|contador\(14) & (\divisor|Add0~27\ $ (GND))) # (!\divisor|contador\(14) & (!\divisor|Add0~27\ & VCC))
-- \divisor|Add0~29\ = CARRY((\divisor|contador\(14) & !\divisor|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|contador\(14),
	datad => VCC,
	cin => \divisor|Add0~27\,
	combout => \divisor|Add0~28_combout\,
	cout => \divisor|Add0~29\);

-- Location: LCCOMB_X59_Y70_N6
\divisor|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~5_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~7_combout\,
	datac => \divisor|Add0~28_combout\,
	combout => \divisor|contador~5_combout\);

-- Location: FF_X59_Y70_N7
\divisor|contador[14]\ : dffeas
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
	q => \divisor|contador\(14));

-- Location: LCCOMB_X60_Y70_N6
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

-- Location: FF_X60_Y70_N7
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

-- Location: LCCOMB_X60_Y70_N8
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

-- Location: LCCOMB_X59_Y70_N22
\divisor|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~6_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~7_combout\,
	datac => \divisor|Add0~32_combout\,
	combout => \divisor|contador~6_combout\);

-- Location: FF_X59_Y70_N23
\divisor|contador[16]\ : dffeas
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
	q => \divisor|contador\(16));

-- Location: LCCOMB_X60_Y70_N10
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

-- Location: FF_X60_Y70_N11
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

-- Location: LCCOMB_X60_Y70_N12
\divisor|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~36_combout\ = (\divisor|contador\(18) & (\divisor|Add0~35\ $ (GND))) # (!\divisor|contador\(18) & (!\divisor|Add0~35\ & VCC))
-- \divisor|Add0~37\ = CARRY((\divisor|contador\(18) & !\divisor|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(18),
	datad => VCC,
	cin => \divisor|Add0~35\,
	combout => \divisor|Add0~36_combout\,
	cout => \divisor|Add0~37\);

-- Location: LCCOMB_X60_Y70_N26
\divisor|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~7_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Equal0~7_combout\,
	datad => \divisor|Add0~36_combout\,
	combout => \divisor|contador~7_combout\);

-- Location: FF_X60_Y70_N27
\divisor|contador[18]\ : dffeas
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
	q => \divisor|contador\(18));

-- Location: LCCOMB_X60_Y70_N14
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

-- Location: LCCOMB_X59_Y70_N8
\divisor|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~8_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~7_combout\,
	datac => \divisor|Add0~38_combout\,
	combout => \divisor|contador~8_combout\);

-- Location: FF_X59_Y70_N9
\divisor|contador[19]\ : dffeas
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
	q => \divisor|contador\(19));

-- Location: LCCOMB_X60_Y70_N16
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

-- Location: LCCOMB_X60_Y70_N28
\divisor|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~10_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Equal0~7_combout\,
	datad => \divisor|Add0~40_combout\,
	combout => \divisor|contador~10_combout\);

-- Location: FF_X60_Y70_N29
\divisor|contador[20]\ : dffeas
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
	q => \divisor|contador\(20));

-- Location: LCCOMB_X60_Y70_N18
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

-- Location: LCCOMB_X60_Y70_N30
\divisor|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~11_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Equal0~7_combout\,
	datad => \divisor|Add0~42_combout\,
	combout => \divisor|contador~11_combout\);

-- Location: FF_X60_Y70_N31
\divisor|contador[21]\ : dffeas
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
	q => \divisor|contador\(21));

-- Location: LCCOMB_X60_Y70_N20
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

-- Location: LCCOMB_X59_Y70_N26
\divisor|contador~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~12_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divisor|Equal0~7_combout\,
	datac => \divisor|Add0~44_combout\,
	combout => \divisor|contador~12_combout\);

-- Location: FF_X59_Y70_N27
\divisor|contador[22]\ : dffeas
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
	q => \divisor|contador\(22));

-- Location: LCCOMB_X60_Y70_N22
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

-- Location: FF_X60_Y70_N23
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

-- Location: LCCOMB_X60_Y70_N24
\divisor|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Add0~48_combout\ = \divisor|Add0~47\ $ (!\divisor|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divisor|contador\(24),
	cin => \divisor|Add0~47\,
	combout => \divisor|Add0~48_combout\);

-- Location: LCCOMB_X59_Y70_N12
\divisor|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|contador~9_combout\ = (!\divisor|Equal0~7_combout\ & \divisor|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|Equal0~7_combout\,
	datad => \divisor|Add0~48_combout\,
	combout => \divisor|contador~9_combout\);

-- Location: FF_X59_Y70_N13
\divisor|contador[24]\ : dffeas
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
	q => \divisor|contador\(24));

-- Location: LCCOMB_X59_Y70_N18
\divisor|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~6_combout\ = (\divisor|contador\(22) & (\divisor|contador\(20) & (\divisor|contador\(21) & !\divisor|contador\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(22),
	datab => \divisor|contador\(20),
	datac => \divisor|contador\(21),
	datad => \divisor|contador\(23),
	combout => \divisor|Equal0~6_combout\);

-- Location: LCCOMB_X59_Y70_N30
\divisor|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~5_combout\ = (\divisor|contador\(16) & (!\divisor|contador\(17) & (\divisor|contador\(18) & \divisor|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(16),
	datab => \divisor|contador\(17),
	datac => \divisor|contador\(18),
	datad => \divisor|contador\(19),
	combout => \divisor|Equal0~5_combout\);

-- Location: LCCOMB_X59_Y71_N30
\divisor|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~1_combout\ = (!\divisor|contador\(0) & (!\divisor|contador\(3) & (!\divisor|contador\(2) & !\divisor|contador\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(0),
	datab => \divisor|contador\(3),
	datac => \divisor|contador\(2),
	datad => \divisor|contador\(1),
	combout => \divisor|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y70_N20
\divisor|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~3_combout\ = (\divisor|contador\(14) & (\divisor|contador\(13) & (\divisor|contador\(12) & !\divisor|contador\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(14),
	datab => \divisor|contador\(13),
	datac => \divisor|contador\(12),
	datad => \divisor|contador\(15),
	combout => \divisor|Equal0~3_combout\);

-- Location: LCCOMB_X59_Y71_N12
\divisor|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~0_combout\ = (!\divisor|contador\(5) & (!\divisor|contador\(4) & (\divisor|contador\(6) & !\divisor|contador\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(5),
	datab => \divisor|contador\(4),
	datac => \divisor|contador\(6),
	datad => \divisor|contador\(7),
	combout => \divisor|Equal0~0_combout\);

-- Location: LCCOMB_X60_Y71_N6
\divisor|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~2_combout\ = (!\divisor|contador\(9) & (!\divisor|contador\(8) & (\divisor|contador\(11) & !\divisor|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(9),
	datab => \divisor|contador\(8),
	datac => \divisor|contador\(11),
	datad => \divisor|contador\(10),
	combout => \divisor|Equal0~2_combout\);

-- Location: LCCOMB_X59_Y70_N28
\divisor|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~4_combout\ = (\divisor|Equal0~1_combout\ & (\divisor|Equal0~3_combout\ & (\divisor|Equal0~0_combout\ & \divisor|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|Equal0~1_combout\,
	datab => \divisor|Equal0~3_combout\,
	datac => \divisor|Equal0~0_combout\,
	datad => \divisor|Equal0~2_combout\,
	combout => \divisor|Equal0~4_combout\);

-- Location: LCCOMB_X59_Y70_N10
\divisor|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|Equal0~7_combout\ = (\divisor|contador\(24) & (\divisor|Equal0~6_combout\ & (\divisor|Equal0~5_combout\ & \divisor|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|contador\(24),
	datab => \divisor|Equal0~6_combout\,
	datac => \divisor|Equal0~5_combout\,
	datad => \divisor|Equal0~4_combout\,
	combout => \divisor|Equal0~7_combout\);

-- Location: LCCOMB_X59_Y70_N24
\divisor|tick~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|tick~0_combout\ = \divisor|tick~q\ $ (\divisor|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|tick~q\,
	datad => \divisor|Equal0~7_combout\,
	combout => \divisor|tick~0_combout\);

-- Location: LCCOMB_X59_Y70_N2
\divisor|tick~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|tick~feeder_combout\ = \divisor|tick~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divisor|tick~0_combout\,
	combout => \divisor|tick~feeder_combout\);

-- Location: FF_X59_Y70_N3
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

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X70_Y50_N20
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

-- Location: LCCOMB_X70_Y50_N22
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

-- Location: LCCOMB_X70_Y50_N12
\somador1|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[2]~0_combout\ = \PC|q\(2) $ (VCC)
-- \somador1|Y[2]~1\ = CARRY(\PC|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(2),
	datad => VCC,
	combout => \somador1|Y[2]~0_combout\,
	cout => \somador1|Y[2]~1\);

-- Location: LCCOMB_X72_Y50_N0
\IF_ID|q[0]~_Duplicate_2feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[0]~_Duplicate_2feeder_combout\ = \memoriaInst|rom~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~2_combout\,
	combout => \IF_ID|q[0]~_Duplicate_2feeder_combout\);

-- Location: FF_X72_Y50_N1
\IF_ID|q[0]~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[0]~_Duplicate_2feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q[0]~_Duplicate_2_q\);

-- Location: FF_X72_Y46_N3
\ID_EX|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q[0]~_Duplicate_2_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(10));

-- Location: FF_X70_Y50_N13
\IF_ID|q[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \somador1|Y[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(34));

-- Location: FF_X69_Y50_N29
\ID_EX|q[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(108));

-- Location: LCCOMB_X69_Y50_N8
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

-- Location: FF_X69_Y50_N9
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

-- Location: LCCOMB_X70_Y50_N28
\PC|q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[2]~0_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(72)))) # (!\and_beq~combout\ & (\somador1|Y[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_beq~combout\,
	datab => \somador1|Y[2]~0_combout\,
	datad => \EX_MEM|q\(72),
	combout => \PC|q[2]~0_combout\);

-- Location: FF_X70_Y50_N29
\PC|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \PC|q[2]~0_combout\,
	asdata => \memoriaInst|rom~2_combout\,
	sload => \fd_ctrl|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(2));

-- Location: LCCOMB_X70_Y50_N14
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

-- Location: FF_X70_Y50_N15
\IF_ID|q[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \somador1|Y[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(35));

-- Location: FF_X69_Y50_N3
\ID_EX|q[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(35),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(109));

-- Location: LCCOMB_X73_Y50_N20
\memoriaInst|rom~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~3_combout\ = (\PC|q\(2) & ((\PC|q\(6) & (!\PC|q\(3) & !\PC|q\(4))) # (!\PC|q\(6) & (\PC|q\(3) & \PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~3_combout\);

-- Location: LCCOMB_X72_Y50_N14
\memoriaInst|rom~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~4_combout\ = (\memoriaInst|rom~1_combout\ & (!\PC|q\(5) & \memoriaInst|rom~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaInst|rom~1_combout\,
	datac => \PC|q\(5),
	datad => \memoriaInst|rom~3_combout\,
	combout => \memoriaInst|rom~4_combout\);

-- Location: FF_X72_Y50_N15
\IF_ID|q[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q[1]~_Duplicate_1_q\);

-- Location: FF_X72_Y46_N29
\ID_EX|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q[1]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(11));

-- Location: LCCOMB_X69_Y50_N10
\EX_MEM|q[73]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[73]~10_combout\ = (\ID_EX|q\(109) & ((\ID_EX|q\(11) & (\EX_MEM|q[72]~9\ & VCC)) # (!\ID_EX|q\(11) & (!\EX_MEM|q[72]~9\)))) # (!\ID_EX|q\(109) & ((\ID_EX|q\(11) & (!\EX_MEM|q[72]~9\)) # (!\ID_EX|q\(11) & ((\EX_MEM|q[72]~9\) # (GND)))))
-- \EX_MEM|q[73]~11\ = CARRY((\ID_EX|q\(109) & (!\ID_EX|q\(11) & !\EX_MEM|q[72]~9\)) # (!\ID_EX|q\(109) & ((!\EX_MEM|q[72]~9\) # (!\ID_EX|q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(109),
	datab => \ID_EX|q\(11),
	datad => VCC,
	cin => \EX_MEM|q[72]~9\,
	combout => \EX_MEM|q[73]~10_combout\,
	cout => \EX_MEM|q[73]~11\);

-- Location: FF_X69_Y50_N11
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

-- Location: LCCOMB_X70_Y50_N30
\PC|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[3]~1_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(73)))) # (!\and_beq~combout\ & (\somador1|Y[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_beq~combout\,
	datab => \somador1|Y[3]~2_combout\,
	datad => \EX_MEM|q\(73),
	combout => \PC|q[3]~1_combout\);

-- Location: FF_X70_Y50_N31
\PC|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \PC|q[3]~1_combout\,
	asdata => \memoriaInst|rom~4_combout\,
	sload => \fd_ctrl|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(3));

-- Location: LCCOMB_X73_Y50_N10
\memoriaInst|rom~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~8_combout\ = (\PC|q\(4) & ((\PC|q\(5)) # ((\PC|q\(3) & !\PC|q\(2))))) # (!\PC|q\(4) & (\PC|q\(2) & (\PC|q\(5) $ (!\PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~8_combout\);

-- Location: LCCOMB_X73_Y50_N16
\memoriaInst|rom~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~9_combout\ = (!\PC|q\(5) & (\PC|q\(3) & (\PC|q\(4) $ (!\PC|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~9_combout\);

-- Location: LCCOMB_X72_Y50_N26
\memoriaInst|rom~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~10_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(6) & (!\memoriaInst|rom~8_combout\)) # (!\PC|q\(6) & ((!\memoriaInst|rom~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~1_combout\,
	datac => \memoriaInst|rom~8_combout\,
	datad => \memoriaInst|rom~9_combout\,
	combout => \memoriaInst|rom~10_combout\);

-- Location: FF_X72_Y50_N27
\IF_ID|q[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q[5]~_Duplicate_1_q\);

-- Location: FF_X72_Y46_N25
\ID_EX|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q[5]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(15));

-- Location: FF_X70_Y50_N23
\IF_ID|q[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \somador1|Y[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(39));

-- Location: LCCOMB_X69_Y50_N4
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

-- Location: FF_X69_Y50_N5
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

-- Location: LCCOMB_X73_Y50_N8
\memoriaInst|rom~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~6_combout\ = (\PC|q\(6) & (!\PC|q\(3) & (!\PC|q\(4) & \PC|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~6_combout\);

-- Location: LCCOMB_X70_Y50_N24
\somador1|Y[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[8]~12_combout\ = (\PC|q\(8) & (\somador1|Y[7]~11\ $ (GND))) # (!\PC|q\(8) & (!\somador1|Y[7]~11\ & VCC))
-- \somador1|Y[8]~13\ = CARRY((\PC|q\(8) & !\somador1|Y[7]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(8),
	datad => VCC,
	cin => \somador1|Y[7]~11\,
	combout => \somador1|Y[8]~12_combout\,
	cout => \somador1|Y[8]~13\);

-- Location: FF_X70_Y50_N25
\IF_ID|q[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \somador1|Y[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(40));

-- Location: LCCOMB_X69_Y50_N30
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

-- Location: FF_X69_Y50_N31
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

-- Location: LCCOMB_X69_Y50_N18
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

-- Location: LCCOMB_X69_Y50_N20
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

-- Location: FF_X69_Y50_N21
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

-- Location: LCCOMB_X70_Y50_N0
\mux_PC|Y[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[8]~2_combout\ = (!\fd_ctrl|Equal0~1_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(78))) # (!\and_beq~combout\ & ((\somador1|Y[8]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(78),
	datab => \somador1|Y[8]~12_combout\,
	datac => \fd_ctrl|Equal0~1_combout\,
	datad => \and_beq~combout\,
	combout => \mux_PC|Y[8]~2_combout\);

-- Location: FF_X70_Y50_N1
\PC|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_PC|Y[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(8));

-- Location: LCCOMB_X70_Y50_N26
\somador1|Y[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[9]~14_combout\ = \somador1|Y[8]~13\ $ (\PC|q\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PC|q\(9),
	cin => \somador1|Y[8]~13\,
	combout => \somador1|Y[9]~14_combout\);

-- Location: FF_X70_Y50_N27
\IF_ID|q[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \somador1|Y[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(41));

-- Location: LCCOMB_X69_Y50_N26
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

-- Location: FF_X69_Y50_N27
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

-- Location: LCCOMB_X69_Y50_N22
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

-- Location: FF_X69_Y50_N23
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

-- Location: LCCOMB_X70_Y50_N2
\mux_PC|Y[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[9]~3_combout\ = (!\fd_ctrl|Equal0~1_combout\ & ((\and_beq~combout\ & ((\EX_MEM|q\(79)))) # (!\and_beq~combout\ & (\somador1|Y[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador1|Y[9]~14_combout\,
	datab => \EX_MEM|q\(79),
	datac => \fd_ctrl|Equal0~1_combout\,
	datad => \and_beq~combout\,
	combout => \mux_PC|Y[9]~3_combout\);

-- Location: FF_X70_Y50_N3
\PC|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_PC|Y[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(9));

-- Location: LCCOMB_X73_Y50_N2
\memoriaInst|rom~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~5_combout\ = (!\PC|q\(7) & (!\PC|q\(9) & (!\PC|q\(5) & !\PC|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datab => \PC|q\(9),
	datac => \PC|q\(5),
	datad => \PC|q\(8),
	combout => \memoriaInst|rom~5_combout\);

-- Location: LCCOMB_X72_Y50_N22
\memoriaInst|rom~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~7_combout\ = (\memoriaInst|rom~6_combout\ & \memoriaInst|rom~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memoriaInst|rom~6_combout\,
	datad => \memoriaInst|rom~5_combout\,
	combout => \memoriaInst|rom~7_combout\);

-- Location: FF_X72_Y50_N17
\IF_ID|q[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q[2]~_Duplicate_1_q\);

-- Location: FF_X72_Y46_N21
\ID_EX|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q[2]~_Duplicate_1_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(12));

-- Location: LCCOMB_X70_Y50_N16
\somador1|Y[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[4]~4_combout\ = (\PC|q\(4) & (\somador1|Y[3]~3\ $ (GND))) # (!\PC|q\(4) & (!\somador1|Y[3]~3\ & VCC))
-- \somador1|Y[4]~5\ = CARRY((\PC|q\(4) & !\somador1|Y[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(4),
	datad => VCC,
	cin => \somador1|Y[3]~3\,
	combout => \somador1|Y[4]~4_combout\,
	cout => \somador1|Y[4]~5\);

-- Location: FF_X70_Y50_N17
\IF_ID|q[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \somador1|Y[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(36));

-- Location: LCCOMB_X69_Y50_N24
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

-- Location: FF_X69_Y50_N25
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

-- Location: LCCOMB_X69_Y50_N12
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

-- Location: LCCOMB_X69_Y50_N14
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

-- Location: LCCOMB_X69_Y50_N16
\EX_MEM|q[76]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[76]~16_combout\ = (\ID_EX|q\(112) & (\EX_MEM|q[75]~15\ $ (GND))) # (!\ID_EX|q\(112) & (!\EX_MEM|q[75]~15\ & VCC))
-- \EX_MEM|q[76]~17\ = CARRY((\ID_EX|q\(112) & !\EX_MEM|q[75]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(112),
	datad => VCC,
	cin => \EX_MEM|q[75]~15\,
	combout => \EX_MEM|q[76]~16_combout\,
	cout => \EX_MEM|q[76]~17\);

-- Location: FF_X69_Y50_N19
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

-- Location: LCCOMB_X70_Y50_N10
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

-- Location: FF_X70_Y50_N11
\PC|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \PC|q[7]~3_combout\,
	asdata => \memoriaInst|rom~10_combout\,
	sload => \fd_ctrl|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(7));

-- Location: LCCOMB_X73_Y50_N14
\memoriaInst|rom~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~1_combout\ = (!\PC|q\(7) & (!\PC|q\(9) & !\PC|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(7),
	datac => \PC|q\(9),
	datad => \PC|q\(8),
	combout => \memoriaInst|rom~1_combout\);

-- Location: LCCOMB_X73_Y50_N6
\memoriaInst|rom~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~18_combout\ = (\PC|q\(4) & ((\PC|q\(5) & (!\PC|q\(3) & !\PC|q\(2))) # (!\PC|q\(5) & (\PC|q\(3) & \PC|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~18_combout\);

-- Location: LCCOMB_X72_Y50_N18
\memoriaInst|rom~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~19_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(6) & (!\memoriaInst|rom~8_combout\)) # (!\PC|q\(6) & ((!\memoriaInst|rom~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~1_combout\,
	datac => \memoriaInst|rom~8_combout\,
	datad => \memoriaInst|rom~18_combout\,
	combout => \memoriaInst|rom~19_combout\);

-- Location: FF_X72_Y50_N19
\IF_ID|q[31]~_Duplicate_1\ : dffeas
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
	q => \IF_ID|q[31]~_Duplicate_1_q\);

-- Location: LCCOMB_X73_Y50_N26
\memoriaInst|rom~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~11_combout\ = (\PC|q\(3) & ((\PC|q\(6) & (\PC|q\(5) & \PC|q\(2))) # (!\PC|q\(6) & (!\PC|q\(5) & !\PC|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(3),
	datac => \PC|q\(5),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~11_combout\);

-- Location: LCCOMB_X72_Y50_N20
\memoriaInst|rom~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~12_combout\ = (\memoriaInst|rom~1_combout\ & (!\PC|q\(4) & \memoriaInst|rom~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaInst|rom~1_combout\,
	datac => \PC|q\(4),
	datad => \memoriaInst|rom~11_combout\,
	combout => \memoriaInst|rom~12_combout\);

-- Location: FF_X72_Y50_N21
\IF_ID|q[26]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q[26]~_Duplicate_1_q\);

-- Location: LCCOMB_X73_Y50_N12
\memoriaInst|rom~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~16_combout\ = (!\PC|q\(5) & (\PC|q\(3) & (\PC|q\(4) & \PC|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~16_combout\);

-- Location: LCCOMB_X73_Y50_N18
\memoriaInst|rom~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~15_combout\ = (\PC|q\(4) & (!\PC|q\(5) & (\PC|q\(3) & !\PC|q\(2)))) # (!\PC|q\(4) & (\PC|q\(2) & (\PC|q\(5) $ (!\PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~15_combout\);

-- Location: LCCOMB_X72_Y50_N24
\memoriaInst|rom~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~17_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(6) & ((\memoriaInst|rom~15_combout\))) # (!\PC|q\(6) & (\memoriaInst|rom~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~1_combout\,
	datac => \memoriaInst|rom~16_combout\,
	datad => \memoriaInst|rom~15_combout\,
	combout => \memoriaInst|rom~17_combout\);

-- Location: FF_X72_Y50_N25
\IF_ID|q[29]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q[29]~_Duplicate_1_q\);

-- Location: LCCOMB_X72_Y50_N28
\fd_ctrl|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal0~0_combout\ = (!\IF_ID|q[31]~_Duplicate_1_q\ & (!\IF_ID|q[26]~_Duplicate_1_q\ & (!\IF_ID|q[0]~_Duplicate_2_q\ & !\IF_ID|q[29]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q[31]~_Duplicate_1_q\,
	datab => \IF_ID|q[26]~_Duplicate_1_q\,
	datac => \IF_ID|q[0]~_Duplicate_2_q\,
	datad => \IF_ID|q[29]~_Duplicate_1_q\,
	combout => \fd_ctrl|Equal0~0_combout\);

-- Location: LCCOMB_X73_Y50_N4
\memoriaInst|rom~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~13_combout\ = (!\PC|q\(4) & ((\PC|q\(6) & (!\PC|q\(3) & \PC|q\(2))) # (!\PC|q\(6) & (\PC|q\(3) & !\PC|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~13_combout\);

-- Location: LCCOMB_X72_Y50_N6
\memoriaInst|rom~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~14_combout\ = (\memoriaInst|rom~1_combout\ & (!\PC|q\(5) & \memoriaInst|rom~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memoriaInst|rom~1_combout\,
	datac => \PC|q\(5),
	datad => \memoriaInst|rom~13_combout\,
	combout => \memoriaInst|rom~14_combout\);

-- Location: FF_X72_Y50_N7
\IF_ID|q[27]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q[27]~_Duplicate_1_q\);

-- Location: LCCOMB_X72_Y50_N4
\fd_ctrl|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal0~1_combout\ = (\fd_ctrl|Equal0~0_combout\ & \IF_ID|q[27]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd_ctrl|Equal0~0_combout\,
	datad => \IF_ID|q[27]~_Duplicate_1_q\,
	combout => \fd_ctrl|Equal0~1_combout\);

-- Location: FF_X72_Y50_N5
\ID_EX|q[144]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \fd_ctrl|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(144));

-- Location: FF_X73_Y50_N1
\EX_MEM|q[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(144),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(104));

-- Location: LCCOMB_X72_Y49_N2
\fd_ctrl|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal9~0_combout\ = ((\IF_ID|q[27]~_Duplicate_1_q\) # (\IF_ID|q[31]~_Duplicate_1_q\)) # (!\IF_ID|q[29]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|q[29]~_Duplicate_1_q\,
	datac => \IF_ID|q[27]~_Duplicate_1_q\,
	datad => \IF_ID|q[31]~_Duplicate_1_q\,
	combout => \fd_ctrl|Equal9~0_combout\);

-- Location: LCCOMB_X72_Y49_N4
\fd_ctrl|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal7~0_combout\ = (!\IF_ID|q[31]~_Duplicate_1_q\ & (!\IF_ID|q[0]~_Duplicate_2_q\ & (\IF_ID|q[29]~_Duplicate_1_q\ & !\IF_ID|q[26]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q[31]~_Duplicate_1_q\,
	datab => \IF_ID|q[0]~_Duplicate_2_q\,
	datac => \IF_ID|q[29]~_Duplicate_1_q\,
	datad => \IF_ID|q[26]~_Duplicate_1_q\,
	combout => \fd_ctrl|Equal7~0_combout\);

-- Location: LCCOMB_X72_Y49_N30
\fd_ctrl|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal7~1_combout\ = (\fd_ctrl|Equal7~0_combout\ & \IF_ID|q[27]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd_ctrl|Equal7~0_combout\,
	datac => \IF_ID|q[27]~_Duplicate_1_q\,
	combout => \fd_ctrl|Equal7~1_combout\);

-- Location: LCCOMB_X72_Y49_N14
\fd_ctrl|saida_fluxo[11]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[11]~15_combout\ = (\fd_ctrl|Equal9~0_combout\ & (((!\fd_ctrl|Equal7~1_combout\)))) # (!\fd_ctrl|Equal9~0_combout\ & (\IF_ID|q[0]~_Duplicate_2_q\ & ((!\fd_ctrl|Equal7~1_combout\) # (!\IF_ID|q[26]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q[26]~_Duplicate_1_q\,
	datab => \fd_ctrl|Equal9~0_combout\,
	datac => \fd_ctrl|Equal7~1_combout\,
	datad => \IF_ID|q[0]~_Duplicate_2_q\,
	combout => \fd_ctrl|saida_fluxo[11]~15_combout\);

-- Location: FF_X72_Y46_N1
\ID_EX|q[148]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \fd_ctrl|saida_fluxo[11]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(148));

-- Location: FF_X72_Y46_N27
\ID_EX|q[149]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \fd_ctrl|Equal9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(149));

-- Location: LCCOMB_X72_Y49_N28
\fd_ctrl|saida_fluxo[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[10]~14_combout\ = (\fd_ctrl|Equal9~0_combout\ & (((!\fd_ctrl|Equal7~1_combout\)))) # (!\fd_ctrl|Equal9~0_combout\ & (\IF_ID|q[26]~_Duplicate_1_q\ & ((!\IF_ID|q[0]~_Duplicate_2_q\) # (!\fd_ctrl|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q[26]~_Duplicate_1_q\,
	datab => \fd_ctrl|Equal9~0_combout\,
	datac => \fd_ctrl|Equal7~1_combout\,
	datad => \IF_ID|q[0]~_Duplicate_2_q\,
	combout => \fd_ctrl|saida_fluxo[10]~14_combout\);

-- Location: FF_X72_Y46_N17
\ID_EX|q[147]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \fd_ctrl|saida_fluxo[10]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(147));

-- Location: LCCOMB_X72_Y46_N26
\ula_ctrl|ula_ctrl[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~8_combout\ = (!\ID_EX|q\(148) & (\ID_EX|q\(149) & !\ID_EX|q\(147)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(148),
	datac => \ID_EX|q\(149),
	datad => \ID_EX|q\(147),
	combout => \ula_ctrl|ula_ctrl[0]~8_combout\);

-- Location: LCCOMB_X72_Y46_N0
\ula_ctrl|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|Equal6~0_combout\ = (!\ID_EX|q\(149) & (\ID_EX|q\(148) & !\ID_EX|q\(147)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(149),
	datac => \ID_EX|q\(148),
	datad => \ID_EX|q\(147),
	combout => \ula_ctrl|Equal6~0_combout\);

-- Location: LCCOMB_X72_Y50_N8
\fd_ctrl|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal5~0_combout\ = (!\IF_ID|q[27]~_Duplicate_1_q\ & (!\IF_ID|q[29]~_Duplicate_1_q\ & (\IF_ID|q[0]~_Duplicate_2_q\ & !\IF_ID|q[26]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q[27]~_Duplicate_1_q\,
	datab => \IF_ID|q[29]~_Duplicate_1_q\,
	datac => \IF_ID|q[0]~_Duplicate_2_q\,
	datad => \IF_ID|q[26]~_Duplicate_1_q\,
	combout => \fd_ctrl|Equal5~0_combout\);

-- Location: LCCOMB_X72_Y50_N10
\fd_ctrl|saida_fluxo[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[2]~13_combout\ = (!\fd_ctrl|Equal5~0_combout\ & !\IF_ID|q[31]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fd_ctrl|Equal5~0_combout\,
	datad => \IF_ID|q[31]~_Duplicate_1_q\,
	combout => \fd_ctrl|saida_fluxo[2]~13_combout\);

-- Location: FF_X72_Y46_N15
\ID_EX|q[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \fd_ctrl|saida_fluxo[2]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(140));

-- Location: LCCOMB_X72_Y50_N2
\fd_ctrl|saida_fluxo[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[1]~12_combout\ = (!\IF_ID|q[31]~_Duplicate_1_q\ & ((\IF_ID|q[27]~_Duplicate_1_q\) # (!\fd_ctrl|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q[27]~_Duplicate_1_q\,
	datab => \fd_ctrl|Equal0~0_combout\,
	datad => \IF_ID|q[31]~_Duplicate_1_q\,
	combout => \fd_ctrl|saida_fluxo[1]~12_combout\);

-- Location: FF_X72_Y46_N23
\ID_EX|q[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \fd_ctrl|saida_fluxo[1]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(139));

-- Location: LCCOMB_X72_Y46_N14
\ula_ctrl|ula_ctrl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~6_combout\ = (\ID_EX|q\(15) & (\ID_EX|q\(12) & (\ID_EX|q\(140) & !\ID_EX|q\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(15),
	datab => \ID_EX|q\(12),
	datac => \ID_EX|q\(140),
	datad => \ID_EX|q\(139),
	combout => \ula_ctrl|ula_ctrl~6_combout\);

-- Location: LCCOMB_X72_Y46_N2
\ula_ctrl|ula_ctrl~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~9_combout\ = (\ula_ctrl|Equal6~0_combout\) # ((!\ID_EX|q\(11) & (!\ID_EX|q\(10) & \ula_ctrl|ula_ctrl~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ula_ctrl|Equal6~0_combout\,
	datac => \ID_EX|q\(10),
	datad => \ula_ctrl|ula_ctrl~6_combout\,
	combout => \ula_ctrl|ula_ctrl~9_combout\);

-- Location: LCCOMB_X72_Y46_N16
\ula_ctrl|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|Equal4~0_combout\ = (!\ID_EX|q\(149) & (\ID_EX|q\(148) & \ID_EX|q\(147)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(149),
	datab => \ID_EX|q\(148),
	datac => \ID_EX|q\(147),
	combout => \ula_ctrl|Equal4~0_combout\);

-- Location: LCCOMB_X72_Y46_N4
\ula_ctrl|ula_ctrl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~7_combout\ = (\ula_ctrl|Equal4~0_combout\) # ((!\ID_EX|q\(11) & (\ID_EX|q\(10) & \ula_ctrl|ula_ctrl~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(10),
	datac => \ula_ctrl|Equal4~0_combout\,
	datad => \ula_ctrl|ula_ctrl~6_combout\,
	combout => \ula_ctrl|ula_ctrl~7_combout\);

-- Location: LCCOMB_X72_Y46_N8
\ula_ctrl|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|Equal7~0_combout\ = (\ID_EX|q\(139) & !\ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(140),
	combout => \ula_ctrl|Equal7~0_combout\);

-- Location: LCCOMB_X72_Y46_N30
\ula_ctrl|ula_ctrl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~4_combout\ = (\ula_ctrl|Equal7~0_combout\) # ((!\ID_EX|q\(149) & (!\ID_EX|q\(148) & \ID_EX|q\(147))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(149),
	datab => \ID_EX|q\(148),
	datac => \ula_ctrl|Equal7~0_combout\,
	datad => \ID_EX|q\(147),
	combout => \ula_ctrl|ula_ctrl~4_combout\);

-- Location: LCCOMB_X72_Y46_N24
\ula_ctrl|ula_ctrl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~0_combout\ = (!\ID_EX|q\(139) & (!\ID_EX|q\(10) & (\ID_EX|q\(15) & !\ID_EX|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(10),
	datac => \ID_EX|q\(15),
	datad => \ID_EX|q\(12),
	combout => \ula_ctrl|ula_ctrl~0_combout\);

-- Location: LCCOMB_X72_Y46_N28
\ula_ctrl|ula_ctrl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~2_combout\ = (\ID_EX|q\(139) & (((\ID_EX|q\(11)) # (!\ula_ctrl|ula_ctrl~0_combout\)))) # (!\ID_EX|q\(139) & (\ID_EX|q\(140) & ((\ID_EX|q\(11)) # (!\ula_ctrl|ula_ctrl~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(139),
	datab => \ID_EX|q\(140),
	datac => \ID_EX|q\(11),
	datad => \ula_ctrl|ula_ctrl~0_combout\,
	combout => \ula_ctrl|ula_ctrl~2_combout\);

-- Location: LCCOMB_X72_Y46_N10
\ula_ctrl|ula_ctrl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~3_combout\ = ((!\ID_EX|q\(148) & (!\ID_EX|q\(147) & !\ID_EX|q\(149)))) # (!\ula_ctrl|ula_ctrl~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(148),
	datab => \ID_EX|q\(147),
	datac => \ID_EX|q\(149),
	datad => \ula_ctrl|ula_ctrl~2_combout\,
	combout => \ula_ctrl|ula_ctrl~3_combout\);

-- Location: LCCOMB_X72_Y46_N20
\ula_ctrl|ula_ctrl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~1_combout\ = (\ID_EX|q\(11) & \ID_EX|q\(140))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(11),
	datab => \ID_EX|q\(140),
	combout => \ula_ctrl|ula_ctrl~1_combout\);

-- Location: LCCOMB_X70_Y46_N0
\ula_ctrl|ula_ctrl[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~5_combout\ = (!\ula_ctrl|ula_ctrl~4_combout\ & (!\ula_ctrl|ula_ctrl~3_combout\ & ((!\ula_ctrl|ula_ctrl~1_combout\) # (!\ula_ctrl|ula_ctrl~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl~4_combout\,
	datab => \ula_ctrl|ula_ctrl~0_combout\,
	datac => \ula_ctrl|ula_ctrl~3_combout\,
	datad => \ula_ctrl|ula_ctrl~1_combout\,
	combout => \ula_ctrl|ula_ctrl[0]~5_combout\);

-- Location: LCCOMB_X70_Y46_N30
\ula_ctrl|ula_ctrl[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~10_combout\ = (!\ula_ctrl|ula_ctrl~9_combout\ & (\ula_ctrl|ula_ctrl[0]~5_combout\ & ((\ula_ctrl|ula_ctrl[0]~8_combout\) # (\ula_ctrl|ula_ctrl~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~8_combout\,
	datab => \ula_ctrl|ula_ctrl~9_combout\,
	datac => \ula_ctrl|ula_ctrl~7_combout\,
	datad => \ula_ctrl|ula_ctrl[0]~5_combout\,
	combout => \ula_ctrl|ula_ctrl[0]~10_combout\);

-- Location: LCCOMB_X73_Y50_N22
\memoriaInst|rom~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~25_combout\ = (\PC|q\(6) & (\memoriaInst|rom~1_combout\ & \memoriaInst|rom~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datac => \memoriaInst|rom~1_combout\,
	datad => \memoriaInst|rom~15_combout\,
	combout => \memoriaInst|rom~25_combout\);

-- Location: LCCOMB_X75_Y50_N30
\IF_ID|q[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[23]~feeder_combout\ = \memoriaInst|rom~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~25_combout\,
	combout => \IF_ID|q[23]~feeder_combout\);

-- Location: FF_X75_Y50_N31
\IF_ID|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \IF_ID|q[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(23));

-- Location: LCCOMB_X74_Y50_N4
\memoriaInst|rom~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~22_combout\ = (\PC|q\(3) & ((\PC|q\(5) & (\PC|q\(6) & !\PC|q\(4))) # (!\PC|q\(5) & (!\PC|q\(6) & \PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \PC|q\(6),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~22_combout\);

-- Location: LCCOMB_X74_Y50_N30
\memoriaInst|rom~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~23_combout\ = (\PC|q\(4) & ((\PC|q\(5) & (!\PC|q\(3) & !\PC|q\(6))) # (!\PC|q\(5) & (\PC|q\(3) & \PC|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \PC|q\(6),
	datad => \PC|q\(4),
	combout => \memoriaInst|rom~23_combout\);

-- Location: LCCOMB_X74_Y50_N28
\memoriaInst|rom~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~24_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(2) & (\memoriaInst|rom~22_combout\ & !\memoriaInst|rom~23_combout\)) # (!\PC|q\(2) & (!\memoriaInst|rom~22_combout\ & \memoriaInst|rom~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(2),
	datab => \memoriaInst|rom~22_combout\,
	datac => \memoriaInst|rom~23_combout\,
	datad => \memoriaInst|rom~1_combout\,
	combout => \memoriaInst|rom~24_combout\);

-- Location: LCCOMB_X74_Y50_N8
\IF_ID|q[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID|q[22]~feeder_combout\ = \memoriaInst|rom~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~24_combout\,
	combout => \IF_ID|q[22]~feeder_combout\);

-- Location: FF_X74_Y50_N9
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

-- Location: LCCOMB_X74_Y50_N6
\memoriaInst|rom~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~20_combout\ = (\PC|q\(4) & (!\PC|q\(6) & (!\PC|q\(2) & !\PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(6),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~20_combout\);

-- Location: LCCOMB_X74_Y50_N16
\memoriaInst|rom~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~21_combout\ = (\memoriaInst|rom~1_combout\ & (\PC|q\(5) & \memoriaInst|rom~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~1_combout\,
	datab => \PC|q\(5),
	datad => \memoriaInst|rom~20_combout\,
	combout => \memoriaInst|rom~21_combout\);

-- Location: FF_X74_Y50_N11
\IF_ID|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(21));

-- Location: LCCOMB_X73_Y50_N28
\memoriaInst|rom~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~26_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(6) & (\memoriaInst|rom~15_combout\)) # (!\PC|q\(6) & ((\memoriaInst|rom~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datab => \memoriaInst|rom~15_combout\,
	datac => \memoriaInst|rom~1_combout\,
	datad => \memoriaInst|rom~18_combout\,
	combout => \memoriaInst|rom~26_combout\);

-- Location: FF_X75_Y50_N29
\IF_ID|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(24));

-- Location: LCCOMB_X74_Y50_N26
\regs|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|Equal0~0_combout\ = (!\IF_ID|q\(23) & (!\IF_ID|q\(22) & (!\IF_ID|q\(21) & !\IF_ID|q\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(23),
	datab => \IF_ID|q\(22),
	datac => \IF_ID|q\(21),
	datad => \IF_ID|q\(24),
	combout => \regs|Equal0~0_combout\);

-- Location: FF_X75_Y50_N9
\regs|registrador_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(8));

-- Location: FF_X74_Y50_N17
\ID_EX|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(24));

-- Location: LCCOMB_X72_Y50_N30
\fd_ctrl|op_code_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|op_code_aux~0_combout\ = (\fd_ctrl|Equal0~0_combout\ & !\IF_ID|q[27]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fd_ctrl|Equal0~0_combout\,
	datad => \IF_ID|q[27]~_Duplicate_1_q\,
	combout => \fd_ctrl|op_code_aux~0_combout\);

-- Location: FF_X72_Y50_N31
\ID_EX|q[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \fd_ctrl|op_code_aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(141));

-- Location: LCCOMB_X74_Y50_N22
\memoriaInst|rom~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~27_combout\ = (\PC|q\(4) & (!\PC|q\(6) & (!\PC|q\(2) & !\PC|q\(3)))) # (!\PC|q\(4) & (\PC|q\(6) & (\PC|q\(2) & \PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(6),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~27_combout\);

-- Location: LCCOMB_X74_Y50_N12
\memoriaInst|rom~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~28_combout\ = (\PC|q\(4) & (\PC|q\(3) & (\PC|q\(6) $ (\PC|q\(2))))) # (!\PC|q\(4) & ((\PC|q\(6) & (\PC|q\(2) & !\PC|q\(3))) # (!\PC|q\(6) & (!\PC|q\(2) & \PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(4),
	datab => \PC|q\(6),
	datac => \PC|q\(2),
	datad => \PC|q\(3),
	combout => \memoriaInst|rom~28_combout\);

-- Location: LCCOMB_X74_Y50_N14
\memoriaInst|rom~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~29_combout\ = (\memoriaInst|rom~1_combout\ & ((\PC|q\(5) & (\memoriaInst|rom~27_combout\)) # (!\PC|q\(5) & ((\memoriaInst|rom~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaInst|rom~1_combout\,
	datab => \PC|q\(5),
	datac => \memoriaInst|rom~27_combout\,
	datad => \memoriaInst|rom~28_combout\,
	combout => \memoriaInst|rom~29_combout\);

-- Location: FF_X74_Y50_N25
\IF_ID|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(19));

-- Location: LCCOMB_X75_Y50_N10
\ID_EX|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[6]~feeder_combout\ = \IF_ID|q\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(19),
	combout => \ID_EX|q[6]~feeder_combout\);

-- Location: FF_X75_Y50_N11
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

-- Location: LCCOMB_X75_Y50_N26
\mux_RtRd|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[3]~3_combout\ = (\ID_EX|q\(141) & (\ID_EX|q\(24))) # (!\ID_EX|q\(141) & ((\ID_EX|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(24),
	datac => \ID_EX|q\(141),
	datad => \ID_EX|q\(6),
	combout => \mux_RtRd|Y[3]~3_combout\);

-- Location: FF_X75_Y50_N27
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

-- Location: FF_X76_Y50_N27
\MEM_WB|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(3));

-- Location: FF_X76_Y50_N3
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

-- Location: FF_X76_Y50_N13
\regs|registrador_rtl_0_bypass[6]\ : dffeas
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
	q => \regs|registrador_rtl_0_bypass\(6));

-- Location: FF_X75_Y50_N21
\ID_EX|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(7));

-- Location: LCCOMB_X75_Y50_N12
\mux_RtRd|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[2]~2_combout\ = (\ID_EX|q\(141) & (\ID_EX|q\(24))) # (!\ID_EX|q\(141) & ((\ID_EX|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(24),
	datac => \ID_EX|q\(141),
	datad => \ID_EX|q\(7),
	combout => \mux_RtRd|Y[2]~2_combout\);

-- Location: FF_X75_Y50_N13
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

-- Location: LCCOMB_X76_Y50_N16
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

-- Location: FF_X76_Y50_N17
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

-- Location: LCCOMB_X76_Y50_N24
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

-- Location: FF_X76_Y50_N25
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

-- Location: LCCOMB_X76_Y50_N12
\regs|registrador~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~39_combout\ = (\regs|registrador_rtl_0_bypass\(8) & (\regs|registrador_rtl_0_bypass\(7) & (\regs|registrador_rtl_0_bypass\(6) $ (!\regs|registrador_rtl_0_bypass\(5))))) # (!\regs|registrador_rtl_0_bypass\(8) & 
-- (!\regs|registrador_rtl_0_bypass\(7) & (\regs|registrador_rtl_0_bypass\(6) $ (!\regs|registrador_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(8),
	datab => \regs|registrador_rtl_0_bypass\(7),
	datac => \regs|registrador_rtl_0_bypass\(6),
	datad => \regs|registrador_rtl_0_bypass\(5),
	combout => \regs|registrador~39_combout\);

-- Location: LCCOMB_X72_Y49_N12
\fd_ctrl|saida_fluxo[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo[8]~16_combout\ = (\IF_ID|q[27]~_Duplicate_1_q\ & (!\fd_ctrl|Equal7~0_combout\)) # (!\IF_ID|q[27]~_Duplicate_1_q\ & (((\IF_ID|q[31]~_Duplicate_1_q\) # (!\IF_ID|q[29]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q[27]~_Duplicate_1_q\,
	datab => \fd_ctrl|Equal7~0_combout\,
	datac => \IF_ID|q[29]~_Duplicate_1_q\,
	datad => \IF_ID|q[31]~_Duplicate_1_q\,
	combout => \fd_ctrl|saida_fluxo[8]~16_combout\);

-- Location: LCCOMB_X72_Y49_N8
\fd_ctrl|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal1~0_combout\ = (\IF_ID|q[26]~_Duplicate_1_q\ & (!\IF_ID|q[0]~_Duplicate_2_q\ & (\IF_ID|q[27]~_Duplicate_1_q\ & \IF_ID|q[31]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q[26]~_Duplicate_1_q\,
	datab => \IF_ID|q[0]~_Duplicate_2_q\,
	datac => \IF_ID|q[27]~_Duplicate_1_q\,
	datad => \IF_ID|q[31]~_Duplicate_1_q\,
	combout => \fd_ctrl|Equal1~0_combout\);

-- Location: LCCOMB_X72_Y49_N10
\fd_ctrl|saida_fluxo[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo\(8) = ((\fd_ctrl|op_code_aux~0_combout\) # ((\fd_ctrl|Equal1~0_combout\ & !\IF_ID|q[29]~_Duplicate_1_q\))) # (!\fd_ctrl|saida_fluxo[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fd_ctrl|saida_fluxo[8]~16_combout\,
	datab => \fd_ctrl|Equal1~0_combout\,
	datac => \IF_ID|q[29]~_Duplicate_1_q\,
	datad => \fd_ctrl|op_code_aux~0_combout\,
	combout => \fd_ctrl|saida_fluxo\(8));

-- Location: FF_X72_Y49_N11
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

-- Location: LCCOMB_X72_Y49_N26
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

-- Location: FF_X72_Y49_N27
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

-- Location: LCCOMB_X75_Y49_N12
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

-- Location: FF_X75_Y49_N13
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

-- Location: FF_X76_Y50_N23
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

-- Location: LCCOMB_X75_Y50_N16
\ID_EX|q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[5]~feeder_combout\ = \IF_ID|q\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(22),
	combout => \ID_EX|q[5]~feeder_combout\);

-- Location: FF_X75_Y50_N17
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

-- Location: LCCOMB_X75_Y50_N24
\mux_RtRd|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[0]~0_combout\ = (!\ID_EX|q\(141) & \ID_EX|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(141),
	datad => \ID_EX|q\(5),
	combout => \mux_RtRd|Y[0]~0_combout\);

-- Location: FF_X75_Y50_N25
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

-- Location: LCCOMB_X76_Y50_N20
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

-- Location: FF_X76_Y50_N21
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

-- Location: LCCOMB_X76_Y50_N14
\regs|registrador_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[1]~feeder_combout\ = \MEM_WB|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|q\(0),
	combout => \regs|registrador_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X76_Y50_N15
\regs|registrador_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(1));

-- Location: LCCOMB_X77_Y50_N4
\regs|registrador_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[2]~feeder_combout\ = \memoriaInst|rom~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~21_combout\,
	combout => \regs|registrador_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X77_Y50_N5
\regs|registrador_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(2));

-- Location: FF_X77_Y50_N27
\regs|registrador_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(4));

-- Location: LCCOMB_X75_Y50_N18
\mux_RtRd|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_RtRd|Y[1]~1_combout\ = (!\ID_EX|q\(141) & \ID_EX|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(141),
	datad => \ID_EX|q\(6),
	combout => \mux_RtRd|Y[1]~1_combout\);

-- Location: FF_X75_Y50_N19
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

-- Location: LCCOMB_X75_Y50_N22
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

-- Location: FF_X75_Y50_N23
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

-- Location: LCCOMB_X77_Y50_N28
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

-- Location: FF_X77_Y50_N29
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

-- Location: LCCOMB_X77_Y50_N26
\regs|registrador~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~38_combout\ = (\regs|registrador_rtl_0_bypass\(1) & (\regs|registrador_rtl_0_bypass\(2) & (\regs|registrador_rtl_0_bypass\(4) $ (!\regs|registrador_rtl_0_bypass\(3))))) # (!\regs|registrador_rtl_0_bypass\(1) & 
-- (!\regs|registrador_rtl_0_bypass\(2) & (\regs|registrador_rtl_0_bypass\(4) $ (!\regs|registrador_rtl_0_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(1),
	datab => \regs|registrador_rtl_0_bypass\(2),
	datac => \regs|registrador_rtl_0_bypass\(4),
	datad => \regs|registrador_rtl_0_bypass\(3),
	combout => \regs|registrador~38_combout\);

-- Location: LCCOMB_X76_Y50_N22
\regs|registrador~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~40_combout\ = (\regs|registrador~39_combout\ & (\regs|registrador_rtl_0_bypass\(0) & \regs|registrador~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~39_combout\,
	datac => \regs|registrador_rtl_0_bypass\(0),
	datad => \regs|registrador~38_combout\,
	combout => \regs|registrador~40_combout\);

-- Location: LCCOMB_X72_Y49_N18
\fd_ctrl|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal4~0_combout\ = (\IF_ID|q[29]~_Duplicate_1_q\ & \fd_ctrl|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|q[29]~_Duplicate_1_q\,
	datac => \fd_ctrl|Equal1~0_combout\,
	combout => \fd_ctrl|Equal4~0_combout\);

-- Location: FF_X72_Y49_N19
\ID_EX|q[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \fd_ctrl|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(142));

-- Location: LCCOMB_X72_Y47_N16
\EX_MEM|q[102]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[102]~feeder_combout\ = \ID_EX|q\(142)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(142),
	combout => \EX_MEM|q[102]~feeder_combout\);

-- Location: FF_X72_Y47_N17
\EX_MEM|q[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[102]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(102));

-- Location: LCCOMB_X74_Y50_N24
\regs|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|Equal1~0_combout\ = (!\IF_ID|q\(23) & (!\IF_ID|q\(22) & !\IF_ID|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q\(23),
	datab => \IF_ID|q\(22),
	datac => \IF_ID|q\(19),
	combout => \regs|Equal1~0_combout\);

-- Location: LCCOMB_X72_Y49_N16
\fd_ctrl|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal1~1_combout\ = (!\IF_ID|q[29]~_Duplicate_1_q\ & \fd_ctrl|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID|q[29]~_Duplicate_1_q\,
	datac => \fd_ctrl|Equal1~0_combout\,
	combout => \fd_ctrl|Equal1~1_combout\);

-- Location: FF_X72_Y49_N17
\ID_EX|q[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \fd_ctrl|Equal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(145));

-- Location: LCCOMB_X72_Y49_N24
\EX_MEM|q[105]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[105]~feeder_combout\ = \ID_EX|q\(145)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(145),
	combout => \EX_MEM|q[105]~feeder_combout\);

-- Location: FF_X72_Y49_N25
\EX_MEM|q[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[105]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(105));

-- Location: LCCOMB_X72_Y49_N20
\MEM_WB|q[69]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[69]~feeder_combout\ = \EX_MEM|q\(105)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(105),
	combout => \MEM_WB|q[69]~feeder_combout\);

-- Location: FF_X72_Y49_N21
\MEM_WB|q[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[69]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(69));

-- Location: LCCOMB_X70_Y46_N20
\ula_ctrl|ula_ctrl[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[1]~11_combout\ = ((\ula_ctrl|ula_ctrl[0]~8_combout\ & (!\ula_ctrl|ula_ctrl~9_combout\ & !\ula_ctrl|ula_ctrl~7_combout\))) # (!\ula_ctrl|ula_ctrl[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~8_combout\,
	datab => \ula_ctrl|ula_ctrl~9_combout\,
	datac => \ula_ctrl|ula_ctrl~7_combout\,
	datad => \ula_ctrl|ula_ctrl[0]~5_combout\,
	combout => \ula_ctrl|ula_ctrl[1]~11_combout\);

-- Location: LCCOMB_X72_Y46_N12
\ula_ctrl|ula_ctrl[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[2]~13_combout\ = (!\ula_ctrl|ula_ctrl~3_combout\ & (\ula_ctrl|ula_ctrl[0]~8_combout\ & (!\ula_ctrl|ula_ctrl~7_combout\ & !\ula_ctrl|ula_ctrl~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl~3_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~8_combout\,
	datac => \ula_ctrl|ula_ctrl~7_combout\,
	datad => \ula_ctrl|ula_ctrl~9_combout\,
	combout => \ula_ctrl|ula_ctrl[2]~13_combout\);

-- Location: LCCOMB_X72_Y46_N18
\ula_ctrl|ula_ctrl[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[2]~12_combout\ = (!\ula_ctrl|ula_ctrl~3_combout\ & ((\ula_ctrl|ula_ctrl~4_combout\) # ((\ula_ctrl|ula_ctrl~1_combout\ & \ula_ctrl|ula_ctrl~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl~1_combout\,
	datab => \ula_ctrl|ula_ctrl~0_combout\,
	datac => \ula_ctrl|ula_ctrl~4_combout\,
	datad => \ula_ctrl|ula_ctrl~3_combout\,
	combout => \ula_ctrl|ula_ctrl[2]~12_combout\);

-- Location: LCCOMB_X72_Y49_N6
\fd_ctrl|saida_fluxo[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \fd_ctrl|saida_fluxo\(0) = (\IF_ID|q[31]~_Duplicate_1_q\) # ((\IF_ID|q[27]~_Duplicate_1_q\ & (\fd_ctrl|Equal7~0_combout\)) # (!\IF_ID|q[27]~_Duplicate_1_q\ & ((\IF_ID|q[29]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID|q[27]~_Duplicate_1_q\,
	datab => \fd_ctrl|Equal7~0_combout\,
	datac => \IF_ID|q[29]~_Duplicate_1_q\,
	datad => \IF_ID|q[31]~_Duplicate_1_q\,
	combout => \fd_ctrl|saida_fluxo\(0));

-- Location: FF_X73_Y46_N27
\ID_EX|q[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \fd_ctrl|saida_fluxo\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(138));

-- Location: LCCOMB_X73_Y46_N30
\mux_Rt_im|Y[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[0]~2_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(10))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(10),
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(42),
	combout => \mux_Rt_im|Y[0]~2_combout\);

-- Location: LCCOMB_X73_Y46_N26
\ula|mux2B|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[0]~0_combout\ = \mux_Rt_im|Y[0]~2_combout\ $ (((\ula_ctrl|ula_ctrl[2]~13_combout\) # (\ula_ctrl|ula_ctrl[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~13_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \mux_Rt_im|Y[0]~2_combout\,
	combout => \ula|mux2B|Y[0]~0_combout\);

-- Location: FF_X77_Y48_N29
\regs|registrador_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(11));

-- Location: LCCOMB_X72_Y46_N6
\ula_ctrl|ula_ctrl[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[2]~14_combout\ = (\ula_ctrl|ula_ctrl[2]~12_combout\) # (\ula_ctrl|ula_ctrl[2]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~13_combout\,
	combout => \ula_ctrl|ula_ctrl[2]~14_combout\);

-- Location: FF_X75_Y50_N15
\regs|registrador_rtl_1_bypass[0]\ : dffeas
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
	q => \regs|registrador_rtl_1_bypass\(0));

-- Location: FF_X76_Y50_N31
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

-- Location: LCCOMB_X76_Y50_N8
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

-- Location: FF_X76_Y50_N9
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

-- Location: FF_X76_Y50_N1
\regs|registrador_rtl_1_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(8));

-- Location: FF_X76_Y50_N7
\regs|registrador_rtl_1_bypass[6]\ : dffeas
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
	q => \regs|registrador_rtl_1_bypass\(6));

-- Location: LCCOMB_X76_Y50_N0
\regs|registrador~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~42_combout\ = (\regs|registrador_rtl_1_bypass\(7) & (\regs|registrador_rtl_1_bypass\(8) & (\regs|registrador_rtl_1_bypass\(5) $ (!\regs|registrador_rtl_1_bypass\(6))))) # (!\regs|registrador_rtl_1_bypass\(7) & 
-- (!\regs|registrador_rtl_1_bypass\(8) & (\regs|registrador_rtl_1_bypass\(5) $ (!\regs|registrador_rtl_1_bypass\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(7),
	datab => \regs|registrador_rtl_1_bypass\(5),
	datac => \regs|registrador_rtl_1_bypass\(8),
	datad => \regs|registrador_rtl_1_bypass\(6),
	combout => \regs|registrador~42_combout\);

-- Location: LCCOMB_X76_Y50_N10
\regs|registrador_rtl_1_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[2]~feeder_combout\ = \memoriaInst|rom~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaInst|rom~24_combout\,
	combout => \regs|registrador_rtl_1_bypass[2]~feeder_combout\);

-- Location: FF_X76_Y50_N11
\regs|registrador_rtl_1_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(2));

-- Location: LCCOMB_X76_Y50_N4
\regs|registrador_rtl_1_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[1]~feeder_combout\ = \MEM_WB|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEM_WB|q\(0),
	combout => \regs|registrador_rtl_1_bypass[1]~feeder_combout\);

-- Location: FF_X76_Y50_N5
\regs|registrador_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(1));

-- Location: FF_X76_Y50_N29
\regs|registrador_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaInst|rom~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(4));

-- Location: LCCOMB_X76_Y50_N18
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

-- Location: FF_X76_Y50_N19
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

-- Location: LCCOMB_X76_Y50_N28
\regs|registrador~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~41_combout\ = (\regs|registrador_rtl_1_bypass\(2) & (\regs|registrador_rtl_1_bypass\(1) & (\regs|registrador_rtl_1_bypass\(4) $ (!\regs|registrador_rtl_1_bypass\(3))))) # (!\regs|registrador_rtl_1_bypass\(2) & 
-- (!\regs|registrador_rtl_1_bypass\(1) & (\regs|registrador_rtl_1_bypass\(4) $ (!\regs|registrador_rtl_1_bypass\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(2),
	datab => \regs|registrador_rtl_1_bypass\(1),
	datac => \regs|registrador_rtl_1_bypass\(4),
	datad => \regs|registrador_rtl_1_bypass\(3),
	combout => \regs|registrador~41_combout\);

-- Location: LCCOMB_X76_Y50_N30
\regs|registrador~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador~43_combout\ = (\regs|registrador_rtl_1_bypass\(0) & (\regs|registrador~42_combout\ & \regs|registrador~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(0),
	datab => \regs|registrador~42_combout\,
	datad => \regs|registrador~41_combout\,
	combout => \regs|registrador~43_combout\);

-- Location: LCCOMB_X76_Y47_N26
\EX_MEM|q[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[41]~feeder_combout\ = \ula|mux4|Mux27~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|mux4|Mux27~1_combout\,
	combout => \EX_MEM|q[41]~feeder_combout\);

-- Location: FF_X76_Y47_N27
\EX_MEM|q[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(41));

-- Location: FF_X76_Y46_N27
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

-- Location: LCCOMB_X75_Y46_N0
\EX_MEM|q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[9]~feeder_combout\ = \ID_EX|q\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(46),
	combout => \EX_MEM|q[9]~feeder_combout\);

-- Location: FF_X75_Y46_N1
\EX_MEM|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(9));

-- Location: FF_X75_Y46_N29
\memoriaDados|ram_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(21));

-- Location: LCCOMB_X76_Y46_N8
\memoriaDados|ram_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X76_Y46_N9
\memoriaDados|ram_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(22));

-- Location: LCCOMB_X79_Y46_N30
\memoriaDados|ram_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X79_Y46_N31
\memoriaDados|ram_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(18));

-- Location: FF_X79_Y46_N7
\regs|registrador_rtl_1_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[2]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(13));

-- Location: LCCOMB_X75_Y44_N20
\regs|registrador_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[14]~feeder_combout\ = \mux_ULA|Y[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[3]~1_combout\,
	combout => \regs|registrador_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X75_Y44_N21
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

-- Location: LCCOMB_X77_Y46_N24
\EX_MEM|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[6]~feeder_combout\ = \ID_EX|q\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(43),
	combout => \EX_MEM|q[6]~feeder_combout\);

-- Location: FF_X77_Y46_N25
\EX_MEM|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(6));

-- Location: FF_X79_Y46_N13
\regs|registrador_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(14));

-- Location: FF_X77_Y46_N9
\regs|registrador_rtl_1_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[8]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(19));

-- Location: LCCOMB_X72_Y47_N10
\memoriaDados|ram_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X72_Y47_N11
\memoriaDados|ram_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(36));

-- Location: LCCOMB_X76_Y46_N12
\regs|registrador_rtl_1_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[16]~feeder_combout\ = \mux_ULA|Y[5]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[5]~30_combout\,
	combout => \regs|registrador_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X76_Y46_N13
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

-- Location: LCCOMB_X79_Y47_N6
\memoriaDados|ram_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X79_Y47_N7
\memoriaDados|ram_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(38));

-- Location: LCCOMB_X79_Y48_N6
\regs|registrador_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[24]~feeder_combout\ = \mux_ULA|Y[13]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[13]~22_combout\,
	combout => \regs|registrador_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X79_Y48_N7
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

-- Location: LCCOMB_X77_Y47_N16
\regs|registrador_rtl_0_bypass[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[25]~feeder_combout\ = \mux_ULA|Y[14]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[14]~21_combout\,
	combout => \regs|registrador_rtl_0_bypass[25]~feeder_combout\);

-- Location: FF_X77_Y47_N17
\regs|registrador_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(25));

-- Location: LCCOMB_X76_Y46_N14
\regs|registrador_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[28]~feeder_combout\ = \mux_ULA|Y[17]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[17]~18_combout\,
	combout => \regs|registrador_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X76_Y46_N15
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

-- Location: LCCOMB_X80_Y48_N22
\regs|registrador_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[30]~feeder_combout\ = \mux_ULA|Y[19]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[19]~16_combout\,
	combout => \regs|registrador_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X80_Y48_N23
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

-- Location: FF_X76_Y48_N7
\regs|registrador_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[23]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(34));

-- Location: FF_X76_Y48_N21
\regs|registrador_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[24]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(35));

-- Location: FF_X77_Y48_N5
\regs|registrador_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[30]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(41));

-- Location: FF_X77_Y48_N11
\regs|registrador_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[31]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(42));

-- Location: M9K_X78_Y48_N0
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
	port_a_data_width => 36,
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
	port_b_data_width => 36,
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
	clk0 => \divisor|tick~clkctrl_outclk\,
	portadatain => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X77_Y48_N10
\regs|saidaA[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[31]~4_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(42))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(42),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a31\,
	combout => \regs|saidaA[31]~4_combout\);

-- Location: FF_X74_Y48_N5
\ID_EX|q[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[31]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(105));

-- Location: FF_X73_Y47_N5
\regs|registrador_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[31]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(42));

-- Location: M9K_X78_Y49_N0
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
	port_a_data_width => 36,
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
	port_b_data_width => 36,
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
	clk0 => \divisor|tick~clkctrl_outclk\,
	portadatain => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \regs|registrador_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X73_Y47_N28
\regs|saidaB[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[31]~4_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(42))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~43_combout\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(42),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a31\,
	combout => \regs|saidaB[31]~4_combout\);

-- Location: FF_X73_Y47_N29
\ID_EX|q[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[31]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(73));

-- Location: LCCOMB_X73_Y47_N22
\ula|mux2B|Y[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[31]~1_combout\ = (\ID_EX|q\(138) & (((\ula_ctrl|ula_ctrl[2]~12_combout\) # (\ula_ctrl|ula_ctrl[2]~13_combout\)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(73) $ (((\ula_ctrl|ula_ctrl[2]~12_combout\) # (\ula_ctrl|ula_ctrl[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(73),
	datac => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~13_combout\,
	combout => \ula|mux2B|Y[31]~1_combout\);

-- Location: LCCOMB_X74_Y48_N4
\ula|mux4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~0_combout\ = (\ula_ctrl|ula_ctrl[0]~10_combout\ & (!\ula_ctrl|ula_ctrl[1]~11_combout\ & ((\ID_EX|q\(105)) # (\ula|mux2B|Y[31]~1_combout\)))) # (!\ula_ctrl|ula_ctrl[0]~10_combout\ & ((\ID_EX|q\(105) & ((\ula|mux2B|Y[31]~1_combout\))) # 
-- (!\ID_EX|q\(105) & (\ula_ctrl|ula_ctrl[1]~11_combout\ & !\ula|mux2B|Y[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datac => \ID_EX|q\(105),
	datad => \ula|mux2B|Y[31]~1_combout\,
	combout => \ula|mux4|Mux0~0_combout\);

-- Location: FF_X77_Y46_N31
\regs|registrador_rtl_1_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[30]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(41));

-- Location: LCCOMB_X77_Y46_N10
\regs|saidaB[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[30]~5_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(41))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador~43_combout\,
	datac => \regs|registrador_rtl_1_bypass\(41),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a30\,
	combout => \regs|saidaB[30]~5_combout\);

-- Location: FF_X77_Y46_N11
\ID_EX|q[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(72));

-- Location: LCCOMB_X77_Y46_N30
\mux_Rt_im|Y[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[30]~4_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(72))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(72),
	combout => \mux_Rt_im|Y[30]~4_combout\);

-- Location: LCCOMB_X77_Y49_N10
\mux_Rt_im|Y[29]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[29]~5_combout\ = (\ID_EX|q\(71) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(71),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[29]~5_combout\);

-- Location: LCCOMB_X76_Y48_N4
\regs|registrador_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[40]~feeder_combout\ = \mux_ULA|Y[29]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[29]~6_combout\,
	combout => \regs|registrador_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X76_Y48_N5
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

-- Location: LCCOMB_X77_Y48_N14
\regs|saidaA[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[29]~6_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(40))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0_bypass\(40),
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a29\,
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[29]~6_combout\);

-- Location: FF_X77_Y48_N15
\ID_EX|q[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[29]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(103));

-- Location: FF_X76_Y48_N15
\regs|registrador_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[28]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(39));

-- Location: LCCOMB_X76_Y48_N0
\regs|saidaA[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[28]~7_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(39)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a28\,
	datac => \regs|registrador_rtl_0_bypass\(39),
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[28]~7_combout\);

-- Location: FF_X76_Y48_N1
\ID_EX|q[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[28]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(102));

-- Location: FF_X74_Y45_N15
\regs|registrador_rtl_1_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_ULA|Y[28]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(39));

-- Location: LCCOMB_X74_Y45_N24
\regs|saidaB[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[28]~7_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(39))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a28\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~43_combout\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador_rtl_1_bypass\(39),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a28\,
	combout => \regs|saidaB[28]~7_combout\);

-- Location: FF_X74_Y45_N25
\ID_EX|q[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[28]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(70));

-- Location: LCCOMB_X73_Y45_N16
\mux_Rt_im|Y[28]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[28]~6_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(70))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datad => \ID_EX|q\(70),
	combout => \mux_Rt_im|Y[28]~6_combout\);

-- Location: FF_X77_Y49_N23
\regs|registrador_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[27]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(38));

-- Location: LCCOMB_X77_Y49_N2
\regs|saidaB[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[27]~8_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(38)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~43_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a27\,
	datac => \regs|registrador_rtl_1_bypass\(38),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[27]~8_combout\);

-- Location: FF_X77_Y49_N3
\ID_EX|q[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[27]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(69));

-- Location: LCCOMB_X77_Y49_N22
\mux_Rt_im|Y[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[27]~7_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(69),
	combout => \mux_Rt_im|Y[27]~7_combout\);

-- Location: FF_X77_Y49_N15
\regs|registrador_rtl_1_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[26]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(37));

-- Location: LCCOMB_X77_Y49_N12
\regs|saidaB[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[26]~9_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(37)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a26\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1_bypass\(37),
	combout => \regs|saidaB[26]~9_combout\);

-- Location: FF_X77_Y49_N13
\ID_EX|q[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[26]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(68));

-- Location: LCCOMB_X76_Y48_N6
\mux_Rt_im|Y[26]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[26]~8_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(68))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datad => \ID_EX|q\(68),
	combout => \mux_Rt_im|Y[26]~8_combout\);

-- Location: LCCOMB_X76_Y45_N16
\regs|registrador_rtl_1_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[36]~feeder_combout\ = \mux_ULA|Y[25]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[25]~10_combout\,
	combout => \regs|registrador_rtl_1_bypass[36]~feeder_combout\);

-- Location: FF_X76_Y45_N17
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

-- Location: LCCOMB_X75_Y45_N12
\regs|saidaB[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[25]~10_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(36))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a25\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador_rtl_1_bypass\(36),
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a25\,
	combout => \regs|saidaB[25]~10_combout\);

-- Location: FF_X75_Y45_N13
\ID_EX|q[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[25]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(67));

-- Location: LCCOMB_X72_Y48_N28
\mux_Rt_im|Y[25]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[25]~9_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(67),
	combout => \mux_Rt_im|Y[25]~9_combout\);

-- Location: FF_X74_Y45_N1
\regs|registrador_rtl_1_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[24]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(35));

-- Location: LCCOMB_X74_Y45_N2
\regs|saidaB[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[24]~11_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(35))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a24\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~43_combout\,
	datab => \regs|registrador_rtl_1_bypass\(35),
	datac => \regs|registrador_rtl_1|auto_generated|ram_block1a24\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[24]~11_combout\);

-- Location: FF_X74_Y45_N3
\ID_EX|q[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(66));

-- Location: LCCOMB_X72_Y48_N22
\mux_Rt_im|Y[24]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[24]~10_combout\ = (\ID_EX|q\(66) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(66),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[24]~10_combout\);

-- Location: LCCOMB_X77_Y49_N20
\regs|registrador_rtl_1_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[34]~feeder_combout\ = \mux_ULA|Y[23]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[23]~12_combout\,
	combout => \regs|registrador_rtl_1_bypass[34]~feeder_combout\);

-- Location: FF_X77_Y49_N21
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

-- Location: LCCOMB_X77_Y49_N18
\regs|saidaB[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[23]~12_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(34))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador_rtl_1_bypass\(34),
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a23\,
	combout => \regs|saidaB[23]~12_combout\);

-- Location: FF_X77_Y49_N19
\ID_EX|q[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[23]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(65));

-- Location: LCCOMB_X72_Y48_N24
\mux_Rt_im|Y[23]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[23]~11_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(65))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(65),
	combout => \mux_Rt_im|Y[23]~11_combout\);

-- Location: FF_X75_Y49_N31
\regs|registrador_rtl_1_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[22]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(33));

-- Location: LCCOMB_X75_Y49_N24
\regs|saidaB[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[22]~13_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(33)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~43_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a22\,
	datac => \regs|registrador_rtl_1_bypass\(33),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[22]~13_combout\);

-- Location: FF_X75_Y49_N25
\ID_EX|q[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[22]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(64));

-- Location: LCCOMB_X75_Y49_N30
\mux_Rt_im|Y[22]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[22]~12_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(64),
	combout => \mux_Rt_im|Y[22]~12_combout\);

-- Location: LCCOMB_X79_Y49_N26
\regs|registrador_rtl_1_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[32]~feeder_combout\ = \mux_ULA|Y[21]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[21]~14_combout\,
	combout => \regs|registrador_rtl_1_bypass[32]~feeder_combout\);

-- Location: FF_X79_Y49_N27
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

-- Location: LCCOMB_X79_Y49_N16
\regs|saidaB[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[21]~14_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(32)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a21\,
	datab => \regs|registrador~43_combout\,
	datac => \regs|registrador_rtl_1_bypass\(32),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[21]~14_combout\);

-- Location: FF_X79_Y49_N17
\ID_EX|q[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[21]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(63));

-- Location: LCCOMB_X79_Y48_N26
\mux_Rt_im|Y[21]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[21]~13_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(63))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datad => \ID_EX|q\(63),
	combout => \mux_Rt_im|Y[21]~13_combout\);

-- Location: FF_X75_Y47_N9
\regs|registrador_rtl_1_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[20]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(31));

-- Location: LCCOMB_X75_Y47_N30
\regs|saidaB[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[20]~15_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(31)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a20\,
	datab => \regs|registrador~43_combout\,
	datac => \regs|registrador_rtl_1_bypass\(31),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[20]~15_combout\);

-- Location: FF_X75_Y47_N31
\ID_EX|q[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[20]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(62));

-- Location: LCCOMB_X75_Y47_N10
\mux_Rt_im|Y[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[20]~14_combout\ = (\ID_EX|q\(62) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(62),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[20]~14_combout\);

-- Location: LCCOMB_X79_Y49_N24
\regs|registrador_rtl_1_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[30]~feeder_combout\ = \mux_ULA|Y[19]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[19]~16_combout\,
	combout => \regs|registrador_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X79_Y49_N25
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

-- Location: LCCOMB_X79_Y49_N30
\regs|saidaB[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[19]~16_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(30)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a19\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1_bypass\(30),
	combout => \regs|saidaB[19]~16_combout\);

-- Location: FF_X79_Y49_N31
\ID_EX|q[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[19]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(61));

-- Location: LCCOMB_X79_Y48_N2
\mux_Rt_im|Y[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[19]~15_combout\ = (\ID_EX|q\(61) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(61),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[19]~15_combout\);

-- Location: LCCOMB_X79_Y49_N10
\regs|registrador_rtl_1_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[29]~feeder_combout\ = \mux_ULA|Y[18]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[18]~17_combout\,
	combout => \regs|registrador_rtl_1_bypass[29]~feeder_combout\);

-- Location: FF_X79_Y49_N11
\regs|registrador_rtl_1_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(29));

-- Location: LCCOMB_X79_Y49_N12
\regs|saidaB[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[18]~17_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(29)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a18\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1_bypass\(29),
	combout => \regs|saidaB[18]~17_combout\);

-- Location: FF_X79_Y49_N13
\ID_EX|q[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(60));

-- Location: LCCOMB_X75_Y49_N20
\mux_Rt_im|Y[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[18]~16_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(60))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(60),
	combout => \mux_Rt_im|Y[18]~16_combout\);

-- Location: LCCOMB_X76_Y46_N16
\regs|registrador_rtl_1_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[28]~feeder_combout\ = \mux_ULA|Y[17]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[17]~18_combout\,
	combout => \regs|registrador_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X76_Y46_N17
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

-- Location: LCCOMB_X77_Y46_N2
\regs|saidaB[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[17]~18_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(28))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a17\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(28),
	datab => \regs|registrador~43_combout\,
	datac => \regs|Equal1~0_combout\,
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a17\,
	combout => \regs|saidaB[17]~18_combout\);

-- Location: FF_X77_Y46_N3
\ID_EX|q[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(59));

-- Location: LCCOMB_X75_Y46_N10
\mux_Rt_im|Y[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[17]~17_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(59))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datad => \ID_EX|q\(59),
	combout => \mux_Rt_im|Y[17]~17_combout\);

-- Location: LCCOMB_X79_Y49_N0
\regs|registrador_rtl_1_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[27]~feeder_combout\ = \mux_ULA|Y[16]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[16]~19_combout\,
	combout => \regs|registrador_rtl_1_bypass[27]~feeder_combout\);

-- Location: FF_X79_Y49_N1
\regs|registrador_rtl_1_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_1_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(27));

-- Location: LCCOMB_X79_Y49_N18
\regs|saidaB[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[16]~19_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(27)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a16\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1_bypass\(27),
	combout => \regs|saidaB[16]~19_combout\);

-- Location: FF_X79_Y49_N19
\ID_EX|q[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[16]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(58));

-- Location: LCCOMB_X79_Y49_N28
\mux_Rt_im|Y[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[16]~18_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(58))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(58),
	combout => \mux_Rt_im|Y[16]~18_combout\);

-- Location: FF_X75_Y49_N9
\regs|registrador_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_ULA|Y[15]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(26));

-- Location: LCCOMB_X75_Y49_N26
\regs|saidaB[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[15]~20_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(26)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a15\,
	datab => \regs|registrador_rtl_1_bypass\(26),
	datac => \regs|registrador~43_combout\,
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[15]~20_combout\);

-- Location: FF_X75_Y49_N27
\ID_EX|q[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[15]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(57));

-- Location: LCCOMB_X74_Y49_N26
\mux_Rt_im|Y[15]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[15]~19_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(57))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datad => \ID_EX|q\(57),
	combout => \mux_Rt_im|Y[15]~19_combout\);

-- Location: FF_X77_Y47_N9
\regs|registrador_rtl_1_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_ULA|Y[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(25));

-- Location: LCCOMB_X77_Y47_N2
\regs|saidaB[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[14]~21_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(25))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador~43_combout\,
	datac => \regs|registrador_rtl_1_bypass\(25),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a14\,
	combout => \regs|saidaB[14]~21_combout\);

-- Location: FF_X77_Y47_N3
\ID_EX|q[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(56));

-- Location: LCCOMB_X74_Y50_N10
\mux_Rt_im|Y[14]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[14]~20_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(24))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(24),
	datad => \ID_EX|q\(56),
	combout => \mux_Rt_im|Y[14]~20_combout\);

-- Location: FF_X75_Y50_N1
\regs|registrador_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[13]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(24));

-- Location: LCCOMB_X74_Y50_N20
\regs|saidaB[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[13]~22_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(24))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a13\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador_rtl_1_bypass\(24),
	datac => \regs|registrador_rtl_1|auto_generated|ram_block1a13\,
	datad => \regs|registrador~43_combout\,
	combout => \regs|saidaB[13]~22_combout\);

-- Location: FF_X74_Y50_N21
\ID_EX|q[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(55));

-- Location: LCCOMB_X74_Y50_N18
\mux_Rt_im|Y[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[13]~21_combout\ = (\ID_EX|q\(138) & ((\ID_EX|q\(24)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(55),
	datac => \ID_EX|q\(138),
	datad => \ID_EX|q\(24),
	combout => \mux_Rt_im|Y[13]~21_combout\);

-- Location: LCCOMB_X79_Y47_N2
\regs|registrador_rtl_0_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[23]~feeder_combout\ = \mux_ULA|Y[12]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[12]~23_combout\,
	combout => \regs|registrador_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X79_Y47_N3
\regs|registrador_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(23));

-- Location: LCCOMB_X79_Y47_N12
\regs|saidaA[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[12]~23_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(23)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a12\,
	datad => \regs|registrador_rtl_0_bypass\(23),
	combout => \regs|saidaA[12]~23_combout\);

-- Location: FF_X79_Y47_N13
\ID_EX|q[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(86));

-- Location: FF_X79_Y47_N29
\regs|registrador_rtl_1_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_ULA|Y[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(23));

-- Location: LCCOMB_X79_Y47_N22
\regs|saidaB[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[12]~23_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(23)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~43_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a12\,
	datac => \regs|Equal1~0_combout\,
	datad => \regs|registrador_rtl_1_bypass\(23),
	combout => \regs|saidaB[12]~23_combout\);

-- Location: FF_X79_Y47_N23
\ID_EX|q[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[12]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(54));

-- Location: LCCOMB_X75_Y47_N16
\mux_Rt_im|Y[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[12]~22_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(54))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(54),
	combout => \mux_Rt_im|Y[12]~22_combout\);

-- Location: LCCOMB_X76_Y46_N28
\regs|registrador_rtl_1_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_1_bypass[22]~feeder_combout\ = \mux_ULA|Y[11]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[11]~24_combout\,
	combout => \regs|registrador_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X76_Y46_N29
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

-- Location: LCCOMB_X77_Y46_N26
\regs|saidaB[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[11]~24_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(22)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a11\,
	datab => \regs|registrador_rtl_1_bypass\(22),
	datac => \regs|Equal1~0_combout\,
	datad => \regs|registrador~43_combout\,
	combout => \regs|saidaB[11]~24_combout\);

-- Location: FF_X77_Y46_N27
\ID_EX|q[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(53));

-- Location: LCCOMB_X77_Y46_N18
\mux_Rt_im|Y[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[11]~23_combout\ = (\ID_EX|q\(53) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ID_EX|q\(53),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[11]~23_combout\);

-- Location: LCCOMB_X76_Y46_N10
\regs|registrador_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[22]~feeder_combout\ = \mux_ULA|Y[11]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[11]~24_combout\,
	combout => \regs|registrador_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X76_Y46_N11
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

-- Location: LCCOMB_X75_Y46_N24
\regs|saidaA[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[11]~24_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(22)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a11\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(22),
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[11]~24_combout\);

-- Location: FF_X75_Y46_N25
\ID_EX|q[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[11]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(85));

-- Location: FF_X75_Y45_N5
\regs|registrador_rtl_1_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[10]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(21));

-- Location: LCCOMB_X75_Y45_N26
\regs|saidaB[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[10]~25_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(21))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(21),
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a10\,
	combout => \regs|saidaB[10]~25_combout\);

-- Location: FF_X75_Y45_N27
\ID_EX|q[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[10]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(52));

-- Location: LCCOMB_X75_Y45_N4
\mux_Rt_im|Y[10]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[10]~24_combout\ = (\ID_EX|q\(52) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(52),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[10]~24_combout\);

-- Location: FF_X77_Y49_N29
\regs|registrador_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[9]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(20));

-- Location: LCCOMB_X77_Y49_N28
\regs|saidaB[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[9]~26_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(20)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~43_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a9\,
	datac => \regs|registrador_rtl_1_bypass\(20),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[9]~26_combout\);

-- Location: FF_X74_Y49_N27
\ID_EX|q[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[9]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(51));

-- Location: LCCOMB_X74_Y49_N8
\mux_Rt_im|Y[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[9]~25_combout\ = (\ID_EX|q\(51) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(51),
	datab => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[9]~25_combout\);

-- Location: FF_X77_Y48_N27
\regs|registrador_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[9]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(20));

-- Location: LCCOMB_X77_Y48_N26
\regs|saidaA[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[9]~26_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(20)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a9\,
	datac => \regs|registrador_rtl_0_bypass\(20),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[9]~26_combout\);

-- Location: FF_X74_Y46_N5
\ID_EX|q[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[9]~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(83));

-- Location: LCCOMB_X74_Y46_N4
\ula|full_adder|c_out[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[9]~9_combout\ = (\ID_EX|q\(83) & ((\ula|full_adder|c_out[8]~8_combout\) # (\mux_Rt_im|Y[9]~25_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(83) & (\ula|full_adder|c_out[8]~8_combout\ & (\mux_Rt_im|Y[9]~25_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[9]~25_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ID_EX|q\(83),
	datad => \ula|full_adder|c_out[8]~8_combout\,
	combout => \ula|full_adder|c_out[9]~9_combout\);

-- Location: LCCOMB_X74_Y46_N26
\ula|full_adder|c_out[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[10]~10_combout\ = (\ID_EX|q\(84) & ((\ula|full_adder|c_out[9]~9_combout\) # (\mux_Rt_im|Y[10]~24_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(84) & (\ula|full_adder|c_out[9]~9_combout\ & 
-- (\mux_Rt_im|Y[10]~24_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[10]~24_combout\,
	datab => \ID_EX|q\(84),
	datac => \ula|full_adder|c_out[9]~9_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~14_combout\,
	combout => \ula|full_adder|c_out[10]~10_combout\);

-- Location: LCCOMB_X74_Y46_N8
\ula|full_adder|c_out[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[11]~11_combout\ = (\ID_EX|q\(85) & ((\ula|full_adder|c_out[10]~10_combout\) # (\mux_Rt_im|Y[11]~23_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(85) & (\ula|full_adder|c_out[10]~10_combout\ & 
-- (\mux_Rt_im|Y[11]~23_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[11]~23_combout\,
	datab => \ID_EX|q\(85),
	datac => \ula|full_adder|c_out[10]~10_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~14_combout\,
	combout => \ula|full_adder|c_out[11]~11_combout\);

-- Location: LCCOMB_X74_Y46_N18
\ula|full_adder|c_out[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[12]~12_combout\ = (\ID_EX|q\(86) & ((\ula|full_adder|c_out[11]~11_combout\) # (\mux_Rt_im|Y[12]~22_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(86) & (\ula|full_adder|c_out[11]~11_combout\ & 
-- (\mux_Rt_im|Y[12]~22_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(86),
	datab => \mux_Rt_im|Y[12]~22_combout\,
	datac => \ula|full_adder|c_out[11]~11_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~14_combout\,
	combout => \ula|full_adder|c_out[12]~12_combout\);

-- Location: LCCOMB_X74_Y46_N16
\ula|full_adder|c_out[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[13]~13_combout\ = (\ID_EX|q\(87) & ((\ula|full_adder|c_out[12]~12_combout\) # (\mux_Rt_im|Y[13]~21_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(87) & (\ula|full_adder|c_out[12]~12_combout\ & 
-- (\mux_Rt_im|Y[13]~21_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(87),
	datab => \mux_Rt_im|Y[13]~21_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[12]~12_combout\,
	combout => \ula|full_adder|c_out[13]~13_combout\);

-- Location: LCCOMB_X74_Y46_N10
\ula|full_adder|c_out[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[14]~14_combout\ = (\ID_EX|q\(88) & ((\ula|full_adder|c_out[13]~13_combout\) # (\mux_Rt_im|Y[14]~20_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(88) & (\ula|full_adder|c_out[13]~13_combout\ & 
-- (\mux_Rt_im|Y[14]~20_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[14]~20_combout\,
	datab => \ID_EX|q\(88),
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[13]~13_combout\,
	combout => \ula|full_adder|c_out[14]~14_combout\);

-- Location: LCCOMB_X74_Y46_N0
\ula|full_adder|c_out[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[15]~15_combout\ = (\ID_EX|q\(89) & ((\ula|full_adder|c_out[14]~14_combout\) # (\mux_Rt_im|Y[15]~19_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(89) & (\ula|full_adder|c_out[14]~14_combout\ & 
-- (\mux_Rt_im|Y[15]~19_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(89),
	datab => \mux_Rt_im|Y[15]~19_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[14]~14_combout\,
	combout => \ula|full_adder|c_out[15]~15_combout\);

-- Location: LCCOMB_X74_Y46_N30
\ula|full_adder|c_out[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[16]~16_combout\ = (\ID_EX|q\(90) & ((\ula|full_adder|c_out[15]~15_combout\) # (\mux_Rt_im|Y[16]~18_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(90) & (\ula|full_adder|c_out[15]~15_combout\ & 
-- (\mux_Rt_im|Y[16]~18_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(90),
	datab => \mux_Rt_im|Y[16]~18_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[15]~15_combout\,
	combout => \ula|full_adder|c_out[16]~16_combout\);

-- Location: LCCOMB_X74_Y46_N28
\ula|full_adder|c_out[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[17]~17_combout\ = (\ID_EX|q\(91) & ((\ula|full_adder|c_out[16]~16_combout\) # (\mux_Rt_im|Y[17]~17_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(91) & (\ula|full_adder|c_out[16]~16_combout\ & 
-- (\mux_Rt_im|Y[17]~17_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(91),
	datab => \mux_Rt_im|Y[17]~17_combout\,
	datac => \ula|full_adder|c_out[16]~16_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~14_combout\,
	combout => \ula|full_adder|c_out[17]~17_combout\);

-- Location: LCCOMB_X74_Y46_N6
\ula|full_adder|c_out[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[18]~18_combout\ = (\ID_EX|q\(92) & ((\ula|full_adder|c_out[17]~17_combout\) # (\mux_Rt_im|Y[18]~16_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(92) & (\ula|full_adder|c_out[17]~17_combout\ & 
-- (\mux_Rt_im|Y[18]~16_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[18]~16_combout\,
	datab => \ID_EX|q\(92),
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[17]~17_combout\,
	combout => \ula|full_adder|c_out[18]~18_combout\);

-- Location: LCCOMB_X73_Y48_N20
\ula|full_adder|c_out[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[19]~19_combout\ = (\ID_EX|q\(93) & ((\ula|full_adder|c_out[18]~18_combout\) # (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[19]~15_combout\)))) # (!\ID_EX|q\(93) & (\ula|full_adder|c_out[18]~18_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[19]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \ID_EX|q\(93),
	datac => \mux_Rt_im|Y[19]~15_combout\,
	datad => \ula|full_adder|c_out[18]~18_combout\,
	combout => \ula|full_adder|c_out[19]~19_combout\);

-- Location: LCCOMB_X73_Y48_N16
\ula|full_adder|c_out[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[20]~20_combout\ = (\ID_EX|q\(94) & ((\ula|full_adder|c_out[19]~19_combout\) # (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[20]~14_combout\)))) # (!\ID_EX|q\(94) & (\ula|full_adder|c_out[19]~19_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[20]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \ID_EX|q\(94),
	datac => \mux_Rt_im|Y[20]~14_combout\,
	datad => \ula|full_adder|c_out[19]~19_combout\,
	combout => \ula|full_adder|c_out[20]~20_combout\);

-- Location: LCCOMB_X73_Y48_N10
\ula|full_adder|c_out[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[21]~21_combout\ = (\ID_EX|q\(95) & ((\ula|full_adder|c_out[20]~20_combout\) # (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[21]~13_combout\)))) # (!\ID_EX|q\(95) & (\ula|full_adder|c_out[20]~20_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[21]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \ID_EX|q\(95),
	datac => \mux_Rt_im|Y[21]~13_combout\,
	datad => \ula|full_adder|c_out[20]~20_combout\,
	combout => \ula|full_adder|c_out[21]~21_combout\);

-- Location: LCCOMB_X73_Y48_N18
\ula|full_adder|c_out[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[22]~22_combout\ = (\ID_EX|q\(96) & ((\ula|full_adder|c_out[21]~21_combout\) # (\mux_Rt_im|Y[22]~12_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(96) & (\ula|full_adder|c_out[21]~21_combout\ & 
-- (\mux_Rt_im|Y[22]~12_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[22]~12_combout\,
	datab => \ID_EX|q\(96),
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[21]~21_combout\,
	combout => \ula|full_adder|c_out[22]~22_combout\);

-- Location: LCCOMB_X73_Y48_N0
\ula|full_adder|c_out[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[23]~23_combout\ = (\ID_EX|q\(97) & ((\ula|full_adder|c_out[22]~22_combout\) # (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[23]~11_combout\)))) # (!\ID_EX|q\(97) & (\ula|full_adder|c_out[22]~22_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[23]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[23]~11_combout\,
	datac => \ID_EX|q\(97),
	datad => \ula|full_adder|c_out[22]~22_combout\,
	combout => \ula|full_adder|c_out[23]~23_combout\);

-- Location: LCCOMB_X73_Y48_N2
\ula|full_adder|c_out[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[24]~24_combout\ = (\ID_EX|q\(98) & ((\ula|full_adder|c_out[23]~23_combout\) # (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[24]~10_combout\)))) # (!\ID_EX|q\(98) & (\ula|full_adder|c_out[23]~23_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[24]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[24]~10_combout\,
	datac => \ID_EX|q\(98),
	datad => \ula|full_adder|c_out[23]~23_combout\,
	combout => \ula|full_adder|c_out[24]~24_combout\);

-- Location: LCCOMB_X73_Y48_N24
\ula|full_adder|c_out[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[25]~25_combout\ = (\ID_EX|q\(99) & ((\ula|full_adder|c_out[24]~24_combout\) # (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[25]~9_combout\)))) # (!\ID_EX|q\(99) & (\ula|full_adder|c_out[24]~24_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[25]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \ID_EX|q\(99),
	datac => \mux_Rt_im|Y[25]~9_combout\,
	datad => \ula|full_adder|c_out[24]~24_combout\,
	combout => \ula|full_adder|c_out[25]~25_combout\);

-- Location: LCCOMB_X73_Y48_N6
\ula|full_adder|c_out[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[26]~26_combout\ = (\ID_EX|q\(100) & ((\ula|full_adder|c_out[25]~25_combout\) # (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[26]~8_combout\)))) # (!\ID_EX|q\(100) & (\ula|full_adder|c_out[25]~25_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[26]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \ID_EX|q\(100),
	datac => \mux_Rt_im|Y[26]~8_combout\,
	datad => \ula|full_adder|c_out[25]~25_combout\,
	combout => \ula|full_adder|c_out[26]~26_combout\);

-- Location: LCCOMB_X73_Y48_N28
\ula|full_adder|c_out[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[27]~27_combout\ = (\ID_EX|q\(101) & ((\ula|full_adder|c_out[26]~26_combout\) # (\mux_Rt_im|Y[27]~7_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(101) & (\ula|full_adder|c_out[26]~26_combout\ & 
-- (\mux_Rt_im|Y[27]~7_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(101),
	datab => \mux_Rt_im|Y[27]~7_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[26]~26_combout\,
	combout => \ula|full_adder|c_out[27]~27_combout\);

-- Location: LCCOMB_X73_Y48_N8
\ula|full_adder|c_out[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[28]~28_combout\ = (\ID_EX|q\(102) & ((\ula|full_adder|c_out[27]~27_combout\) # (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[28]~6_combout\)))) # (!\ID_EX|q\(102) & (\ula|full_adder|c_out[27]~27_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[28]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \ID_EX|q\(102),
	datac => \mux_Rt_im|Y[28]~6_combout\,
	datad => \ula|full_adder|c_out[27]~27_combout\,
	combout => \ula|full_adder|c_out[28]~28_combout\);

-- Location: LCCOMB_X74_Y48_N20
\ula|full_adder|c_out[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[29]~29_combout\ = (\ID_EX|q\(103) & ((\ula|full_adder|c_out[28]~28_combout\) # (\mux_Rt_im|Y[29]~5_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(103) & (\ula|full_adder|c_out[28]~28_combout\ & 
-- (\mux_Rt_im|Y[29]~5_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[29]~5_combout\,
	datab => \ID_EX|q\(103),
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[28]~28_combout\,
	combout => \ula|full_adder|c_out[29]~29_combout\);

-- Location: LCCOMB_X74_Y48_N12
\ula|full_adder|c_out[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[30]~30_combout\ = (\ID_EX|q\(104) & ((\ula|full_adder|c_out[29]~29_combout\) # (\mux_Rt_im|Y[30]~4_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(104) & (\ula|full_adder|c_out[29]~29_combout\ & 
-- (\mux_Rt_im|Y[30]~4_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(104),
	datab => \mux_Rt_im|Y[30]~4_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[29]~29_combout\,
	combout => \ula|full_adder|c_out[30]~30_combout\);

-- Location: LCCOMB_X74_Y48_N0
\ula|mux4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~1_combout\ = (\ula_ctrl|ula_ctrl[1]~11_combout\ & (!\ula_ctrl|ula_ctrl[0]~10_combout\ & (\ula|mux4|Mux0~0_combout\ $ (!\ula|full_adder|c_out[30]~30_combout\)))) # (!\ula_ctrl|ula_ctrl[1]~11_combout\ & (\ula|mux4|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula|mux4|Mux0~0_combout\,
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datad => \ula|full_adder|c_out[30]~30_combout\,
	combout => \ula|mux4|Mux0~1_combout\);

-- Location: FF_X74_Y48_N1
\EX_MEM|q[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(68));

-- Location: FF_X74_Y47_N1
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

-- Location: LCCOMB_X74_Y47_N10
\memoriaDados|ram_rtl_0_bypass[76]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[76]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[76]~feeder_combout\);

-- Location: FF_X74_Y47_N11
\memoriaDados|ram_rtl_0_bypass[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[76]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(76));

-- Location: LCCOMB_X77_Y46_N14
\EX_MEM|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[13]~feeder_combout\ = \ID_EX|q\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(50),
	combout => \EX_MEM|q[13]~feeder_combout\);

-- Location: FF_X77_Y46_N15
\EX_MEM|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(13));

-- Location: LCCOMB_X77_Y49_N30
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

-- Location: FF_X77_Y49_N31
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

-- Location: FF_X75_Y45_N17
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

-- Location: FF_X77_Y46_N19
\EX_MEM|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(16));

-- Location: FF_X79_Y47_N11
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

-- Location: LCCOMB_X75_Y50_N6
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

-- Location: FF_X75_Y50_N7
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

-- Location: LCCOMB_X77_Y47_N4
\EX_MEM|q[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[19]~feeder_combout\ = \ID_EX|q\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(56),
	combout => \EX_MEM|q[19]~feeder_combout\);

-- Location: FF_X77_Y47_N5
\EX_MEM|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(19));

-- Location: FF_X75_Y49_N29
\EX_MEM|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(57),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(20));

-- Location: FF_X79_Y47_N17
\EX_MEM|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(21));

-- Location: FF_X77_Y46_N23
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

-- Location: LCCOMB_X79_Y49_N20
\EX_MEM|q[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[23]~feeder_combout\ = \ID_EX|q\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(60),
	combout => \EX_MEM|q[23]~feeder_combout\);

-- Location: FF_X79_Y49_N21
\EX_MEM|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(23));

-- Location: FF_X79_Y49_N15
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

-- Location: FF_X75_Y47_N27
\EX_MEM|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(25));

-- Location: LCCOMB_X79_Y49_N8
\EX_MEM|q[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[26]~feeder_combout\ = \ID_EX|q\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(63),
	combout => \EX_MEM|q[26]~feeder_combout\);

-- Location: FF_X79_Y49_N9
\EX_MEM|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(26));

-- Location: LCCOMB_X76_Y49_N8
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

-- Location: FF_X76_Y49_N9
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

-- Location: LCCOMB_X77_Y47_N22
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

-- Location: FF_X77_Y47_N23
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

-- Location: LCCOMB_X72_Y47_N12
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

-- Location: FF_X72_Y47_N13
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

-- Location: FF_X75_Y45_N23
\EX_MEM|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(67),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(30));

-- Location: LCCOMB_X76_Y48_N30
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

-- Location: FF_X76_Y48_N31
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

-- Location: LCCOMB_X77_Y49_N8
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

-- Location: FF_X77_Y49_N9
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

-- Location: LCCOMB_X74_Y45_N26
\EX_MEM|q[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[33]~feeder_combout\ = \ID_EX|q\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(70),
	combout => \EX_MEM|q[33]~feeder_combout\);

-- Location: FF_X74_Y45_N27
\EX_MEM|q[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(33));

-- Location: LCCOMB_X77_Y46_N6
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

-- Location: FF_X77_Y46_N7
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

-- Location: LCCOMB_X73_Y47_N20
\EX_MEM|q[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[36]~feeder_combout\ = \ID_EX|q\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ID_EX|q\(73),
	combout => \EX_MEM|q[36]~feeder_combout\);

-- Location: FF_X73_Y47_N21
\EX_MEM|q[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(36));

-- Location: M9K_X78_Y47_N0
\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A000000009000000008000000007000000006000000005000000004000000003000000002000000001",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/ula_mips.ram0_memoria_de_dados_a9f5452f.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "memoria_de_dados:memoriaDados|altsyncram:ram_rtl_0|altsyncram_31i1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
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
	port_b_data_width => 36,
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
	clk0 => \divisor|tick~clkctrl_outclk\,
	clk1 => \divisor|tick~clkctrl_outclk\,
	ena0 => \EX_MEM|q\(102),
	portadatain => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X73_Y47_N8
\memoriaDados|ram_rtl_0_bypass[75]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[75]~feeder_combout\ = \EX_MEM|q\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(36),
	combout => \memoriaDados|ram_rtl_0_bypass[75]~feeder_combout\);

-- Location: FF_X73_Y47_N9
\memoriaDados|ram_rtl_0_bypass[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[75]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(75));

-- Location: LCCOMB_X74_Y47_N20
\memoriaDados|ram~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~47_combout\ = (\memoriaDados|ram_rtl_0_bypass\(76) & ((\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(75)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(76) & (((\memoriaDados|ram_rtl_0_bypass\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(76),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a31\,
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(75),
	combout => \memoriaDados|ram~47_combout\);

-- Location: FF_X74_Y47_N21
\MEM_WB|q[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(68));

-- Location: LCCOMB_X74_Y47_N0
\mux_ULA|Y[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[31]~4_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(68)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(36),
	datad => \MEM_WB|q\(68),
	combout => \mux_ULA|Y[31]~4_combout\);

-- Location: LCCOMB_X77_Y48_N20
\regs|saidaA[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[30]~5_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(41))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a30\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(41),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a30\,
	combout => \regs|saidaA[30]~5_combout\);

-- Location: FF_X77_Y48_N21
\ID_EX|q[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[30]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(104));

-- Location: LCCOMB_X74_Y48_N16
\ula|mux4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~0_combout\ = \mux_Rt_im|Y[30]~4_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[29]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \mux_Rt_im|Y[30]~4_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[29]~29_combout\,
	combout => \ula|mux4|Mux1~0_combout\);

-- Location: LCCOMB_X74_Y48_N10
\ula|mux4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~1_combout\ = (\ID_EX|q\(104) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux1~0_combout\))))) # (!\ID_EX|q\(104) & (\ula|mux4|Mux1~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datac => \ID_EX|q\(104),
	datad => \ula|mux4|Mux1~0_combout\,
	combout => \ula|mux4|Mux1~1_combout\);

-- Location: FF_X74_Y48_N11
\EX_MEM|q[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(67));

-- Location: LCCOMB_X75_Y48_N26
\MEM_WB|q[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[35]~feeder_combout\ = \EX_MEM|q\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(67),
	combout => \MEM_WB|q[35]~feeder_combout\);

-- Location: FF_X75_Y48_N27
\MEM_WB|q[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(35));

-- Location: LCCOMB_X77_Y48_N24
\memoriaDados|ram_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X77_Y48_N25
\memoriaDados|ram_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(74));

-- Location: FF_X77_Y48_N19
\memoriaDados|ram_rtl_0_bypass[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(35),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(73));

-- Location: LCCOMB_X77_Y48_N8
\memoriaDados|ram~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~48_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(73))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(74) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(74) & ((\memoriaDados|ram_rtl_0_bypass\(73))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0_bypass\(74),
	datac => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a30\,
	datad => \memoriaDados|ram_rtl_0_bypass\(73),
	combout => \memoriaDados|ram~48_combout\);

-- Location: FF_X77_Y48_N9
\MEM_WB|q[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(67));

-- Location: LCCOMB_X77_Y48_N18
\mux_ULA|Y[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[30]~5_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(67)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(35),
	datab => \MEM_WB|q\(69),
	datad => \MEM_WB|q\(67),
	combout => \mux_ULA|Y[30]~5_combout\);

-- Location: FF_X77_Y49_N5
\regs|registrador_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[29]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(40));

-- Location: LCCOMB_X77_Y49_N26
\regs|saidaB[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[29]~6_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(40)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~43_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a29\,
	datac => \regs|registrador_rtl_1_bypass\(40),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[29]~6_combout\);

-- Location: FF_X77_Y49_N27
\ID_EX|q[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[29]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(71));

-- Location: FF_X77_Y49_N11
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

-- Location: FF_X77_Y48_N23
\memoriaDados|ram_rtl_0_bypass[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(71));

-- Location: LCCOMB_X77_Y48_N30
\memoriaDados|ram_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X77_Y48_N31
\memoriaDados|ram_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(72));

-- Location: LCCOMB_X77_Y48_N12
\memoriaDados|ram~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~49_combout\ = (\memoriaDados|ram_rtl_0_bypass\(72) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(71))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(72) & (\memoriaDados|ram_rtl_0_bypass\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(71),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a29\,
	datac => \memoriaDados|ram_rtl_0_bypass\(72),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~49_combout\);

-- Location: FF_X77_Y48_N13
\MEM_WB|q[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(66));

-- Location: LCCOMB_X74_Y48_N24
\ula|mux4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[29]~5_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \mux_Rt_im|Y[29]~5_combout\,
	datad => \ula|full_adder|c_out[28]~28_combout\,
	combout => \ula|mux4|Mux2~0_combout\);

-- Location: LCCOMB_X74_Y48_N8
\ula|mux4|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~1_combout\ = (\ID_EX|q\(103) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux2~0_combout\))))) # (!\ID_EX|q\(103) & (\ula|mux4|Mux2~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ID_EX|q\(103),
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datad => \ula|mux4|Mux2~0_combout\,
	combout => \ula|mux4|Mux2~1_combout\);

-- Location: FF_X74_Y48_N9
\EX_MEM|q[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(66));

-- Location: FF_X74_Y48_N29
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

-- Location: LCCOMB_X77_Y48_N22
\mux_ULA|Y[29]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[29]~6_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(66))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(66),
	datab => \MEM_WB|q\(69),
	datad => \MEM_WB|q\(34),
	combout => \mux_ULA|Y[29]~6_combout\);

-- Location: FF_X73_Y47_N19
\regs|registrador_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[7]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(18));

-- Location: LCCOMB_X74_Y47_N12
\regs|saidaB[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[7]~28_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(18)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~43_combout\,
	datab => \regs|registrador_rtl_1|auto_generated|ram_block1a7\,
	datac => \regs|registrador_rtl_1_bypass\(18),
	datad => \regs|Equal1~0_combout\,
	combout => \regs|saidaB[7]~28_combout\);

-- Location: FF_X74_Y47_N13
\ID_EX|q[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(49));

-- Location: LCCOMB_X75_Y47_N2
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

-- Location: FF_X75_Y47_N3
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

-- Location: LCCOMB_X74_Y45_N8
\memoriaDados|ram_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X74_Y45_N9
\memoriaDados|ram_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(70));

-- Location: FF_X74_Y45_N11
\memoriaDados|ram_rtl_0_bypass[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(33),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(69));

-- Location: LCCOMB_X74_Y45_N12
\memoriaDados|ram~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~50_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(69))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(70) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(70) & ((\memoriaDados|ram_rtl_0_bypass\(69))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a28\,
	datac => \memoriaDados|ram_rtl_0_bypass\(70),
	datad => \memoriaDados|ram_rtl_0_bypass\(69),
	combout => \memoriaDados|ram~50_combout\);

-- Location: FF_X74_Y45_N13
\MEM_WB|q[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(65));

-- Location: LCCOMB_X73_Y48_N12
\ula|mux4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[28]~6_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \mux_Rt_im|Y[28]~6_combout\,
	datad => \ula|full_adder|c_out[27]~27_combout\,
	combout => \ula|mux4|Mux3~0_combout\);

-- Location: LCCOMB_X73_Y48_N22
\ula|mux4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~1_combout\ = (\ID_EX|q\(102) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux3~0_combout\))))) # (!\ID_EX|q\(102) & (\ula|mux4|Mux3~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(102),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux3~0_combout\,
	combout => \ula|mux4|Mux3~1_combout\);

-- Location: FF_X73_Y48_N23
\EX_MEM|q[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(65));

-- Location: FF_X73_Y48_N27
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

-- Location: LCCOMB_X74_Y45_N14
\mux_ULA|Y[28]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[28]~7_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(65))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(65),
	datac => \MEM_WB|q\(69),
	datad => \MEM_WB|q\(33),
	combout => \mux_ULA|Y[28]~7_combout\);

-- Location: LCCOMB_X77_Y48_N2
\regs|registrador_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[38]~feeder_combout\ = \mux_ULA|Y[27]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[27]~8_combout\,
	combout => \regs|registrador_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X77_Y48_N3
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

-- Location: LCCOMB_X77_Y48_N16
\regs|saidaA[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[27]~8_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(38)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a27\,
	datad => \regs|registrador_rtl_0_bypass\(38),
	combout => \regs|saidaA[27]~8_combout\);

-- Location: FF_X77_Y48_N17
\ID_EX|q[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[27]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(101));

-- Location: LCCOMB_X73_Y48_N4
\ula|mux4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[27]~7_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[26]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[27]~7_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|full_adder|c_out[26]~26_combout\,
	combout => \ula|mux4|Mux4~0_combout\);

-- Location: LCCOMB_X73_Y48_N14
\ula|mux4|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~1_combout\ = (\ID_EX|q\(101) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux4~0_combout\))))) # (!\ID_EX|q\(101) & (\ula|mux4|Mux4~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(101),
	datac => \ula|mux4|Mux4~0_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux4~1_combout\);

-- Location: FF_X73_Y48_N15
\EX_MEM|q[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(64));

-- Location: FF_X76_Y48_N3
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

-- Location: LCCOMB_X77_Y45_N24
\memoriaDados|ram_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X77_Y45_N25
\memoriaDados|ram_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(68));

-- Location: LCCOMB_X77_Y45_N2
\memoriaDados|ram_rtl_0_bypass[67]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[67]~feeder_combout\ = \EX_MEM|q\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(32),
	combout => \memoriaDados|ram_rtl_0_bypass[67]~feeder_combout\);

-- Location: FF_X77_Y45_N3
\memoriaDados|ram_rtl_0_bypass[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[67]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(67));

-- Location: LCCOMB_X77_Y45_N26
\memoriaDados|ram~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~51_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(67))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(68) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(68) & ((\memoriaDados|ram_rtl_0_bypass\(67))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0_bypass\(68),
	datac => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a27\,
	datad => \memoriaDados|ram_rtl_0_bypass\(67),
	combout => \memoriaDados|ram~51_combout\);

-- Location: FF_X77_Y45_N27
\MEM_WB|q[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(64));

-- Location: LCCOMB_X76_Y48_N2
\mux_ULA|Y[27]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[27]~8_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(64)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(32),
	datad => \MEM_WB|q\(64),
	combout => \mux_ULA|Y[27]~8_combout\);

-- Location: LCCOMB_X76_Y48_N16
\regs|registrador_rtl_0_bypass[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[37]~feeder_combout\ = \mux_ULA|Y[26]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[26]~9_combout\,
	combout => \regs|registrador_rtl_0_bypass[37]~feeder_combout\);

-- Location: FF_X76_Y48_N17
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

-- Location: LCCOMB_X76_Y48_N24
\regs|saidaA[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[26]~9_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(37)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a26\,
	datad => \regs|registrador_rtl_0_bypass\(37),
	combout => \regs|saidaA[26]~9_combout\);

-- Location: FF_X76_Y48_N25
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

-- Location: LCCOMB_X72_Y48_N18
\ula|mux4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[26]~8_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \mux_Rt_im|Y[26]~8_combout\,
	datad => \ula|full_adder|c_out[25]~25_combout\,
	combout => \ula|mux4|Mux5~0_combout\);

-- Location: LCCOMB_X72_Y48_N16
\ula|mux4|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~1_combout\ = (\ID_EX|q\(100) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux5~0_combout\))))) # (!\ID_EX|q\(100) & (\ula|mux4|Mux5~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(100),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux5~0_combout\,
	combout => \ula|mux4|Mux5~1_combout\);

-- Location: FF_X72_Y48_N17
\EX_MEM|q[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(63));

-- Location: FF_X75_Y48_N1
\MEM_WB|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(63),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(31));

-- Location: FF_X76_Y48_N19
\memoriaDados|ram_rtl_0_bypass[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(65));

-- Location: LCCOMB_X76_Y48_N8
\memoriaDados|ram_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X76_Y48_N9
\memoriaDados|ram_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(66));

-- Location: LCCOMB_X76_Y48_N28
\memoriaDados|ram~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~52_combout\ = (\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(65))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(66) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(66) & (\memoriaDados|ram_rtl_0_bypass\(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0_bypass\(65),
	datac => \memoriaDados|ram_rtl_0_bypass\(66),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a26\,
	combout => \memoriaDados|ram~52_combout\);

-- Location: FF_X76_Y48_N29
\MEM_WB|q[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(63));

-- Location: LCCOMB_X75_Y48_N0
\mux_ULA|Y[26]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[26]~9_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(63)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(31),
	datad => \MEM_WB|q\(63),
	combout => \mux_ULA|Y[26]~9_combout\);

-- Location: FF_X76_Y48_N11
\regs|registrador_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[25]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(36));

-- Location: LCCOMB_X76_Y48_N26
\regs|saidaA[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[25]~10_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(36)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a25\,
	datad => \regs|registrador_rtl_0_bypass\(36),
	combout => \regs|saidaA[25]~10_combout\);

-- Location: FF_X76_Y48_N27
\ID_EX|q[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[25]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(99));

-- Location: LCCOMB_X72_Y48_N6
\ula|mux4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[25]~9_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[24]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[25]~9_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|full_adder|c_out[24]~24_combout\,
	combout => \ula|mux4|Mux6~0_combout\);

-- Location: LCCOMB_X72_Y48_N12
\ula|mux4|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~1_combout\ = (\ID_EX|q\(99) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux6~0_combout\))))) # (!\ID_EX|q\(99) & (\ula|mux4|Mux6~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(99),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux6~0_combout\,
	combout => \ula|mux4|Mux6~1_combout\);

-- Location: FF_X72_Y48_N13
\EX_MEM|q[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(62));

-- Location: FF_X72_Y48_N29
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

-- Location: LCCOMB_X77_Y45_N16
\memoriaDados|ram_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X77_Y45_N17
\memoriaDados|ram_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(64));

-- Location: LCCOMB_X77_Y45_N18
\memoriaDados|ram_rtl_0_bypass[63]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[63]~feeder_combout\ = \EX_MEM|q\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(30),
	combout => \memoriaDados|ram_rtl_0_bypass[63]~feeder_combout\);

-- Location: FF_X77_Y45_N19
\memoriaDados|ram_rtl_0_bypass[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[63]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(63));

-- Location: LCCOMB_X77_Y45_N4
\memoriaDados|ram~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~53_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(63))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(64) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(64) & ((\memoriaDados|ram_rtl_0_bypass\(63))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0_bypass\(64),
	datac => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a25\,
	datad => \memoriaDados|ram_rtl_0_bypass\(63),
	combout => \memoriaDados|ram~53_combout\);

-- Location: FF_X77_Y45_N5
\MEM_WB|q[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(62));

-- Location: LCCOMB_X76_Y48_N14
\mux_ULA|Y[25]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[25]~10_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(62)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \MEM_WB|q\(30),
	datad => \MEM_WB|q\(62),
	combout => \mux_ULA|Y[25]~10_combout\);

-- Location: LCCOMB_X76_Y48_N12
\regs|saidaA[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[24]~11_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(35))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a24\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0_bypass\(35),
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a24\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[24]~11_combout\);

-- Location: FF_X76_Y48_N13
\ID_EX|q[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[24]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(98));

-- Location: LCCOMB_X72_Y48_N26
\ula|mux4|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~0_combout\ = \mux_Rt_im|Y[24]~10_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[23]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[24]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ula|full_adder|c_out[23]~23_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~14_combout\,
	combout => \ula|mux4|Mux7~0_combout\);

-- Location: LCCOMB_X72_Y48_N20
\ula|mux4|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~1_combout\ = (\ID_EX|q\(98) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux7~0_combout\))))) # (!\ID_EX|q\(98) & (\ula|mux4|Mux7~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(98),
	datac => \ula|mux4|Mux7~0_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux7~1_combout\);

-- Location: FF_X72_Y48_N21
\EX_MEM|q[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(61));

-- Location: FF_X72_Y47_N1
\MEM_WB|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(61),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(29));

-- Location: LCCOMB_X72_Y47_N24
\memoriaDados|ram_rtl_0_bypass[61]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[61]~feeder_combout\ = \EX_MEM|q\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(29),
	combout => \memoriaDados|ram_rtl_0_bypass[61]~feeder_combout\);

-- Location: FF_X72_Y47_N25
\memoriaDados|ram_rtl_0_bypass[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[61]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(61));

-- Location: LCCOMB_X72_Y47_N2
\memoriaDados|ram_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X72_Y47_N3
\memoriaDados|ram_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(62));

-- Location: LCCOMB_X72_Y47_N18
\memoriaDados|ram~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~54_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(61))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(62) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(62) & ((\memoriaDados|ram_rtl_0_bypass\(61))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a24\,
	datab => \memoriaDados|ram_rtl_0_bypass\(61),
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(62),
	combout => \memoriaDados|ram~54_combout\);

-- Location: FF_X72_Y47_N19
\MEM_WB|q[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(61));

-- Location: LCCOMB_X72_Y47_N0
\mux_ULA|Y[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[24]~11_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(61)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(29),
	datad => \MEM_WB|q\(61),
	combout => \mux_ULA|Y[24]~11_combout\);

-- Location: LCCOMB_X76_Y48_N22
\regs|saidaA[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[23]~12_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(34))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a23\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(34),
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a23\,
	combout => \regs|saidaA[23]~12_combout\);

-- Location: FF_X76_Y48_N23
\ID_EX|q[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[23]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(97));

-- Location: LCCOMB_X72_Y48_N10
\ula|mux4|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[23]~11_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[22]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[23]~11_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|full_adder|c_out[22]~22_combout\,
	combout => \ula|mux4|Mux8~0_combout\);

-- Location: LCCOMB_X72_Y48_N8
\ula|mux4|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~1_combout\ = (\ID_EX|q\(97) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux8~0_combout\))))) # (!\ID_EX|q\(97) & (\ula|mux4|Mux8~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(97),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux8~0_combout\,
	combout => \ula|mux4|Mux8~1_combout\);

-- Location: FF_X72_Y48_N9
\EX_MEM|q[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(60));

-- Location: FF_X75_Y47_N15
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

-- Location: LCCOMB_X76_Y47_N2
\memoriaDados|ram_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X76_Y47_N3
\memoriaDados|ram_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(60));

-- Location: FF_X77_Y47_N29
\memoriaDados|ram_rtl_0_bypass[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(59));

-- Location: LCCOMB_X76_Y47_N16
\memoriaDados|ram~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~55_combout\ = (\memoriaDados|ram_rtl_0_bypass\(60) & ((\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(59)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(60) & (((\memoriaDados|ram_rtl_0_bypass\(59)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a23\,
	datab => \memoriaDados|ram_rtl_0_bypass\(60),
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(59),
	combout => \memoriaDados|ram~55_combout\);

-- Location: FF_X76_Y47_N17
\MEM_WB|q[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(60));

-- Location: LCCOMB_X75_Y47_N14
\mux_ULA|Y[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[23]~12_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(60)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(28),
	datad => \MEM_WB|q\(60),
	combout => \mux_ULA|Y[23]~12_combout\);

-- Location: FF_X79_Y48_N27
\regs|registrador_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[22]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(33));

-- Location: LCCOMB_X79_Y48_N24
\regs|saidaA[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[22]~13_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(33)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a22\,
	datac => \regs|registrador_rtl_0_bypass\(33),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[22]~13_combout\);

-- Location: FF_X79_Y48_N25
\ID_EX|q[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[22]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(96));

-- Location: LCCOMB_X73_Y48_N30
\ula|mux4|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~0_combout\ = \mux_Rt_im|Y[22]~12_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[21]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[22]~12_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[21]~21_combout\,
	combout => \ula|mux4|Mux9~0_combout\);

-- Location: LCCOMB_X74_Y48_N6
\ula|mux4|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~1_combout\ = (\ID_EX|q\(96) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux9~0_combout\))))) # (!\ID_EX|q\(96) & (\ula|mux4|Mux9~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datac => \ID_EX|q\(96),
	datad => \ula|mux4|Mux9~0_combout\,
	combout => \ula|mux4|Mux9~1_combout\);

-- Location: FF_X74_Y48_N7
\EX_MEM|q[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(59));

-- Location: FF_X80_Y48_N1
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

-- Location: LCCOMB_X80_Y48_N26
\memoriaDados|ram_rtl_0_bypass[57]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[57]~feeder_combout\ = \EX_MEM|q\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(27),
	combout => \memoriaDados|ram_rtl_0_bypass[57]~feeder_combout\);

-- Location: FF_X80_Y48_N27
\memoriaDados|ram_rtl_0_bypass[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[57]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(57));

-- Location: LCCOMB_X80_Y48_N24
\memoriaDados|ram_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X80_Y48_N25
\memoriaDados|ram_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(58));

-- Location: LCCOMB_X80_Y48_N6
\memoriaDados|ram~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~56_combout\ = (\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(57))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(58) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(58) & (\memoriaDados|ram_rtl_0_bypass\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(57),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a22\,
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(58),
	combout => \memoriaDados|ram~56_combout\);

-- Location: FF_X80_Y48_N7
\MEM_WB|q[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(59));

-- Location: LCCOMB_X80_Y48_N0
\mux_ULA|Y[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[22]~13_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(59)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(27),
	datad => \MEM_WB|q\(59),
	combout => \mux_ULA|Y[22]~13_combout\);

-- Location: LCCOMB_X80_Y48_N20
\regs|registrador_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[32]~feeder_combout\ = \mux_ULA|Y[21]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[21]~14_combout\,
	combout => \regs|registrador_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X80_Y48_N21
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

-- Location: LCCOMB_X79_Y48_N4
\regs|saidaA[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[21]~14_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(32)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a21\,
	datac => \regs|registrador_rtl_0_bypass\(32),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[21]~14_combout\);

-- Location: FF_X79_Y48_N5
\ID_EX|q[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[21]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(95));

-- Location: LCCOMB_X75_Y48_N18
\ula|mux4|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[21]~13_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[20]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \mux_Rt_im|Y[21]~13_combout\,
	datad => \ula|full_adder|c_out[20]~20_combout\,
	combout => \ula|mux4|Mux10~0_combout\);

-- Location: LCCOMB_X75_Y48_N20
\ula|mux4|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~1_combout\ = (\ID_EX|q\(95) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux10~0_combout\))))) # (!\ID_EX|q\(95) & (\ula|mux4|Mux10~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ID_EX|q\(95),
	datad => \ula|mux4|Mux10~0_combout\,
	combout => \ula|mux4|Mux10~1_combout\);

-- Location: FF_X75_Y48_N21
\EX_MEM|q[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(58));

-- Location: FF_X79_Y48_N15
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

-- Location: LCCOMB_X80_Y48_N14
\memoriaDados|ram_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X80_Y48_N15
\memoriaDados|ram_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(56));

-- Location: FF_X79_Y49_N29
\memoriaDados|ram_rtl_0_bypass[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(55));

-- Location: LCCOMB_X79_Y48_N0
\memoriaDados|ram~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~57_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(55))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(56) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(56) & ((\memoriaDados|ram_rtl_0_bypass\(55))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a21\,
	datab => \memoriaDados|ram~42_combout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(56),
	datad => \memoriaDados|ram_rtl_0_bypass\(55),
	combout => \memoriaDados|ram~57_combout\);

-- Location: FF_X79_Y48_N1
\MEM_WB|q[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(58));

-- Location: LCCOMB_X79_Y48_N14
\mux_ULA|Y[21]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[21]~14_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(58)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(26),
	datad => \MEM_WB|q\(58),
	combout => \mux_ULA|Y[21]~14_combout\);

-- Location: LCCOMB_X77_Y48_N0
\regs|registrador_rtl_0_bypass[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[31]~feeder_combout\ = \mux_ULA|Y[20]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[20]~15_combout\,
	combout => \regs|registrador_rtl_0_bypass[31]~feeder_combout\);

-- Location: FF_X77_Y48_N1
\regs|registrador_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(31));

-- Location: LCCOMB_X77_Y48_N6
\regs|saidaA[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[20]~15_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(31)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a20\,
	datad => \regs|registrador_rtl_0_bypass\(31),
	combout => \regs|saidaA[20]~15_combout\);

-- Location: FF_X77_Y48_N7
\ID_EX|q[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[20]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(94));

-- Location: LCCOMB_X75_Y48_N6
\ula|mux4|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~0_combout\ = \mux_Rt_im|Y[20]~14_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[19]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \mux_Rt_im|Y[20]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[19]~19_combout\,
	combout => \ula|mux4|Mux11~0_combout\);

-- Location: LCCOMB_X75_Y48_N22
\ula|mux4|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~1_combout\ = (\ID_EX|q\(94) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux11~0_combout\))))) # (!\ID_EX|q\(94) & (\ula|mux4|Mux11~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ID_EX|q\(94),
	datad => \ula|mux4|Mux11~0_combout\,
	combout => \ula|mux4|Mux11~1_combout\);

-- Location: FF_X75_Y48_N23
\EX_MEM|q[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(57));

-- Location: FF_X75_Y48_N3
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

-- Location: FF_X75_Y47_N11
\memoriaDados|ram_rtl_0_bypass[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(25),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(53));

-- Location: LCCOMB_X75_Y47_N22
\memoriaDados|ram_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X75_Y47_N23
\memoriaDados|ram_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(54));

-- Location: LCCOMB_X75_Y47_N0
\memoriaDados|ram~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~58_combout\ = (\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(53))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(54) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(54) & (\memoriaDados|ram_rtl_0_bypass\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(53),
	datab => \memoriaDados|ram~42_combout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(54),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \memoriaDados|ram~58_combout\);

-- Location: FF_X75_Y47_N1
\MEM_WB|q[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(57));

-- Location: LCCOMB_X75_Y48_N2
\mux_ULA|Y[20]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[20]~15_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(57)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(25),
	datad => \MEM_WB|q\(57),
	combout => \mux_ULA|Y[20]~15_combout\);

-- Location: LCCOMB_X79_Y48_N8
\regs|saidaA[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[19]~16_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(30))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador_rtl_0_bypass\(30),
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a19\,
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[19]~16_combout\);

-- Location: FF_X79_Y48_N9
\ID_EX|q[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[19]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(93));

-- Location: LCCOMB_X75_Y48_N12
\ula|mux4|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~0_combout\ = \mux_Rt_im|Y[19]~15_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula|full_adder|c_out[18]~18_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[19]~15_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ula|full_adder|c_out[18]~18_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux12~0_combout\);

-- Location: LCCOMB_X75_Y48_N8
\ula|mux4|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~1_combout\ = (\ID_EX|q\(93) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux12~0_combout\))))) # (!\ID_EX|q\(93) & (\ula|mux4|Mux12~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ID_EX|q\(93),
	datad => \ula|mux4|Mux12~0_combout\,
	combout => \ula|mux4|Mux12~1_combout\);

-- Location: FF_X75_Y48_N9
\EX_MEM|q[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(56));

-- Location: FF_X79_Y48_N19
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

-- Location: LCCOMB_X79_Y48_N22
\memoriaDados|ram_rtl_0_bypass[51]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[51]~feeder_combout\ = \EX_MEM|q\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(24),
	combout => \memoriaDados|ram_rtl_0_bypass[51]~feeder_combout\);

-- Location: FF_X79_Y48_N23
\memoriaDados|ram_rtl_0_bypass[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[51]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(51));

-- Location: LCCOMB_X80_Y48_N28
\memoriaDados|ram_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X80_Y48_N29
\memoriaDados|ram_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(52));

-- Location: LCCOMB_X79_Y48_N20
\memoriaDados|ram~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~59_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(51))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(52) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(52) & ((\memoriaDados|ram_rtl_0_bypass\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a19\,
	datab => \memoriaDados|ram~42_combout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(51),
	datad => \memoriaDados|ram_rtl_0_bypass\(52),
	combout => \memoriaDados|ram~59_combout\);

-- Location: FF_X79_Y48_N21
\MEM_WB|q[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(56));

-- Location: LCCOMB_X79_Y48_N18
\mux_ULA|Y[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[19]~16_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(56)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(24),
	datad => \MEM_WB|q\(56),
	combout => \mux_ULA|Y[19]~16_combout\);

-- Location: LCCOMB_X80_Y48_N12
\regs|registrador_rtl_0_bypass[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[29]~feeder_combout\ = \mux_ULA|Y[18]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[18]~17_combout\,
	combout => \regs|registrador_rtl_0_bypass[29]~feeder_combout\);

-- Location: FF_X80_Y48_N13
\regs|registrador_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(29));

-- Location: LCCOMB_X79_Y48_N10
\regs|saidaA[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[18]~17_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(29)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a18\,
	datab => \regs|registrador_rtl_0_bypass\(29),
	datac => \regs|Equal0~0_combout\,
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[18]~17_combout\);

-- Location: FF_X79_Y48_N11
\ID_EX|q[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(92));

-- Location: LCCOMB_X75_Y48_N16
\ula|mux4|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~0_combout\ = \mux_Rt_im|Y[18]~16_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \mux_Rt_im|Y[18]~16_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[17]~17_combout\,
	combout => \ula|mux4|Mux13~0_combout\);

-- Location: LCCOMB_X75_Y48_N10
\ula|mux4|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~1_combout\ = (\ID_EX|q\(92) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux13~0_combout\))))) # (!\ID_EX|q\(92) & (\ula|mux4|Mux13~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ID_EX|q\(92),
	datad => \ula|mux4|Mux13~0_combout\,
	combout => \ula|mux4|Mux13~1_combout\);

-- Location: FF_X75_Y48_N11
\EX_MEM|q[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(55));

-- Location: FF_X79_Y48_N13
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

-- Location: LCCOMB_X80_Y48_N4
\memoriaDados|ram_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X80_Y48_N5
\memoriaDados|ram_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(50));

-- Location: LCCOMB_X80_Y48_N2
\memoriaDados|ram_rtl_0_bypass[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[49]~feeder_combout\ = \EX_MEM|q\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(23),
	combout => \memoriaDados|ram_rtl_0_bypass[49]~feeder_combout\);

-- Location: FF_X80_Y48_N3
\memoriaDados|ram_rtl_0_bypass[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(49));

-- Location: LCCOMB_X80_Y48_N18
\memoriaDados|ram~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~60_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(49))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(50) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(50) & ((\memoriaDados|ram_rtl_0_bypass\(49))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a18\,
	datab => \memoriaDados|ram~42_combout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(50),
	datad => \memoriaDados|ram_rtl_0_bypass\(49),
	combout => \memoriaDados|ram~60_combout\);

-- Location: FF_X80_Y48_N19
\MEM_WB|q[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(55));

-- Location: LCCOMB_X79_Y48_N12
\mux_ULA|Y[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[18]~17_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(55)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(23),
	datad => \MEM_WB|q\(55),
	combout => \mux_ULA|Y[18]~17_combout\);

-- Location: LCCOMB_X75_Y46_N18
\regs|saidaA[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[17]~18_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(28))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a17\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(28),
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a17\,
	combout => \regs|saidaA[17]~18_combout\);

-- Location: FF_X75_Y46_N19
\ID_EX|q[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[17]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(91));

-- Location: LCCOMB_X75_Y46_N16
\ula|mux4|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~0_combout\ = \mux_Rt_im|Y[17]~17_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[16]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \mux_Rt_im|Y[17]~17_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[16]~16_combout\,
	combout => \ula|mux4|Mux14~0_combout\);

-- Location: LCCOMB_X75_Y46_N4
\ula|mux4|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~1_combout\ = (\ID_EX|q\(91) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux14~0_combout\))))) # (!\ID_EX|q\(91) & (\ula|mux4|Mux14~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(91),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux14~0_combout\,
	combout => \ula|mux4|Mux14~1_combout\);

-- Location: FF_X75_Y46_N5
\EX_MEM|q[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(54));

-- Location: FF_X76_Y46_N7
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

-- Location: LCCOMB_X80_Y48_N16
\memoriaDados|ram_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X80_Y48_N17
\memoriaDados|ram_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(48));

-- Location: LCCOMB_X80_Y48_N10
\memoriaDados|ram_rtl_0_bypass[47]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[47]~feeder_combout\ = \EX_MEM|q\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(22),
	combout => \memoriaDados|ram_rtl_0_bypass[47]~feeder_combout\);

-- Location: FF_X80_Y48_N11
\memoriaDados|ram_rtl_0_bypass[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[47]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(47));

-- Location: LCCOMB_X80_Y48_N8
\memoriaDados|ram~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~61_combout\ = (\memoriaDados|ram_rtl_0_bypass\(48) & ((\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(47)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(48) & (((\memoriaDados|ram_rtl_0_bypass\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a17\,
	datab => \memoriaDados|ram_rtl_0_bypass\(48),
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(47),
	combout => \memoriaDados|ram~61_combout\);

-- Location: FF_X80_Y48_N9
\MEM_WB|q[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(54));

-- Location: LCCOMB_X76_Y46_N6
\mux_ULA|Y[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[17]~18_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(54)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(22),
	datad => \MEM_WB|q\(54),
	combout => \mux_ULA|Y[17]~18_combout\);

-- Location: FF_X79_Y47_N31
\regs|registrador_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[16]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(27));

-- Location: LCCOMB_X79_Y47_N24
\regs|saidaA[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[16]~19_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(27)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a16\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(27),
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[16]~19_combout\);

-- Location: FF_X79_Y47_N25
\ID_EX|q[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[16]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(90));

-- Location: LCCOMB_X75_Y48_N28
\ula|mux4|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~0_combout\ = \mux_Rt_im|Y[16]~18_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula|full_adder|c_out[15]~15_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[16]~18_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ula|full_adder|c_out[15]~15_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux15~0_combout\);

-- Location: LCCOMB_X75_Y48_N24
\ula|mux4|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~1_combout\ = (\ID_EX|q\(90) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux15~0_combout\))))) # (!\ID_EX|q\(90) & (\ula|mux4|Mux15~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(90),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux15~0_combout\,
	combout => \ula|mux4|Mux15~1_combout\);

-- Location: FF_X75_Y48_N25
\EX_MEM|q[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(53));

-- Location: FF_X79_Y48_N31
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

-- Location: LCCOMB_X79_Y47_N4
\memoriaDados|ram_rtl_0_bypass[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[45]~feeder_combout\ = \EX_MEM|q\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(21),
	combout => \memoriaDados|ram_rtl_0_bypass[45]~feeder_combout\);

-- Location: FF_X79_Y47_N5
\memoriaDados|ram_rtl_0_bypass[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(45));

-- Location: LCCOMB_X79_Y47_N14
\memoriaDados|ram_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X79_Y47_N15
\memoriaDados|ram_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(46));

-- Location: LCCOMB_X79_Y47_N0
\memoriaDados|ram~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~62_combout\ = (\memoriaDados|ram_rtl_0_bypass\(46) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(45))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(46) & (\memoriaDados|ram_rtl_0_bypass\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(45),
	datab => \memoriaDados|ram_rtl_0_bypass\(46),
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a16\,
	combout => \memoriaDados|ram~62_combout\);

-- Location: FF_X79_Y47_N1
\MEM_WB|q[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(53));

-- Location: LCCOMB_X79_Y48_N30
\mux_ULA|Y[16]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[16]~19_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(53)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(21),
	datad => \MEM_WB|q\(53),
	combout => \mux_ULA|Y[16]~19_combout\);

-- Location: LCCOMB_X74_Y47_N2
\regs|saidaA[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[14]~21_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(25))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(25),
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a14\,
	datad => \regs|Equal0~0_combout\,
	combout => \regs|saidaA[14]~21_combout\);

-- Location: FF_X74_Y47_N3
\ID_EX|q[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[14]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(88));

-- Location: LCCOMB_X74_Y49_N6
\ula|mux4|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[14]~20_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula|full_adder|c_out[13]~13_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \mux_Rt_im|Y[14]~20_combout\,
	combout => \ula|mux4|Mux17~0_combout\);

-- Location: LCCOMB_X74_Y49_N4
\ula|mux4|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~1_combout\ = (\ID_EX|q\(88) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux17~0_combout\))))) # (!\ID_EX|q\(88) & (\ula|mux4|Mux17~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ID_EX|q\(88),
	datad => \ula|mux4|Mux17~0_combout\,
	combout => \ula|mux4|Mux17~1_combout\);

-- Location: FF_X74_Y49_N5
\EX_MEM|q[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(51));

-- Location: FF_X74_Y47_N9
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

-- Location: LCCOMB_X77_Y47_N26
\memoriaDados|ram_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X77_Y47_N27
\memoriaDados|ram_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(42));

-- Location: FF_X77_Y47_N31
\memoriaDados|ram_rtl_0_bypass[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(41));

-- Location: LCCOMB_X77_Y47_N6
\memoriaDados|ram~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~64_combout\ = (\memoriaDados|ram_rtl_0_bypass\(42) & ((\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(41)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(42) & (((\memoriaDados|ram_rtl_0_bypass\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(42),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a14\,
	datac => \memoriaDados|ram_rtl_0_bypass\(41),
	datad => \memoriaDados|ram~42_combout\,
	combout => \memoriaDados|ram~64_combout\);

-- Location: FF_X77_Y47_N7
\MEM_WB|q[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(51));

-- Location: LCCOMB_X77_Y47_N8
\mux_ULA|Y[14]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[14]~21_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(51)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(19),
	datac => \MEM_WB|q\(69),
	datad => \MEM_WB|q\(51),
	combout => \mux_ULA|Y[14]~21_combout\);

-- Location: LCCOMB_X79_Y48_N28
\regs|saidaA[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[13]~22_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(24))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a13\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(24),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a13\,
	datac => \regs|Equal0~0_combout\,
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[13]~22_combout\);

-- Location: FF_X79_Y48_N29
\ID_EX|q[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[13]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(87));

-- Location: LCCOMB_X74_Y49_N2
\ula|mux4|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~0_combout\ = \mux_Rt_im|Y[13]~21_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \mux_Rt_im|Y[13]~21_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[12]~12_combout\,
	combout => \ula|mux4|Mux18~0_combout\);

-- Location: LCCOMB_X74_Y49_N0
\ula|mux4|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~1_combout\ = (\ID_EX|q\(87) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux18~0_combout\))))) # (!\ID_EX|q\(87) & (\ula|mux4|Mux18~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(87),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux18~0_combout\,
	combout => \ula|mux4|Mux18~1_combout\);

-- Location: FF_X74_Y49_N1
\EX_MEM|q[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(50));

-- Location: FF_X75_Y49_N7
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

-- Location: LCCOMB_X80_Y48_N30
\memoriaDados|ram_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X80_Y48_N31
\memoriaDados|ram_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(40));

-- Location: FF_X79_Y48_N3
\memoriaDados|ram_rtl_0_bypass[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(18),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(39));

-- Location: LCCOMB_X79_Y48_N16
\memoriaDados|ram~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~65_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(39))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(40) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(40) & ((\memoriaDados|ram_rtl_0_bypass\(39))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a13\,
	datab => \memoriaDados|ram~42_combout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(40),
	datad => \memoriaDados|ram_rtl_0_bypass\(39),
	combout => \memoriaDados|ram~65_combout\);

-- Location: FF_X79_Y48_N17
\MEM_WB|q[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(50));

-- Location: LCCOMB_X75_Y49_N6
\mux_ULA|Y[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[13]~22_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(50)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(18),
	datad => \MEM_WB|q\(50),
	combout => \mux_ULA|Y[13]~22_combout\);

-- Location: FF_X74_Y47_N29
\regs|registrador_rtl_1_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(17));

-- Location: LCCOMB_X73_Y47_N12
\regs|saidaB[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[6]~29_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(17)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1|auto_generated|ram_block1a6\,
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1_bypass\(17),
	combout => \regs|saidaB[6]~29_combout\);

-- Location: FF_X73_Y47_N13
\ID_EX|q[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(48));

-- Location: FF_X74_Y47_N27
\EX_MEM|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(11));

-- Location: FF_X79_Y47_N21
\memoriaDados|ram_rtl_0_bypass[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(37));

-- Location: LCCOMB_X79_Y47_N26
\memoriaDados|ram~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~66_combout\ = (\memoriaDados|ram_rtl_0_bypass\(38) & ((\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(37)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(38) & (((\memoriaDados|ram_rtl_0_bypass\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(38),
	datab => \memoriaDados|ram~42_combout\,
	datac => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a12\,
	datad => \memoriaDados|ram_rtl_0_bypass\(37),
	combout => \memoriaDados|ram~66_combout\);

-- Location: FF_X79_Y47_N27
\MEM_WB|q[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(49));

-- Location: LCCOMB_X74_Y49_N10
\ula|mux4|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[12]~22_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula|full_adder|c_out[11]~11_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \mux_Rt_im|Y[12]~22_combout\,
	combout => \ula|mux4|Mux19~0_combout\);

-- Location: LCCOMB_X74_Y49_N16
\ula|mux4|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~1_combout\ = (\ID_EX|q\(86) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux19~0_combout\))))) # (!\ID_EX|q\(86) & (\ula|mux4|Mux19~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(86),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux19~0_combout\,
	combout => \ula|mux4|Mux19~1_combout\);

-- Location: FF_X74_Y49_N17
\EX_MEM|q[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(49));

-- Location: LCCOMB_X79_Y49_N22
\MEM_WB|q[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[17]~feeder_combout\ = \EX_MEM|q\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(49),
	combout => \MEM_WB|q[17]~feeder_combout\);

-- Location: FF_X79_Y49_N23
\MEM_WB|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(17));

-- Location: LCCOMB_X79_Y47_N28
\mux_ULA|Y[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[12]~23_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(49))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(49),
	datac => \MEM_WB|q\(17),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[12]~23_combout\);

-- Location: LCCOMB_X73_Y46_N2
\regs|saidaB[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[5]~30_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(16))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a5\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_1_bypass\(16),
	datab => \regs|Equal1~0_combout\,
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a5\,
	combout => \regs|saidaB[5]~30_combout\);

-- Location: FF_X73_Y46_N3
\ID_EX|q[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(47));

-- Location: FF_X77_Y47_N21
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

-- Location: FF_X72_Y47_N29
\memoriaDados|ram_rtl_0_bypass[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(16),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(35));

-- Location: LCCOMB_X72_Y47_N22
\memoriaDados|ram~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~67_combout\ = (\memoriaDados|ram_rtl_0_bypass\(36) & ((\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(35)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(36) & (((\memoriaDados|ram_rtl_0_bypass\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(36),
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a11\,
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(35),
	combout => \memoriaDados|ram~67_combout\);

-- Location: FF_X72_Y47_N23
\MEM_WB|q[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(48));

-- Location: LCCOMB_X75_Y46_N8
\ula|mux4|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~0_combout\ = \mux_Rt_im|Y[11]~23_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \mux_Rt_im|Y[11]~23_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[10]~10_combout\,
	combout => \ula|mux4|Mux20~0_combout\);

-- Location: LCCOMB_X75_Y46_N26
\ula|mux4|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~1_combout\ = (\ID_EX|q\(85) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux20~0_combout\))))) # (!\ID_EX|q\(85) & (\ula|mux4|Mux20~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(85),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux20~0_combout\,
	combout => \ula|mux4|Mux20~1_combout\);

-- Location: FF_X75_Y46_N27
\EX_MEM|q[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(48));

-- Location: FF_X76_Y46_N1
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

-- Location: LCCOMB_X76_Y46_N0
\mux_ULA|Y[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[11]~24_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(48))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(48),
	datac => \MEM_WB|q\(16),
	datad => \MEM_WB|q\(69),
	combout => \mux_ULA|Y[11]~24_combout\);

-- Location: FF_X75_Y45_N9
\regs|registrador_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_ULA|Y[10]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(21));

-- Location: LCCOMB_X75_Y45_N10
\regs|saidaA[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[10]~25_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(21)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a10\,
	datab => \regs|registrador_rtl_0_bypass\(21),
	datac => \regs|Equal0~0_combout\,
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[10]~25_combout\);

-- Location: FF_X75_Y45_N11
\ID_EX|q[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[10]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(84));

-- Location: LCCOMB_X75_Y45_N18
\ula|mux4|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[10]~24_combout\ $ (((\ula|full_adder|c_out[9]~9_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[10]~24_combout\,
	datac => \ula|full_adder|c_out[9]~9_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux21~0_combout\);

-- Location: LCCOMB_X75_Y45_N20
\ula|mux4|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~1_combout\ = (\ID_EX|q\(84) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux21~0_combout\))))) # (!\ID_EX|q\(84) & (\ula|mux4|Mux21~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ID_EX|q\(84),
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datad => \ula|mux4|Mux21~0_combout\,
	combout => \ula|mux4|Mux21~1_combout\);

-- Location: FF_X75_Y45_N21
\EX_MEM|q[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(47));

-- Location: LCCOMB_X75_Y45_N24
\MEM_WB|q[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[15]~feeder_combout\ = \EX_MEM|q\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(47),
	combout => \MEM_WB|q[15]~feeder_combout\);

-- Location: FF_X75_Y45_N25
\MEM_WB|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(15));

-- Location: LCCOMB_X75_Y45_N28
\memoriaDados|ram_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X75_Y45_N29
\memoriaDados|ram_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(34));

-- Location: FF_X75_Y45_N31
\memoriaDados|ram_rtl_0_bypass[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(33));

-- Location: LCCOMB_X75_Y45_N2
\memoriaDados|ram~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~68_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(33))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(34) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(34) & (\memoriaDados|ram_rtl_0_bypass\(33)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0_bypass\(34),
	datac => \memoriaDados|ram_rtl_0_bypass\(33),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \memoriaDados|ram~68_combout\);

-- Location: FF_X75_Y45_N3
\MEM_WB|q[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(47));

-- Location: LCCOMB_X75_Y45_N8
\mux_ULA|Y[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[10]~25_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(47)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(15),
	datac => \MEM_WB|q\(69),
	datad => \MEM_WB|q\(47),
	combout => \mux_ULA|Y[10]~25_combout\);

-- Location: LCCOMB_X77_Y46_N28
\regs|saidaB[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[8]~27_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(19))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador~43_combout\,
	datac => \regs|registrador_rtl_1_bypass\(19),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a8\,
	combout => \regs|saidaB[8]~27_combout\);

-- Location: FF_X77_Y46_N29
\ID_EX|q[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(50));

-- Location: LCCOMB_X77_Y46_N8
\mux_Rt_im|Y[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[8]~26_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(50))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX|q\(138),
	datad => \ID_EX|q\(50),
	combout => \mux_Rt_im|Y[8]~26_combout\);

-- Location: LCCOMB_X74_Y47_N8
\mux_Rt_im|Y[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[7]~27_combout\ = (\ID_EX|q\(49) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(49),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[7]~27_combout\);

-- Location: LCCOMB_X73_Y47_N30
\mux_Rt_im|Y[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[6]~28_combout\ = (\ID_EX|q\(48) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(48),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[6]~28_combout\);

-- Location: LCCOMB_X73_Y46_N8
\mux_Rt_im|Y[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[5]~29_combout\ = (\ID_EX|q\(138) & ((\ID_EX|q\(15)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(47),
	datad => \ID_EX|q\(15),
	combout => \mux_Rt_im|Y[5]~29_combout\);

-- Location: FF_X77_Y46_N21
\regs|registrador_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[4]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(15));

-- Location: LCCOMB_X77_Y46_N20
\regs|saidaA[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[4]~31_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(15))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(15),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a4\,
	combout => \regs|saidaA[4]~31_combout\);

-- Location: FF_X74_Y46_N15
\ID_EX|q[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[4]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(78));

-- Location: LCCOMB_X75_Y46_N28
\mux_Rt_im|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[3]~3_combout\ = (!\ID_EX|q\(138) & \ID_EX|q\(45))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datad => \ID_EX|q\(45),
	combout => \mux_Rt_im|Y[3]~3_combout\);

-- Location: LCCOMB_X72_Y46_N22
\mux_Rt_im|Y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[2]~0_combout\ = (\ID_EX|q\(138) & ((\ID_EX|q\(12)))) # (!\ID_EX|q\(138) & (\ID_EX|q\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(44),
	datab => \ID_EX|q\(12),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[2]~0_combout\);

-- Location: LCCOMB_X75_Y44_N6
\regs|registrador_rtl_0_bypass[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|registrador_rtl_0_bypass[13]~feeder_combout\ = \mux_ULA|Y[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_ULA|Y[2]~3_combout\,
	combout => \regs|registrador_rtl_0_bypass[13]~feeder_combout\);

-- Location: FF_X75_Y44_N7
\regs|registrador_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|registrador_rtl_0_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(13));

-- Location: LCCOMB_X74_Y44_N8
\regs|saidaA[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[2]~0_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(13)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0|auto_generated|ram_block1a2\,
	datad => \regs|registrador_rtl_0_bypass\(13),
	combout => \regs|saidaA[2]~0_combout\);

-- Location: FF_X73_Y46_N5
\ID_EX|q[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(76));

-- Location: LCCOMB_X73_Y46_N20
\ula|full_adder|c_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[2]~2_combout\ = (\ID_EX|q\(76) & ((\ula|full_adder|c_out[1]~1_combout\) # (\mux_Rt_im|Y[2]~0_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(76) & (\ula|full_adder|c_out[1]~1_combout\ & (\mux_Rt_im|Y[2]~0_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[2]~0_combout\,
	datab => \ID_EX|q\(76),
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[1]~1_combout\,
	combout => \ula|full_adder|c_out[2]~2_combout\);

-- Location: LCCOMB_X74_Y46_N12
\ula|full_adder|c_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[3]~3_combout\ = (\ID_EX|q\(77) & ((\ula|full_adder|c_out[2]~2_combout\) # (\mux_Rt_im|Y[3]~3_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(77) & (\ula|full_adder|c_out[2]~2_combout\ & (\mux_Rt_im|Y[3]~3_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \mux_Rt_im|Y[3]~3_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[2]~2_combout\,
	combout => \ula|full_adder|c_out[3]~3_combout\);

-- Location: LCCOMB_X74_Y46_N14
\ula|full_adder|c_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[4]~4_combout\ = (\ID_EX|q\(78) & ((\ula|full_adder|c_out[3]~3_combout\) # (\mux_Rt_im|Y[4]~30_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(78) & (\ula|full_adder|c_out[3]~3_combout\ & (\mux_Rt_im|Y[4]~30_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[4]~30_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ID_EX|q\(78),
	datad => \ula|full_adder|c_out[3]~3_combout\,
	combout => \ula|full_adder|c_out[4]~4_combout\);

-- Location: LCCOMB_X74_Y46_N2
\ula|full_adder|c_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[5]~5_combout\ = (\ID_EX|q\(79) & ((\ula|full_adder|c_out[4]~4_combout\) # (\mux_Rt_im|Y[5]~29_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(79) & (\ula|full_adder|c_out[4]~4_combout\ & (\mux_Rt_im|Y[5]~29_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[5]~29_combout\,
	datab => \ID_EX|q\(79),
	datac => \ula|full_adder|c_out[4]~4_combout\,
	datad => \ula_ctrl|ula_ctrl[2]~14_combout\,
	combout => \ula|full_adder|c_out[5]~5_combout\);

-- Location: LCCOMB_X74_Y46_N20
\ula|full_adder|c_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[6]~6_combout\ = (\ID_EX|q\(80) & ((\ula|full_adder|c_out[5]~5_combout\) # (\mux_Rt_im|Y[6]~28_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(80) & (\ula|full_adder|c_out[5]~5_combout\ & (\mux_Rt_im|Y[6]~28_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[6]~28_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ID_EX|q\(80),
	datad => \ula|full_adder|c_out[5]~5_combout\,
	combout => \ula|full_adder|c_out[6]~6_combout\);

-- Location: LCCOMB_X74_Y46_N22
\ula|full_adder|c_out[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[7]~7_combout\ = (\ID_EX|q\(81) & ((\ula|full_adder|c_out[6]~6_combout\) # (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[7]~27_combout\)))) # (!\ID_EX|q\(81) & (\ula|full_adder|c_out[6]~6_combout\ & 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[7]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[7]~27_combout\,
	datac => \ID_EX|q\(81),
	datad => \ula|full_adder|c_out[6]~6_combout\,
	combout => \ula|full_adder|c_out[7]~7_combout\);

-- Location: FF_X77_Y46_N5
\regs|registrador_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[8]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(19));

-- Location: LCCOMB_X75_Y46_N12
\regs|saidaA[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[8]~27_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(19)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a8\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador~40_combout\,
	datad => \regs|registrador_rtl_0_bypass\(19),
	combout => \regs|saidaA[8]~27_combout\);

-- Location: FF_X75_Y46_N13
\ID_EX|q[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[8]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(82));

-- Location: LCCOMB_X74_Y46_N24
\ula|full_adder|c_out[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[8]~8_combout\ = (\ula|full_adder|c_out[7]~7_combout\ & ((\ID_EX|q\(82)) # (\mux_Rt_im|Y[8]~26_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ula|full_adder|c_out[7]~7_combout\ & (\ID_EX|q\(82) & (\mux_Rt_im|Y[8]~26_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[8]~26_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ula|full_adder|c_out[7]~7_combout\,
	datad => \ID_EX|q\(82),
	combout => \ula|full_adder|c_out[8]~8_combout\);

-- Location: LCCOMB_X74_Y49_N14
\ula|mux4|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~0_combout\ = \mux_Rt_im|Y[9]~25_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula|full_adder|c_out[8]~8_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[8]~8_combout\,
	datab => \mux_Rt_im|Y[9]~25_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux22~0_combout\);

-- Location: LCCOMB_X74_Y49_N24
\ula|mux4|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~1_combout\ = (\ula|mux4|Mux22~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ID_EX|q\(83)))))) # (!\ula|mux4|Mux22~0_combout\ & (\ID_EX|q\(83) & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ula|mux4|Mux22~0_combout\,
	datad => \ID_EX|q\(83),
	combout => \ula|mux4|Mux22~1_combout\);

-- Location: FF_X74_Y49_N25
\EX_MEM|q[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(46));

-- Location: LCCOMB_X77_Y49_N6
\MEM_WB|q[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[14]~feeder_combout\ = \EX_MEM|q\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(46),
	combout => \MEM_WB|q[14]~feeder_combout\);

-- Location: FF_X77_Y49_N7
\MEM_WB|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(14));

-- Location: FF_X77_Y49_N25
\memoriaDados|ram_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(31));

-- Location: LCCOMB_X77_Y49_N0
\memoriaDados|ram_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X77_Y49_N1
\memoriaDados|ram_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(32));

-- Location: LCCOMB_X77_Y49_N16
\memoriaDados|ram~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~69_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(31))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(32) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(32) & ((\memoriaDados|ram_rtl_0_bypass\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a9\,
	datab => \memoriaDados|ram_rtl_0_bypass\(31),
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(32),
	combout => \memoriaDados|ram~69_combout\);

-- Location: FF_X77_Y49_N17
\MEM_WB|q[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(46));

-- Location: LCCOMB_X77_Y49_N24
\mux_ULA|Y[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[9]~26_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(46)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(14),
	datab => \MEM_WB|q\(69),
	datad => \MEM_WB|q\(46),
	combout => \mux_ULA|Y[9]~26_combout\);

-- Location: LCCOMB_X79_Y46_N12
\regs|saidaB[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[3]~3_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(14))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador~43_combout\,
	datac => \regs|registrador_rtl_1_bypass\(14),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a3\,
	combout => \regs|saidaB[3]~3_combout\);

-- Location: FF_X75_Y46_N11
\ID_EX|q[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[3]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(45));

-- Location: FF_X79_Y46_N1
\EX_MEM|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ID_EX|q\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(8));

-- Location: LCCOMB_X77_Y46_N16
\memoriaDados|ram_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X77_Y46_N17
\memoriaDados|ram_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(30));

-- Location: FF_X77_Y46_N13
\memoriaDados|ram_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(29));

-- Location: LCCOMB_X77_Y46_N0
\memoriaDados|ram~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~70_combout\ = (\memoriaDados|ram_rtl_0_bypass\(30) & ((\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(29)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a8\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(30) & (((\memoriaDados|ram_rtl_0_bypass\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a8\,
	datab => \memoriaDados|ram_rtl_0_bypass\(30),
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(29),
	combout => \memoriaDados|ram~70_combout\);

-- Location: FF_X77_Y46_N1
\MEM_WB|q[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(45));

-- Location: LCCOMB_X75_Y46_N14
\ula|mux4|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[8]~26_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[8]~26_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|full_adder|c_out[7]~7_combout\,
	combout => \ula|mux4|Mux23~0_combout\);

-- Location: LCCOMB_X75_Y46_N22
\ula|mux4|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~1_combout\ = (\ula|mux4|Mux23~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ID_EX|q\(82)))))) # (!\ula|mux4|Mux23~0_combout\ & (\ID_EX|q\(82) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula|mux4|Mux23~0_combout\,
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datad => \ID_EX|q\(82),
	combout => \ula|mux4|Mux23~1_combout\);

-- Location: FF_X75_Y46_N23
\EX_MEM|q[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(45));

-- Location: LCCOMB_X76_Y46_N2
\MEM_WB|q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[13]~feeder_combout\ = \EX_MEM|q\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(45),
	combout => \MEM_WB|q[13]~feeder_combout\);

-- Location: FF_X76_Y46_N3
\MEM_WB|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(13));

-- Location: LCCOMB_X77_Y46_N22
\mux_ULA|Y[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[8]~27_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(45))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datab => \MEM_WB|q\(45),
	datad => \MEM_WB|q\(13),
	combout => \mux_ULA|Y[8]~27_combout\);

-- Location: FF_X74_Y47_N15
\regs|registrador_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[7]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(18));

-- Location: LCCOMB_X74_Y47_N14
\regs|saidaA[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[7]~28_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(18)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a7\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(18),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[7]~28_combout\);

-- Location: FF_X74_Y46_N23
\ID_EX|q[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[7]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(81));

-- Location: LCCOMB_X74_Y47_N6
\ula|mux4|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[7]~27_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[7]~27_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|full_adder|c_out[6]~6_combout\,
	combout => \ula|mux4|Mux24~0_combout\);

-- Location: LCCOMB_X74_Y47_N4
\ula|mux4|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~1_combout\ = (\ID_EX|q\(81) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux24~0_combout\))))) # (!\ID_EX|q\(81) & (\ula|mux4|Mux24~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(81),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux24~0_combout\,
	combout => \ula|mux4|Mux24~1_combout\);

-- Location: LCCOMB_X75_Y47_N18
\EX_MEM|q[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[44]~feeder_combout\ = \ula|mux4|Mux24~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula|mux4|Mux24~1_combout\,
	combout => \EX_MEM|q[44]~feeder_combout\);

-- Location: FF_X75_Y47_N19
\EX_MEM|q[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(44));

-- Location: FF_X75_Y47_N25
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

-- Location: LCCOMB_X75_Y47_N6
\memoriaDados|ram_rtl_0_bypass[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[27]~feeder_combout\ = \EX_MEM|q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(12),
	combout => \memoriaDados|ram_rtl_0_bypass[27]~feeder_combout\);

-- Location: FF_X75_Y47_N7
\memoriaDados|ram_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(27));

-- Location: LCCOMB_X75_Y47_N4
\memoriaDados|ram_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X75_Y47_N5
\memoriaDados|ram_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(28));

-- Location: LCCOMB_X75_Y47_N12
\memoriaDados|ram~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~71_combout\ = (\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(27))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(28) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(28) & (\memoriaDados|ram_rtl_0_bypass\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(27),
	datab => \memoriaDados|ram~42_combout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(28),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \memoriaDados|ram~71_combout\);

-- Location: FF_X75_Y47_N13
\MEM_WB|q[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(44));

-- Location: LCCOMB_X75_Y47_N24
\mux_ULA|Y[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[7]~28_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(44)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(12),
	datad => \MEM_WB|q\(44),
	combout => \mux_ULA|Y[7]~28_combout\);

-- Location: FF_X74_Y47_N19
\regs|registrador_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(17));

-- Location: LCCOMB_X74_Y47_N18
\regs|saidaA[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[6]~29_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(17)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a6\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(17),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[6]~29_combout\);

-- Location: FF_X74_Y46_N21
\ID_EX|q[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[6]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(80));

-- Location: LCCOMB_X73_Y47_N10
\ula|mux4|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux25~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[6]~28_combout\ $ (((\ula|full_adder|c_out[5]~5_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \ula|full_adder|c_out[5]~5_combout\,
	datac => \mux_Rt_im|Y[6]~28_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux25~0_combout\);

-- Location: LCCOMB_X73_Y47_N24
\ula|mux4|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux25~1_combout\ = (\ID_EX|q\(80) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux25~0_combout\))))) # (!\ID_EX|q\(80) & (\ula|mux4|Mux25~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ID_EX|q\(80),
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datad => \ula|mux4|Mux25~0_combout\,
	combout => \ula|mux4|Mux25~1_combout\);

-- Location: LCCOMB_X73_Y47_N16
\EX_MEM|q[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[43]~feeder_combout\ = \ula|mux4|Mux25~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|mux4|Mux25~1_combout\,
	combout => \EX_MEM|q[43]~feeder_combout\);

-- Location: FF_X73_Y47_N17
\EX_MEM|q[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(43));

-- Location: LCCOMB_X73_Y47_N2
\MEM_WB|q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[11]~feeder_combout\ = \EX_MEM|q\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(43),
	combout => \MEM_WB|q[11]~feeder_combout\);

-- Location: FF_X73_Y47_N3
\MEM_WB|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(11));

-- Location: LCCOMB_X73_Y47_N14
\memoriaDados|ram_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X73_Y47_N15
\memoriaDados|ram_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(26));

-- Location: FF_X74_Y47_N23
\memoriaDados|ram_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(25));

-- Location: LCCOMB_X74_Y47_N16
\memoriaDados|ram~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~72_combout\ = (\memoriaDados|ram_rtl_0_bypass\(26) & ((\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(25)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(26) & (((\memoriaDados|ram_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(26),
	datab => \memoriaDados|ram~42_combout\,
	datac => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \memoriaDados|ram_rtl_0_bypass\(25),
	combout => \memoriaDados|ram~72_combout\);

-- Location: FF_X74_Y47_N17
\MEM_WB|q[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(43));

-- Location: LCCOMB_X74_Y47_N22
\mux_ULA|Y[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[6]~29_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(43)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(11),
	datab => \MEM_WB|q\(69),
	datad => \MEM_WB|q\(43),
	combout => \mux_ULA|Y[6]~29_combout\);

-- Location: FF_X75_Y47_N21
\regs|registrador_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[5]~30_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(16));

-- Location: LCCOMB_X74_Y47_N30
\regs|saidaA[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[5]~30_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(16)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0|auto_generated|ram_block1a5\,
	datab => \regs|Equal0~0_combout\,
	datac => \regs|registrador_rtl_0_bypass\(16),
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[5]~30_combout\);

-- Location: FF_X74_Y47_N31
\ID_EX|q[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(79));

-- Location: LCCOMB_X73_Y46_N6
\ula|mux4|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~0_combout\ = \mux_Rt_im|Y[5]~29_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[5]~29_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|full_adder|c_out[4]~4_combout\,
	combout => \ula|mux4|Mux26~0_combout\);

-- Location: LCCOMB_X74_Y47_N24
\ula|mux4|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~1_combout\ = (\ID_EX|q\(79) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux26~0_combout\))))) # (!\ID_EX|q\(79) & (\ula|mux4|Mux26~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(79),
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datad => \ula|mux4|Mux26~0_combout\,
	combout => \ula|mux4|Mux26~1_combout\);

-- Location: LCCOMB_X77_Y47_N0
\EX_MEM|q[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[42]~feeder_combout\ = \ula|mux4|Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|mux4|Mux26~1_combout\,
	combout => \EX_MEM|q[42]~feeder_combout\);

-- Location: FF_X77_Y47_N1
\EX_MEM|q[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(42));

-- Location: FF_X77_Y47_N15
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

-- Location: LCCOMB_X77_Y47_N24
\memoriaDados|ram_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X77_Y47_N25
\memoriaDados|ram_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(24));

-- Location: LCCOMB_X77_Y47_N10
\memoriaDados|ram_rtl_0_bypass[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[23]~feeder_combout\ = \EX_MEM|q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(10),
	combout => \memoriaDados|ram_rtl_0_bypass[23]~feeder_combout\);

-- Location: FF_X77_Y47_N11
\memoriaDados|ram_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(23));

-- Location: LCCOMB_X77_Y47_N12
\memoriaDados|ram~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~73_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(23))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(24) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(24) & ((\memoriaDados|ram_rtl_0_bypass\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0_bypass\(24),
	datac => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \memoriaDados|ram_rtl_0_bypass\(23),
	combout => \memoriaDados|ram~73_combout\);

-- Location: FF_X77_Y47_N13
\MEM_WB|q[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(42));

-- Location: LCCOMB_X77_Y47_N14
\mux_ULA|Y[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[5]~30_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(42)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(10),
	datad => \MEM_WB|q\(42),
	combout => \mux_ULA|Y[5]~30_combout\);

-- Location: LCCOMB_X74_Y44_N16
\regs|saidaA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[3]~3_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(14))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador_rtl_0_bypass\(14),
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a3\,
	datac => \regs|Equal0~0_combout\,
	datad => \regs|registrador~40_combout\,
	combout => \regs|saidaA[3]~3_combout\);

-- Location: FF_X74_Y44_N17
\ID_EX|q[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(77));

-- Location: LCCOMB_X73_Y49_N24
\ula|mux4|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux28~0_combout\ = \mux_Rt_im|Y[3]~3_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula|full_adder|c_out[2]~2_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[2]~2_combout\,
	datab => \mux_Rt_im|Y[3]~3_combout\,
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula_ctrl|ula_ctrl[1]~11_combout\,
	combout => \ula|mux4|Mux28~0_combout\);

-- Location: LCCOMB_X74_Y49_N28
\ula|mux4|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux28~1_combout\ = (\ID_EX|q\(77) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux28~0_combout\))))) # (!\ID_EX|q\(77) & (\ula|mux4|Mux28~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datad => \ula|mux4|Mux28~0_combout\,
	combout => \ula|mux4|Mux28~1_combout\);

-- Location: LCCOMB_X76_Y47_N24
\EX_MEM|q[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[40]~feeder_combout\ = \ula|mux4|Mux28~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula|mux4|Mux28~1_combout\,
	combout => \EX_MEM|q[40]~feeder_combout\);

-- Location: FF_X76_Y47_N25
\EX_MEM|q[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(40));

-- Location: FF_X79_Y46_N9
\memoriaDados|ram_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(19));

-- Location: LCCOMB_X79_Y46_N18
\memoriaDados|ram_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X79_Y46_N19
\memoriaDados|ram_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(20));

-- Location: LCCOMB_X79_Y46_N8
\memoriaDados|ram~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~44_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(19))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(20) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(20) & ((\memoriaDados|ram_rtl_0_bypass\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a3\,
	datac => \memoriaDados|ram_rtl_0_bypass\(19),
	datad => \memoriaDados|ram_rtl_0_bypass\(20),
	combout => \memoriaDados|ram~44_combout\);

-- Location: FF_X79_Y46_N21
\MEM_WB|q[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaDados|ram~44_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(40));

-- Location: LCCOMB_X79_Y47_N8
\MEM_WB|q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[8]~feeder_combout\ = \EX_MEM|q\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(40),
	combout => \MEM_WB|q[8]~feeder_combout\);

-- Location: FF_X79_Y47_N9
\MEM_WB|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(8));

-- Location: LCCOMB_X79_Y46_N20
\mux_ULA|Y[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[3]~1_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(40))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(40),
	datad => \MEM_WB|q\(8),
	combout => \mux_ULA|Y[3]~1_combout\);

-- Location: LCCOMB_X79_Y46_N6
\regs|saidaB[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[2]~0_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(13))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador~43_combout\,
	datac => \regs|registrador_rtl_1_bypass\(13),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a2\,
	combout => \regs|saidaB[2]~0_combout\);

-- Location: FF_X72_Y46_N9
\ID_EX|q[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaB[2]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(44));

-- Location: LCCOMB_X79_Y46_N10
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

-- Location: FF_X79_Y46_N11
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

-- Location: FF_X79_Y46_N5
\memoriaDados|ram_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(17));

-- Location: LCCOMB_X79_Y46_N4
\memoriaDados|ram~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~46_combout\ = (\memoriaDados|ram_rtl_0_bypass\(18) & ((\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(17))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\))))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(18) & (((\memoriaDados|ram_rtl_0_bypass\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(18),
	datab => \memoriaDados|ram~42_combout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(17),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \memoriaDados|ram~46_combout\);

-- Location: FF_X79_Y46_N27
\MEM_WB|q[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaDados|ram~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(39));

-- Location: FF_X79_Y46_N29
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

-- Location: LCCOMB_X79_Y46_N26
\mux_ULA|Y[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[2]~3_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(39))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(39),
	datad => \MEM_WB|q\(7),
	combout => \mux_ULA|Y[2]~3_combout\);

-- Location: FF_X73_Y46_N31
\regs|registrador_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(12));

-- Location: LCCOMB_X73_Y46_N24
\regs|saidaB[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[1]~1_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1_bypass\(12)))) # (!\regs|registrador~43_combout\ & (\regs|registrador_rtl_1|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador~43_combout\,
	datac => \regs|registrador_rtl_1|auto_generated|ram_block1a1\,
	datad => \regs|registrador_rtl_1_bypass\(12),
	combout => \regs|saidaB[1]~1_combout\);

-- Location: FF_X73_Y46_N25
\ID_EX|q[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(43));

-- Location: LCCOMB_X73_Y46_N22
\mux_Rt_im|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[1]~1_combout\ = (\ID_EX|q\(138) & (\ID_EX|q\(11))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(138),
	datab => \ID_EX|q\(11),
	datad => \ID_EX|q\(43),
	combout => \mux_Rt_im|Y[1]~1_combout\);

-- Location: FF_X73_Y46_N23
\regs|registrador_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(12));

-- Location: LCCOMB_X73_Y46_N12
\regs|saidaA[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[1]~1_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0_bypass\(12)))) # (!\regs|registrador~40_combout\ & (\regs|registrador_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|registrador~40_combout\,
	datab => \regs|registrador_rtl_0|auto_generated|ram_block1a1\,
	datac => \regs|Equal0~0_combout\,
	datad => \regs|registrador_rtl_0_bypass\(12),
	combout => \regs|saidaA[1]~1_combout\);

-- Location: FF_X73_Y46_N13
\ID_EX|q[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaA[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(75));

-- Location: LCCOMB_X73_Y46_N18
\ula|full_adder|c_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[0]~0_combout\ = (\mux_Rt_im|Y[0]~2_combout\ & (((\ID_EX|q\(74))))) # (!\mux_Rt_im|Y[0]~2_combout\ & ((\ula_ctrl|ula_ctrl[2]~12_combout\) # ((\ula_ctrl|ula_ctrl[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~2_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~12_combout\,
	datac => \ID_EX|q\(74),
	datad => \ula_ctrl|ula_ctrl[2]~13_combout\,
	combout => \ula|full_adder|c_out[0]~0_combout\);

-- Location: LCCOMB_X73_Y46_N16
\ula|full_adder|c_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[1]~1_combout\ = (\ID_EX|q\(75) & ((\ula|full_adder|c_out[0]~0_combout\) # (\mux_Rt_im|Y[1]~1_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\)))) # (!\ID_EX|q\(75) & (\ula|full_adder|c_out[0]~0_combout\ & (\mux_Rt_im|Y[1]~1_combout\ $ 
-- (\ula_ctrl|ula_ctrl[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[1]~1_combout\,
	datab => \ID_EX|q\(75),
	datac => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datad => \ula|full_adder|c_out[0]~0_combout\,
	combout => \ula|full_adder|c_out[1]~1_combout\);

-- Location: LCCOMB_X73_Y46_N14
\ula|mux4|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[2]~0_combout\ $ (((\ula|full_adder|c_out[1]~1_combout\ & \ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|full_adder|c_out[1]~1_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \mux_Rt_im|Y[2]~0_combout\,
	combout => \ula|mux4|Mux29~0_combout\);

-- Location: LCCOMB_X73_Y46_N4
\ula|mux4|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~1_combout\ = (\ula|mux4|Mux29~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ID_EX|q\(76)) # (\ula_ctrl|ula_ctrl[0]~10_combout\))))) # (!\ula|mux4|Mux29~0_combout\ & (\ID_EX|q\(76) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ 
-- (\ula_ctrl|ula_ctrl[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula|mux4|Mux29~0_combout\,
	datac => \ID_EX|q\(76),
	datad => \ula_ctrl|ula_ctrl[0]~10_combout\,
	combout => \ula|mux4|Mux29~1_combout\);

-- Location: LCCOMB_X79_Y46_N14
\EX_MEM|q[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[39]~feeder_combout\ = \ula|mux4|Mux29~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula|mux4|Mux29~1_combout\,
	combout => \EX_MEM|q[39]~feeder_combout\);

-- Location: FF_X79_Y46_N15
\EX_MEM|q[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(39));

-- Location: LCCOMB_X76_Y46_N24
\memoriaDados|ram~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~74_combout\ = (\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0_bypass\(21))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(22) & ((\memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(22) & (\memoriaDados|ram_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0_bypass\(21),
	datac => \memoriaDados|ram_rtl_0_bypass\(22),
	datad => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \memoriaDados|ram~74_combout\);

-- Location: FF_X76_Y46_N25
\MEM_WB|q[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(41));

-- Location: LCCOMB_X76_Y46_N26
\mux_ULA|Y[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[4]~31_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(41)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(9),
	datad => \MEM_WB|q\(41),
	combout => \mux_ULA|Y[4]~31_combout\);

-- Location: FF_X75_Y46_N31
\regs|registrador_rtl_1_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[4]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(15));

-- Location: LCCOMB_X75_Y46_N6
\regs|saidaB[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[4]~31_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(15))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador~43_combout\,
	datac => \regs|registrador_rtl_1_bypass\(15),
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a4\,
	combout => \regs|saidaB[4]~31_combout\);

-- Location: FF_X75_Y46_N7
\ID_EX|q[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(46));

-- Location: LCCOMB_X75_Y46_N30
\mux_Rt_im|Y[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_Rt_im|Y[4]~30_combout\ = (\ID_EX|q\(46) & !\ID_EX|q\(138))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(46),
	datad => \ID_EX|q\(138),
	combout => \mux_Rt_im|Y[4]~30_combout\);

-- Location: LCCOMB_X75_Y46_N20
\ula|mux4|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~0_combout\ = \ula_ctrl|ula_ctrl[2]~14_combout\ $ (\mux_Rt_im|Y[4]~30_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datab => \mux_Rt_im|Y[4]~30_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|full_adder|c_out[3]~3_combout\,
	combout => \ula|mux4|Mux27~0_combout\);

-- Location: LCCOMB_X75_Y46_N2
\ula|mux4|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~1_combout\ = (\ula|mux4|Mux27~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ID_EX|q\(78)))))) # (!\ula|mux4|Mux27~0_combout\ & (\ID_EX|q\(78) & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ula|mux4|Mux27~0_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ID_EX|q\(78),
	combout => \ula|mux4|Mux27~1_combout\);

-- Location: LCCOMB_X76_Y47_N22
\memoriaDados|ram_rtl_0_bypass[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[6]~feeder_combout\ = \ula|mux4|Mux27~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|mux4|Mux27~1_combout\,
	combout => \memoriaDados|ram_rtl_0_bypass[6]~feeder_combout\);

-- Location: FF_X76_Y47_N23
\memoriaDados|ram_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(6));

-- Location: FF_X77_Y47_N19
\memoriaDados|ram_rtl_0_bypass[7]\ : dffeas
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
	q => \memoriaDados|ram_rtl_0_bypass\(7));

-- Location: FF_X76_Y47_N13
\memoriaDados|ram_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ula|mux4|Mux26~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(8));

-- Location: FF_X76_Y47_N11
\memoriaDados|ram_rtl_0_bypass[5]\ : dffeas
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
	q => \memoriaDados|ram_rtl_0_bypass\(5));

-- Location: LCCOMB_X76_Y47_N12
\memoriaDados|ram~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~40_combout\ = (\memoriaDados|ram_rtl_0_bypass\(6) & (\memoriaDados|ram_rtl_0_bypass\(5) & (\memoriaDados|ram_rtl_0_bypass\(7) $ (!\memoriaDados|ram_rtl_0_bypass\(8))))) # (!\memoriaDados|ram_rtl_0_bypass\(6) & 
-- (!\memoriaDados|ram_rtl_0_bypass\(5) & (\memoriaDados|ram_rtl_0_bypass\(7) $ (!\memoriaDados|ram_rtl_0_bypass\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(6),
	datab => \memoriaDados|ram_rtl_0_bypass\(7),
	datac => \memoriaDados|ram_rtl_0_bypass\(8),
	datad => \memoriaDados|ram_rtl_0_bypass\(5),
	combout => \memoriaDados|ram~40_combout\);

-- Location: LCCOMB_X79_Y47_N18
\memoriaDados|ram_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[1]~feeder_combout\ = \EX_MEM|q\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(39),
	combout => \memoriaDados|ram_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X79_Y47_N19
\memoriaDados|ram_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(1));

-- Location: LCCOMB_X76_Y47_N4
\memoriaDados|ram_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[3]~feeder_combout\ = \EX_MEM|q\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(40),
	combout => \memoriaDados|ram_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X76_Y47_N5
\memoriaDados|ram_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(3));

-- Location: FF_X76_Y47_N15
\memoriaDados|ram_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ula|mux4|Mux28~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(4));

-- Location: LCCOMB_X76_Y47_N20
\memoriaDados|ram_rtl_0_bypass[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[2]~feeder_combout\ = \ula|mux4|Mux29~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula|mux4|Mux29~1_combout\,
	combout => \memoriaDados|ram_rtl_0_bypass[2]~feeder_combout\);

-- Location: FF_X76_Y47_N21
\memoriaDados|ram_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(2));

-- Location: LCCOMB_X76_Y47_N14
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

-- Location: FF_X76_Y47_N9
\memoriaDados|ram_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(102),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(0));

-- Location: FF_X76_Y47_N31
\memoriaDados|ram_rtl_0_bypass[9]\ : dffeas
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
	q => \memoriaDados|ram_rtl_0_bypass\(9));

-- Location: FF_X75_Y47_N29
\memoriaDados|ram_rtl_0_bypass[11]\ : dffeas
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
	q => \memoriaDados|ram_rtl_0_bypass\(11));

-- Location: FF_X76_Y47_N19
\memoriaDados|ram_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \ula|mux4|Mux25~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(10));

-- Location: LCCOMB_X76_Y47_N28
\memoriaDados|ram_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[12]~feeder_combout\ = \ula|mux4|Mux24~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula|mux4|Mux24~1_combout\,
	combout => \memoriaDados|ram_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X76_Y47_N29
\memoriaDados|ram_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(12));

-- Location: LCCOMB_X76_Y47_N18
\memoriaDados|ram~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~41_combout\ = (\memoriaDados|ram_rtl_0_bypass\(9) & (\memoriaDados|ram_rtl_0_bypass\(10) & (\memoriaDados|ram_rtl_0_bypass\(11) $ (!\memoriaDados|ram_rtl_0_bypass\(12))))) # (!\memoriaDados|ram_rtl_0_bypass\(9) & 
-- (!\memoriaDados|ram_rtl_0_bypass\(10) & (\memoriaDados|ram_rtl_0_bypass\(11) $ (!\memoriaDados|ram_rtl_0_bypass\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0_bypass\(9),
	datab => \memoriaDados|ram_rtl_0_bypass\(11),
	datac => \memoriaDados|ram_rtl_0_bypass\(10),
	datad => \memoriaDados|ram_rtl_0_bypass\(12),
	combout => \memoriaDados|ram~41_combout\);

-- Location: LCCOMB_X76_Y47_N8
\memoriaDados|ram~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~42_combout\ = (\memoriaDados|ram~40_combout\ & (\memoriaDados|ram~39_combout\ & (\memoriaDados|ram_rtl_0_bypass\(0) & \memoriaDados|ram~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~40_combout\,
	datab => \memoriaDados|ram~39_combout\,
	datac => \memoriaDados|ram_rtl_0_bypass\(0),
	datad => \memoriaDados|ram~41_combout\,
	combout => \memoriaDados|ram~42_combout\);

-- Location: FF_X77_Y45_N9
\memoriaDados|ram_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \EX_MEM|q\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(15));

-- Location: LCCOMB_X77_Y45_N6
\memoriaDados|ram_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X77_Y45_N7
\memoriaDados|ram_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(16));

-- Location: LCCOMB_X77_Y45_N8
\memoriaDados|ram~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~43_combout\ = (\memoriaDados|ram~42_combout\ & (((\memoriaDados|ram_rtl_0_bypass\(15))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(16) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(16) & ((\memoriaDados|ram_rtl_0_bypass\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \memoriaDados|ram_rtl_0_bypass\(15),
	datad => \memoriaDados|ram_rtl_0_bypass\(16),
	combout => \memoriaDados|ram~43_combout\);

-- Location: FF_X77_Y45_N1
\MEM_WB|q[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \memoriaDados|ram~43_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(38));

-- Location: LCCOMB_X73_Y46_N10
\ula|mux4|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~0_combout\ = \mux_Rt_im|Y[1]~1_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[1]~1_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|full_adder|c_out[0]~0_combout\,
	combout => \ula|mux4|Mux30~0_combout\);

-- Location: LCCOMB_X73_Y46_N0
\ula|mux4|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~1_combout\ = (\ula|mux4|Mux30~0_combout\ & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ID_EX|q\(75)))))) # (!\ula|mux4|Mux30~0_combout\ & (\ID_EX|q\(75) & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux30~0_combout\,
	datab => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ID_EX|q\(75),
	combout => \ula|mux4|Mux30~1_combout\);

-- Location: LCCOMB_X77_Y45_N20
\EX_MEM|q[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \EX_MEM|q[38]~feeder_combout\ = \ula|mux4|Mux30~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ula|mux4|Mux30~1_combout\,
	combout => \EX_MEM|q[38]~feeder_combout\);

-- Location: FF_X77_Y45_N21
\EX_MEM|q[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \EX_MEM|q[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(38));

-- Location: LCCOMB_X77_Y45_N10
\MEM_WB|q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[6]~feeder_combout\ = \EX_MEM|q\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(38),
	combout => \MEM_WB|q[6]~feeder_combout\);

-- Location: FF_X77_Y45_N11
\MEM_WB|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(6));

-- Location: LCCOMB_X77_Y45_N0
\mux_ULA|Y[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[1]~0_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(38))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(38),
	datad => \MEM_WB|q\(6),
	combout => \mux_ULA|Y[1]~0_combout\);

-- Location: LCCOMB_X77_Y48_N28
\regs|saidaA[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[0]~2_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(11))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(11),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \regs|saidaA[0]~2_combout\);

-- Location: FF_X73_Y46_N19
\ID_EX|q[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(74));

-- Location: LCCOMB_X74_Y48_N2
\ula|mux4|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~0_combout\ = (\ula_ctrl|ula_ctrl[1]~11_combout\ & (((\ula_ctrl|ula_ctrl[0]~10_combout\)))) # (!\ula_ctrl|ula_ctrl[1]~11_combout\ & ((\ula|mux2B|Y[0]~0_combout\ & ((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ID_EX|q\(74)))) # 
-- (!\ula|mux2B|Y[0]~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ & \ID_EX|q\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula|mux2B|Y[0]~0_combout\,
	datac => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datad => \ID_EX|q\(74),
	combout => \ula|mux4|Mux31~0_combout\);

-- Location: LCCOMB_X74_Y48_N22
\ula|full_adder|result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|full_adder|result[0]~0_combout\ = \ID_EX|q\(74) $ (((\ID_EX|q\(138) & (\ID_EX|q\(10))) # (!\ID_EX|q\(138) & ((\ID_EX|q\(42))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(74),
	datab => \ID_EX|q\(138),
	datac => \ID_EX|q\(10),
	datad => \ID_EX|q\(42),
	combout => \ula|full_adder|result[0]~0_combout\);

-- Location: LCCOMB_X74_Y48_N28
\ula|result_slt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|result_slt[0]~0_combout\ = (\ID_EX|q\(105) & ((\ula|mux2B|Y[31]~1_combout\) # (!\ula|full_adder|c_out[30]~30_combout\))) # (!\ID_EX|q\(105) & (\ula|mux2B|Y[31]~1_combout\ & !\ula|full_adder|c_out[30]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(105),
	datab => \ula|mux2B|Y[31]~1_combout\,
	datad => \ula|full_adder|c_out[30]~30_combout\,
	combout => \ula|result_slt[0]~0_combout\);

-- Location: LCCOMB_X74_Y48_N26
\ula|mux4|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~1_combout\ = (\ula_ctrl|ula_ctrl[1]~11_combout\ & ((\ula|mux4|Mux31~0_combout\ & ((\ula|result_slt[0]~0_combout\))) # (!\ula|mux4|Mux31~0_combout\ & (\ula|full_adder|result[0]~0_combout\)))) # (!\ula_ctrl|ula_ctrl[1]~11_combout\ & 
-- (\ula|mux4|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datab => \ula|mux4|Mux31~0_combout\,
	datac => \ula|full_adder|result[0]~0_combout\,
	datad => \ula|result_slt[0]~0_combout\,
	combout => \ula|mux4|Mux31~1_combout\);

-- Location: FF_X74_Y48_N27
\EX_MEM|q[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux31~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(37));

-- Location: FF_X74_Y45_N5
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

-- Location: LCCOMB_X74_Y45_N28
\memoriaDados|ram_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X74_Y45_N29
\memoriaDados|ram_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(14));

-- Location: LCCOMB_X74_Y45_N6
\memoriaDados|ram_rtl_0_bypass[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[13]~0_combout\ = !\EX_MEM|q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EX_MEM|q\(5),
	combout => \memoriaDados|ram_rtl_0_bypass[13]~0_combout\);

-- Location: FF_X74_Y45_N7
\memoriaDados|ram_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(13));

-- Location: LCCOMB_X74_Y45_N20
\memoriaDados|ram~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~45_combout\ = (\memoriaDados|ram~42_combout\ & (((!\memoriaDados|ram_rtl_0_bypass\(13))))) # (!\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(14) & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(14) & ((!\memoriaDados|ram_rtl_0_bypass\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~42_combout\,
	datab => \memoriaDados|ram_rtl_0_bypass\(14),
	datac => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(13),
	combout => \memoriaDados|ram~45_combout\);

-- Location: LCCOMB_X74_Y45_N18
\MEM_WB|q[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MEM_WB|q[37]~feeder_combout\ = \memoriaDados|ram~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memoriaDados|ram~45_combout\,
	combout => \MEM_WB|q[37]~feeder_combout\);

-- Location: FF_X74_Y45_N19
\MEM_WB|q[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \MEM_WB|q[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(37));

-- Location: LCCOMB_X74_Y45_N4
\mux_ULA|Y[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[0]~2_combout\ = (\MEM_WB|q\(69) & ((\MEM_WB|q\(37)))) # (!\MEM_WB|q\(69) & (\MEM_WB|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB|q\(69),
	datac => \MEM_WB|q\(5),
	datad => \MEM_WB|q\(37),
	combout => \mux_ULA|Y[0]~2_combout\);

-- Location: FF_X73_Y46_N9
\regs|registrador_rtl_1_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_1_bypass\(11));

-- Location: LCCOMB_X73_Y46_N28
\regs|saidaB[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaB[0]~2_combout\ = (!\regs|Equal1~0_combout\ & ((\regs|registrador~43_combout\ & (\regs|registrador_rtl_1_bypass\(11))) # (!\regs|registrador~43_combout\ & ((\regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal1~0_combout\,
	datab => \regs|registrador_rtl_1_bypass\(11),
	datac => \regs|registrador~43_combout\,
	datad => \regs|registrador_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \regs|saidaB[0]~2_combout\);

-- Location: FF_X73_Y46_N29
\ID_EX|q[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \regs|saidaB[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(42));

-- Location: FF_X74_Y45_N31
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

-- Location: LCCOMB_X75_Y49_N18
\memoriaDados|ram_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \memoriaDados|ram_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X75_Y49_N19
\memoriaDados|ram_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(44));

-- Location: LCCOMB_X75_Y49_N0
\memoriaDados|ram_rtl_0_bypass[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram_rtl_0_bypass[43]~feeder_combout\ = \EX_MEM|q\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EX_MEM|q\(20),
	combout => \memoriaDados|ram_rtl_0_bypass[43]~feeder_combout\);

-- Location: FF_X75_Y49_N1
\memoriaDados|ram_rtl_0_bypass[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram_rtl_0_bypass[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memoriaDados|ram_rtl_0_bypass\(43));

-- Location: LCCOMB_X75_Y49_N14
\memoriaDados|ram~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaDados|ram~63_combout\ = (\memoriaDados|ram_rtl_0_bypass\(44) & ((\memoriaDados|ram~42_combout\ & ((\memoriaDados|ram_rtl_0_bypass\(43)))) # (!\memoriaDados|ram~42_combout\ & (\memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\)))) # 
-- (!\memoriaDados|ram_rtl_0_bypass\(44) & (((\memoriaDados|ram_rtl_0_bypass\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram_rtl_0|auto_generated|ram_block1a15\,
	datab => \memoriaDados|ram_rtl_0_bypass\(44),
	datac => \memoriaDados|ram~42_combout\,
	datad => \memoriaDados|ram_rtl_0_bypass\(43),
	combout => \memoriaDados|ram~63_combout\);

-- Location: FF_X75_Y49_N15
\MEM_WB|q[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaDados|ram~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB|q\(52));

-- Location: FF_X74_Y49_N19
\EX_MEM|q[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|mux4|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(52));

-- Location: LCCOMB_X75_Y49_N16
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

-- Location: FF_X75_Y49_N17
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

-- Location: LCCOMB_X75_Y49_N8
\mux_ULA|Y[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_ULA|Y[15]~20_combout\ = (\MEM_WB|q\(69) & (\MEM_WB|q\(52))) # (!\MEM_WB|q\(69) & ((\MEM_WB|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB|q\(52),
	datac => \MEM_WB|q\(69),
	datad => \MEM_WB|q\(20),
	combout => \mux_ULA|Y[15]~20_combout\);

-- Location: FF_X75_Y49_N23
\regs|registrador_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \mux_ULA|Y[15]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \regs|registrador_rtl_0_bypass\(26));

-- Location: LCCOMB_X75_Y49_N22
\regs|saidaA[15]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \regs|saidaA[15]~20_combout\ = (!\regs|Equal0~0_combout\ & ((\regs|registrador~40_combout\ & (\regs|registrador_rtl_0_bypass\(26))) # (!\regs|registrador~40_combout\ & ((\regs|registrador_rtl_0|auto_generated|ram_block1a15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regs|Equal0~0_combout\,
	datab => \regs|registrador~40_combout\,
	datac => \regs|registrador_rtl_0_bypass\(26),
	datad => \regs|registrador_rtl_0|auto_generated|ram_block1a15\,
	combout => \regs|saidaA[15]~20_combout\);

-- Location: FF_X74_Y49_N9
\ID_EX|q[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \regs|saidaA[15]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(89));

-- Location: LCCOMB_X74_Y49_N20
\ula|mux4|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~0_combout\ = \mux_Rt_im|Y[15]~19_combout\ $ (\ula_ctrl|ula_ctrl[2]~14_combout\ $ (((\ula_ctrl|ula_ctrl[1]~11_combout\ & \ula|full_adder|c_out[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[15]~19_combout\,
	datab => \ula_ctrl|ula_ctrl[2]~14_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|full_adder|c_out[14]~14_combout\,
	combout => \ula|mux4|Mux16~0_combout\);

-- Location: LCCOMB_X74_Y49_N18
\ula|mux4|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~1_combout\ = (\ID_EX|q\(89) & (\ula_ctrl|ula_ctrl[1]~11_combout\ $ (((\ula_ctrl|ula_ctrl[0]~10_combout\) # (\ula|mux4|Mux16~0_combout\))))) # (!\ID_EX|q\(89) & (\ula|mux4|Mux16~0_combout\ & (\ula_ctrl|ula_ctrl[0]~10_combout\ $ 
-- (\ula_ctrl|ula_ctrl[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ula_ctrl[0]~10_combout\,
	datab => \ID_EX|q\(89),
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux16~0_combout\,
	combout => \ula|mux4|Mux16~1_combout\);

-- Location: LCCOMB_X75_Y48_N14
\ula|zero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~6_combout\ = (\ula|mux4|Mux16~1_combout\) # ((\ula|mux4|Mux15~1_combout\) # ((\ula|mux4|Mux14~1_combout\) # (\ula|mux4|Mux13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux16~1_combout\,
	datab => \ula|mux4|Mux15~1_combout\,
	datac => \ula|mux4|Mux14~1_combout\,
	datad => \ula|mux4|Mux13~1_combout\,
	combout => \ula|zero~6_combout\);

-- Location: LCCOMB_X75_Y48_N30
\ula|zero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~7_combout\ = (\ula|mux4|Mux11~1_combout\) # ((\ula|mux4|Mux12~1_combout\) # ((\ula|mux4|Mux9~1_combout\) # (\ula|mux4|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux11~1_combout\,
	datab => \ula|mux4|Mux12~1_combout\,
	datac => \ula|mux4|Mux9~1_combout\,
	datad => \ula|mux4|Mux10~1_combout\,
	combout => \ula|zero~7_combout\);

-- Location: LCCOMB_X75_Y48_N4
\ula|zero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~8_combout\ = (\ula|zero~6_combout\) # (\ula|zero~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ula|zero~6_combout\,
	datad => \ula|zero~7_combout\,
	combout => \ula|zero~8_combout\);

-- Location: LCCOMB_X76_Y47_N6
\ula|zero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~3_combout\ = (\ula|mux4|Mux26~1_combout\) # ((\ula|mux4|Mux30~1_combout\) # ((\ula|mux4|Mux25~1_combout\) # (\ula|mux4|Mux27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux26~1_combout\,
	datab => \ula|mux4|Mux30~1_combout\,
	datac => \ula|mux4|Mux25~1_combout\,
	datad => \ula|mux4|Mux27~1_combout\,
	combout => \ula|zero~3_combout\);

-- Location: LCCOMB_X76_Y47_N0
\ula|zero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~4_combout\ = (\ula|mux4|Mux28~1_combout\) # ((\ula|mux4|Mux20~1_combout\) # ((\ula|mux4|Mux29~1_combout\) # (\ula|zero~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux28~1_combout\,
	datab => \ula|mux4|Mux20~1_combout\,
	datac => \ula|mux4|Mux29~1_combout\,
	datad => \ula|zero~3_combout\,
	combout => \ula|zero~4_combout\);

-- Location: LCCOMB_X74_Y49_N22
\ula|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~0_combout\ = (\ula|mux4|Mux21~1_combout\) # ((\ula_ctrl|ula_ctrl[1]~11_combout\ & (\ula|full_adder|result[0]~0_combout\ & !\ula|mux4|Mux31~0_combout\)) # (!\ula_ctrl|ula_ctrl[1]~11_combout\ & ((\ula|mux4|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux21~1_combout\,
	datab => \ula|full_adder|result[0]~0_combout\,
	datac => \ula_ctrl|ula_ctrl[1]~11_combout\,
	datad => \ula|mux4|Mux31~0_combout\,
	combout => \ula|zero~0_combout\);

-- Location: LCCOMB_X74_Y49_N12
\ula|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~1_combout\ = (\ula|zero~0_combout\) # ((\ula|mux4|Mux22~1_combout\) # ((\ula|mux4|Mux24~1_combout\) # (\ula|mux4|Mux23~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|zero~0_combout\,
	datab => \ula|mux4|Mux22~1_combout\,
	datac => \ula|mux4|Mux24~1_combout\,
	datad => \ula|mux4|Mux23~1_combout\,
	combout => \ula|zero~1_combout\);

-- Location: LCCOMB_X74_Y49_N30
\ula|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~2_combout\ = (\ula|zero~1_combout\) # ((\ula|mux4|Mux19~1_combout\) # ((\ula|mux4|Mux17~1_combout\) # (\ula|mux4|Mux18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|zero~1_combout\,
	datab => \ula|mux4|Mux19~1_combout\,
	datac => \ula|mux4|Mux17~1_combout\,
	datad => \ula|mux4|Mux18~1_combout\,
	combout => \ula|zero~2_combout\);

-- Location: LCCOMB_X74_Y48_N30
\ula|zero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~5_combout\ = (\ula|zero~4_combout\) # ((\ula|zero~2_combout\) # ((\ula|mux4|Mux31~0_combout\ & \ula|result_slt[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|zero~4_combout\,
	datab => \ula|mux4|Mux31~0_combout\,
	datac => \ula|zero~2_combout\,
	datad => \ula|result_slt[0]~0_combout\,
	combout => \ula|zero~5_combout\);

-- Location: LCCOMB_X72_Y48_N30
\ula|zero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~9_combout\ = (\ula|mux4|Mux6~1_combout\) # ((\ula|mux4|Mux7~1_combout\) # ((\ula|mux4|Mux8~1_combout\) # (\ula|mux4|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux6~1_combout\,
	datab => \ula|mux4|Mux7~1_combout\,
	datac => \ula|mux4|Mux8~1_combout\,
	datad => \ula|mux4|Mux5~1_combout\,
	combout => \ula|zero~9_combout\);

-- Location: LCCOMB_X73_Y48_N26
\ula|zero~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~10_combout\ = (\ula|mux4|Mux4~1_combout\) # (\ula|mux4|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ula|mux4|Mux4~1_combout\,
	datad => \ula|mux4|Mux3~1_combout\,
	combout => \ula|zero~10_combout\);

-- Location: LCCOMB_X74_Y48_N18
\ula|zero~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~11_combout\ = (\ula|zero~9_combout\) # ((\ula|mux4|Mux2~1_combout\) # ((\ula|zero~10_combout\) # (\ula|mux4|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|zero~9_combout\,
	datab => \ula|mux4|Mux2~1_combout\,
	datac => \ula|zero~10_combout\,
	datad => \ula|mux4|Mux1~1_combout\,
	combout => \ula|zero~11_combout\);

-- Location: LCCOMB_X74_Y48_N14
\ula|zero~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ula|zero~12_combout\ = (!\ula|zero~8_combout\ & (!\ula|mux4|Mux0~1_combout\ & (!\ula|zero~5_combout\ & !\ula|zero~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|zero~8_combout\,
	datab => \ula|mux4|Mux0~1_combout\,
	datac => \ula|zero~5_combout\,
	datad => \ula|zero~11_combout\,
	combout => \ula|zero~12_combout\);

-- Location: FF_X74_Y48_N15
\EX_MEM|q[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ula|zero~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM|q\(69));

-- Location: LCCOMB_X73_Y50_N0
and_beq : cycloneive_lcell_comb
-- Equation(s):
-- \and_beq~combout\ = (\EX_MEM|q\(104) & \EX_MEM|q\(69))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EX_MEM|q\(104),
	datad => \EX_MEM|q\(69),
	combout => \and_beq~combout\);

-- Location: FF_X69_Y50_N13
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

-- Location: LCCOMB_X70_Y50_N8
\PC|q[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC|q[4]~2_combout\ = (\and_beq~combout\ & ((\EX_MEM|q\(74)))) # (!\and_beq~combout\ & (\somador1|Y[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \and_beq~combout\,
	datab => \somador1|Y[4]~4_combout\,
	datad => \EX_MEM|q\(74),
	combout => \PC|q[4]~2_combout\);

-- Location: FF_X70_Y50_N9
\PC|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \PC|q[4]~2_combout\,
	asdata => \memoriaInst|rom~7_combout\,
	sload => \fd_ctrl|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(4));

-- Location: LCCOMB_X70_Y50_N18
\somador1|Y[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador1|Y[5]~6_combout\ = (\PC|q\(5) & (!\somador1|Y[4]~5\)) # (!\PC|q\(5) & ((\somador1|Y[4]~5\) # (GND)))
-- \somador1|Y[5]~7\ = CARRY((!\somador1|Y[4]~5\) # (!\PC|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC|q\(5),
	datad => VCC,
	cin => \somador1|Y[4]~5\,
	combout => \somador1|Y[5]~6_combout\,
	cout => \somador1|Y[5]~7\);

-- Location: FF_X70_Y50_N19
\IF_ID|q[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \somador1|Y[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(37));

-- Location: LCCOMB_X69_Y50_N6
\ID_EX|q[111]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX|q[111]~feeder_combout\ = \IF_ID|q\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID|q\(37),
	combout => \ID_EX|q[111]~feeder_combout\);

-- Location: FF_X69_Y50_N7
\ID_EX|q[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \ID_EX|q[111]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(111));

-- Location: FF_X69_Y50_N15
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

-- Location: LCCOMB_X70_Y50_N4
\mux_PC|Y[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[5]~0_combout\ = (!\fd_ctrl|Equal0~1_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(75))) # (!\and_beq~combout\ & ((\somador1|Y[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(75),
	datab => \somador1|Y[5]~6_combout\,
	datac => \fd_ctrl|Equal0~1_combout\,
	datad => \and_beq~combout\,
	combout => \mux_PC|Y[5]~0_combout\);

-- Location: FF_X70_Y50_N5
\PC|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_PC|Y[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(5));

-- Location: FF_X70_Y50_N21
\IF_ID|q[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \somador1|Y[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(38));

-- Location: FF_X69_Y50_N1
\ID_EX|q[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	asdata => \IF_ID|q\(38),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX|q\(112));

-- Location: FF_X69_Y50_N17
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

-- Location: LCCOMB_X70_Y50_N6
\mux_PC|Y[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_PC|Y[6]~1_combout\ = (!\fd_ctrl|Equal0~1_combout\ & ((\and_beq~combout\ & (\EX_MEM|q\(76))) # (!\and_beq~combout\ & ((\somador1|Y[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM|q\(76),
	datab => \somador1|Y[6]~8_combout\,
	datac => \fd_ctrl|Equal0~1_combout\,
	datad => \and_beq~combout\,
	combout => \mux_PC|Y[6]~1_combout\);

-- Location: FF_X70_Y50_N7
\PC|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \mux_PC|Y[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|q\(6));

-- Location: LCCOMB_X73_Y50_N24
\memoriaInst|rom~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~0_combout\ = (\PC|q\(3) & ((\PC|q\(5) & (!\PC|q\(4) & \PC|q\(2))) # (!\PC|q\(5) & (\PC|q\(4) & !\PC|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(5),
	datab => \PC|q\(3),
	datac => \PC|q\(4),
	datad => \PC|q\(2),
	combout => \memoriaInst|rom~0_combout\);

-- Location: LCCOMB_X72_Y50_N12
\memoriaInst|rom~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \memoriaInst|rom~2_combout\ = (\PC|q\(6) & (\memoriaInst|rom~1_combout\ & \memoriaInst|rom~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC|q\(6),
	datac => \memoriaInst|rom~1_combout\,
	datad => \memoriaInst|rom~0_combout\,
	combout => \memoriaInst|rom~2_combout\);

-- Location: DDIOOUTCELL_X69_Y73_N18
\IF_ID|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(0));

-- Location: DDIOOUTCELL_X94_Y73_N4
\IF_ID|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(1));

-- Location: DDIOOUTCELL_X94_Y73_N11
\IF_ID|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(2));

-- Location: DDIOOUTCELL_X87_Y73_N11
\IF_ID|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(5));

-- Location: DDIOOUTCELL_X65_Y73_N18
\IF_ID|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(26));

-- Location: DDIOOUTCELL_X67_Y73_N11
\IF_ID|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(27));

-- Location: DDIOOUTCELL_X58_Y73_N4
\IF_ID|q[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q[0]~_Duplicate_1_q\);

-- Location: DDIOOUTCELL_X65_Y73_N11
\IF_ID|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~clkctrl_outclk\,
	d => \memoriaInst|rom~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID|q\(29));

-- Location: DDIOOUTCELL_X60_Y73_N18
\IF_ID|q[31]\ : dffeas
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
	q => \IF_ID|q\(31));

-- Location: LCCOMB_X83_Y57_N12
\display0|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[0]~0_combout\ = (\ula|mux4|Mux29~1_combout\ & (!\ula|mux4|Mux30~1_combout\ & (\ula|mux4|Mux28~1_combout\ $ (!\ula|mux4|Mux31~1_combout\)))) # (!\ula|mux4|Mux29~1_combout\ & (\ula|mux4|Mux31~1_combout\ & (\ula|mux4|Mux28~1_combout\ 
-- $ (!\ula|mux4|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux30~1_combout\,
	datad => \ula|mux4|Mux31~1_combout\,
	combout => \display0|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X83_Y57_N6
\display0|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[1]~1_combout\ = (\ula|mux4|Mux28~1_combout\ & ((\ula|mux4|Mux31~1_combout\ & ((\ula|mux4|Mux30~1_combout\))) # (!\ula|mux4|Mux31~1_combout\ & (\ula|mux4|Mux29~1_combout\)))) # (!\ula|mux4|Mux28~1_combout\ & 
-- (\ula|mux4|Mux29~1_combout\ & (\ula|mux4|Mux30~1_combout\ $ (\ula|mux4|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux30~1_combout\,
	datad => \ula|mux4|Mux31~1_combout\,
	combout => \display0|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X83_Y57_N16
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

-- Location: LCCOMB_X83_Y57_N14
\display0|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[3]~3_combout\ = (\ula|mux4|Mux30~1_combout\ & ((\ula|mux4|Mux29~1_combout\ & ((\ula|mux4|Mux31~1_combout\))) # (!\ula|mux4|Mux29~1_combout\ & (\ula|mux4|Mux28~1_combout\ & !\ula|mux4|Mux31~1_combout\)))) # 
-- (!\ula|mux4|Mux30~1_combout\ & (!\ula|mux4|Mux28~1_combout\ & (\ula|mux4|Mux29~1_combout\ $ (\ula|mux4|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux30~1_combout\,
	datad => \ula|mux4|Mux31~1_combout\,
	combout => \display0|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X83_Y57_N24
\display0|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[4]~4_combout\ = (\ula|mux4|Mux30~1_combout\ & (((!\ula|mux4|Mux28~1_combout\ & \ula|mux4|Mux31~1_combout\)))) # (!\ula|mux4|Mux30~1_combout\ & ((\ula|mux4|Mux29~1_combout\ & (!\ula|mux4|Mux28~1_combout\)) # 
-- (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux4|Mux31~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux30~1_combout\,
	datad => \ula|mux4|Mux31~1_combout\,
	combout => \display0|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X83_Y57_N30
\display0|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[5]~5_combout\ = (\ula|mux4|Mux29~1_combout\ & (\ula|mux4|Mux31~1_combout\ & (\ula|mux4|Mux28~1_combout\ $ (\ula|mux4|Mux30~1_combout\)))) # (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux4|Mux28~1_combout\ & ((\ula|mux4|Mux30~1_combout\) 
-- # (\ula|mux4|Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux30~1_combout\,
	datad => \ula|mux4|Mux31~1_combout\,
	combout => \display0|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X83_Y57_N8
\display0|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[6]~6_combout\ = (\ula|mux4|Mux31~1_combout\ & (!\ula|mux4|Mux28~1_combout\ & (\ula|mux4|Mux29~1_combout\ $ (!\ula|mux4|Mux30~1_combout\)))) # (!\ula|mux4|Mux31~1_combout\ & (!\ula|mux4|Mux30~1_combout\ & (\ula|mux4|Mux29~1_combout\ 
-- $ (!\ula|mux4|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|Mux29~1_combout\,
	datab => \ula|mux4|Mux28~1_combout\,
	datac => \ula|mux4|Mux30~1_combout\,
	datad => \ula|mux4|Mux31~1_combout\,
	combout => \display0|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X112_Y34_N12
\display1|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~0_combout\ = (\mux_Rt_im|Y[2]~0_combout\ & (!\mux_Rt_im|Y[1]~1_combout\ & (\mux_Rt_im|Y[0]~2_combout\ $ (!\mux_Rt_im|Y[3]~3_combout\)))) # (!\mux_Rt_im|Y[2]~0_combout\ & (\mux_Rt_im|Y[0]~2_combout\ & (\mux_Rt_im|Y[1]~1_combout\ 
-- $ (!\mux_Rt_im|Y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~2_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \mux_Rt_im|Y[2]~0_combout\,
	datad => \mux_Rt_im|Y[3]~3_combout\,
	combout => \display1|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X112_Y34_N2
\display1|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[1]~1_combout\ = (\mux_Rt_im|Y[1]~1_combout\ & ((\mux_Rt_im|Y[0]~2_combout\ & ((\mux_Rt_im|Y[3]~3_combout\))) # (!\mux_Rt_im|Y[0]~2_combout\ & (\mux_Rt_im|Y[2]~0_combout\)))) # (!\mux_Rt_im|Y[1]~1_combout\ & 
-- (\mux_Rt_im|Y[2]~0_combout\ & (\mux_Rt_im|Y[0]~2_combout\ $ (\mux_Rt_im|Y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~2_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \mux_Rt_im|Y[2]~0_combout\,
	datad => \mux_Rt_im|Y[3]~3_combout\,
	combout => \display1|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X112_Y34_N28
\display1|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[2]~2_combout\ = (\mux_Rt_im|Y[2]~0_combout\ & (\mux_Rt_im|Y[3]~3_combout\ & ((\mux_Rt_im|Y[1]~1_combout\) # (!\mux_Rt_im|Y[0]~2_combout\)))) # (!\mux_Rt_im|Y[2]~0_combout\ & (!\mux_Rt_im|Y[0]~2_combout\ & 
-- (\mux_Rt_im|Y[1]~1_combout\ & !\mux_Rt_im|Y[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~2_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \mux_Rt_im|Y[2]~0_combout\,
	datad => \mux_Rt_im|Y[3]~3_combout\,
	combout => \display1|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X112_Y34_N14
\display1|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[3]~3_combout\ = (\mux_Rt_im|Y[1]~1_combout\ & ((\mux_Rt_im|Y[0]~2_combout\ & (\mux_Rt_im|Y[2]~0_combout\)) # (!\mux_Rt_im|Y[0]~2_combout\ & (!\mux_Rt_im|Y[2]~0_combout\ & \mux_Rt_im|Y[3]~3_combout\)))) # 
-- (!\mux_Rt_im|Y[1]~1_combout\ & (!\mux_Rt_im|Y[3]~3_combout\ & (\mux_Rt_im|Y[0]~2_combout\ $ (\mux_Rt_im|Y[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~2_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \mux_Rt_im|Y[2]~0_combout\,
	datad => \mux_Rt_im|Y[3]~3_combout\,
	combout => \display1|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X112_Y34_N8
\display1|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~4_combout\ = (\mux_Rt_im|Y[1]~1_combout\ & (\mux_Rt_im|Y[0]~2_combout\ & ((!\mux_Rt_im|Y[3]~3_combout\)))) # (!\mux_Rt_im|Y[1]~1_combout\ & ((\mux_Rt_im|Y[2]~0_combout\ & ((!\mux_Rt_im|Y[3]~3_combout\))) # 
-- (!\mux_Rt_im|Y[2]~0_combout\ & (\mux_Rt_im|Y[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~2_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \mux_Rt_im|Y[2]~0_combout\,
	datad => \mux_Rt_im|Y[3]~3_combout\,
	combout => \display1|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X112_Y34_N18
\display1|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[5]~5_combout\ = (\mux_Rt_im|Y[0]~2_combout\ & (\mux_Rt_im|Y[3]~3_combout\ $ (((\mux_Rt_im|Y[1]~1_combout\) # (!\mux_Rt_im|Y[2]~0_combout\))))) # (!\mux_Rt_im|Y[0]~2_combout\ & (\mux_Rt_im|Y[1]~1_combout\ & 
-- (!\mux_Rt_im|Y[2]~0_combout\ & !\mux_Rt_im|Y[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~2_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \mux_Rt_im|Y[2]~0_combout\,
	datad => \mux_Rt_im|Y[3]~3_combout\,
	combout => \display1|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X112_Y34_N24
\display1|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~6_combout\ = (\mux_Rt_im|Y[0]~2_combout\ & (!\mux_Rt_im|Y[3]~3_combout\ & (\mux_Rt_im|Y[1]~1_combout\ $ (!\mux_Rt_im|Y[2]~0_combout\)))) # (!\mux_Rt_im|Y[0]~2_combout\ & (!\mux_Rt_im|Y[1]~1_combout\ & (\mux_Rt_im|Y[2]~0_combout\ 
-- $ (!\mux_Rt_im|Y[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_Rt_im|Y[0]~2_combout\,
	datab => \mux_Rt_im|Y[1]~1_combout\,
	datac => \mux_Rt_im|Y[2]~0_combout\,
	datad => \mux_Rt_im|Y[3]~3_combout\,
	combout => \display1|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X74_Y44_N26
\display2|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[0]~0_combout\ = (\ID_EX|q\(77) & (\ID_EX|q\(74) & (\ID_EX|q\(76) $ (\ID_EX|q\(75))))) # (!\ID_EX|q\(77) & (!\ID_EX|q\(75) & (\ID_EX|q\(76) $ (\ID_EX|q\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ID_EX|q\(76),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(74),
	combout => \display2|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X74_Y44_N24
\display2|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[1]~1_combout\ = (\ID_EX|q\(77) & ((\ID_EX|q\(74) & ((\ID_EX|q\(75)))) # (!\ID_EX|q\(74) & (\ID_EX|q\(76))))) # (!\ID_EX|q\(77) & (\ID_EX|q\(76) & (\ID_EX|q\(75) $ (\ID_EX|q\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ID_EX|q\(76),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(74),
	combout => \display2|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X74_Y44_N30
\display2|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[2]~2_combout\ = (\ID_EX|q\(77) & (\ID_EX|q\(76) & ((\ID_EX|q\(75)) # (!\ID_EX|q\(74))))) # (!\ID_EX|q\(77) & (!\ID_EX|q\(76) & (\ID_EX|q\(75) & !\ID_EX|q\(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ID_EX|q\(76),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(74),
	combout => \display2|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X74_Y44_N0
\display2|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[3]~3_combout\ = (\ID_EX|q\(75) & ((\ID_EX|q\(76) & ((\ID_EX|q\(74)))) # (!\ID_EX|q\(76) & (\ID_EX|q\(77) & !\ID_EX|q\(74))))) # (!\ID_EX|q\(75) & (!\ID_EX|q\(77) & (\ID_EX|q\(76) $ (\ID_EX|q\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ID_EX|q\(76),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(74),
	combout => \display2|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X74_Y44_N22
\display2|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[4]~4_combout\ = (\ID_EX|q\(75) & (!\ID_EX|q\(77) & ((\ID_EX|q\(74))))) # (!\ID_EX|q\(75) & ((\ID_EX|q\(76) & (!\ID_EX|q\(77))) # (!\ID_EX|q\(76) & ((\ID_EX|q\(74))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ID_EX|q\(76),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(74),
	combout => \display2|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X74_Y44_N20
\display2|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[5]~5_combout\ = (\ID_EX|q\(76) & (\ID_EX|q\(74) & (\ID_EX|q\(77) $ (\ID_EX|q\(75))))) # (!\ID_EX|q\(76) & (!\ID_EX|q\(77) & ((\ID_EX|q\(75)) # (\ID_EX|q\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ID_EX|q\(76),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(74),
	combout => \display2|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X74_Y44_N14
\display2|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[6]~6_combout\ = (\ID_EX|q\(74) & (!\ID_EX|q\(77) & (\ID_EX|q\(76) $ (!\ID_EX|q\(75))))) # (!\ID_EX|q\(74) & (!\ID_EX|q\(75) & (\ID_EX|q\(77) $ (!\ID_EX|q\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX|q\(77),
	datab => \ID_EX|q\(76),
	datac => \ID_EX|q\(75),
	datad => \ID_EX|q\(74),
	combout => \display2|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X79_Y4_N24
\display4|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[0]~0_combout\ = (\memoriaDados|ram~46_combout\ & (!\memoriaDados|ram~43_combout\ & (\memoriaDados|ram~45_combout\ $ (!\memoriaDados|ram~44_combout\)))) # (!\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~45_combout\ & 
-- (\memoriaDados|ram~43_combout\ $ (!\memoriaDados|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~46_combout\,
	datab => \memoriaDados|ram~43_combout\,
	datac => \memoriaDados|ram~45_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X79_Y4_N18
\display4|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[1]~1_combout\ = (\memoriaDados|ram~43_combout\ & ((\memoriaDados|ram~45_combout\ & ((\memoriaDados|ram~44_combout\))) # (!\memoriaDados|ram~45_combout\ & (\memoriaDados|ram~46_combout\)))) # (!\memoriaDados|ram~43_combout\ & 
-- (\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~45_combout\ $ (\memoriaDados|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~46_combout\,
	datab => \memoriaDados|ram~43_combout\,
	datac => \memoriaDados|ram~45_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X79_Y4_N20
\display4|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[2]~2_combout\ = (\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~44_combout\ & ((\memoriaDados|ram~43_combout\) # (!\memoriaDados|ram~45_combout\)))) # (!\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~43_combout\ & 
-- (!\memoriaDados|ram~45_combout\ & !\memoriaDados|ram~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~46_combout\,
	datab => \memoriaDados|ram~43_combout\,
	datac => \memoriaDados|ram~45_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X79_Y4_N22
\display4|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[3]~3_combout\ = (\memoriaDados|ram~43_combout\ & ((\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~45_combout\)) # (!\memoriaDados|ram~46_combout\ & (!\memoriaDados|ram~45_combout\ & \memoriaDados|ram~44_combout\)))) # 
-- (!\memoriaDados|ram~43_combout\ & (!\memoriaDados|ram~44_combout\ & (\memoriaDados|ram~46_combout\ $ (\memoriaDados|ram~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~46_combout\,
	datab => \memoriaDados|ram~43_combout\,
	datac => \memoriaDados|ram~45_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X79_Y4_N12
\display4|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[4]~4_combout\ = (\memoriaDados|ram~43_combout\ & (((\memoriaDados|ram~45_combout\ & !\memoriaDados|ram~44_combout\)))) # (!\memoriaDados|ram~43_combout\ & ((\memoriaDados|ram~46_combout\ & ((!\memoriaDados|ram~44_combout\))) # 
-- (!\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~46_combout\,
	datab => \memoriaDados|ram~43_combout\,
	datac => \memoriaDados|ram~45_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X79_Y4_N30
\display4|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[5]~5_combout\ = (\memoriaDados|ram~46_combout\ & (\memoriaDados|ram~45_combout\ & (\memoriaDados|ram~43_combout\ $ (\memoriaDados|ram~44_combout\)))) # (!\memoriaDados|ram~46_combout\ & (!\memoriaDados|ram~44_combout\ & 
-- ((\memoriaDados|ram~43_combout\) # (\memoriaDados|ram~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~46_combout\,
	datab => \memoriaDados|ram~43_combout\,
	datac => \memoriaDados|ram~45_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X79_Y4_N28
\display4|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[6]~6_combout\ = (\memoriaDados|ram~45_combout\ & (!\memoriaDados|ram~44_combout\ & (\memoriaDados|ram~46_combout\ $ (!\memoriaDados|ram~43_combout\)))) # (!\memoriaDados|ram~45_combout\ & (!\memoriaDados|ram~43_combout\ & 
-- (\memoriaDados|ram~46_combout\ $ (!\memoriaDados|ram~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memoriaDados|ram~46_combout\,
	datab => \memoriaDados|ram~43_combout\,
	datac => \memoriaDados|ram~45_combout\,
	datad => \memoriaDados|ram~44_combout\,
	combout => \display4|rascSaida7seg[6]~6_combout\);

-- Location: LCCOMB_X77_Y45_N12
\display6|rascSaida7seg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[0]~0_combout\ = (\mux_ULA|Y[2]~3_combout\ & (!\mux_ULA|Y[1]~0_combout\ & (\mux_ULA|Y[0]~2_combout\ $ (!\mux_ULA|Y[3]~1_combout\)))) # (!\mux_ULA|Y[2]~3_combout\ & (\mux_ULA|Y[0]~2_combout\ & (\mux_ULA|Y[1]~0_combout\ $ 
-- (!\mux_ULA|Y[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[2]~3_combout\,
	datab => \mux_ULA|Y[1]~0_combout\,
	datac => \mux_ULA|Y[0]~2_combout\,
	datad => \mux_ULA|Y[3]~1_combout\,
	combout => \display6|rascSaida7seg[0]~0_combout\);

-- Location: LCCOMB_X75_Y44_N4
\display6|rascSaida7seg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[1]~1_combout\ = (\mux_ULA|Y[3]~1_combout\ & ((\mux_ULA|Y[0]~2_combout\ & (\mux_ULA|Y[1]~0_combout\)) # (!\mux_ULA|Y[0]~2_combout\ & ((\mux_ULA|Y[2]~3_combout\))))) # (!\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[2]~3_combout\ & 
-- (\mux_ULA|Y[1]~0_combout\ $ (\mux_ULA|Y[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[3]~1_combout\,
	datab => \mux_ULA|Y[1]~0_combout\,
	datac => \mux_ULA|Y[0]~2_combout\,
	datad => \mux_ULA|Y[2]~3_combout\,
	combout => \display6|rascSaida7seg[1]~1_combout\);

-- Location: LCCOMB_X75_Y44_N14
\display6|rascSaida7seg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[2]~2_combout\ = (\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[2]~3_combout\ & ((\mux_ULA|Y[1]~0_combout\) # (!\mux_ULA|Y[0]~2_combout\)))) # (!\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[1]~0_combout\ & (!\mux_ULA|Y[0]~2_combout\ & 
-- !\mux_ULA|Y[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[3]~1_combout\,
	datab => \mux_ULA|Y[1]~0_combout\,
	datac => \mux_ULA|Y[0]~2_combout\,
	datad => \mux_ULA|Y[2]~3_combout\,
	combout => \display6|rascSaida7seg[2]~2_combout\);

-- Location: LCCOMB_X77_Y45_N30
\display6|rascSaida7seg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[3]~3_combout\ = (\mux_ULA|Y[1]~0_combout\ & ((\mux_ULA|Y[2]~3_combout\ & (\mux_ULA|Y[0]~2_combout\)) # (!\mux_ULA|Y[2]~3_combout\ & (!\mux_ULA|Y[0]~2_combout\ & \mux_ULA|Y[3]~1_combout\)))) # (!\mux_ULA|Y[1]~0_combout\ & 
-- (!\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[2]~3_combout\ $ (\mux_ULA|Y[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[2]~3_combout\,
	datab => \mux_ULA|Y[1]~0_combout\,
	datac => \mux_ULA|Y[0]~2_combout\,
	datad => \mux_ULA|Y[3]~1_combout\,
	combout => \display6|rascSaida7seg[3]~3_combout\);

-- Location: LCCOMB_X75_Y44_N28
\display6|rascSaida7seg[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[4]~4_combout\ = (\mux_ULA|Y[1]~0_combout\ & (!\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[0]~2_combout\))) # (!\mux_ULA|Y[1]~0_combout\ & ((\mux_ULA|Y[2]~3_combout\ & (!\mux_ULA|Y[3]~1_combout\)) # (!\mux_ULA|Y[2]~3_combout\ & 
-- ((\mux_ULA|Y[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[3]~1_combout\,
	datab => \mux_ULA|Y[1]~0_combout\,
	datac => \mux_ULA|Y[0]~2_combout\,
	datad => \mux_ULA|Y[2]~3_combout\,
	combout => \display6|rascSaida7seg[4]~4_combout\);

-- Location: LCCOMB_X75_Y44_N10
\display6|rascSaida7seg[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[5]~5_combout\ = (\mux_ULA|Y[1]~0_combout\ & (!\mux_ULA|Y[3]~1_combout\ & ((\mux_ULA|Y[0]~2_combout\) # (!\mux_ULA|Y[2]~3_combout\)))) # (!\mux_ULA|Y[1]~0_combout\ & (\mux_ULA|Y[0]~2_combout\ & (\mux_ULA|Y[3]~1_combout\ $ 
-- (!\mux_ULA|Y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[3]~1_combout\,
	datab => \mux_ULA|Y[1]~0_combout\,
	datac => \mux_ULA|Y[0]~2_combout\,
	datad => \mux_ULA|Y[2]~3_combout\,
	combout => \display6|rascSaida7seg[5]~5_combout\);

-- Location: LCCOMB_X75_Y44_N12
\display6|rascSaida7seg[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \display6|rascSaida7seg[6]~6_combout\ = (\mux_ULA|Y[0]~2_combout\ & (!\mux_ULA|Y[3]~1_combout\ & (\mux_ULA|Y[1]~0_combout\ $ (!\mux_ULA|Y[2]~3_combout\)))) # (!\mux_ULA|Y[0]~2_combout\ & (!\mux_ULA|Y[1]~0_combout\ & (\mux_ULA|Y[3]~1_combout\ $ 
-- (!\mux_ULA|Y[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ULA|Y[3]~1_combout\,
	datab => \mux_ULA|Y[1]~0_combout\,
	datac => \mux_ULA|Y[0]~2_combout\,
	datad => \mux_ULA|Y[2]~3_combout\,
	combout => \display6|rascSaida7seg[6]~6_combout\);

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


