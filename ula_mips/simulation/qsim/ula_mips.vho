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

-- DATE "10/23/2018 14:36:36"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula_mips IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	ula_ctrl : IN std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(31 DOWNTO 0)
	);
END ula_mips;

ARCHITECTURE structure OF ula_mips IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ula_ctrl : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(31 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \Q[10]~output_o\ : std_logic;
SIGNAL \Q[11]~output_o\ : std_logic;
SIGNAL \Q[12]~output_o\ : std_logic;
SIGNAL \Q[13]~output_o\ : std_logic;
SIGNAL \Q[14]~output_o\ : std_logic;
SIGNAL \Q[15]~output_o\ : std_logic;
SIGNAL \Q[16]~output_o\ : std_logic;
SIGNAL \Q[17]~output_o\ : std_logic;
SIGNAL \Q[18]~output_o\ : std_logic;
SIGNAL \Q[19]~output_o\ : std_logic;
SIGNAL \Q[20]~output_o\ : std_logic;
SIGNAL \Q[21]~output_o\ : std_logic;
SIGNAL \Q[22]~output_o\ : std_logic;
SIGNAL \Q[23]~output_o\ : std_logic;
SIGNAL \Q[24]~output_o\ : std_logic;
SIGNAL \Q[25]~output_o\ : std_logic;
SIGNAL \Q[26]~output_o\ : std_logic;
SIGNAL \Q[27]~output_o\ : std_logic;
SIGNAL \Q[28]~output_o\ : std_logic;
SIGNAL \Q[29]~output_o\ : std_logic;
SIGNAL \Q[30]~output_o\ : std_logic;
SIGNAL \Q[31]~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \ula_ctrl[3]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ula_ctrl[2]~input_o\ : std_logic;
SIGNAL \ula_ctrl[0]~input_o\ : std_logic;
SIGNAL \ula_ctrl[1]~input_o\ : std_logic;
SIGNAL \mux4|Mux31~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \mux2A|Y[1]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \full_adder|c_out[0]~0_combout\ : std_logic;
SIGNAL \mux4|Mux30~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \mux2A|Y[2]~1_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \mux2B|Y[2]~0_combout\ : std_logic;
SIGNAL \mux4|Mux29~0_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \mux2A|Y[3]~2_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \mux2B|Y[3]~1_combout\ : std_logic;
SIGNAL \full_adder|c_out[2]~1_combout\ : std_logic;
SIGNAL \mux4|Mux28~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \mux2A|Y[4]~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \mux2B|Y[4]~2_combout\ : std_logic;
SIGNAL \full_adder|c_out[3]~2_combout\ : std_logic;
SIGNAL \mux4|Mux27~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \mux2A|Y[5]~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \mux2B|Y[5]~3_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \mux4|Mux27~1_combout\ : std_logic;
SIGNAL \full_adder|c_out[4]~3_combout\ : std_logic;
SIGNAL \full_adder|c_out[4]~4_combout\ : std_logic;
SIGNAL \mux4|Mux26~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \mux2A|Y[6]~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \mux2B|Y[6]~4_combout\ : std_logic;
SIGNAL \full_adder|c_out[5]~5_combout\ : std_logic;
SIGNAL \mux4|Mux25~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \mux2A|Y[7]~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \mux2B|Y[7]~5_combout\ : std_logic;
SIGNAL \full_adder|c_out[6]~6_combout\ : std_logic;
SIGNAL \mux4|Mux24~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \mux2A|Y[8]~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \mux2B|Y[8]~6_combout\ : std_logic;
SIGNAL \full_adder|c_out[7]~7_combout\ : std_logic;
SIGNAL \mux4|Mux23~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \mux2A|Y[9]~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \full_adder|c_out[8]~8_combout\ : std_logic;
SIGNAL \mux4|Mux22~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \mux2A|Y[10]~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \mux2B|Y[10]~7_combout\ : std_logic;
SIGNAL \mux4|Mux22~1_combout\ : std_logic;
SIGNAL \full_adder|c_out[9]~9_combout\ : std_logic;
SIGNAL \mux4|Mux21~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \mux2A|Y[11]~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \mux2B|Y[11]~8_combout\ : std_logic;
SIGNAL \full_adder|c_out[10]~10_combout\ : std_logic;
SIGNAL \mux4|Mux20~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \mux2A|Y[12]~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \mux2B|Y[12]~9_combout\ : std_logic;
SIGNAL \full_adder|c_out[11]~11_combout\ : std_logic;
SIGNAL \mux4|Mux19~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \mux2A|Y[13]~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \mux2B|Y[13]~10_combout\ : std_logic;
SIGNAL \full_adder|c_out[12]~12_combout\ : std_logic;
SIGNAL \mux4|Mux18~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \mux2A|Y[14]~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \full_adder|c_out[13]~13_combout\ : std_logic;
SIGNAL \mux4|Mux17~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \mux2A|Y[15]~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \mux2B|Y[15]~11_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \mux4|Mux17~1_combout\ : std_logic;
SIGNAL \full_adder|c_out[14]~14_combout\ : std_logic;
SIGNAL \full_adder|c_out[14]~15_combout\ : std_logic;
SIGNAL \mux4|Mux16~0_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \mux2A|Y[16]~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \mux2B|Y[16]~12_combout\ : std_logic;
SIGNAL \full_adder|c_out[15]~16_combout\ : std_logic;
SIGNAL \mux4|Mux15~0_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \mux2A|Y[17]~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \mux2B|Y[17]~13_combout\ : std_logic;
SIGNAL \full_adder|c_out[16]~17_combout\ : std_logic;
SIGNAL \mux4|Mux14~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \mux2A|Y[18]~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \mux2B|Y[18]~14_combout\ : std_logic;
SIGNAL \full_adder|c_out[17]~18_combout\ : std_logic;
SIGNAL \mux4|Mux13~0_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \mux2A|Y[19]~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \mux2B|Y[19]~15_combout\ : std_logic;
SIGNAL \full_adder|c_out[18]~19_combout\ : std_logic;
SIGNAL \mux4|Mux12~0_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \mux2A|Y[20]~19_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \mux2B|Y[20]~16_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \mux4|Mux12~1_combout\ : std_logic;
SIGNAL \full_adder|c_out[19]~20_combout\ : std_logic;
SIGNAL \full_adder|c_out[19]~21_combout\ : std_logic;
SIGNAL \mux4|Mux11~0_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \mux2A|Y[21]~20_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \mux2B|Y[21]~17_combout\ : std_logic;
SIGNAL \full_adder|c_out[20]~22_combout\ : std_logic;
SIGNAL \mux4|Mux10~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \mux2A|Y[22]~21_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \mux2B|Y[22]~18_combout\ : std_logic;
SIGNAL \full_adder|c_out[21]~23_combout\ : std_logic;
SIGNAL \mux4|Mux9~0_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \mux2A|Y[23]~22_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \mux2B|Y[23]~19_combout\ : std_logic;
SIGNAL \full_adder|c_out[22]~24_combout\ : std_logic;
SIGNAL \mux4|Mux8~0_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \mux2A|Y[24]~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \mux2B|Y[24]~20_combout\ : std_logic;
SIGNAL \full_adder|c_out[23]~25_combout\ : std_logic;
SIGNAL \mux4|Mux7~0_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \mux2A|Y[25]~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \mux2B|Y[25]~21_combout\ : std_logic;
SIGNAL \mux4|Mux7~1_combout\ : std_logic;
SIGNAL \full_adder|c_out[24]~26_combout\ : std_logic;
SIGNAL \mux4|Mux6~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \mux2A|Y[26]~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \mux2B|Y[26]~22_combout\ : std_logic;
SIGNAL \full_adder|c_out[25]~27_combout\ : std_logic;
SIGNAL \mux4|Mux5~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \mux2A|Y[27]~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \mux2B|Y[27]~23_combout\ : std_logic;
SIGNAL \full_adder|c_out[26]~28_combout\ : std_logic;
SIGNAL \mux4|Mux4~0_combout\ : std_logic;
SIGNAL \mux4|Mux3~0_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \mux2A|Y[28]~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \full_adder|result[28]~0_combout\ : std_logic;
SIGNAL \mux4|Mux3~1_combout\ : std_logic;
SIGNAL \mux4|Mux3~2_combout\ : std_logic;
SIGNAL \mux4|Mux3~3_combout\ : std_logic;
SIGNAL \mux4|Mux3~4_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \mux2A|Y[29]~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \mux2B|Y[29]~24_combout\ : std_logic;
SIGNAL \full_adder|c_out[28]~29_combout\ : std_logic;
SIGNAL \mux4|Mux2~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \mux2A|Y[30]~29_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \mux2B|Y[30]~25_combout\ : std_logic;
SIGNAL \full_adder|result[30]~1_combout\ : std_logic;
SIGNAL \mux4|Mux1~0_combout\ : std_logic;
SIGNAL \mux4|Mux1~1_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \mux4|Mux26~1_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[3]~0_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[3]~1_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[3]~2_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[5]~3_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[7]~4_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[9]~5_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[11]~6_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[14]~7_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[16]~8_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[19]~9_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[21]~10_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[23]~11_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[25]~12_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[28]~13_combout\ : std_logic;
SIGNAL \slt|full_adder|c_out[30]~14_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \mux2A|Y[31]~30_combout\ : std_logic;
SIGNAL \full_adder|c_out[30]~30_combout\ : std_logic;
SIGNAL \mux4|Mux0~0_combout\ : std_logic;
SIGNAL \full_adder|c_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mux2B|ALT_INV_Y[26]~22_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[26]~25_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[24]~26_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[25]~21_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[25]~24_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[23]~25_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[24]~20_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[24]~23_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[22]~24_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[23]~19_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[23]~22_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[21]~23_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[22]~18_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[22]~21_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[20]~22_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[21]~17_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[21]~20_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[19]~21_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[19]~20_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[20]~16_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[20]~19_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[18]~19_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[19]~15_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[19]~18_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[17]~18_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[18]~14_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[18]~17_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[16]~17_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[17]~13_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[17]~16_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[15]~16_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[16]~12_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[16]~15_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[14]~15_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[14]~14_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[15]~11_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[15]~14_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[13]~13_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[14]~13_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[12]~12_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[13]~10_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[13]~12_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[11]~11_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[12]~9_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[12]~11_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[10]~10_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[11]~8_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[11]~10_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[9]~9_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[10]~7_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[10]~9_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[8]~8_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[9]~8_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[7]~7_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[8]~6_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[8]~7_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[6]~6_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[7]~5_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[7]~6_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[5]~5_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[6]~4_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[6]~5_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[4]~4_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[4]~3_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[5]~3_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[5]~4_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[3]~2_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[4]~2_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[4]~3_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[2]~1_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ula_ctrl[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ula_ctrl[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ula_ctrl[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ula_ctrl[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[31]~30_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[30]~30_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[30]~14_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[28]~13_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[25]~12_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[23]~11_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[21]~10_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[19]~9_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[16]~8_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[14]~7_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[11]~6_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[9]~5_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[7]~4_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[5]~3_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[3]~2_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[3]~1_combout\ : std_logic;
SIGNAL \slt|full_adder|ALT_INV_c_out[3]~0_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_result[30]~1_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[30]~25_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[30]~29_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[28]~29_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[29]~24_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[29]~28_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_result[28]~0_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[28]~27_combout\ : std_logic;
SIGNAL \mux4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[26]~28_combout\ : std_logic;
SIGNAL \mux2B|ALT_INV_Y[27]~23_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[27]~26_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[25]~27_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[3]~2_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \mux2B|ALT_INV_Y[2]~0_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[2]~1_combout\ : std_logic;
SIGNAL \full_adder|ALT_INV_c_out[0]~0_combout\ : std_logic;
SIGNAL \mux2A|ALT_INV_Y[1]~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_ula_ctrl <= ula_ctrl;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\mux2B|ALT_INV_Y[26]~22_combout\ <= NOT \mux2B|Y[26]~22_combout\;
\mux2A|ALT_INV_Y[26]~25_combout\ <= NOT \mux2A|Y[26]~25_combout\;
\full_adder|ALT_INV_c_out[24]~26_combout\ <= NOT \full_adder|c_out[24]~26_combout\;
\mux4|ALT_INV_Mux7~1_combout\ <= NOT \mux4|Mux7~1_combout\;
\mux2B|ALT_INV_Y[25]~21_combout\ <= NOT \mux2B|Y[25]~21_combout\;
\mux2A|ALT_INV_Y[25]~24_combout\ <= NOT \mux2A|Y[25]~24_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\full_adder|ALT_INV_c_out[23]~25_combout\ <= NOT \full_adder|c_out[23]~25_combout\;
\mux2B|ALT_INV_Y[24]~20_combout\ <= NOT \mux2B|Y[24]~20_combout\;
\mux2A|ALT_INV_Y[24]~23_combout\ <= NOT \mux2A|Y[24]~23_combout\;
\full_adder|ALT_INV_c_out[22]~24_combout\ <= NOT \full_adder|c_out[22]~24_combout\;
\mux2B|ALT_INV_Y[23]~19_combout\ <= NOT \mux2B|Y[23]~19_combout\;
\mux2A|ALT_INV_Y[23]~22_combout\ <= NOT \mux2A|Y[23]~22_combout\;
\full_adder|ALT_INV_c_out[21]~23_combout\ <= NOT \full_adder|c_out[21]~23_combout\;
\mux2B|ALT_INV_Y[22]~18_combout\ <= NOT \mux2B|Y[22]~18_combout\;
\mux2A|ALT_INV_Y[22]~21_combout\ <= NOT \mux2A|Y[22]~21_combout\;
\full_adder|ALT_INV_c_out[20]~22_combout\ <= NOT \full_adder|c_out[20]~22_combout\;
\mux2B|ALT_INV_Y[21]~17_combout\ <= NOT \mux2B|Y[21]~17_combout\;
\mux2A|ALT_INV_Y[21]~20_combout\ <= NOT \mux2A|Y[21]~20_combout\;
\full_adder|ALT_INV_c_out[19]~21_combout\ <= NOT \full_adder|c_out[19]~21_combout\;
\full_adder|ALT_INV_c_out[19]~20_combout\ <= NOT \full_adder|c_out[19]~20_combout\;
\mux4|ALT_INV_Mux12~1_combout\ <= NOT \mux4|Mux12~1_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\mux2B|ALT_INV_Y[20]~16_combout\ <= NOT \mux2B|Y[20]~16_combout\;
\mux2A|ALT_INV_Y[20]~19_combout\ <= NOT \mux2A|Y[20]~19_combout\;
\full_adder|ALT_INV_c_out[18]~19_combout\ <= NOT \full_adder|c_out[18]~19_combout\;
\mux2B|ALT_INV_Y[19]~15_combout\ <= NOT \mux2B|Y[19]~15_combout\;
\mux2A|ALT_INV_Y[19]~18_combout\ <= NOT \mux2A|Y[19]~18_combout\;
\full_adder|ALT_INV_c_out[17]~18_combout\ <= NOT \full_adder|c_out[17]~18_combout\;
\mux2B|ALT_INV_Y[18]~14_combout\ <= NOT \mux2B|Y[18]~14_combout\;
\mux2A|ALT_INV_Y[18]~17_combout\ <= NOT \mux2A|Y[18]~17_combout\;
\full_adder|ALT_INV_c_out[16]~17_combout\ <= NOT \full_adder|c_out[16]~17_combout\;
\mux2B|ALT_INV_Y[17]~13_combout\ <= NOT \mux2B|Y[17]~13_combout\;
\mux2A|ALT_INV_Y[17]~16_combout\ <= NOT \mux2A|Y[17]~16_combout\;
\full_adder|ALT_INV_c_out[15]~16_combout\ <= NOT \full_adder|c_out[15]~16_combout\;
\mux2B|ALT_INV_Y[16]~12_combout\ <= NOT \mux2B|Y[16]~12_combout\;
\mux2A|ALT_INV_Y[16]~15_combout\ <= NOT \mux2A|Y[16]~15_combout\;
\full_adder|ALT_INV_c_out[14]~15_combout\ <= NOT \full_adder|c_out[14]~15_combout\;
\full_adder|ALT_INV_c_out[14]~14_combout\ <= NOT \full_adder|c_out[14]~14_combout\;
\mux4|ALT_INV_Mux17~1_combout\ <= NOT \mux4|Mux17~1_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\mux2B|ALT_INV_Y[15]~11_combout\ <= NOT \mux2B|Y[15]~11_combout\;
\mux2A|ALT_INV_Y[15]~14_combout\ <= NOT \mux2A|Y[15]~14_combout\;
\full_adder|ALT_INV_c_out[13]~13_combout\ <= NOT \full_adder|c_out[13]~13_combout\;
\mux2A|ALT_INV_Y[14]~13_combout\ <= NOT \mux2A|Y[14]~13_combout\;
\full_adder|ALT_INV_c_out[12]~12_combout\ <= NOT \full_adder|c_out[12]~12_combout\;
\mux2B|ALT_INV_Y[13]~10_combout\ <= NOT \mux2B|Y[13]~10_combout\;
\mux2A|ALT_INV_Y[13]~12_combout\ <= NOT \mux2A|Y[13]~12_combout\;
\full_adder|ALT_INV_c_out[11]~11_combout\ <= NOT \full_adder|c_out[11]~11_combout\;
\mux2B|ALT_INV_Y[12]~9_combout\ <= NOT \mux2B|Y[12]~9_combout\;
\mux2A|ALT_INV_Y[12]~11_combout\ <= NOT \mux2A|Y[12]~11_combout\;
\full_adder|ALT_INV_c_out[10]~10_combout\ <= NOT \full_adder|c_out[10]~10_combout\;
\mux2B|ALT_INV_Y[11]~8_combout\ <= NOT \mux2B|Y[11]~8_combout\;
\mux2A|ALT_INV_Y[11]~10_combout\ <= NOT \mux2A|Y[11]~10_combout\;
\full_adder|ALT_INV_c_out[9]~9_combout\ <= NOT \full_adder|c_out[9]~9_combout\;
\mux4|ALT_INV_Mux22~1_combout\ <= NOT \mux4|Mux22~1_combout\;
\mux2B|ALT_INV_Y[10]~7_combout\ <= NOT \mux2B|Y[10]~7_combout\;
\mux2A|ALT_INV_Y[10]~9_combout\ <= NOT \mux2A|Y[10]~9_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\full_adder|ALT_INV_c_out[8]~8_combout\ <= NOT \full_adder|c_out[8]~8_combout\;
\mux2A|ALT_INV_Y[9]~8_combout\ <= NOT \mux2A|Y[9]~8_combout\;
\full_adder|ALT_INV_c_out[7]~7_combout\ <= NOT \full_adder|c_out[7]~7_combout\;
\mux2B|ALT_INV_Y[8]~6_combout\ <= NOT \mux2B|Y[8]~6_combout\;
\mux2A|ALT_INV_Y[8]~7_combout\ <= NOT \mux2A|Y[8]~7_combout\;
\full_adder|ALT_INV_c_out[6]~6_combout\ <= NOT \full_adder|c_out[6]~6_combout\;
\mux2B|ALT_INV_Y[7]~5_combout\ <= NOT \mux2B|Y[7]~5_combout\;
\mux2A|ALT_INV_Y[7]~6_combout\ <= NOT \mux2A|Y[7]~6_combout\;
\full_adder|ALT_INV_c_out[5]~5_combout\ <= NOT \full_adder|c_out[5]~5_combout\;
\mux2B|ALT_INV_Y[6]~4_combout\ <= NOT \mux2B|Y[6]~4_combout\;
\mux2A|ALT_INV_Y[6]~5_combout\ <= NOT \mux2A|Y[6]~5_combout\;
\full_adder|ALT_INV_c_out[4]~4_combout\ <= NOT \full_adder|c_out[4]~4_combout\;
\full_adder|ALT_INV_c_out[4]~3_combout\ <= NOT \full_adder|c_out[4]~3_combout\;
\mux4|ALT_INV_Mux27~1_combout\ <= NOT \mux4|Mux27~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\mux2B|ALT_INV_Y[5]~3_combout\ <= NOT \mux2B|Y[5]~3_combout\;
\mux2A|ALT_INV_Y[5]~4_combout\ <= NOT \mux2A|Y[5]~4_combout\;
\full_adder|ALT_INV_c_out[3]~2_combout\ <= NOT \full_adder|c_out[3]~2_combout\;
\mux2B|ALT_INV_Y[4]~2_combout\ <= NOT \mux2B|Y[4]~2_combout\;
\mux2A|ALT_INV_Y[4]~3_combout\ <= NOT \mux2A|Y[4]~3_combout\;
\full_adder|ALT_INV_c_out[2]~1_combout\ <= NOT \full_adder|c_out[2]~1_combout\;
\mux2B|ALT_INV_Y[3]~1_combout\ <= NOT \mux2B|Y[3]~1_combout\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_ula_ctrl[1]~input_o\ <= NOT \ula_ctrl[1]~input_o\;
\ALT_INV_ula_ctrl[0]~input_o\ <= NOT \ula_ctrl[0]~input_o\;
\ALT_INV_ula_ctrl[2]~input_o\ <= NOT \ula_ctrl[2]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_ula_ctrl[3]~input_o\ <= NOT \ula_ctrl[3]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\mux2A|ALT_INV_Y[31]~30_combout\ <= NOT \mux2A|Y[31]~30_combout\;
\full_adder|ALT_INV_c_out[30]~30_combout\ <= NOT \full_adder|c_out[30]~30_combout\;
\slt|full_adder|ALT_INV_c_out[30]~14_combout\ <= NOT \slt|full_adder|c_out[30]~14_combout\;
\slt|full_adder|ALT_INV_c_out[28]~13_combout\ <= NOT \slt|full_adder|c_out[28]~13_combout\;
\slt|full_adder|ALT_INV_c_out[25]~12_combout\ <= NOT \slt|full_adder|c_out[25]~12_combout\;
\slt|full_adder|ALT_INV_c_out[23]~11_combout\ <= NOT \slt|full_adder|c_out[23]~11_combout\;
\slt|full_adder|ALT_INV_c_out[21]~10_combout\ <= NOT \slt|full_adder|c_out[21]~10_combout\;
\slt|full_adder|ALT_INV_c_out[19]~9_combout\ <= NOT \slt|full_adder|c_out[19]~9_combout\;
\slt|full_adder|ALT_INV_c_out[16]~8_combout\ <= NOT \slt|full_adder|c_out[16]~8_combout\;
\slt|full_adder|ALT_INV_c_out[14]~7_combout\ <= NOT \slt|full_adder|c_out[14]~7_combout\;
\slt|full_adder|ALT_INV_c_out[11]~6_combout\ <= NOT \slt|full_adder|c_out[11]~6_combout\;
\slt|full_adder|ALT_INV_c_out[9]~5_combout\ <= NOT \slt|full_adder|c_out[9]~5_combout\;
\slt|full_adder|ALT_INV_c_out[7]~4_combout\ <= NOT \slt|full_adder|c_out[7]~4_combout\;
\slt|full_adder|ALT_INV_c_out[5]~3_combout\ <= NOT \slt|full_adder|c_out[5]~3_combout\;
\slt|full_adder|ALT_INV_c_out[3]~2_combout\ <= NOT \slt|full_adder|c_out[3]~2_combout\;
\slt|full_adder|ALT_INV_c_out[3]~1_combout\ <= NOT \slt|full_adder|c_out[3]~1_combout\;
\slt|full_adder|ALT_INV_c_out[3]~0_combout\ <= NOT \slt|full_adder|c_out[3]~0_combout\;
\mux4|ALT_INV_Mux26~1_combout\ <= NOT \mux4|Mux26~1_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\mux4|ALT_INV_Mux1~0_combout\ <= NOT \mux4|Mux1~0_combout\;
\full_adder|ALT_INV_result[30]~1_combout\ <= NOT \full_adder|result[30]~1_combout\;
\mux2B|ALT_INV_Y[30]~25_combout\ <= NOT \mux2B|Y[30]~25_combout\;
\mux2A|ALT_INV_Y[30]~29_combout\ <= NOT \mux2A|Y[30]~29_combout\;
\full_adder|ALT_INV_c_out[28]~29_combout\ <= NOT \full_adder|c_out[28]~29_combout\;
\mux2B|ALT_INV_Y[29]~24_combout\ <= NOT \mux2B|Y[29]~24_combout\;
\mux2A|ALT_INV_Y[29]~28_combout\ <= NOT \mux2A|Y[29]~28_combout\;
\mux4|ALT_INV_Mux3~3_combout\ <= NOT \mux4|Mux3~3_combout\;
\mux4|ALT_INV_Mux3~2_combout\ <= NOT \mux4|Mux3~2_combout\;
\mux4|ALT_INV_Mux3~1_combout\ <= NOT \mux4|Mux3~1_combout\;
\full_adder|ALT_INV_result[28]~0_combout\ <= NOT \full_adder|result[28]~0_combout\;
\mux2A|ALT_INV_Y[28]~27_combout\ <= NOT \mux2A|Y[28]~27_combout\;
\mux4|ALT_INV_Mux3~0_combout\ <= NOT \mux4|Mux3~0_combout\;
\full_adder|ALT_INV_c_out[26]~28_combout\ <= NOT \full_adder|c_out[26]~28_combout\;
\mux2B|ALT_INV_Y[27]~23_combout\ <= NOT \mux2B|Y[27]~23_combout\;
\mux2A|ALT_INV_Y[27]~26_combout\ <= NOT \mux2A|Y[27]~26_combout\;
\full_adder|ALT_INV_c_out[25]~27_combout\ <= NOT \full_adder|c_out[25]~27_combout\;
\mux2A|ALT_INV_Y[3]~2_combout\ <= NOT \mux2A|Y[3]~2_combout\;
\full_adder|ALT_INV_c_out\(1) <= NOT \full_adder|c_out\(1);
\mux2B|ALT_INV_Y[2]~0_combout\ <= NOT \mux2B|Y[2]~0_combout\;
\mux2A|ALT_INV_Y[2]~1_combout\ <= NOT \mux2A|Y[2]~1_combout\;
\full_adder|ALT_INV_c_out[0]~0_combout\ <= NOT \full_adder|c_out[0]~0_combout\;
\mux2A|ALT_INV_Y[1]~0_combout\ <= NOT \mux2A|Y[1]~0_combout\;

\Q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

\Q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

\Q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux29~0_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

\Q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

\Q[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux27~0_combout\,
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

\Q[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux26~0_combout\,
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

\Q[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux25~0_combout\,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

\Q[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux24~0_combout\,
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

\Q[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

\Q[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux22~0_combout\,
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

\Q[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \Q[10]~output_o\);

\Q[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \Q[11]~output_o\);

\Q[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \Q[12]~output_o\);

\Q[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \Q[13]~output_o\);

\Q[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux17~0_combout\,
	devoe => ww_devoe,
	o => \Q[14]~output_o\);

\Q[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \Q[15]~output_o\);

\Q[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Q[16]~output_o\);

\Q[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Q[17]~output_o\);

\Q[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \Q[18]~output_o\);

\Q[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux12~0_combout\,
	devoe => ww_devoe,
	o => \Q[19]~output_o\);

\Q[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \Q[20]~output_o\);

\Q[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \Q[21]~output_o\);

\Q[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \Q[22]~output_o\);

\Q[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Q[23]~output_o\);

\Q[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \Q[24]~output_o\);

\Q[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Q[25]~output_o\);

\Q[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Q[26]~output_o\);

\Q[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Q[27]~output_o\);

\Q[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \Q[28]~output_o\);

\Q[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Q[29]~output_o\);

\Q[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Q[30]~output_o\);

\Q[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Q[31]~output_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\ula_ctrl[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_ctrl(3),
	o => \ula_ctrl[3]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\ula_ctrl[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_ctrl(2),
	o => \ula_ctrl[2]~input_o\);

\ula_ctrl[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_ctrl(0),
	o => \ula_ctrl[0]~input_o\);

\ula_ctrl[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ula_ctrl(1),
	o => \ula_ctrl[1]~input_o\);

\mux4|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux31~0_combout\ = ( !\ula_ctrl[0]~input_o\ & ( \ula_ctrl[1]~input_o\ & ( !\A[0]~input_o\ $ (!\ula_ctrl[3]~input_o\ $ (\B[0]~input_o\)) ) ) ) # ( \ula_ctrl[0]~input_o\ & ( !\ula_ctrl[1]~input_o\ & ( (!\A[0]~input_o\ & ((!\B[0]~input_o\ $ 
-- (!\ula_ctrl[2]~input_o\)) # (\ula_ctrl[3]~input_o\))) # (\A[0]~input_o\ & ((!\ula_ctrl[3]~input_o\) # (!\B[0]~input_o\ $ (!\ula_ctrl[2]~input_o\)))) ) ) ) # ( !\ula_ctrl[0]~input_o\ & ( !\ula_ctrl[1]~input_o\ & ( (!\A[0]~input_o\ & (\ula_ctrl[3]~input_o\ 
-- & (!\B[0]~input_o\ $ (!\ula_ctrl[2]~input_o\)))) # (\A[0]~input_o\ & (!\ula_ctrl[3]~input_o\ & (!\B[0]~input_o\ $ (!\ula_ctrl[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000011011111111011001101001011010010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[3]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_ula_ctrl[2]~input_o\,
	datae => \ALT_INV_ula_ctrl[0]~input_o\,
	dataf => \ALT_INV_ula_ctrl[1]~input_o\,
	combout => \mux4|Mux31~0_combout\);

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\mux2A|Y[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[1]~0_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	combout => \mux2A|Y[1]~0_combout\);

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\full_adder|c_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[0]~0_combout\ = (!\B[0]~input_o\ & (((\ula_ctrl[2]~input_o\)))) # (\B[0]~input_o\ & (!\A[0]~input_o\ $ ((!\ula_ctrl[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011000000110111101100000011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[3]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_ula_ctrl[2]~input_o\,
	combout => \full_adder|c_out[0]~0_combout\);

\mux4|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux30~0_combout\ = ( \B[1]~input_o\ & ( \full_adder|c_out[0]~0_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\ula_ctrl[2]~input_o\ & ((\mux2A|Y[1]~0_combout\))) # (\ula_ctrl[2]~input_o\ & (\ula_ctrl[1]~input_o\ & !\mux2A|Y[1]~0_combout\)))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((!\ula_ctrl[2]~input_o\) # (\mux2A|Y[1]~0_combout\)))) ) ) ) # ( !\B[1]~input_o\ & ( \full_adder|c_out[0]~0_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\ula_ctrl[2]~input_o\ & (\ula_ctrl[1]~input_o\ & 
-- !\mux2A|Y[1]~0_combout\)) # (\ula_ctrl[2]~input_o\ & ((\mux2A|Y[1]~0_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2A|Y[1]~0_combout\) # (\ula_ctrl[2]~input_o\)))) ) ) ) # ( \B[1]~input_o\ & ( !\full_adder|c_out[0]~0_combout\ & 
-- ( (!\ula_ctrl[2]~input_o\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2A|Y[1]~0_combout\))))) # (\ula_ctrl[2]~input_o\ & (\mux2A|Y[1]~0_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\full_adder|c_out[0]~0_combout\ & ( (!\ula_ctrl[2]~input_o\ & (\mux2A|Y[1]~0_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\ula_ctrl[2]~input_o\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2A|Y[1]~0_combout\))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001111000001010001011010000011000011101000010010010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_ula_ctrl[0]~input_o\,
	datac => \ALT_INV_ula_ctrl[1]~input_o\,
	datad => \mux2A|ALT_INV_Y[1]~0_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \full_adder|ALT_INV_c_out[0]~0_combout\,
	combout => \mux4|Mux30~0_combout\);

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\mux2A|Y[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[2]~1_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	combout => \mux2A|Y[2]~1_combout\);

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\mux2B|Y[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[2]~0_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	combout => \mux2B|Y[2]~0_combout\);

\full_adder|c_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out\(1) = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\A[0]~input_o\ & ((!\B[0]~input_o\ & (!\ula_ctrl[3]~input_o\)) # (\B[0]~input_o\ & ((!\ula_ctrl[2]~input_o\))))) # (\A[0]~input_o\ & (!\ula_ctrl[3]~input_o\)) ) ) ) # ( !\A[1]~input_o\ & ( 
-- \B[1]~input_o\ & ( (!\A[0]~input_o\ & (\ula_ctrl[3]~input_o\)) # (\A[0]~input_o\ & ((!\B[0]~input_o\ & (\ula_ctrl[3]~input_o\)) # (\B[0]~input_o\ & ((!\ula_ctrl[2]~input_o\))))) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[0]~input_o\ & 
-- (((\ula_ctrl[2]~input_o\)))) # (\A[0]~input_o\ & ((!\B[0]~input_o\ & ((\ula_ctrl[2]~input_o\))) # (\B[0]~input_o\ & (!\ula_ctrl[3]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[0]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\ula_ctrl[2]~input_o\))) # (\B[0]~input_o\ & (\ula_ctrl[3]~input_o\)))) # (\A[0]~input_o\ & (((\ula_ctrl[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110111000001001111111000110111001100101100111011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[3]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_ula_ctrl[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \full_adder|c_out\(1));

\mux4|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux29~0_combout\ = ( \full_adder|c_out\(1) & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[2]~1_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[2]~0_combout\)) # (\mux2A|Y[2]~1_combout\ & ((\mux2B|Y[2]~0_combout\))))) # (\ula_ctrl[0]~input_o\ & 
-- (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[2]~0_combout\) # (\mux2A|Y[2]~1_combout\)))) ) ) # ( !\full_adder|c_out\(1) & ( (!\mux2A|Y[2]~1_combout\ & (\mux2B|Y[2]~0_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[2]~1_combout\ & 
-- (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[2]~1_combout\,
	datad => \mux2B|ALT_INV_Y[2]~0_combout\,
	datae => \full_adder|ALT_INV_c_out\(1),
	combout => \mux4|Mux29~0_combout\);

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\mux2A|Y[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[3]~2_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	combout => \mux2A|Y[3]~2_combout\);

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\mux2B|Y[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[3]~1_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	combout => \mux2B|Y[3]~1_combout\);

\full_adder|c_out[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[2]~1_combout\ = (!\mux2A|Y[2]~1_combout\ & (\mux2B|Y[2]~0_combout\ & \full_adder|c_out\(1))) # (\mux2A|Y[2]~1_combout\ & ((\full_adder|c_out\(1)) # (\mux2B|Y[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[2]~1_combout\,
	datab => \mux2B|ALT_INV_Y[2]~0_combout\,
	datac => \full_adder|ALT_INV_c_out\(1),
	combout => \full_adder|c_out[2]~1_combout\);

\mux4|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux28~0_combout\ = ( \full_adder|c_out[2]~1_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[3]~2_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[3]~1_combout\)) # (\mux2A|Y[3]~2_combout\ & ((\mux2B|Y[3]~1_combout\))))) # (\ula_ctrl[0]~input_o\ & 
-- (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[3]~1_combout\) # (\mux2A|Y[3]~2_combout\)))) ) ) # ( !\full_adder|c_out[2]~1_combout\ & ( (!\mux2A|Y[3]~2_combout\ & (\mux2B|Y[3]~1_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # 
-- (\mux2A|Y[3]~2_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[3]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[3]~2_combout\,
	datad => \mux2B|ALT_INV_Y[3]~1_combout\,
	datae => \full_adder|ALT_INV_c_out[2]~1_combout\,
	combout => \mux4|Mux28~0_combout\);

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\mux2A|Y[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[4]~3_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	combout => \mux2A|Y[4]~3_combout\);

\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\mux2B|Y[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[4]~2_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	combout => \mux2B|Y[4]~2_combout\);

\full_adder|c_out[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[3]~2_combout\ = (!\mux2A|Y[3]~2_combout\ & (\mux2B|Y[3]~1_combout\ & \full_adder|c_out[2]~1_combout\)) # (\mux2A|Y[3]~2_combout\ & ((\full_adder|c_out[2]~1_combout\) # (\mux2B|Y[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[3]~2_combout\,
	datab => \mux2B|ALT_INV_Y[3]~1_combout\,
	datac => \full_adder|ALT_INV_c_out[2]~1_combout\,
	combout => \full_adder|c_out[3]~2_combout\);

\mux4|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux27~0_combout\ = ( \full_adder|c_out[3]~2_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[4]~3_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[4]~2_combout\)) # (\mux2A|Y[4]~3_combout\ & ((\mux2B|Y[4]~2_combout\))))) # (\ula_ctrl[0]~input_o\ & 
-- (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[4]~2_combout\) # (\mux2A|Y[4]~3_combout\)))) ) ) # ( !\full_adder|c_out[3]~2_combout\ & ( (!\mux2A|Y[4]~3_combout\ & (\mux2B|Y[4]~2_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # 
-- (\mux2A|Y[4]~3_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[4]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[4]~3_combout\,
	datad => \mux2B|ALT_INV_Y[4]~2_combout\,
	datae => \full_adder|ALT_INV_c_out[3]~2_combout\,
	combout => \mux4|Mux27~0_combout\);

\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\mux2A|Y[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[5]~4_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	combout => \mux2A|Y[5]~4_combout\);

\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\mux2B|Y[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[5]~3_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	combout => \mux2B|Y[5]~3_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\ula_ctrl[3]~input_o\ & (\A[4]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (!\B[4]~input_o\)))) # (\ula_ctrl[3]~input_o\ & (!\A[4]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (!\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_ula_ctrl[2]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	combout => \comb~0_combout\);

\mux4|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux27~1_combout\ = (!\ula_ctrl[3]~input_o\ & (!\A[4]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (\B[4]~input_o\)))) # (\ula_ctrl[3]~input_o\ & (\A[4]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000110000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_ula_ctrl[2]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	combout => \mux4|Mux27~1_combout\);

\full_adder|c_out[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[4]~3_combout\ = ( \mux2B|Y[3]~1_combout\ & ( !\mux4|Mux27~1_combout\ & ( ((!\mux2A|Y[2]~1_combout\ & (\mux2B|Y[2]~0_combout\ & \full_adder|c_out\(1))) # (\mux2A|Y[2]~1_combout\ & ((\full_adder|c_out\(1)) # (\mux2B|Y[2]~0_combout\)))) # 
-- (\mux2A|Y[3]~2_combout\) ) ) ) # ( !\mux2B|Y[3]~1_combout\ & ( !\mux4|Mux27~1_combout\ & ( (\mux2A|Y[3]~2_combout\ & ((!\mux2A|Y[2]~1_combout\ & (\mux2B|Y[2]~0_combout\ & \full_adder|c_out\(1))) # (\mux2A|Y[2]~1_combout\ & ((\full_adder|c_out\(1)) # 
-- (\mux2B|Y[2]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[2]~1_combout\,
	datab => \mux2B|ALT_INV_Y[2]~0_combout\,
	datac => \full_adder|ALT_INV_c_out\(1),
	datad => \mux2A|ALT_INV_Y[3]~2_combout\,
	datae => \mux2B|ALT_INV_Y[3]~1_combout\,
	dataf => \mux4|ALT_INV_Mux27~1_combout\,
	combout => \full_adder|c_out[4]~3_combout\);

\full_adder|c_out[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[4]~4_combout\ = (!\comb~0_combout\ & !\full_adder|c_out[4]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \full_adder|ALT_INV_c_out[4]~3_combout\,
	combout => \full_adder|c_out[4]~4_combout\);

\mux4|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux26~0_combout\ = ( \full_adder|c_out[4]~4_combout\ & ( (!\mux2A|Y[5]~4_combout\ & (\mux2B|Y[5]~3_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[5]~4_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & 
-- !\mux2B|Y[5]~3_combout\))))) ) ) # ( !\full_adder|c_out[4]~4_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[5]~4_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[5]~3_combout\)) # (\mux2A|Y[5]~4_combout\ & ((\mux2B|Y[5]~3_combout\))))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[5]~3_combout\) # (\mux2A|Y[5]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[5]~4_combout\,
	datad => \mux2B|ALT_INV_Y[5]~3_combout\,
	datae => \full_adder|ALT_INV_c_out[4]~4_combout\,
	combout => \mux4|Mux26~0_combout\);

\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\mux2A|Y[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[6]~5_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	combout => \mux2A|Y[6]~5_combout\);

\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\mux2B|Y[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[6]~4_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	combout => \mux2B|Y[6]~4_combout\);

\full_adder|c_out[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[5]~5_combout\ = (!\mux2A|Y[5]~4_combout\ & (\mux2B|Y[5]~3_combout\ & !\full_adder|c_out[4]~4_combout\)) # (\mux2A|Y[5]~4_combout\ & ((!\full_adder|c_out[4]~4_combout\) # (\mux2B|Y[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[5]~4_combout\,
	datab => \mux2B|ALT_INV_Y[5]~3_combout\,
	datac => \full_adder|ALT_INV_c_out[4]~4_combout\,
	combout => \full_adder|c_out[5]~5_combout\);

\mux4|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux25~0_combout\ = ( \full_adder|c_out[5]~5_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[6]~5_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[6]~4_combout\)) # (\mux2A|Y[6]~5_combout\ & ((\mux2B|Y[6]~4_combout\))))) # (\ula_ctrl[0]~input_o\ & 
-- (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[6]~4_combout\) # (\mux2A|Y[6]~5_combout\)))) ) ) # ( !\full_adder|c_out[5]~5_combout\ & ( (!\mux2A|Y[6]~5_combout\ & (\mux2B|Y[6]~4_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # 
-- (\mux2A|Y[6]~5_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[6]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[6]~5_combout\,
	datad => \mux2B|ALT_INV_Y[6]~4_combout\,
	datae => \full_adder|ALT_INV_c_out[5]~5_combout\,
	combout => \mux4|Mux25~0_combout\);

\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\mux2A|Y[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[7]~6_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	combout => \mux2A|Y[7]~6_combout\);

\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

\mux2B|Y[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[7]~5_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	combout => \mux2B|Y[7]~5_combout\);

\full_adder|c_out[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[6]~6_combout\ = ( !\mux2A|Y[6]~5_combout\ & ( \mux2B|Y[6]~4_combout\ & ( (!\mux2A|Y[5]~4_combout\ & ((!\mux2B|Y[5]~3_combout\) # ((!\comb~0_combout\ & !\full_adder|c_out[4]~3_combout\)))) # (\mux2A|Y[5]~4_combout\ & (!\comb~0_combout\ & 
-- (!\mux2B|Y[5]~3_combout\ & !\full_adder|c_out[4]~3_combout\))) ) ) ) # ( \mux2A|Y[6]~5_combout\ & ( !\mux2B|Y[6]~4_combout\ & ( (!\mux2A|Y[5]~4_combout\ & ((!\mux2B|Y[5]~3_combout\) # ((!\comb~0_combout\ & !\full_adder|c_out[4]~3_combout\)))) # 
-- (\mux2A|Y[5]~4_combout\ & (!\comb~0_combout\ & (!\mux2B|Y[5]~3_combout\ & !\full_adder|c_out[4]~3_combout\))) ) ) ) # ( !\mux2A|Y[6]~5_combout\ & ( !\mux2B|Y[6]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001100000011101000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~0_combout\,
	datab => \mux2A|ALT_INV_Y[5]~4_combout\,
	datac => \mux2B|ALT_INV_Y[5]~3_combout\,
	datad => \full_adder|ALT_INV_c_out[4]~3_combout\,
	datae => \mux2A|ALT_INV_Y[6]~5_combout\,
	dataf => \mux2B|ALT_INV_Y[6]~4_combout\,
	combout => \full_adder|c_out[6]~6_combout\);

\mux4|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux24~0_combout\ = ( \full_adder|c_out[6]~6_combout\ & ( (!\mux2A|Y[7]~6_combout\ & (\mux2B|Y[7]~5_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[7]~6_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & 
-- !\mux2B|Y[7]~5_combout\))))) ) ) # ( !\full_adder|c_out[6]~6_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[7]~6_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[7]~5_combout\)) # (\mux2A|Y[7]~6_combout\ & ((\mux2B|Y[7]~5_combout\))))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[7]~5_combout\) # (\mux2A|Y[7]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[7]~6_combout\,
	datad => \mux2B|ALT_INV_Y[7]~5_combout\,
	datae => \full_adder|ALT_INV_c_out[6]~6_combout\,
	combout => \mux4|Mux24~0_combout\);

\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

\mux2A|Y[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[8]~7_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	combout => \mux2A|Y[8]~7_combout\);

\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

\mux2B|Y[8]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[8]~6_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	combout => \mux2B|Y[8]~6_combout\);

\full_adder|c_out[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[7]~7_combout\ = (!\mux2A|Y[7]~6_combout\ & (\mux2B|Y[7]~5_combout\ & !\full_adder|c_out[6]~6_combout\)) # (\mux2A|Y[7]~6_combout\ & ((!\full_adder|c_out[6]~6_combout\) # (\mux2B|Y[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[7]~6_combout\,
	datab => \mux2B|ALT_INV_Y[7]~5_combout\,
	datac => \full_adder|ALT_INV_c_out[6]~6_combout\,
	combout => \full_adder|c_out[7]~7_combout\);

\mux4|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux23~0_combout\ = ( \full_adder|c_out[7]~7_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[8]~7_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[8]~6_combout\)) # (\mux2A|Y[8]~7_combout\ & ((\mux2B|Y[8]~6_combout\))))) # (\ula_ctrl[0]~input_o\ & 
-- (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[8]~6_combout\) # (\mux2A|Y[8]~7_combout\)))) ) ) # ( !\full_adder|c_out[7]~7_combout\ & ( (!\mux2A|Y[8]~7_combout\ & (\mux2B|Y[8]~6_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # 
-- (\mux2A|Y[8]~7_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[8]~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[8]~7_combout\,
	datad => \mux2B|ALT_INV_Y[8]~6_combout\,
	datae => \full_adder|ALT_INV_c_out[7]~7_combout\,
	combout => \mux4|Mux23~0_combout\);

\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

\mux2A|Y[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[9]~8_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	combout => \mux2A|Y[9]~8_combout\);

\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

\full_adder|c_out[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[8]~8_combout\ = (!\mux2A|Y[8]~7_combout\ & (\mux2B|Y[8]~6_combout\ & \full_adder|c_out[7]~7_combout\)) # (\mux2A|Y[8]~7_combout\ & ((\full_adder|c_out[7]~7_combout\) # (\mux2B|Y[8]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[8]~7_combout\,
	datab => \mux2B|ALT_INV_Y[8]~6_combout\,
	datac => \full_adder|ALT_INV_c_out[7]~7_combout\,
	combout => \full_adder|c_out[8]~8_combout\);

\mux4|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux22~0_combout\ = ( \B[9]~input_o\ & ( \full_adder|c_out[8]~8_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\ula_ctrl[2]~input_o\ & ((\mux2A|Y[9]~8_combout\))) # (\ula_ctrl[2]~input_o\ & (\ula_ctrl[1]~input_o\ & !\mux2A|Y[9]~8_combout\)))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((!\ula_ctrl[2]~input_o\) # (\mux2A|Y[9]~8_combout\)))) ) ) ) # ( !\B[9]~input_o\ & ( \full_adder|c_out[8]~8_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\ula_ctrl[2]~input_o\ & (\ula_ctrl[1]~input_o\ & 
-- !\mux2A|Y[9]~8_combout\)) # (\ula_ctrl[2]~input_o\ & ((\mux2A|Y[9]~8_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2A|Y[9]~8_combout\) # (\ula_ctrl[2]~input_o\)))) ) ) ) # ( \B[9]~input_o\ & ( !\full_adder|c_out[8]~8_combout\ & 
-- ( (!\ula_ctrl[2]~input_o\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2A|Y[9]~8_combout\))))) # (\ula_ctrl[2]~input_o\ & (\mux2A|Y[9]~8_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) ) ) ) # ( !\B[9]~input_o\ & ( 
-- !\full_adder|c_out[8]~8_combout\ & ( (!\ula_ctrl[2]~input_o\ & (\mux2A|Y[9]~8_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\ula_ctrl[2]~input_o\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2A|Y[9]~8_combout\))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001111000001010001011010000011000011101000010010010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_ula_ctrl[0]~input_o\,
	datac => \ALT_INV_ula_ctrl[1]~input_o\,
	datad => \mux2A|ALT_INV_Y[9]~8_combout\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \full_adder|ALT_INV_c_out[8]~8_combout\,
	combout => \mux4|Mux22~0_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\ula_ctrl[3]~input_o\ & (\A[9]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (!\B[9]~input_o\)))) # (\ula_ctrl[3]~input_o\ & (!\A[9]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (!\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_ula_ctrl[2]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	combout => \comb~1_combout\);

\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

\mux2A|Y[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[10]~9_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	combout => \mux2A|Y[10]~9_combout\);

\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

\mux2B|Y[10]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[10]~7_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	combout => \mux2B|Y[10]~7_combout\);

\mux4|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux22~1_combout\ = (!\ula_ctrl[3]~input_o\ & (!\A[9]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (\B[9]~input_o\)))) # (\ula_ctrl[3]~input_o\ & (\A[9]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000110000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_ula_ctrl[2]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	combout => \mux4|Mux22~1_combout\);

\full_adder|c_out[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[9]~9_combout\ = ( \mux2B|Y[8]~6_combout\ & ( !\mux4|Mux22~1_combout\ & ( ((!\mux2A|Y[7]~6_combout\ & (\mux2B|Y[7]~5_combout\ & !\full_adder|c_out[6]~6_combout\)) # (\mux2A|Y[7]~6_combout\ & ((!\full_adder|c_out[6]~6_combout\) # 
-- (\mux2B|Y[7]~5_combout\)))) # (\mux2A|Y[8]~7_combout\) ) ) ) # ( !\mux2B|Y[8]~6_combout\ & ( !\mux4|Mux22~1_combout\ & ( (\mux2A|Y[8]~7_combout\ & ((!\mux2A|Y[7]~6_combout\ & (\mux2B|Y[7]~5_combout\ & !\full_adder|c_out[6]~6_combout\)) # 
-- (\mux2A|Y[7]~6_combout\ & ((!\full_adder|c_out[6]~6_combout\) # (\mux2B|Y[7]~5_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001011100011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[7]~6_combout\,
	datab => \mux2B|ALT_INV_Y[7]~5_combout\,
	datac => \full_adder|ALT_INV_c_out[6]~6_combout\,
	datad => \mux2A|ALT_INV_Y[8]~7_combout\,
	datae => \mux2B|ALT_INV_Y[8]~6_combout\,
	dataf => \mux4|ALT_INV_Mux22~1_combout\,
	combout => \full_adder|c_out[9]~9_combout\);

\mux4|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux21~0_combout\ = ( \mux2B|Y[10]~7_combout\ & ( \full_adder|c_out[9]~9_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((\mux2A|Y[10]~9_combout\))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\)) ) ) ) # ( !\mux2B|Y[10]~7_combout\ & ( 
-- \full_adder|c_out[9]~9_combout\ & ( (!\ula_ctrl[0]~input_o\ & (\ula_ctrl[1]~input_o\ & !\mux2A|Y[10]~9_combout\)) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & \mux2A|Y[10]~9_combout\)) ) ) ) # ( \mux2B|Y[10]~7_combout\ & ( 
-- !\full_adder|c_out[9]~9_combout\ & ( (!\ula_ctrl[0]~input_o\ & (!\mux2A|Y[10]~9_combout\ $ (((!\ula_ctrl[1]~input_o\) # (\comb~1_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\)) ) ) ) # ( !\mux2B|Y[10]~7_combout\ & ( 
-- !\full_adder|c_out[9]~9_combout\ & ( (!\ula_ctrl[0]~input_o\ & (\ula_ctrl[1]~input_o\ & (!\comb~1_combout\ $ (!\mux2A|Y[10]~9_combout\)))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2A|Y[10]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000100010010001000100010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \ALT_INV_comb~1_combout\,
	datad => \mux2A|ALT_INV_Y[10]~9_combout\,
	datae => \mux2B|ALT_INV_Y[10]~7_combout\,
	dataf => \full_adder|ALT_INV_c_out[9]~9_combout\,
	combout => \mux4|Mux21~0_combout\);

\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

\mux2A|Y[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[11]~10_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	combout => \mux2A|Y[11]~10_combout\);

\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

\mux2B|Y[11]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[11]~8_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	combout => \mux2B|Y[11]~8_combout\);

\full_adder|c_out[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[10]~10_combout\ = (!\mux2A|Y[10]~9_combout\ & ((!\mux2B|Y[10]~7_combout\) # ((!\comb~1_combout\ & !\full_adder|c_out[9]~9_combout\)))) # (\mux2A|Y[10]~9_combout\ & (!\comb~1_combout\ & (!\mux2B|Y[10]~7_combout\ & 
-- !\full_adder|c_out[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000011101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~1_combout\,
	datab => \mux2A|ALT_INV_Y[10]~9_combout\,
	datac => \mux2B|ALT_INV_Y[10]~7_combout\,
	datad => \full_adder|ALT_INV_c_out[9]~9_combout\,
	combout => \full_adder|c_out[10]~10_combout\);

\mux4|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux20~0_combout\ = ( \full_adder|c_out[10]~10_combout\ & ( (!\mux2A|Y[11]~10_combout\ & (\mux2B|Y[11]~8_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[11]~10_combout\ & (!\ula_ctrl[1]~input_o\ $ 
-- (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[11]~8_combout\))))) ) ) # ( !\full_adder|c_out[10]~10_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[11]~10_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[11]~8_combout\)) # (\mux2A|Y[11]~10_combout\ & 
-- ((\mux2B|Y[11]~8_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[11]~8_combout\) # (\mux2A|Y[11]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[11]~10_combout\,
	datad => \mux2B|ALT_INV_Y[11]~8_combout\,
	datae => \full_adder|ALT_INV_c_out[10]~10_combout\,
	combout => \mux4|Mux20~0_combout\);

\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

\mux2A|Y[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[12]~11_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	combout => \mux2A|Y[12]~11_combout\);

\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

\mux2B|Y[12]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[12]~9_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	combout => \mux2B|Y[12]~9_combout\);

\full_adder|c_out[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[11]~11_combout\ = ( !\mux2A|Y[11]~10_combout\ & ( \mux2B|Y[11]~8_combout\ & ( (!\mux2A|Y[10]~9_combout\ & ((!\mux2B|Y[10]~7_combout\) # ((!\comb~1_combout\ & !\full_adder|c_out[9]~9_combout\)))) # (\mux2A|Y[10]~9_combout\ & 
-- (!\comb~1_combout\ & (!\mux2B|Y[10]~7_combout\ & !\full_adder|c_out[9]~9_combout\))) ) ) ) # ( \mux2A|Y[11]~10_combout\ & ( !\mux2B|Y[11]~8_combout\ & ( (!\mux2A|Y[10]~9_combout\ & ((!\mux2B|Y[10]~7_combout\) # ((!\comb~1_combout\ & 
-- !\full_adder|c_out[9]~9_combout\)))) # (\mux2A|Y[10]~9_combout\ & (!\comb~1_combout\ & (!\mux2B|Y[10]~7_combout\ & !\full_adder|c_out[9]~9_combout\))) ) ) ) # ( !\mux2A|Y[11]~10_combout\ & ( !\mux2B|Y[11]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001100000011101000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~1_combout\,
	datab => \mux2A|ALT_INV_Y[10]~9_combout\,
	datac => \mux2B|ALT_INV_Y[10]~7_combout\,
	datad => \full_adder|ALT_INV_c_out[9]~9_combout\,
	datae => \mux2A|ALT_INV_Y[11]~10_combout\,
	dataf => \mux2B|ALT_INV_Y[11]~8_combout\,
	combout => \full_adder|c_out[11]~11_combout\);

\mux4|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux19~0_combout\ = ( \full_adder|c_out[11]~11_combout\ & ( (!\mux2A|Y[12]~11_combout\ & (\mux2B|Y[12]~9_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[12]~11_combout\ & (!\ula_ctrl[1]~input_o\ $ 
-- (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[12]~9_combout\))))) ) ) # ( !\full_adder|c_out[11]~11_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[12]~11_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[12]~9_combout\)) # (\mux2A|Y[12]~11_combout\ & 
-- ((\mux2B|Y[12]~9_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[12]~9_combout\) # (\mux2A|Y[12]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[12]~11_combout\,
	datad => \mux2B|ALT_INV_Y[12]~9_combout\,
	datae => \full_adder|ALT_INV_c_out[11]~11_combout\,
	combout => \mux4|Mux19~0_combout\);

\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

\mux2A|Y[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[13]~12_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	combout => \mux2A|Y[13]~12_combout\);

\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

\mux2B|Y[13]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[13]~10_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	combout => \mux2B|Y[13]~10_combout\);

\full_adder|c_out[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[12]~12_combout\ = (!\mux2A|Y[12]~11_combout\ & (\mux2B|Y[12]~9_combout\ & !\full_adder|c_out[11]~11_combout\)) # (\mux2A|Y[12]~11_combout\ & ((!\full_adder|c_out[11]~11_combout\) # (\mux2B|Y[12]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[12]~11_combout\,
	datab => \mux2B|ALT_INV_Y[12]~9_combout\,
	datac => \full_adder|ALT_INV_c_out[11]~11_combout\,
	combout => \full_adder|c_out[12]~12_combout\);

\mux4|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux18~0_combout\ = ( \full_adder|c_out[12]~12_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[13]~12_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[13]~10_combout\)) # (\mux2A|Y[13]~12_combout\ & ((\mux2B|Y[13]~10_combout\))))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[13]~10_combout\) # (\mux2A|Y[13]~12_combout\)))) ) ) # ( !\full_adder|c_out[12]~12_combout\ & ( (!\mux2A|Y[13]~12_combout\ & (\mux2B|Y[13]~10_combout\ & (!\ula_ctrl[0]~input_o\ $ 
-- (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[13]~12_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[13]~10_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[13]~12_combout\,
	datad => \mux2B|ALT_INV_Y[13]~10_combout\,
	datae => \full_adder|ALT_INV_c_out[12]~12_combout\,
	combout => \mux4|Mux18~0_combout\);

\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

\mux2A|Y[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[14]~13_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	combout => \mux2A|Y[14]~13_combout\);

\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

\full_adder|c_out[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[13]~13_combout\ = (!\mux2A|Y[13]~12_combout\ & (\mux2B|Y[13]~10_combout\ & \full_adder|c_out[12]~12_combout\)) # (\mux2A|Y[13]~12_combout\ & ((\full_adder|c_out[12]~12_combout\) # (\mux2B|Y[13]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[13]~12_combout\,
	datab => \mux2B|ALT_INV_Y[13]~10_combout\,
	datac => \full_adder|ALT_INV_c_out[12]~12_combout\,
	combout => \full_adder|c_out[13]~13_combout\);

\mux4|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux17~0_combout\ = ( \B[14]~input_o\ & ( \full_adder|c_out[13]~13_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\ula_ctrl[2]~input_o\ & ((\mux2A|Y[14]~13_combout\))) # (\ula_ctrl[2]~input_o\ & (\ula_ctrl[1]~input_o\ & !\mux2A|Y[14]~13_combout\)))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((!\ula_ctrl[2]~input_o\) # (\mux2A|Y[14]~13_combout\)))) ) ) ) # ( !\B[14]~input_o\ & ( \full_adder|c_out[13]~13_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\ula_ctrl[2]~input_o\ & (\ula_ctrl[1]~input_o\ & 
-- !\mux2A|Y[14]~13_combout\)) # (\ula_ctrl[2]~input_o\ & ((\mux2A|Y[14]~13_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2A|Y[14]~13_combout\) # (\ula_ctrl[2]~input_o\)))) ) ) ) # ( \B[14]~input_o\ & ( 
-- !\full_adder|c_out[13]~13_combout\ & ( (!\ula_ctrl[2]~input_o\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2A|Y[14]~13_combout\))))) # (\ula_ctrl[2]~input_o\ & (\mux2A|Y[14]~13_combout\ & (!\ula_ctrl[0]~input_o\ $ 
-- (!\ula_ctrl[1]~input_o\)))) ) ) ) # ( !\B[14]~input_o\ & ( !\full_adder|c_out[13]~13_combout\ & ( (!\ula_ctrl[2]~input_o\ & (\mux2A|Y[14]~13_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\ula_ctrl[2]~input_o\ & 
-- (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2A|Y[14]~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001111000001010001011010000011000011101000010010010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_ula_ctrl[0]~input_o\,
	datac => \ALT_INV_ula_ctrl[1]~input_o\,
	datad => \mux2A|ALT_INV_Y[14]~13_combout\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \full_adder|ALT_INV_c_out[13]~13_combout\,
	combout => \mux4|Mux17~0_combout\);

\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

\mux2A|Y[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[15]~14_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	combout => \mux2A|Y[15]~14_combout\);

\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

\mux2B|Y[15]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[15]~11_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	combout => \mux2B|Y[15]~11_combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\mux2A|Y[14]~13_combout\ & (!\ula_ctrl[2]~input_o\ $ (!\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \mux2A|ALT_INV_Y[14]~13_combout\,
	datac => \ALT_INV_B[14]~input_o\,
	combout => \comb~2_combout\);

\mux4|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux17~1_combout\ = (!\mux2A|Y[14]~13_combout\ & (!\ula_ctrl[2]~input_o\ $ (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \mux2A|ALT_INV_Y[14]~13_combout\,
	datac => \ALT_INV_B[14]~input_o\,
	combout => \mux4|Mux17~1_combout\);

\full_adder|c_out[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[14]~14_combout\ = ( \mux2B|Y[13]~10_combout\ & ( !\mux4|Mux17~1_combout\ & ( ((!\mux2A|Y[12]~11_combout\ & (\mux2B|Y[12]~9_combout\ & !\full_adder|c_out[11]~11_combout\)) # (\mux2A|Y[12]~11_combout\ & 
-- ((!\full_adder|c_out[11]~11_combout\) # (\mux2B|Y[12]~9_combout\)))) # (\mux2A|Y[13]~12_combout\) ) ) ) # ( !\mux2B|Y[13]~10_combout\ & ( !\mux4|Mux17~1_combout\ & ( (\mux2A|Y[13]~12_combout\ & ((!\mux2A|Y[12]~11_combout\ & (\mux2B|Y[12]~9_combout\ & 
-- !\full_adder|c_out[11]~11_combout\)) # (\mux2A|Y[12]~11_combout\ & ((!\full_adder|c_out[11]~11_combout\) # (\mux2B|Y[12]~9_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001011100011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[12]~11_combout\,
	datab => \mux2B|ALT_INV_Y[12]~9_combout\,
	datac => \full_adder|ALT_INV_c_out[11]~11_combout\,
	datad => \mux2A|ALT_INV_Y[13]~12_combout\,
	datae => \mux2B|ALT_INV_Y[13]~10_combout\,
	dataf => \mux4|ALT_INV_Mux17~1_combout\,
	combout => \full_adder|c_out[14]~14_combout\);

\full_adder|c_out[14]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[14]~15_combout\ = (!\comb~2_combout\ & !\full_adder|c_out[14]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \full_adder|ALT_INV_c_out[14]~14_combout\,
	combout => \full_adder|c_out[14]~15_combout\);

\mux4|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux16~0_combout\ = ( \full_adder|c_out[14]~15_combout\ & ( (!\mux2A|Y[15]~14_combout\ & (\mux2B|Y[15]~11_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[15]~14_combout\ & (!\ula_ctrl[1]~input_o\ $ 
-- (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[15]~11_combout\))))) ) ) # ( !\full_adder|c_out[14]~15_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[15]~14_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[15]~11_combout\)) # (\mux2A|Y[15]~14_combout\ & 
-- ((\mux2B|Y[15]~11_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[15]~11_combout\) # (\mux2A|Y[15]~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[15]~14_combout\,
	datad => \mux2B|ALT_INV_Y[15]~11_combout\,
	datae => \full_adder|ALT_INV_c_out[14]~15_combout\,
	combout => \mux4|Mux16~0_combout\);

\A[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

\mux2A|Y[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[16]~15_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	combout => \mux2A|Y[16]~15_combout\);

\B[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

\mux2B|Y[16]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[16]~12_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	combout => \mux2B|Y[16]~12_combout\);

\full_adder|c_out[15]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[15]~16_combout\ = (!\mux2A|Y[15]~14_combout\ & (\mux2B|Y[15]~11_combout\ & !\full_adder|c_out[14]~15_combout\)) # (\mux2A|Y[15]~14_combout\ & ((!\full_adder|c_out[14]~15_combout\) # (\mux2B|Y[15]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[15]~14_combout\,
	datab => \mux2B|ALT_INV_Y[15]~11_combout\,
	datac => \full_adder|ALT_INV_c_out[14]~15_combout\,
	combout => \full_adder|c_out[15]~16_combout\);

\mux4|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux15~0_combout\ = ( \full_adder|c_out[15]~16_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[16]~15_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[16]~12_combout\)) # (\mux2A|Y[16]~15_combout\ & ((\mux2B|Y[16]~12_combout\))))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[16]~12_combout\) # (\mux2A|Y[16]~15_combout\)))) ) ) # ( !\full_adder|c_out[15]~16_combout\ & ( (!\mux2A|Y[16]~15_combout\ & (\mux2B|Y[16]~12_combout\ & (!\ula_ctrl[0]~input_o\ $ 
-- (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[16]~15_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[16]~12_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[16]~15_combout\,
	datad => \mux2B|ALT_INV_Y[16]~12_combout\,
	datae => \full_adder|ALT_INV_c_out[15]~16_combout\,
	combout => \mux4|Mux15~0_combout\);

\A[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

\mux2A|Y[17]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[17]~16_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[17]~input_o\,
	combout => \mux2A|Y[17]~16_combout\);

\B[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

\mux2B|Y[17]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[17]~13_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	combout => \mux2B|Y[17]~13_combout\);

\full_adder|c_out[16]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[16]~17_combout\ = ( !\mux2A|Y[16]~15_combout\ & ( \mux2B|Y[16]~12_combout\ & ( (!\mux2A|Y[15]~14_combout\ & ((!\mux2B|Y[15]~11_combout\) # ((!\comb~2_combout\ & !\full_adder|c_out[14]~14_combout\)))) # (\mux2A|Y[15]~14_combout\ & 
-- (!\comb~2_combout\ & (!\mux2B|Y[15]~11_combout\ & !\full_adder|c_out[14]~14_combout\))) ) ) ) # ( \mux2A|Y[16]~15_combout\ & ( !\mux2B|Y[16]~12_combout\ & ( (!\mux2A|Y[15]~14_combout\ & ((!\mux2B|Y[15]~11_combout\) # ((!\comb~2_combout\ & 
-- !\full_adder|c_out[14]~14_combout\)))) # (\mux2A|Y[15]~14_combout\ & (!\comb~2_combout\ & (!\mux2B|Y[15]~11_combout\ & !\full_adder|c_out[14]~14_combout\))) ) ) ) # ( !\mux2A|Y[16]~15_combout\ & ( !\mux2B|Y[16]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001100000011101000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \mux2A|ALT_INV_Y[15]~14_combout\,
	datac => \mux2B|ALT_INV_Y[15]~11_combout\,
	datad => \full_adder|ALT_INV_c_out[14]~14_combout\,
	datae => \mux2A|ALT_INV_Y[16]~15_combout\,
	dataf => \mux2B|ALT_INV_Y[16]~12_combout\,
	combout => \full_adder|c_out[16]~17_combout\);

\mux4|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux14~0_combout\ = ( \full_adder|c_out[16]~17_combout\ & ( (!\mux2A|Y[17]~16_combout\ & (\mux2B|Y[17]~13_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[17]~16_combout\ & (!\ula_ctrl[1]~input_o\ $ 
-- (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[17]~13_combout\))))) ) ) # ( !\full_adder|c_out[16]~17_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[17]~16_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[17]~13_combout\)) # (\mux2A|Y[17]~16_combout\ & 
-- ((\mux2B|Y[17]~13_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[17]~13_combout\) # (\mux2A|Y[17]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[17]~16_combout\,
	datad => \mux2B|ALT_INV_Y[17]~13_combout\,
	datae => \full_adder|ALT_INV_c_out[16]~17_combout\,
	combout => \mux4|Mux14~0_combout\);

\A[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

\mux2A|Y[18]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[18]~17_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	combout => \mux2A|Y[18]~17_combout\);

\B[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

\mux2B|Y[18]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[18]~14_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[18]~input_o\,
	combout => \mux2B|Y[18]~14_combout\);

\full_adder|c_out[17]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[17]~18_combout\ = (!\mux2A|Y[17]~16_combout\ & (\mux2B|Y[17]~13_combout\ & !\full_adder|c_out[16]~17_combout\)) # (\mux2A|Y[17]~16_combout\ & ((!\full_adder|c_out[16]~17_combout\) # (\mux2B|Y[17]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[17]~16_combout\,
	datab => \mux2B|ALT_INV_Y[17]~13_combout\,
	datac => \full_adder|ALT_INV_c_out[16]~17_combout\,
	combout => \full_adder|c_out[17]~18_combout\);

\mux4|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux13~0_combout\ = ( \full_adder|c_out[17]~18_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[18]~17_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[18]~14_combout\)) # (\mux2A|Y[18]~17_combout\ & ((\mux2B|Y[18]~14_combout\))))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[18]~14_combout\) # (\mux2A|Y[18]~17_combout\)))) ) ) # ( !\full_adder|c_out[17]~18_combout\ & ( (!\mux2A|Y[18]~17_combout\ & (\mux2B|Y[18]~14_combout\ & (!\ula_ctrl[0]~input_o\ $ 
-- (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[18]~17_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[18]~14_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[18]~17_combout\,
	datad => \mux2B|ALT_INV_Y[18]~14_combout\,
	datae => \full_adder|ALT_INV_c_out[17]~18_combout\,
	combout => \mux4|Mux13~0_combout\);

\A[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

\mux2A|Y[19]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[19]~18_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	combout => \mux2A|Y[19]~18_combout\);

\B[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

\mux2B|Y[19]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[19]~15_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	combout => \mux2B|Y[19]~15_combout\);

\full_adder|c_out[18]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[18]~19_combout\ = (!\mux2A|Y[18]~17_combout\ & (\mux2B|Y[18]~14_combout\ & \full_adder|c_out[17]~18_combout\)) # (\mux2A|Y[18]~17_combout\ & ((\full_adder|c_out[17]~18_combout\) # (\mux2B|Y[18]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[18]~17_combout\,
	datab => \mux2B|ALT_INV_Y[18]~14_combout\,
	datac => \full_adder|ALT_INV_c_out[17]~18_combout\,
	combout => \full_adder|c_out[18]~19_combout\);

\mux4|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux12~0_combout\ = ( \full_adder|c_out[18]~19_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[19]~18_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[19]~15_combout\)) # (\mux2A|Y[19]~18_combout\ & ((\mux2B|Y[19]~15_combout\))))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[19]~15_combout\) # (\mux2A|Y[19]~18_combout\)))) ) ) # ( !\full_adder|c_out[18]~19_combout\ & ( (!\mux2A|Y[19]~18_combout\ & (\mux2B|Y[19]~15_combout\ & (!\ula_ctrl[0]~input_o\ $ 
-- (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[19]~18_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[19]~15_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[19]~18_combout\,
	datad => \mux2B|ALT_INV_Y[19]~15_combout\,
	datae => \full_adder|ALT_INV_c_out[18]~19_combout\,
	combout => \mux4|Mux12~0_combout\);

\A[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

\mux2A|Y[20]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[20]~19_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	combout => \mux2A|Y[20]~19_combout\);

\B[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

\mux2B|Y[20]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[20]~16_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	combout => \mux2B|Y[20]~16_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (\mux2A|Y[19]~18_combout\ & \mux2B|Y[19]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[19]~18_combout\,
	datab => \mux2B|ALT_INV_Y[19]~15_combout\,
	combout => \comb~3_combout\);

\mux4|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux12~1_combout\ = (!\mux2A|Y[19]~18_combout\ & !\mux2B|Y[19]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[19]~18_combout\,
	datab => \mux2B|ALT_INV_Y[19]~15_combout\,
	combout => \mux4|Mux12~1_combout\);

\full_adder|c_out[19]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[19]~20_combout\ = ( \mux2B|Y[18]~14_combout\ & ( !\mux4|Mux12~1_combout\ & ( ((!\mux2A|Y[17]~16_combout\ & (\mux2B|Y[17]~13_combout\ & !\full_adder|c_out[16]~17_combout\)) # (\mux2A|Y[17]~16_combout\ & 
-- ((!\full_adder|c_out[16]~17_combout\) # (\mux2B|Y[17]~13_combout\)))) # (\mux2A|Y[18]~17_combout\) ) ) ) # ( !\mux2B|Y[18]~14_combout\ & ( !\mux4|Mux12~1_combout\ & ( (\mux2A|Y[18]~17_combout\ & ((!\mux2A|Y[17]~16_combout\ & (\mux2B|Y[17]~13_combout\ & 
-- !\full_adder|c_out[16]~17_combout\)) # (\mux2A|Y[17]~16_combout\ & ((!\full_adder|c_out[16]~17_combout\) # (\mux2B|Y[17]~13_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001011100011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[17]~16_combout\,
	datab => \mux2B|ALT_INV_Y[17]~13_combout\,
	datac => \full_adder|ALT_INV_c_out[16]~17_combout\,
	datad => \mux2A|ALT_INV_Y[18]~17_combout\,
	datae => \mux2B|ALT_INV_Y[18]~14_combout\,
	dataf => \mux4|ALT_INV_Mux12~1_combout\,
	combout => \full_adder|c_out[19]~20_combout\);

\full_adder|c_out[19]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[19]~21_combout\ = (!\comb~3_combout\ & !\full_adder|c_out[19]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~3_combout\,
	datab => \full_adder|ALT_INV_c_out[19]~20_combout\,
	combout => \full_adder|c_out[19]~21_combout\);

\mux4|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux11~0_combout\ = ( \full_adder|c_out[19]~21_combout\ & ( (!\mux2A|Y[20]~19_combout\ & (\mux2B|Y[20]~16_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[20]~19_combout\ & (!\ula_ctrl[1]~input_o\ $ 
-- (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[20]~16_combout\))))) ) ) # ( !\full_adder|c_out[19]~21_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[20]~19_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[20]~16_combout\)) # (\mux2A|Y[20]~19_combout\ & 
-- ((\mux2B|Y[20]~16_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[20]~16_combout\) # (\mux2A|Y[20]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[20]~19_combout\,
	datad => \mux2B|ALT_INV_Y[20]~16_combout\,
	datae => \full_adder|ALT_INV_c_out[19]~21_combout\,
	combout => \mux4|Mux11~0_combout\);

\A[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

\mux2A|Y[21]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[21]~20_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	combout => \mux2A|Y[21]~20_combout\);

\B[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

\mux2B|Y[21]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[21]~17_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[21]~input_o\,
	combout => \mux2B|Y[21]~17_combout\);

\full_adder|c_out[20]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[20]~22_combout\ = (!\mux2A|Y[20]~19_combout\ & (\mux2B|Y[20]~16_combout\ & !\full_adder|c_out[19]~21_combout\)) # (\mux2A|Y[20]~19_combout\ & ((!\full_adder|c_out[19]~21_combout\) # (\mux2B|Y[20]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[20]~19_combout\,
	datab => \mux2B|ALT_INV_Y[20]~16_combout\,
	datac => \full_adder|ALT_INV_c_out[19]~21_combout\,
	combout => \full_adder|c_out[20]~22_combout\);

\mux4|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux10~0_combout\ = ( \full_adder|c_out[20]~22_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[21]~20_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[21]~17_combout\)) # (\mux2A|Y[21]~20_combout\ & ((\mux2B|Y[21]~17_combout\))))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[21]~17_combout\) # (\mux2A|Y[21]~20_combout\)))) ) ) # ( !\full_adder|c_out[20]~22_combout\ & ( (!\mux2A|Y[21]~20_combout\ & (\mux2B|Y[21]~17_combout\ & (!\ula_ctrl[0]~input_o\ $ 
-- (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[21]~20_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[21]~17_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[21]~20_combout\,
	datad => \mux2B|ALT_INV_Y[21]~17_combout\,
	datae => \full_adder|ALT_INV_c_out[20]~22_combout\,
	combout => \mux4|Mux10~0_combout\);

\A[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

\mux2A|Y[22]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[22]~21_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	combout => \mux2A|Y[22]~21_combout\);

\B[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

\mux2B|Y[22]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[22]~18_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[22]~input_o\,
	combout => \mux2B|Y[22]~18_combout\);

\full_adder|c_out[21]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[21]~23_combout\ = ( !\mux2A|Y[21]~20_combout\ & ( \mux2B|Y[21]~17_combout\ & ( (!\mux2A|Y[20]~19_combout\ & ((!\mux2B|Y[20]~16_combout\) # ((!\comb~3_combout\ & !\full_adder|c_out[19]~20_combout\)))) # (\mux2A|Y[20]~19_combout\ & 
-- (!\comb~3_combout\ & (!\mux2B|Y[20]~16_combout\ & !\full_adder|c_out[19]~20_combout\))) ) ) ) # ( \mux2A|Y[21]~20_combout\ & ( !\mux2B|Y[21]~17_combout\ & ( (!\mux2A|Y[20]~19_combout\ & ((!\mux2B|Y[20]~16_combout\) # ((!\comb~3_combout\ & 
-- !\full_adder|c_out[19]~20_combout\)))) # (\mux2A|Y[20]~19_combout\ & (!\comb~3_combout\ & (!\mux2B|Y[20]~16_combout\ & !\full_adder|c_out[19]~20_combout\))) ) ) ) # ( !\mux2A|Y[21]~20_combout\ & ( !\mux2B|Y[21]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001100000011101000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~3_combout\,
	datab => \mux2A|ALT_INV_Y[20]~19_combout\,
	datac => \mux2B|ALT_INV_Y[20]~16_combout\,
	datad => \full_adder|ALT_INV_c_out[19]~20_combout\,
	datae => \mux2A|ALT_INV_Y[21]~20_combout\,
	dataf => \mux2B|ALT_INV_Y[21]~17_combout\,
	combout => \full_adder|c_out[21]~23_combout\);

\mux4|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux9~0_combout\ = ( \full_adder|c_out[21]~23_combout\ & ( (!\mux2A|Y[22]~21_combout\ & (\mux2B|Y[22]~18_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[22]~21_combout\ & (!\ula_ctrl[1]~input_o\ $ 
-- (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[22]~18_combout\))))) ) ) # ( !\full_adder|c_out[21]~23_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[22]~21_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[22]~18_combout\)) # (\mux2A|Y[22]~21_combout\ & 
-- ((\mux2B|Y[22]~18_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[22]~18_combout\) # (\mux2A|Y[22]~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[22]~21_combout\,
	datad => \mux2B|ALT_INV_Y[22]~18_combout\,
	datae => \full_adder|ALT_INV_c_out[21]~23_combout\,
	combout => \mux4|Mux9~0_combout\);

\A[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

\mux2A|Y[23]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[23]~22_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[23]~input_o\,
	combout => \mux2A|Y[23]~22_combout\);

\B[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

\mux2B|Y[23]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[23]~19_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[23]~input_o\,
	combout => \mux2B|Y[23]~19_combout\);

\full_adder|c_out[22]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[22]~24_combout\ = (!\mux2A|Y[22]~21_combout\ & (\mux2B|Y[22]~18_combout\ & !\full_adder|c_out[21]~23_combout\)) # (\mux2A|Y[22]~21_combout\ & ((!\full_adder|c_out[21]~23_combout\) # (\mux2B|Y[22]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[22]~21_combout\,
	datab => \mux2B|ALT_INV_Y[22]~18_combout\,
	datac => \full_adder|ALT_INV_c_out[21]~23_combout\,
	combout => \full_adder|c_out[22]~24_combout\);

\mux4|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux8~0_combout\ = ( \full_adder|c_out[22]~24_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[23]~22_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[23]~19_combout\)) # (\mux2A|Y[23]~22_combout\ & ((\mux2B|Y[23]~19_combout\))))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[23]~19_combout\) # (\mux2A|Y[23]~22_combout\)))) ) ) # ( !\full_adder|c_out[22]~24_combout\ & ( (!\mux2A|Y[23]~22_combout\ & (\mux2B|Y[23]~19_combout\ & (!\ula_ctrl[0]~input_o\ $ 
-- (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[23]~22_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[23]~19_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[23]~22_combout\,
	datad => \mux2B|ALT_INV_Y[23]~19_combout\,
	datae => \full_adder|ALT_INV_c_out[22]~24_combout\,
	combout => \mux4|Mux8~0_combout\);

\A[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

\mux2A|Y[24]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[24]~23_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	combout => \mux2A|Y[24]~23_combout\);

\B[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

\mux2B|Y[24]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[24]~20_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	combout => \mux2B|Y[24]~20_combout\);

\full_adder|c_out[23]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[23]~25_combout\ = ( \mux2B|Y[23]~19_combout\ & ( ((!\mux2A|Y[22]~21_combout\ & (\mux2B|Y[22]~18_combout\ & !\full_adder|c_out[21]~23_combout\)) # (\mux2A|Y[22]~21_combout\ & ((!\full_adder|c_out[21]~23_combout\) # 
-- (\mux2B|Y[22]~18_combout\)))) # (\mux2A|Y[23]~22_combout\) ) ) # ( !\mux2B|Y[23]~19_combout\ & ( (\mux2A|Y[23]~22_combout\ & ((!\mux2A|Y[22]~21_combout\ & (\mux2B|Y[22]~18_combout\ & !\full_adder|c_out[21]~23_combout\)) # (\mux2A|Y[22]~21_combout\ & 
-- ((!\full_adder|c_out[21]~23_combout\) # (\mux2B|Y[22]~18_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001011100011111111100000000011100010111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[22]~21_combout\,
	datab => \mux2B|ALT_INV_Y[22]~18_combout\,
	datac => \full_adder|ALT_INV_c_out[21]~23_combout\,
	datad => \mux2A|ALT_INV_Y[23]~22_combout\,
	datae => \mux2B|ALT_INV_Y[23]~19_combout\,
	combout => \full_adder|c_out[23]~25_combout\);

\mux4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux7~0_combout\ = ( \full_adder|c_out[23]~25_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[24]~23_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[24]~20_combout\)) # (\mux2A|Y[24]~23_combout\ & ((\mux2B|Y[24]~20_combout\))))) # 
-- (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[24]~20_combout\) # (\mux2A|Y[24]~23_combout\)))) ) ) # ( !\full_adder|c_out[23]~25_combout\ & ( (!\mux2A|Y[24]~23_combout\ & (\mux2B|Y[24]~20_combout\ & (!\ula_ctrl[0]~input_o\ $ 
-- (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[24]~23_combout\ & (!\ula_ctrl[1]~input_o\ $ (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[24]~20_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101100001001000100111000000110011011000010010001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[24]~23_combout\,
	datad => \mux2B|ALT_INV_Y[24]~20_combout\,
	datae => \full_adder|ALT_INV_c_out[23]~25_combout\,
	combout => \mux4|Mux7~0_combout\);

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (\mux2A|Y[24]~23_combout\ & \mux2B|Y[24]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[24]~23_combout\,
	datab => \mux2B|ALT_INV_Y[24]~20_combout\,
	combout => \comb~4_combout\);

\A[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

\mux2A|Y[25]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[25]~24_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[25]~input_o\,
	combout => \mux2A|Y[25]~24_combout\);

\B[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

\mux2B|Y[25]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[25]~21_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[25]~input_o\,
	combout => \mux2B|Y[25]~21_combout\);

\mux4|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux7~1_combout\ = (!\mux2A|Y[24]~23_combout\ & !\mux2B|Y[24]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[24]~23_combout\,
	datab => \mux2B|ALT_INV_Y[24]~20_combout\,
	combout => \mux4|Mux7~1_combout\);

\full_adder|c_out[24]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[24]~26_combout\ = ( \mux2B|Y[23]~19_combout\ & ( !\mux4|Mux7~1_combout\ & ( ((!\mux2A|Y[22]~21_combout\ & (\mux2B|Y[22]~18_combout\ & !\full_adder|c_out[21]~23_combout\)) # (\mux2A|Y[22]~21_combout\ & 
-- ((!\full_adder|c_out[21]~23_combout\) # (\mux2B|Y[22]~18_combout\)))) # (\mux2A|Y[23]~22_combout\) ) ) ) # ( !\mux2B|Y[23]~19_combout\ & ( !\mux4|Mux7~1_combout\ & ( (\mux2A|Y[23]~22_combout\ & ((!\mux2A|Y[22]~21_combout\ & (\mux2B|Y[22]~18_combout\ & 
-- !\full_adder|c_out[21]~23_combout\)) # (\mux2A|Y[22]~21_combout\ & ((!\full_adder|c_out[21]~23_combout\) # (\mux2B|Y[22]~18_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001011100011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[22]~21_combout\,
	datab => \mux2B|ALT_INV_Y[22]~18_combout\,
	datac => \full_adder|ALT_INV_c_out[21]~23_combout\,
	datad => \mux2A|ALT_INV_Y[23]~22_combout\,
	datae => \mux2B|ALT_INV_Y[23]~19_combout\,
	dataf => \mux4|ALT_INV_Mux7~1_combout\,
	combout => \full_adder|c_out[24]~26_combout\);

\mux4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux6~0_combout\ = ( \mux2B|Y[25]~21_combout\ & ( \full_adder|c_out[24]~26_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((\mux2A|Y[25]~24_combout\))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\)) ) ) ) # ( !\mux2B|Y[25]~21_combout\ & ( 
-- \full_adder|c_out[24]~26_combout\ & ( (!\ula_ctrl[0]~input_o\ & (\ula_ctrl[1]~input_o\ & !\mux2A|Y[25]~24_combout\)) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & \mux2A|Y[25]~24_combout\)) ) ) ) # ( \mux2B|Y[25]~21_combout\ & ( 
-- !\full_adder|c_out[24]~26_combout\ & ( (!\ula_ctrl[0]~input_o\ & (!\mux2A|Y[25]~24_combout\ $ (((!\ula_ctrl[1]~input_o\) # (\comb~4_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\)) ) ) ) # ( !\mux2B|Y[25]~21_combout\ & ( 
-- !\full_adder|c_out[24]~26_combout\ & ( (!\ula_ctrl[0]~input_o\ & (\ula_ctrl[1]~input_o\ & (!\comb~4_combout\ $ (!\mux2A|Y[25]~24_combout\)))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2A|Y[25]~24_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100100011001001100111000100010010001000100010011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \ALT_INV_comb~4_combout\,
	datad => \mux2A|ALT_INV_Y[25]~24_combout\,
	datae => \mux2B|ALT_INV_Y[25]~21_combout\,
	dataf => \full_adder|ALT_INV_c_out[24]~26_combout\,
	combout => \mux4|Mux6~0_combout\);

\A[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

\mux2A|Y[26]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[26]~25_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	combout => \mux2A|Y[26]~25_combout\);

\B[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

\mux2B|Y[26]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[26]~22_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[26]~input_o\,
	combout => \mux2B|Y[26]~22_combout\);

\full_adder|c_out[25]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[25]~27_combout\ = (!\mux2A|Y[25]~24_combout\ & ((!\mux2B|Y[25]~21_combout\) # ((!\comb~4_combout\ & !\full_adder|c_out[24]~26_combout\)))) # (\mux2A|Y[25]~24_combout\ & (!\comb~4_combout\ & (!\mux2B|Y[25]~21_combout\ & 
-- !\full_adder|c_out[24]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000011101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~4_combout\,
	datab => \mux2A|ALT_INV_Y[25]~24_combout\,
	datac => \mux2B|ALT_INV_Y[25]~21_combout\,
	datad => \full_adder|ALT_INV_c_out[24]~26_combout\,
	combout => \full_adder|c_out[25]~27_combout\);

\mux4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux5~0_combout\ = ( \full_adder|c_out[25]~27_combout\ & ( (!\mux2A|Y[26]~25_combout\ & (\mux2B|Y[26]~22_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[26]~25_combout\ & (!\ula_ctrl[1]~input_o\ $ 
-- (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[26]~22_combout\))))) ) ) # ( !\full_adder|c_out[25]~27_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[26]~25_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[26]~22_combout\)) # (\mux2A|Y[26]~25_combout\ & 
-- ((\mux2B|Y[26]~22_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[26]~22_combout\) # (\mux2A|Y[26]~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[26]~25_combout\,
	datad => \mux2B|ALT_INV_Y[26]~22_combout\,
	datae => \full_adder|ALT_INV_c_out[25]~27_combout\,
	combout => \mux4|Mux5~0_combout\);

\A[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

\mux2A|Y[27]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[27]~26_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	combout => \mux2A|Y[27]~26_combout\);

\B[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

\mux2B|Y[27]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[27]~23_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[27]~input_o\,
	combout => \mux2B|Y[27]~23_combout\);

\full_adder|c_out[26]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[26]~28_combout\ = ( !\mux2A|Y[26]~25_combout\ & ( \mux2B|Y[26]~22_combout\ & ( (!\mux2A|Y[25]~24_combout\ & ((!\mux2B|Y[25]~21_combout\) # ((!\comb~4_combout\ & !\full_adder|c_out[24]~26_combout\)))) # (\mux2A|Y[25]~24_combout\ & 
-- (!\comb~4_combout\ & (!\mux2B|Y[25]~21_combout\ & !\full_adder|c_out[24]~26_combout\))) ) ) ) # ( \mux2A|Y[26]~25_combout\ & ( !\mux2B|Y[26]~22_combout\ & ( (!\mux2A|Y[25]~24_combout\ & ((!\mux2B|Y[25]~21_combout\) # ((!\comb~4_combout\ & 
-- !\full_adder|c_out[24]~26_combout\)))) # (\mux2A|Y[25]~24_combout\ & (!\comb~4_combout\ & (!\mux2B|Y[25]~21_combout\ & !\full_adder|c_out[24]~26_combout\))) ) ) ) # ( !\mux2A|Y[26]~25_combout\ & ( !\mux2B|Y[26]~22_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111010001100000011101000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~4_combout\,
	datab => \mux2A|ALT_INV_Y[25]~24_combout\,
	datac => \mux2B|ALT_INV_Y[25]~21_combout\,
	datad => \full_adder|ALT_INV_c_out[24]~26_combout\,
	datae => \mux2A|ALT_INV_Y[26]~25_combout\,
	dataf => \mux2B|ALT_INV_Y[26]~22_combout\,
	combout => \full_adder|c_out[26]~28_combout\);

\mux4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux4~0_combout\ = ( \full_adder|c_out[26]~28_combout\ & ( (!\mux2A|Y[27]~26_combout\ & (\mux2B|Y[27]~23_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[27]~26_combout\ & (!\ula_ctrl[1]~input_o\ $ 
-- (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[27]~23_combout\))))) ) ) # ( !\full_adder|c_out[26]~28_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[27]~26_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[27]~23_combout\)) # (\mux2A|Y[27]~26_combout\ & 
-- ((\mux2B|Y[27]~23_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[27]~23_combout\) # (\mux2A|Y[27]~26_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[27]~26_combout\,
	datad => \mux2B|ALT_INV_Y[27]~23_combout\,
	datae => \full_adder|ALT_INV_c_out[26]~28_combout\,
	combout => \mux4|Mux4~0_combout\);

\mux4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux3~0_combout\ = (!\ula_ctrl[0]~input_o\ & \ula_ctrl[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	combout => \mux4|Mux3~0_combout\);

\A[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

\mux2A|Y[28]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[28]~27_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	combout => \mux2A|Y[28]~27_combout\);

\B[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

\full_adder|result[28]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|result[28]~0_combout\ = !\ula_ctrl[2]~input_o\ $ (!\mux2A|Y[28]~27_combout\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \mux2A|ALT_INV_Y[28]~27_combout\,
	datac => \ALT_INV_B[28]~input_o\,
	combout => \full_adder|result[28]~0_combout\);

\mux4|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux3~1_combout\ = (\mux2A|Y[28]~27_combout\ & (!\ula_ctrl[2]~input_o\ $ (!\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \mux2A|ALT_INV_Y[28]~27_combout\,
	datac => \ALT_INV_B[28]~input_o\,
	combout => \mux4|Mux3~1_combout\);

\mux4|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux3~2_combout\ = (!\mux2A|Y[28]~27_combout\ & (!\ula_ctrl[2]~input_o\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \mux2A|ALT_INV_Y[28]~27_combout\,
	datac => \ALT_INV_B[28]~input_o\,
	combout => \mux4|Mux3~2_combout\);

\mux4|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux3~3_combout\ = (!\ula_ctrl[1]~input_o\ & ((!\ula_ctrl[0]~input_o\ & (\mux4|Mux3~1_combout\)) # (\ula_ctrl[0]~input_o\ & ((!\mux4|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000001000010011000000100001001100000010000100110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux4|ALT_INV_Mux3~1_combout\,
	datad => \mux4|ALT_INV_Mux3~2_combout\,
	combout => \mux4|Mux3~3_combout\);

\mux4|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux3~4_combout\ = ( \full_adder|result[28]~0_combout\ & ( \mux4|Mux3~3_combout\ ) ) # ( !\full_adder|result[28]~0_combout\ & ( \mux4|Mux3~3_combout\ ) ) # ( \full_adder|result[28]~0_combout\ & ( !\mux4|Mux3~3_combout\ & ( (\mux4|Mux3~0_combout\ & 
-- ((!\mux2A|Y[27]~26_combout\ & ((!\mux2B|Y[27]~23_combout\) # (\full_adder|c_out[26]~28_combout\))) # (\mux2A|Y[27]~26_combout\ & (!\mux2B|Y[27]~23_combout\ & \full_adder|c_out[26]~28_combout\)))) ) ) ) # ( !\full_adder|result[28]~0_combout\ & ( 
-- !\mux4|Mux3~3_combout\ & ( (\mux4|Mux3~0_combout\ & ((!\mux2A|Y[27]~26_combout\ & (\mux2B|Y[27]~23_combout\ & !\full_adder|c_out[26]~28_combout\)) # (\mux2A|Y[27]~26_combout\ & ((!\full_adder|c_out[26]~28_combout\) # (\mux2B|Y[27]~23_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001000000001000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[27]~26_combout\,
	datab => \mux2B|ALT_INV_Y[27]~23_combout\,
	datac => \full_adder|ALT_INV_c_out[26]~28_combout\,
	datad => \mux4|ALT_INV_Mux3~0_combout\,
	datae => \full_adder|ALT_INV_result[28]~0_combout\,
	dataf => \mux4|ALT_INV_Mux3~3_combout\,
	combout => \mux4|Mux3~4_combout\);

\A[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

\mux2A|Y[29]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[29]~28_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	combout => \mux2A|Y[29]~28_combout\);

\B[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

\mux2B|Y[29]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[29]~24_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[29]~input_o\,
	combout => \mux2B|Y[29]~24_combout\);

\full_adder|c_out[28]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[28]~29_combout\ = ( \mux4|Mux3~2_combout\ & ( !\mux4|Mux3~1_combout\ ) ) # ( !\mux4|Mux3~2_combout\ & ( (!\mux4|Mux3~1_combout\ & ((!\mux2A|Y[27]~26_combout\ & ((!\mux2B|Y[27]~23_combout\) # (\full_adder|c_out[26]~28_combout\))) # 
-- (\mux2A|Y[27]~26_combout\ & (!\mux2B|Y[27]~23_combout\ & \full_adder|c_out[26]~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000000000111111110000000010001110000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[27]~26_combout\,
	datab => \mux2B|ALT_INV_Y[27]~23_combout\,
	datac => \full_adder|ALT_INV_c_out[26]~28_combout\,
	datad => \mux4|ALT_INV_Mux3~1_combout\,
	datae => \mux4|ALT_INV_Mux3~2_combout\,
	combout => \full_adder|c_out[28]~29_combout\);

\mux4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux2~0_combout\ = ( \full_adder|c_out[28]~29_combout\ & ( (!\mux2A|Y[29]~28_combout\ & (\mux2B|Y[29]~24_combout\ & (!\ula_ctrl[0]~input_o\ $ (!\ula_ctrl[1]~input_o\)))) # (\mux2A|Y[29]~28_combout\ & (!\ula_ctrl[1]~input_o\ $ 
-- (((!\ula_ctrl[0]~input_o\ & !\mux2B|Y[29]~24_combout\))))) ) ) # ( !\full_adder|c_out[28]~29_combout\ & ( (!\ula_ctrl[0]~input_o\ & ((!\mux2A|Y[29]~28_combout\ & (\ula_ctrl[1]~input_o\ & !\mux2B|Y[29]~24_combout\)) # (\mux2A|Y[29]~28_combout\ & 
-- ((\mux2B|Y[29]~24_combout\))))) # (\ula_ctrl[0]~input_o\ & (!\ula_ctrl[1]~input_o\ & ((\mux2B|Y[29]~24_combout\) # (\mux2A|Y[29]~28_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001001110000001100110110000100100010011100000011001101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[29]~28_combout\,
	datad => \mux2B|ALT_INV_Y[29]~24_combout\,
	datae => \full_adder|ALT_INV_c_out[28]~29_combout\,
	combout => \mux4|Mux2~0_combout\);

\A[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

\mux2A|Y[30]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[30]~29_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	combout => \mux2A|Y[30]~29_combout\);

\B[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

\mux2B|Y[30]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2B|Y[30]~25_combout\ = !\ula_ctrl[2]~input_o\ $ (!\B[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[2]~input_o\,
	datab => \ALT_INV_B[30]~input_o\,
	combout => \mux2B|Y[30]~25_combout\);

\full_adder|result[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|result[30]~1_combout\ = !\mux2A|Y[30]~29_combout\ $ (!\mux2B|Y[30]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[30]~29_combout\,
	datab => \mux2B|ALT_INV_Y[30]~25_combout\,
	combout => \full_adder|result[30]~1_combout\);

\mux4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux1~0_combout\ = (!\ula_ctrl[1]~input_o\ & ((!\ula_ctrl[0]~input_o\ & (\mux2A|Y[30]~29_combout\ & \mux2B|Y[30]~25_combout\)) # (\ula_ctrl[0]~input_o\ & ((\mux2B|Y[30]~25_combout\) # (\mux2A|Y[30]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[1]~input_o\,
	datac => \mux2A|ALT_INV_Y[30]~29_combout\,
	datad => \mux2B|ALT_INV_Y[30]~25_combout\,
	combout => \mux4|Mux1~0_combout\);

\mux4|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux1~1_combout\ = ( \full_adder|result[30]~1_combout\ & ( \mux4|Mux1~0_combout\ ) ) # ( !\full_adder|result[30]~1_combout\ & ( \mux4|Mux1~0_combout\ ) ) # ( \full_adder|result[30]~1_combout\ & ( !\mux4|Mux1~0_combout\ & ( (\mux4|Mux3~0_combout\ & 
-- ((!\mux2A|Y[29]~28_combout\ & ((!\mux2B|Y[29]~24_combout\) # (\full_adder|c_out[28]~29_combout\))) # (\mux2A|Y[29]~28_combout\ & (!\mux2B|Y[29]~24_combout\ & \full_adder|c_out[28]~29_combout\)))) ) ) ) # ( !\full_adder|result[30]~1_combout\ & ( 
-- !\mux4|Mux1~0_combout\ & ( (\mux4|Mux3~0_combout\ & ((!\mux2A|Y[29]~28_combout\ & (\mux2B|Y[29]~24_combout\ & !\full_adder|c_out[28]~29_combout\)) # (\mux2A|Y[29]~28_combout\ & ((!\full_adder|c_out[28]~29_combout\) # (\mux2B|Y[29]~24_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000001010000000101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|ALT_INV_Mux3~0_combout\,
	datab => \mux2A|ALT_INV_Y[29]~28_combout\,
	datac => \mux2B|ALT_INV_Y[29]~24_combout\,
	datad => \full_adder|ALT_INV_c_out[28]~29_combout\,
	datae => \full_adder|ALT_INV_result[30]~1_combout\,
	dataf => \mux4|ALT_INV_Mux1~0_combout\,
	combout => \mux4|Mux1~1_combout\);

\B[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (!\ula_ctrl[3]~input_o\ & (\A[5]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (!\B[5]~input_o\)))) # (\ula_ctrl[3]~input_o\ & (!\A[5]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000010010010010000001001001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_ula_ctrl[2]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	combout => \comb~5_combout\);

\mux4|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux26~1_combout\ = (!\ula_ctrl[3]~input_o\ & (!\A[5]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (\B[5]~input_o\)))) # (\ula_ctrl[3]~input_o\ & (\A[5]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001100001000010000110000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_ula_ctrl[2]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	combout => \mux4|Mux26~1_combout\);

\slt|full_adder|c_out[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[3]~0_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\A[0]~input_o\ & (\ula_ctrl[2]~input_o\ & ((\B[0]~input_o\) # (\ula_ctrl[3]~input_o\)))) # (\A[0]~input_o\ & (\ula_ctrl[3]~input_o\ & ((!\B[0]~input_o\) # 
-- (\ula_ctrl[2]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\A[0]~input_o\ & (!\ula_ctrl[3]~input_o\ & ((!\B[0]~input_o\) # (\ula_ctrl[2]~input_o\)))) # (\A[0]~input_o\ & (\ula_ctrl[2]~input_o\ & ((!\ula_ctrl[3]~input_o\) # 
-- (\B[0]~input_o\)))) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[0]~input_o\ & (!\ula_ctrl[2]~input_o\ & ((!\B[0]~input_o\) # (\ula_ctrl[3]~input_o\)))) # (\A[0]~input_o\ & (\ula_ctrl[3]~input_o\ & ((!\ula_ctrl[2]~input_o\) # (\B[0]~input_o\)))) 
-- ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[0]~input_o\ & (!\ula_ctrl[3]~input_o\ & ((!\ula_ctrl[2]~input_o\) # (\B[0]~input_o\)))) # (\A[0]~input_o\ & (!\ula_ctrl[2]~input_o\ & ((!\ula_ctrl[3]~input_o\) # (!\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110000001000101100110000000110000000110011010001000000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_ula_ctrl[3]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_ula_ctrl[2]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \slt|full_adder|c_out[3]~0_combout\);

\slt|full_adder|c_out[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[3]~1_combout\ = ( \A[3]~input_o\ & ( \B[3]~input_o\ & ( (!\ula_ctrl[3]~input_o\ & (!\A[2]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (\B[2]~input_o\)))) # (\ula_ctrl[3]~input_o\ & (((\A[2]~input_o\ & !\B[2]~input_o\)) # 
-- (\ula_ctrl[2]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ & ( (!\ula_ctrl[3]~input_o\ & (((!\A[2]~input_o\ & !\B[2]~input_o\)) # (\ula_ctrl[2]~input_o\))) # (\ula_ctrl[3]~input_o\ & (\A[2]~input_o\ & (!\ula_ctrl[2]~input_o\ $ 
-- (\B[2]~input_o\)))) ) ) ) # ( \A[3]~input_o\ & ( !\B[3]~input_o\ & ( (!\ula_ctrl[3]~input_o\ & (!\A[2]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (\B[2]~input_o\)))) # (\ula_ctrl[3]~input_o\ & ((!\ula_ctrl[2]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) ) 
-- ) ) # ( !\A[3]~input_o\ & ( !\B[3]~input_o\ & ( (!\ula_ctrl[3]~input_o\ & ((!\ula_ctrl[2]~input_o\) # ((!\A[2]~input_o\ & \B[2]~input_o\)))) # (\ula_ctrl[3]~input_o\ & (\A[2]~input_o\ & (!\ula_ctrl[2]~input_o\ $ (\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010101001110001000110010110100110001000111001010100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_ula_ctrl[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \slt|full_adder|c_out[3]~1_combout\);

\slt|full_adder|c_out[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[3]~2_combout\ = ( \A[3]~input_o\ & ( \B[3]~input_o\ & ( (!\ula_ctrl[3]~input_o\ & ((!\ula_ctrl[2]~input_o\) # ((\A[2]~input_o\ & !\B[2]~input_o\)))) # (\ula_ctrl[3]~input_o\ & (!\ula_ctrl[2]~input_o\ & (!\A[2]~input_o\ & 
-- \B[2]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( \B[3]~input_o\ & ( (!\ula_ctrl[3]~input_o\ & (!\ula_ctrl[2]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\))) # (\ula_ctrl[3]~input_o\ & ((!\ula_ctrl[2]~input_o\) # ((!\A[2]~input_o\ & !\B[2]~input_o\)))) ) ) ) 
-- # ( \A[3]~input_o\ & ( !\B[3]~input_o\ & ( (!\ula_ctrl[3]~input_o\ & (((\A[2]~input_o\ & \B[2]~input_o\)) # (\ula_ctrl[2]~input_o\))) # (\ula_ctrl[3]~input_o\ & (\ula_ctrl[2]~input_o\ & (!\A[2]~input_o\ & !\B[2]~input_o\))) ) ) ) # ( !\A[3]~input_o\ & ( 
-- !\B[3]~input_o\ & ( (!\ula_ctrl[3]~input_o\ & (\ula_ctrl[2]~input_o\ & (\A[2]~input_o\ & !\B[2]~input_o\))) # (\ula_ctrl[3]~input_o\ & (((!\A[2]~input_o\ & \B[2]~input_o\)) # (\ula_ctrl[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001101010001001100100010101001010100010011001000101011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_ula_ctrl[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \slt|full_adder|c_out[3]~2_combout\);

\slt|full_adder|c_out[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[5]~3_combout\ = ( \slt|full_adder|c_out[3]~1_combout\ & ( \slt|full_adder|c_out[3]~2_combout\ & ( (!\mux4|Mux26~1_combout\ & ((\mux2B|Y[4]~2_combout\) # (\mux2A|Y[4]~3_combout\))) ) ) ) # ( !\slt|full_adder|c_out[3]~1_combout\ & ( 
-- \slt|full_adder|c_out[3]~2_combout\ & ( (!\mux4|Mux26~1_combout\ & ((\mux2B|Y[4]~2_combout\) # (\mux2A|Y[4]~3_combout\))) ) ) ) # ( \slt|full_adder|c_out[3]~1_combout\ & ( !\slt|full_adder|c_out[3]~2_combout\ & ( (\mux2A|Y[4]~3_combout\ & 
-- (\mux2B|Y[4]~2_combout\ & !\mux4|Mux26~1_combout\)) ) ) ) # ( !\slt|full_adder|c_out[3]~1_combout\ & ( !\slt|full_adder|c_out[3]~2_combout\ & ( (!\mux4|Mux26~1_combout\ & ((!\mux2A|Y[4]~3_combout\ & (\mux2B|Y[4]~2_combout\ & 
-- !\slt|full_adder|c_out[3]~0_combout\)) # (\mux2A|Y[4]~3_combout\ & ((!\slt|full_adder|c_out[3]~0_combout\) # (\mux2B|Y[4]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000010000000100000001000001110000011100000111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[4]~3_combout\,
	datab => \mux2B|ALT_INV_Y[4]~2_combout\,
	datac => \mux4|ALT_INV_Mux26~1_combout\,
	datad => \slt|full_adder|ALT_INV_c_out[3]~0_combout\,
	datae => \slt|full_adder|ALT_INV_c_out[3]~1_combout\,
	dataf => \slt|full_adder|ALT_INV_c_out[3]~2_combout\,
	combout => \slt|full_adder|c_out[5]~3_combout\);

\slt|full_adder|c_out[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[7]~4_combout\ = ( \mux2B|Y[7]~5_combout\ & ( \slt|full_adder|c_out[5]~3_combout\ & ( (!\mux2A|Y[6]~5_combout\ & (!\mux2B|Y[6]~4_combout\ & !\mux2A|Y[7]~6_combout\)) ) ) ) # ( !\mux2B|Y[7]~5_combout\ & ( 
-- \slt|full_adder|c_out[5]~3_combout\ & ( (!\mux2A|Y[7]~6_combout\) # ((!\mux2A|Y[6]~5_combout\ & !\mux2B|Y[6]~4_combout\)) ) ) ) # ( \mux2B|Y[7]~5_combout\ & ( !\slt|full_adder|c_out[5]~3_combout\ & ( (!\mux2A|Y[7]~6_combout\ & ((!\comb~5_combout\ & 
-- ((!\mux2A|Y[6]~5_combout\) # (!\mux2B|Y[6]~4_combout\))) # (\comb~5_combout\ & (!\mux2A|Y[6]~5_combout\ & !\mux2B|Y[6]~4_combout\)))) ) ) ) # ( !\mux2B|Y[7]~5_combout\ & ( !\slt|full_adder|c_out[5]~3_combout\ & ( (!\mux2A|Y[7]~6_combout\) # 
-- ((!\comb~5_combout\ & ((!\mux2A|Y[6]~5_combout\) # (!\mux2B|Y[6]~4_combout\))) # (\comb~5_combout\ & (!\mux2A|Y[6]~5_combout\ & !\mux2B|Y[6]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~5_combout\,
	datab => \mux2A|ALT_INV_Y[6]~5_combout\,
	datac => \mux2B|ALT_INV_Y[6]~4_combout\,
	datad => \mux2A|ALT_INV_Y[7]~6_combout\,
	datae => \mux2B|ALT_INV_Y[7]~5_combout\,
	dataf => \slt|full_adder|ALT_INV_c_out[5]~3_combout\,
	combout => \slt|full_adder|c_out[7]~4_combout\);

\slt|full_adder|c_out[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[9]~5_combout\ = ( \slt|full_adder|c_out[7]~4_combout\ & ( (!\comb~1_combout\ & ((!\mux2A|Y[8]~7_combout\) # ((!\mux2B|Y[8]~6_combout\) # (\mux4|Mux22~1_combout\)))) ) ) # ( !\slt|full_adder|c_out[7]~4_combout\ & ( (!\comb~1_combout\ 
-- & (((!\mux2A|Y[8]~7_combout\ & !\mux2B|Y[8]~6_combout\)) # (\mux4|Mux22~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111100000000111011110000000010001111000000001110111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[8]~7_combout\,
	datab => \mux2B|ALT_INV_Y[8]~6_combout\,
	datac => \mux4|ALT_INV_Mux22~1_combout\,
	datad => \ALT_INV_comb~1_combout\,
	datae => \slt|full_adder|ALT_INV_c_out[7]~4_combout\,
	combout => \slt|full_adder|c_out[9]~5_combout\);

\slt|full_adder|c_out[11]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[11]~6_combout\ = ( \slt|full_adder|c_out[9]~5_combout\ & ( (!\mux2A|Y[11]~10_combout\ & (\mux2A|Y[10]~9_combout\ & (\mux2B|Y[10]~7_combout\ & \mux2B|Y[11]~8_combout\))) # (\mux2A|Y[11]~10_combout\ & (((\mux2A|Y[10]~9_combout\ & 
-- \mux2B|Y[10]~7_combout\)) # (\mux2B|Y[11]~8_combout\))) ) ) # ( !\slt|full_adder|c_out[9]~5_combout\ & ( (!\mux2A|Y[11]~10_combout\ & (\mux2B|Y[11]~8_combout\ & ((\mux2B|Y[10]~7_combout\) # (\mux2A|Y[10]~9_combout\)))) # (\mux2A|Y[11]~10_combout\ & 
-- (((\mux2B|Y[11]~8_combout\) # (\mux2B|Y[10]~7_combout\)) # (\mux2A|Y[10]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000010001111100000111011111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[10]~9_combout\,
	datab => \mux2B|ALT_INV_Y[10]~7_combout\,
	datac => \mux2A|ALT_INV_Y[11]~10_combout\,
	datad => \mux2B|ALT_INV_Y[11]~8_combout\,
	datae => \slt|full_adder|ALT_INV_c_out[9]~5_combout\,
	combout => \slt|full_adder|c_out[11]~6_combout\);

\slt|full_adder|c_out[14]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[14]~7_combout\ = ( !\mux4|Mux17~1_combout\ & ( \slt|full_adder|c_out[11]~6_combout\ & ( (!\mux2A|Y[13]~12_combout\ & (\mux2B|Y[13]~10_combout\ & ((\mux2B|Y[12]~9_combout\) # (\mux2A|Y[12]~11_combout\)))) # (\mux2A|Y[13]~12_combout\ & 
-- (((\mux2B|Y[13]~10_combout\) # (\mux2B|Y[12]~9_combout\)) # (\mux2A|Y[12]~11_combout\))) ) ) ) # ( !\mux4|Mux17~1_combout\ & ( !\slt|full_adder|c_out[11]~6_combout\ & ( (!\mux2A|Y[13]~12_combout\ & (\mux2A|Y[12]~11_combout\ & (\mux2B|Y[12]~9_combout\ & 
-- \mux2B|Y[13]~10_combout\))) # (\mux2A|Y[13]~12_combout\ & (((\mux2A|Y[12]~11_combout\ & \mux2B|Y[12]~9_combout\)) # (\mux2B|Y[13]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000000000000000000111011111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[12]~11_combout\,
	datab => \mux2B|ALT_INV_Y[12]~9_combout\,
	datac => \mux2A|ALT_INV_Y[13]~12_combout\,
	datad => \mux2B|ALT_INV_Y[13]~10_combout\,
	datae => \mux4|ALT_INV_Mux17~1_combout\,
	dataf => \slt|full_adder|ALT_INV_c_out[11]~6_combout\,
	combout => \slt|full_adder|c_out[14]~7_combout\);

\slt|full_adder|c_out[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[16]~8_combout\ = ( \mux2B|Y[16]~12_combout\ & ( \slt|full_adder|c_out[14]~7_combout\ & ( (!\mux2A|Y[15]~14_combout\ & (!\mux2B|Y[15]~11_combout\ & !\mux2A|Y[16]~15_combout\)) ) ) ) # ( !\mux2B|Y[16]~12_combout\ & ( 
-- \slt|full_adder|c_out[14]~7_combout\ & ( (!\mux2A|Y[16]~15_combout\) # ((!\mux2A|Y[15]~14_combout\ & !\mux2B|Y[15]~11_combout\)) ) ) ) # ( \mux2B|Y[16]~12_combout\ & ( !\slt|full_adder|c_out[14]~7_combout\ & ( (!\mux2A|Y[16]~15_combout\ & 
-- ((!\comb~2_combout\ & ((!\mux2A|Y[15]~14_combout\) # (!\mux2B|Y[15]~11_combout\))) # (\comb~2_combout\ & (!\mux2A|Y[15]~14_combout\ & !\mux2B|Y[15]~11_combout\)))) ) ) ) # ( !\mux2B|Y[16]~12_combout\ & ( !\slt|full_adder|c_out[14]~7_combout\ & ( 
-- (!\mux2A|Y[16]~15_combout\) # ((!\comb~2_combout\ & ((!\mux2A|Y[15]~14_combout\) # (!\mux2B|Y[15]~11_combout\))) # (\comb~2_combout\ & (!\mux2A|Y[15]~14_combout\ & !\mux2B|Y[15]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~2_combout\,
	datab => \mux2A|ALT_INV_Y[15]~14_combout\,
	datac => \mux2B|ALT_INV_Y[15]~11_combout\,
	datad => \mux2A|ALT_INV_Y[16]~15_combout\,
	datae => \mux2B|ALT_INV_Y[16]~12_combout\,
	dataf => \slt|full_adder|ALT_INV_c_out[14]~7_combout\,
	combout => \slt|full_adder|c_out[16]~8_combout\);

\slt|full_adder|c_out[19]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[19]~9_combout\ = ( !\mux4|Mux12~1_combout\ & ( \slt|full_adder|c_out[16]~8_combout\ & ( (!\mux2A|Y[18]~17_combout\ & (\mux2A|Y[17]~16_combout\ & (\mux2B|Y[17]~13_combout\ & \mux2B|Y[18]~14_combout\))) # (\mux2A|Y[18]~17_combout\ & 
-- (((\mux2A|Y[17]~16_combout\ & \mux2B|Y[17]~13_combout\)) # (\mux2B|Y[18]~14_combout\))) ) ) ) # ( !\mux4|Mux12~1_combout\ & ( !\slt|full_adder|c_out[16]~8_combout\ & ( (!\mux2A|Y[18]~17_combout\ & (\mux2B|Y[18]~14_combout\ & ((\mux2B|Y[17]~13_combout\) # 
-- (\mux2A|Y[17]~16_combout\)))) # (\mux2A|Y[18]~17_combout\ & (((\mux2B|Y[18]~14_combout\) # (\mux2B|Y[17]~13_combout\)) # (\mux2A|Y[17]~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000000000000000000001000111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[17]~16_combout\,
	datab => \mux2B|ALT_INV_Y[17]~13_combout\,
	datac => \mux2A|ALT_INV_Y[18]~17_combout\,
	datad => \mux2B|ALT_INV_Y[18]~14_combout\,
	datae => \mux4|ALT_INV_Mux12~1_combout\,
	dataf => \slt|full_adder|ALT_INV_c_out[16]~8_combout\,
	combout => \slt|full_adder|c_out[19]~9_combout\);

\slt|full_adder|c_out[21]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[21]~10_combout\ = ( \mux2B|Y[21]~17_combout\ & ( \slt|full_adder|c_out[19]~9_combout\ & ( (!\mux2A|Y[20]~19_combout\ & (!\mux2B|Y[20]~16_combout\ & !\mux2A|Y[21]~20_combout\)) ) ) ) # ( !\mux2B|Y[21]~17_combout\ & ( 
-- \slt|full_adder|c_out[19]~9_combout\ & ( (!\mux2A|Y[21]~20_combout\) # ((!\mux2A|Y[20]~19_combout\ & !\mux2B|Y[20]~16_combout\)) ) ) ) # ( \mux2B|Y[21]~17_combout\ & ( !\slt|full_adder|c_out[19]~9_combout\ & ( (!\mux2A|Y[21]~20_combout\ & 
-- ((!\comb~3_combout\ & ((!\mux2A|Y[20]~19_combout\) # (!\mux2B|Y[20]~16_combout\))) # (\comb~3_combout\ & (!\mux2A|Y[20]~19_combout\ & !\mux2B|Y[20]~16_combout\)))) ) ) ) # ( !\mux2B|Y[21]~17_combout\ & ( !\slt|full_adder|c_out[19]~9_combout\ & ( 
-- (!\mux2A|Y[21]~20_combout\) # ((!\comb~3_combout\ & ((!\mux2A|Y[20]~19_combout\) # (!\mux2B|Y[20]~16_combout\))) # (\comb~3_combout\ & (!\mux2A|Y[20]~19_combout\ & !\mux2B|Y[20]~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~3_combout\,
	datab => \mux2A|ALT_INV_Y[20]~19_combout\,
	datac => \mux2B|ALT_INV_Y[20]~16_combout\,
	datad => \mux2A|ALT_INV_Y[21]~20_combout\,
	datae => \mux2B|ALT_INV_Y[21]~17_combout\,
	dataf => \slt|full_adder|ALT_INV_c_out[19]~9_combout\,
	combout => \slt|full_adder|c_out[21]~10_combout\);

\slt|full_adder|c_out[23]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[23]~11_combout\ = ( \slt|full_adder|c_out[21]~10_combout\ & ( (!\mux2A|Y[23]~22_combout\ & (\mux2A|Y[22]~21_combout\ & (\mux2B|Y[22]~18_combout\ & \mux2B|Y[23]~19_combout\))) # (\mux2A|Y[23]~22_combout\ & (((\mux2A|Y[22]~21_combout\ 
-- & \mux2B|Y[22]~18_combout\)) # (\mux2B|Y[23]~19_combout\))) ) ) # ( !\slt|full_adder|c_out[21]~10_combout\ & ( (!\mux2A|Y[23]~22_combout\ & (\mux2B|Y[23]~19_combout\ & ((\mux2B|Y[22]~18_combout\) # (\mux2A|Y[22]~21_combout\)))) # (\mux2A|Y[23]~22_combout\ 
-- & (((\mux2B|Y[23]~19_combout\) # (\mux2B|Y[22]~18_combout\)) # (\mux2A|Y[22]~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000010001111100000111011111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[22]~21_combout\,
	datab => \mux2B|ALT_INV_Y[22]~18_combout\,
	datac => \mux2A|ALT_INV_Y[23]~22_combout\,
	datad => \mux2B|ALT_INV_Y[23]~19_combout\,
	datae => \slt|full_adder|ALT_INV_c_out[21]~10_combout\,
	combout => \slt|full_adder|c_out[23]~11_combout\);

\slt|full_adder|c_out[25]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[25]~12_combout\ = ( \slt|full_adder|c_out[23]~11_combout\ & ( (!\mux2A|Y[25]~24_combout\ & (\mux2B|Y[25]~21_combout\ & ((\mux2B|Y[24]~20_combout\) # (\mux2A|Y[24]~23_combout\)))) # (\mux2A|Y[25]~24_combout\ & 
-- (((\mux2B|Y[25]~21_combout\) # (\mux2B|Y[24]~20_combout\)) # (\mux2A|Y[24]~23_combout\))) ) ) # ( !\slt|full_adder|c_out[23]~11_combout\ & ( (!\mux2A|Y[25]~24_combout\ & (\mux2A|Y[24]~23_combout\ & (\mux2B|Y[24]~20_combout\ & \mux2B|Y[25]~21_combout\))) # 
-- (\mux2A|Y[25]~24_combout\ & (((\mux2A|Y[24]~23_combout\ & \mux2B|Y[24]~20_combout\)) # (\mux2B|Y[25]~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000001110111111100000001000111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[24]~23_combout\,
	datab => \mux2B|ALT_INV_Y[24]~20_combout\,
	datac => \mux2A|ALT_INV_Y[25]~24_combout\,
	datad => \mux2B|ALT_INV_Y[25]~21_combout\,
	datae => \slt|full_adder|ALT_INV_c_out[23]~11_combout\,
	combout => \slt|full_adder|c_out[25]~12_combout\);

\slt|full_adder|c_out[28]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[28]~13_combout\ = ( !\mux4|Mux3~2_combout\ & ( \slt|full_adder|c_out[25]~12_combout\ & ( (!\mux2A|Y[27]~26_combout\ & (\mux2B|Y[27]~23_combout\ & ((\mux2B|Y[26]~22_combout\) # (\mux2A|Y[26]~25_combout\)))) # (\mux2A|Y[27]~26_combout\ 
-- & (((\mux2B|Y[27]~23_combout\) # (\mux2B|Y[26]~22_combout\)) # (\mux2A|Y[26]~25_combout\))) ) ) ) # ( !\mux4|Mux3~2_combout\ & ( !\slt|full_adder|c_out[25]~12_combout\ & ( (!\mux2A|Y[27]~26_combout\ & (\mux2A|Y[26]~25_combout\ & (\mux2B|Y[26]~22_combout\ 
-- & \mux2B|Y[27]~23_combout\))) # (\mux2A|Y[27]~26_combout\ & (((\mux2A|Y[26]~25_combout\ & \mux2B|Y[26]~22_combout\)) # (\mux2B|Y[27]~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000000000000000000111011111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[26]~25_combout\,
	datab => \mux2B|ALT_INV_Y[26]~22_combout\,
	datac => \mux2A|ALT_INV_Y[27]~26_combout\,
	datad => \mux2B|ALT_INV_Y[27]~23_combout\,
	datae => \mux4|ALT_INV_Mux3~2_combout\,
	dataf => \slt|full_adder|ALT_INV_c_out[25]~12_combout\,
	combout => \slt|full_adder|c_out[28]~13_combout\);

\slt|full_adder|c_out[30]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \slt|full_adder|c_out[30]~14_combout\ = ( \mux2B|Y[30]~25_combout\ & ( \slt|full_adder|c_out[28]~13_combout\ & ( ((\mux2A|Y[30]~29_combout\) # (\mux2B|Y[29]~24_combout\)) # (\mux2A|Y[29]~28_combout\) ) ) ) # ( !\mux2B|Y[30]~25_combout\ & ( 
-- \slt|full_adder|c_out[28]~13_combout\ & ( (\mux2A|Y[30]~29_combout\ & ((\mux2B|Y[29]~24_combout\) # (\mux2A|Y[29]~28_combout\))) ) ) ) # ( \mux2B|Y[30]~25_combout\ & ( !\slt|full_adder|c_out[28]~13_combout\ & ( ((!\mux4|Mux3~1_combout\ & 
-- (\mux2A|Y[29]~28_combout\ & \mux2B|Y[29]~24_combout\)) # (\mux4|Mux3~1_combout\ & ((\mux2B|Y[29]~24_combout\) # (\mux2A|Y[29]~28_combout\)))) # (\mux2A|Y[30]~29_combout\) ) ) ) # ( !\mux2B|Y[30]~25_combout\ & ( !\slt|full_adder|c_out[28]~13_combout\ & ( 
-- (\mux2A|Y[30]~29_combout\ & ((!\mux4|Mux3~1_combout\ & (\mux2A|Y[29]~28_combout\ & \mux2B|Y[29]~24_combout\)) # (\mux4|Mux3~1_combout\ & ((\mux2B|Y[29]~24_combout\) # (\mux2A|Y[29]~28_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000001111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|ALT_INV_Mux3~1_combout\,
	datab => \mux2A|ALT_INV_Y[29]~28_combout\,
	datac => \mux2B|ALT_INV_Y[29]~24_combout\,
	datad => \mux2A|ALT_INV_Y[30]~29_combout\,
	datae => \mux2B|ALT_INV_Y[30]~25_combout\,
	dataf => \slt|full_adder|ALT_INV_c_out[28]~13_combout\,
	combout => \slt|full_adder|c_out[30]~14_combout\);

\A[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

\mux2A|Y[31]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux2A|Y[31]~30_combout\ = !\ula_ctrl[3]~input_o\ $ (!\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ula_ctrl[3]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	combout => \mux2A|Y[31]~30_combout\);

\full_adder|c_out[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \full_adder|c_out[30]~30_combout\ = ( \mux2B|Y[30]~25_combout\ & ( ((!\mux2A|Y[29]~28_combout\ & (\mux2B|Y[29]~24_combout\ & !\full_adder|c_out[28]~29_combout\)) # (\mux2A|Y[29]~28_combout\ & ((!\full_adder|c_out[28]~29_combout\) # 
-- (\mux2B|Y[29]~24_combout\)))) # (\mux2A|Y[30]~29_combout\) ) ) # ( !\mux2B|Y[30]~25_combout\ & ( (\mux2A|Y[30]~29_combout\ & ((!\mux2A|Y[29]~28_combout\ & (\mux2B|Y[29]~24_combout\ & !\full_adder|c_out[28]~29_combout\)) # (\mux2A|Y[29]~28_combout\ & 
-- ((!\full_adder|c_out[28]~29_combout\) # (\mux2B|Y[29]~24_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110001011100011111111100000000011100010111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \mux2A|ALT_INV_Y[29]~28_combout\,
	datab => \mux2B|ALT_INV_Y[29]~24_combout\,
	datac => \full_adder|ALT_INV_c_out[28]~29_combout\,
	datad => \mux2A|ALT_INV_Y[30]~29_combout\,
	datae => \mux2B|ALT_INV_Y[30]~25_combout\,
	combout => \full_adder|c_out[30]~30_combout\);

\mux4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux4|Mux0~0_combout\ = ( !\ula_ctrl[0]~input_o\ & ( (!\ula_ctrl[1]~input_o\ & (((\mux2A|Y[31]~30_combout\ & (!\B[31]~input_o\ $ (!\ula_ctrl[2]~input_o\)))))) # (\ula_ctrl[1]~input_o\ & (!\B[31]~input_o\ $ (!\ula_ctrl[2]~input_o\ $ 
-- (!\full_adder|c_out[30]~30_combout\ $ (!\mux2A|Y[31]~30_combout\))))) ) ) # ( \ula_ctrl[0]~input_o\ & ( (!\slt|full_adder|c_out[30]~14_combout\ & (((!\B[31]~input_o\ $ (!\ula_ctrl[2]~input_o\)) # (\mux2A|Y[31]~30_combout\)))) # 
-- (\slt|full_adder|c_out[30]~14_combout\ & ((!\ula_ctrl[1]~input_o\ & ((!\B[31]~input_o\ $ (!\ula_ctrl[2]~input_o\)) # (\mux2A|Y[31]~30_combout\))) # (\ula_ctrl[1]~input_o\ & (\mux2A|Y[31]~30_combout\ & (!\B[31]~input_o\ $ (!\ula_ctrl[2]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001101001011001100110000001100110100101101111111111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datab => \ALT_INV_ula_ctrl[2]~input_o\,
	datac => \slt|full_adder|ALT_INV_c_out[30]~14_combout\,
	datad => \ALT_INV_ula_ctrl[1]~input_o\,
	datae => \ALT_INV_ula_ctrl[0]~input_o\,
	dataf => \mux2A|ALT_INV_Y[31]~30_combout\,
	datag => \full_adder|ALT_INV_c_out[30]~30_combout\,
	combout => \mux4|Mux0~0_combout\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(9) <= \Q[9]~output_o\;

ww_Q(10) <= \Q[10]~output_o\;

ww_Q(11) <= \Q[11]~output_o\;

ww_Q(12) <= \Q[12]~output_o\;

ww_Q(13) <= \Q[13]~output_o\;

ww_Q(14) <= \Q[14]~output_o\;

ww_Q(15) <= \Q[15]~output_o\;

ww_Q(16) <= \Q[16]~output_o\;

ww_Q(17) <= \Q[17]~output_o\;

ww_Q(18) <= \Q[18]~output_o\;

ww_Q(19) <= \Q[19]~output_o\;

ww_Q(20) <= \Q[20]~output_o\;

ww_Q(21) <= \Q[21]~output_o\;

ww_Q(22) <= \Q[22]~output_o\;

ww_Q(23) <= \Q[23]~output_o\;

ww_Q(24) <= \Q[24]~output_o\;

ww_Q(25) <= \Q[25]~output_o\;

ww_Q(26) <= \Q[26]~output_o\;

ww_Q(27) <= \Q[27]~output_o\;

ww_Q(28) <= \Q[28]~output_o\;

ww_Q(29) <= \Q[29]~output_o\;

ww_Q(30) <= \Q[30]~output_o\;

ww_Q(31) <= \Q[31]~output_o\;
END structure;


