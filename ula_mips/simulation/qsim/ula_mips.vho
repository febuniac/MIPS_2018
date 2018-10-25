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

-- DATE "10/25/2018 18:54:01"

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

ENTITY 	mips_teste IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	saida : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic;
	mux1_teste : OUT std_logic;
	mux2_teste : OUT std_logic;
	mux3_teste : OUT std_logic;
	mux4_teste : OUT std_logic;
	habEscReg_teste : OUT std_logic;
	beq_teste : OUT std_logic;
	habLeiMEM_teste : OUT std_logic;
	habEscMEM_teste : OUT std_logic;
	ULAop_teste : OUT std_logic_vector(1 DOWNTO 0);
	ula_ctrl_teste : OUT std_logic_vector(3 DOWNTO 0);
	op_code_aux : IN std_logic_vector(5 DOWNTO 0);
	funct_aux : IN std_logic_vector(5 DOWNTO 0);
	A_aux : IN std_logic_vector(31 DOWNTO 0);
	B_aux : IN std_logic_vector(31 DOWNTO 0)
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_mux1_teste : std_logic;
SIGNAL ww_mux2_teste : std_logic;
SIGNAL ww_mux3_teste : std_logic;
SIGNAL ww_mux4_teste : std_logic;
SIGNAL ww_habEscReg_teste : std_logic;
SIGNAL ww_beq_teste : std_logic;
SIGNAL ww_habLeiMEM_teste : std_logic;
SIGNAL ww_habEscMEM_teste : std_logic;
SIGNAL ww_ULAop_teste : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ula_ctrl_teste : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op_code_aux : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_funct_aux : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_A_aux : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B_aux : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
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
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \mux1_teste~output_o\ : std_logic;
SIGNAL \mux2_teste~output_o\ : std_logic;
SIGNAL \mux3_teste~output_o\ : std_logic;
SIGNAL \mux4_teste~output_o\ : std_logic;
SIGNAL \habEscReg_teste~output_o\ : std_logic;
SIGNAL \beq_teste~output_o\ : std_logic;
SIGNAL \habLeiMEM_teste~output_o\ : std_logic;
SIGNAL \habEscMEM_teste~output_o\ : std_logic;
SIGNAL \ULAop_teste[0]~output_o\ : std_logic;
SIGNAL \ULAop_teste[1]~output_o\ : std_logic;
SIGNAL \ula_ctrl_teste[0]~output_o\ : std_logic;
SIGNAL \ula_ctrl_teste[1]~output_o\ : std_logic;
SIGNAL \ula_ctrl_teste[2]~output_o\ : std_logic;
SIGNAL \ula_ctrl_teste[3]~output_o\ : std_logic;
SIGNAL \funct_aux[0]~input_o\ : std_logic;
SIGNAL \op_code_aux[2]~input_o\ : std_logic;
SIGNAL \op_code_aux[1]~input_o\ : std_logic;
SIGNAL \op_code_aux[0]~input_o\ : std_logic;
SIGNAL \op_code_aux[3]~input_o\ : std_logic;
SIGNAL \op_code_aux[4]~input_o\ : std_logic;
SIGNAL \op_code_aux[5]~input_o\ : std_logic;
SIGNAL \fd_ctrl|op_code_aux~0_combout\ : std_logic;
SIGNAL \funct_aux[4]~input_o\ : std_logic;
SIGNAL \funct_aux[5]~input_o\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~0_combout\ : std_logic;
SIGNAL \funct_aux[1]~input_o\ : std_logic;
SIGNAL \funct_aux[2]~input_o\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~1_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal6~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~2_combout\ : std_logic;
SIGNAL \funct_aux[3]~input_o\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~3_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~4_combout\ : std_logic;
SIGNAL \B_aux[0]~input_o\ : std_logic;
SIGNAL \A_aux[0]~input_o\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[0]~5_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[2]~6_combout\ : std_logic;
SIGNAL \A_aux[4]~input_o\ : std_logic;
SIGNAL \B_aux[4]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[4]~0_combout\ : std_logic;
SIGNAL \A_aux[1]~input_o\ : std_logic;
SIGNAL \B_aux[1]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[3]~1_combout\ : std_logic;
SIGNAL \A_aux[2]~input_o\ : std_logic;
SIGNAL \B_aux[2]~input_o\ : std_logic;
SIGNAL \A_aux[3]~input_o\ : std_logic;
SIGNAL \B_aux[3]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[3]~2_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[3]~3_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~0_combout\ : std_logic;
SIGNAL \A_aux[5]~input_o\ : std_logic;
SIGNAL \B_aux[5]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[5]~4_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[5]~5_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~0_combout\ : std_logic;
SIGNAL \A_aux[6]~input_o\ : std_logic;
SIGNAL \B_aux[6]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[6]~0_combout\ : std_logic;
SIGNAL \A_aux[7]~input_o\ : std_logic;
SIGNAL \B_aux[7]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[7]~1_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[7]~6_combout\ : std_logic;
SIGNAL \A_aux[8]~input_o\ : std_logic;
SIGNAL \B_aux[8]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[8]~2_combout\ : std_logic;
SIGNAL \A_aux[9]~input_o\ : std_logic;
SIGNAL \B_aux[9]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[9]~7_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~0_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[9]~8_combout\ : std_logic;
SIGNAL \A_aux[10]~input_o\ : std_logic;
SIGNAL \B_aux[10]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[10]~3_combout\ : std_logic;
SIGNAL \A_aux[11]~input_o\ : std_logic;
SIGNAL \B_aux[11]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[11]~4_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[11]~9_combout\ : std_logic;
SIGNAL \A_aux[12]~input_o\ : std_logic;
SIGNAL \B_aux[12]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[12]~5_combout\ : std_logic;
SIGNAL \A_aux[13]~input_o\ : std_logic;
SIGNAL \B_aux[13]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[13]~6_combout\ : std_logic;
SIGNAL \A_aux[14]~input_o\ : std_logic;
SIGNAL \B_aux[14]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[14]~10_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[14]~11_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~0_combout\ : std_logic;
SIGNAL \A_aux[15]~input_o\ : std_logic;
SIGNAL \B_aux[15]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[15]~7_combout\ : std_logic;
SIGNAL \A_aux[16]~input_o\ : std_logic;
SIGNAL \B_aux[16]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[16]~8_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[16]~12_combout\ : std_logic;
SIGNAL \A_aux[17]~input_o\ : std_logic;
SIGNAL \B_aux[17]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[17]~9_combout\ : std_logic;
SIGNAL \A_aux[18]~input_o\ : std_logic;
SIGNAL \B_aux[18]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[18]~10_combout\ : std_logic;
SIGNAL \A_aux[19]~input_o\ : std_logic;
SIGNAL \B_aux[19]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[19]~13_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[19]~14_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~0_combout\ : std_logic;
SIGNAL \A_aux[20]~input_o\ : std_logic;
SIGNAL \B_aux[20]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[20]~11_combout\ : std_logic;
SIGNAL \A_aux[21]~input_o\ : std_logic;
SIGNAL \B_aux[21]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[21]~12_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[21]~15_combout\ : std_logic;
SIGNAL \A_aux[22]~input_o\ : std_logic;
SIGNAL \B_aux[22]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[22]~13_combout\ : std_logic;
SIGNAL \A_aux[23]~input_o\ : std_logic;
SIGNAL \B_aux[23]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[23]~14_combout\ : std_logic;
SIGNAL \A_aux[24]~input_o\ : std_logic;
SIGNAL \B_aux[24]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[24]~16_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[24]~17_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~0_combout\ : std_logic;
SIGNAL \A_aux[25]~input_o\ : std_logic;
SIGNAL \B_aux[25]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[25]~15_combout\ : std_logic;
SIGNAL \A_aux[26]~input_o\ : std_logic;
SIGNAL \B_aux[26]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[26]~16_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[26]~18_combout\ : std_logic;
SIGNAL \A_aux[27]~input_o\ : std_logic;
SIGNAL \B_aux[27]~input_o\ : std_logic;
SIGNAL \A_aux[28]~input_o\ : std_logic;
SIGNAL \B_aux[28]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[28]~19_combout\ : std_logic;
SIGNAL \A_aux[29]~input_o\ : std_logic;
SIGNAL \B_aux[29]~input_o\ : std_logic;
SIGNAL \ula|mux2B|Y[29]~17_combout\ : std_logic;
SIGNAL \A_aux[30]~input_o\ : std_logic;
SIGNAL \B_aux[30]~input_o\ : std_logic;
SIGNAL \ula|slt|full_adder|c_out[30]~20_combout\ : std_logic;
SIGNAL \A_aux[31]~input_o\ : std_logic;
SIGNAL \B_aux[31]~input_o\ : std_logic;
SIGNAL \ula|mux4|Mux0~0_combout\ : std_logic;
SIGNAL \ula|slt|result[0]~0_combout\ : std_logic;
SIGNAL \ula|slt|result[0]~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux31~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~7_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl~8_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~2_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~3_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[0]~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux30~0_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[2]~18_combout\ : std_logic;
SIGNAL \ula|mux4|Mux29~4_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[3]~19_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[2]~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux28~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[3]~2_combout\ : std_logic;
SIGNAL \ula|mux4|Mux27~1_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[5]~20_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[4]~3_combout\ : std_logic;
SIGNAL \ula|mux4|Mux26~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[5]~4_combout\ : std_logic;
SIGNAL \ula|mux4|Mux25~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[6]~5_combout\ : std_logic;
SIGNAL \ula|mux4|Mux24~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[7]~6_combout\ : std_logic;
SIGNAL \ula|mux4|Mux23~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[8]~7_combout\ : std_logic;
SIGNAL \ula|mux4|Mux22~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[9]~8_combout\ : std_logic;
SIGNAL \ula|mux4|Mux21~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[10]~9_combout\ : std_logic;
SIGNAL \ula|mux4|Mux20~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[11]~10_combout\ : std_logic;
SIGNAL \ula|mux4|Mux19~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[12]~11_combout\ : std_logic;
SIGNAL \ula|mux4|Mux18~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[13]~12_combout\ : std_logic;
SIGNAL \ula|mux4|Mux17~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[14]~13_combout\ : std_logic;
SIGNAL \ula|mux4|Mux16~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[15]~14_combout\ : std_logic;
SIGNAL \ula|mux4|Mux15~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[16]~15_combout\ : std_logic;
SIGNAL \ula|mux4|Mux14~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[17]~16_combout\ : std_logic;
SIGNAL \ula|mux4|Mux13~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[18]~17_combout\ : std_logic;
SIGNAL \ula|mux4|Mux12~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[19]~18_combout\ : std_logic;
SIGNAL \ula|mux4|Mux11~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[20]~19_combout\ : std_logic;
SIGNAL \ula|mux4|Mux10~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[21]~20_combout\ : std_logic;
SIGNAL \ula|mux4|Mux9~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[22]~21_combout\ : std_logic;
SIGNAL \ula|mux4|Mux8~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[23]~22_combout\ : std_logic;
SIGNAL \ula|mux4|Mux7~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[24]~23_combout\ : std_logic;
SIGNAL \ula|mux4|Mux6~0_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[25]~24_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~0_combout\ : std_logic;
SIGNAL \ula|mux2B|Y[27]~21_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[26]~25_combout\ : std_logic;
SIGNAL \ula|mux4|Mux4~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux5~1_combout\ : std_logic;
SIGNAL \ula|full_adder|result[28]~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux3~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[28]~26_combout\ : std_logic;
SIGNAL \ula|mux4|Mux2~0_combout\ : std_logic;
SIGNAL \ula|full_adder|result[30]~1_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~0_combout\ : std_logic;
SIGNAL \ula|mux4|Mux1~1_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out[30]~27_combout\ : std_logic;
SIGNAL \ula|mux4|Mux0~1_combout\ : std_logic;
SIGNAL \ula|zero~0_combout\ : std_logic;
SIGNAL \ula|zero~1_combout\ : std_logic;
SIGNAL \ula|zero~2_combout\ : std_logic;
SIGNAL \ula|zero~3_combout\ : std_logic;
SIGNAL \ula|zero~4_combout\ : std_logic;
SIGNAL \ula|zero~5_combout\ : std_logic;
SIGNAL \ula|zero~6_combout\ : std_logic;
SIGNAL \ula|zero~7_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal0~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal2~0_combout\ : std_logic;
SIGNAL \fd_ctrl|Equal1~0_combout\ : std_logic;
SIGNAL \fd_ctrl|habEscReg~combout\ : std_logic;
SIGNAL \fd_ctrl|Equal5~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ula_ctrl[1]~9_combout\ : std_logic;
SIGNAL \ula|full_adder|c_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ula|ALT_INV_zero~4_combout\ : std_logic;
SIGNAL \ula|ALT_INV_zero~3_combout\ : std_logic;
SIGNAL \ula|ALT_INV_zero~2_combout\ : std_logic;
SIGNAL \ula|ALT_INV_zero~1_combout\ : std_logic;
SIGNAL \ula|ALT_INV_zero~0_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[30]~27_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_result[30]~1_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[28]~26_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_result[28]~0_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[26]~25_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[27]~21_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[25]~24_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[24]~23_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[23]~22_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[22]~21_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[21]~20_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[20]~19_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[19]~18_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[18]~17_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[17]~16_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[16]~15_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[15]~14_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[14]~13_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[13]~12_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[12]~11_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[11]~10_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[10]~9_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[9]~8_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[8]~7_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[7]~6_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[6]~5_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[5]~4_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[4]~3_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[5]~20_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[3]~2_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[2]~1_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[3]~19_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux29~4_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \ula|mux2B|ALT_INV_Y[2]~18_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \ula|full_adder|ALT_INV_c_out[0]~0_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl~8_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl~7_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ula|slt|ALT_INV_result[0]~1_combout\ : std_logic;
SIGNAL \ula|slt|ALT_INV_result[0]~0_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[30]~20_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[29]~17_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[28]~19_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[26]~18_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[26]~16_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[25]~15_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[24]~17_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[24]~16_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[23]~14_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[22]~13_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[21]~15_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[21]~12_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[20]~11_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[19]~14_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[19]~13_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[18]~10_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[17]~9_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[16]~12_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[16]~8_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[15]~7_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[14]~11_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[14]~10_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[13]~6_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[12]~5_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[11]~9_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[11]~4_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[10]~3_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[9]~8_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[9]~7_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[8]~2_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[7]~6_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[7]~1_combout\ : std_logic;
SIGNAL \ula|mux2B|ALT_INV_Y[6]~0_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[5]~5_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[5]~4_combout\ : std_logic;
SIGNAL \ula|mux4|ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[3]~3_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[3]~2_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[3]~1_combout\ : std_logic;
SIGNAL \ula|slt|full_adder|ALT_INV_c_out[4]~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl[0]~5_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl~4_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl~3_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl~2_combout\ : std_logic;
SIGNAL \fd_ctrl|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl~1_combout\ : std_logic;
SIGNAL \ula_ctrl|ALT_INV_ula_ctrl~0_combout\ : std_logic;
SIGNAL \fd_ctrl|ALT_INV_op_code_aux~0_combout\ : std_logic;
SIGNAL \ALT_INV_A_aux[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct_aux[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct_aux[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct_aux[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct_aux[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_code_aux[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_code_aux[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_code_aux[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_code_aux[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_code_aux[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_code_aux[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct_aux[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_funct_aux[3]~input_o\ : std_logic;
SIGNAL \fd_ctrl|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \fd_ctrl|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ula|ALT_INV_zero~7_combout\ : std_logic;
SIGNAL \ula|ALT_INV_zero~6_combout\ : std_logic;
SIGNAL \ula|ALT_INV_zero~5_combout\ : std_logic;
SIGNAL \ALT_INV_B_aux[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A_aux[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B_aux[28]~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
saida <= ww_saida;
zero <= ww_zero;
mux1_teste <= ww_mux1_teste;
mux2_teste <= ww_mux2_teste;
mux3_teste <= ww_mux3_teste;
mux4_teste <= ww_mux4_teste;
habEscReg_teste <= ww_habEscReg_teste;
beq_teste <= ww_beq_teste;
habLeiMEM_teste <= ww_habLeiMEM_teste;
habEscMEM_teste <= ww_habEscMEM_teste;
ULAop_teste <= ww_ULAop_teste;
ula_ctrl_teste <= ww_ula_ctrl_teste;
ww_op_code_aux <= op_code_aux;
ww_funct_aux <= funct_aux;
ww_A_aux <= A_aux;
ww_B_aux <= B_aux;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ula|ALT_INV_zero~4_combout\ <= NOT \ula|zero~4_combout\;
\ula|ALT_INV_zero~3_combout\ <= NOT \ula|zero~3_combout\;
\ula|ALT_INV_zero~2_combout\ <= NOT \ula|zero~2_combout\;
\ula|ALT_INV_zero~1_combout\ <= NOT \ula|zero~1_combout\;
\ula|ALT_INV_zero~0_combout\ <= NOT \ula|zero~0_combout\;
\ula|mux4|ALT_INV_Mux0~1_combout\ <= NOT \ula|mux4|Mux0~1_combout\;
\ula|full_adder|ALT_INV_c_out[30]~27_combout\ <= NOT \ula|full_adder|c_out[30]~27_combout\;
\ula|mux4|ALT_INV_Mux1~1_combout\ <= NOT \ula|mux4|Mux1~1_combout\;
\ula|mux4|ALT_INV_Mux1~0_combout\ <= NOT \ula|mux4|Mux1~0_combout\;
\ula|full_adder|ALT_INV_result[30]~1_combout\ <= NOT \ula|full_adder|result[30]~1_combout\;
\ula|mux4|ALT_INV_Mux2~0_combout\ <= NOT \ula|mux4|Mux2~0_combout\;
\ula|full_adder|ALT_INV_c_out[28]~26_combout\ <= NOT \ula|full_adder|c_out[28]~26_combout\;
\ula|mux4|ALT_INV_Mux3~1_combout\ <= NOT \ula|mux4|Mux3~1_combout\;
\ula|mux4|ALT_INV_Mux3~0_combout\ <= NOT \ula|mux4|Mux3~0_combout\;
\ula|full_adder|ALT_INV_result[28]~0_combout\ <= NOT \ula|full_adder|result[28]~0_combout\;
\ula|mux4|ALT_INV_Mux5~1_combout\ <= NOT \ula|mux4|Mux5~1_combout\;
\ula|mux4|ALT_INV_Mux4~0_combout\ <= NOT \ula|mux4|Mux4~0_combout\;
\ula|full_adder|ALT_INV_c_out[26]~25_combout\ <= NOT \ula|full_adder|c_out[26]~25_combout\;
\ula|mux2B|ALT_INV_Y[27]~21_combout\ <= NOT \ula|mux2B|Y[27]~21_combout\;
\ula|mux4|ALT_INV_Mux5~0_combout\ <= NOT \ula|mux4|Mux5~0_combout\;
\ula|full_adder|ALT_INV_c_out[25]~24_combout\ <= NOT \ula|full_adder|c_out[25]~24_combout\;
\ula|mux4|ALT_INV_Mux6~0_combout\ <= NOT \ula|mux4|Mux6~0_combout\;
\ula|full_adder|ALT_INV_c_out[24]~23_combout\ <= NOT \ula|full_adder|c_out[24]~23_combout\;
\ula|mux4|ALT_INV_Mux7~1_combout\ <= NOT \ula|mux4|Mux7~1_combout\;
\ula|full_adder|ALT_INV_c_out[23]~22_combout\ <= NOT \ula|full_adder|c_out[23]~22_combout\;
\ula|mux4|ALT_INV_Mux8~0_combout\ <= NOT \ula|mux4|Mux8~0_combout\;
\ula|full_adder|ALT_INV_c_out[22]~21_combout\ <= NOT \ula|full_adder|c_out[22]~21_combout\;
\ula|mux4|ALT_INV_Mux9~0_combout\ <= NOT \ula|mux4|Mux9~0_combout\;
\ula|full_adder|ALT_INV_c_out[21]~20_combout\ <= NOT \ula|full_adder|c_out[21]~20_combout\;
\ula|mux4|ALT_INV_Mux10~0_combout\ <= NOT \ula|mux4|Mux10~0_combout\;
\ula|full_adder|ALT_INV_c_out[20]~19_combout\ <= NOT \ula|full_adder|c_out[20]~19_combout\;
\ula|mux4|ALT_INV_Mux11~0_combout\ <= NOT \ula|mux4|Mux11~0_combout\;
\ula|full_adder|ALT_INV_c_out[19]~18_combout\ <= NOT \ula|full_adder|c_out[19]~18_combout\;
\ula|mux4|ALT_INV_Mux12~1_combout\ <= NOT \ula|mux4|Mux12~1_combout\;
\ula|full_adder|ALT_INV_c_out[18]~17_combout\ <= NOT \ula|full_adder|c_out[18]~17_combout\;
\ula|mux4|ALT_INV_Mux13~0_combout\ <= NOT \ula|mux4|Mux13~0_combout\;
\ula|full_adder|ALT_INV_c_out[17]~16_combout\ <= NOT \ula|full_adder|c_out[17]~16_combout\;
\ula|mux4|ALT_INV_Mux14~0_combout\ <= NOT \ula|mux4|Mux14~0_combout\;
\ula|full_adder|ALT_INV_c_out[16]~15_combout\ <= NOT \ula|full_adder|c_out[16]~15_combout\;
\ula|mux4|ALT_INV_Mux15~0_combout\ <= NOT \ula|mux4|Mux15~0_combout\;
\ula|full_adder|ALT_INV_c_out[15]~14_combout\ <= NOT \ula|full_adder|c_out[15]~14_combout\;
\ula|mux4|ALT_INV_Mux16~0_combout\ <= NOT \ula|mux4|Mux16~0_combout\;
\ula|full_adder|ALT_INV_c_out[14]~13_combout\ <= NOT \ula|full_adder|c_out[14]~13_combout\;
\ula|mux4|ALT_INV_Mux17~1_combout\ <= NOT \ula|mux4|Mux17~1_combout\;
\ula|full_adder|ALT_INV_c_out[13]~12_combout\ <= NOT \ula|full_adder|c_out[13]~12_combout\;
\ula|mux4|ALT_INV_Mux18~0_combout\ <= NOT \ula|mux4|Mux18~0_combout\;
\ula|full_adder|ALT_INV_c_out[12]~11_combout\ <= NOT \ula|full_adder|c_out[12]~11_combout\;
\ula|mux4|ALT_INV_Mux19~0_combout\ <= NOT \ula|mux4|Mux19~0_combout\;
\ula|full_adder|ALT_INV_c_out[11]~10_combout\ <= NOT \ula|full_adder|c_out[11]~10_combout\;
\ula|mux4|ALT_INV_Mux20~0_combout\ <= NOT \ula|mux4|Mux20~0_combout\;
\ula|full_adder|ALT_INV_c_out[10]~9_combout\ <= NOT \ula|full_adder|c_out[10]~9_combout\;
\ula|mux4|ALT_INV_Mux21~0_combout\ <= NOT \ula|mux4|Mux21~0_combout\;
\ula|full_adder|ALT_INV_c_out[9]~8_combout\ <= NOT \ula|full_adder|c_out[9]~8_combout\;
\ula|mux4|ALT_INV_Mux22~1_combout\ <= NOT \ula|mux4|Mux22~1_combout\;
\ula|full_adder|ALT_INV_c_out[8]~7_combout\ <= NOT \ula|full_adder|c_out[8]~7_combout\;
\ula|mux4|ALT_INV_Mux23~0_combout\ <= NOT \ula|mux4|Mux23~0_combout\;
\ula|full_adder|ALT_INV_c_out[7]~6_combout\ <= NOT \ula|full_adder|c_out[7]~6_combout\;
\ula|mux4|ALT_INV_Mux24~0_combout\ <= NOT \ula|mux4|Mux24~0_combout\;
\ula|full_adder|ALT_INV_c_out[6]~5_combout\ <= NOT \ula|full_adder|c_out[6]~5_combout\;
\ula|mux4|ALT_INV_Mux25~0_combout\ <= NOT \ula|mux4|Mux25~0_combout\;
\ula|full_adder|ALT_INV_c_out[5]~4_combout\ <= NOT \ula|full_adder|c_out[5]~4_combout\;
\ula|mux4|ALT_INV_Mux26~1_combout\ <= NOT \ula|mux4|Mux26~1_combout\;
\ula|full_adder|ALT_INV_c_out[4]~3_combout\ <= NOT \ula|full_adder|c_out[4]~3_combout\;
\ula|mux2B|ALT_INV_Y[5]~20_combout\ <= NOT \ula|mux2B|Y[5]~20_combout\;
\ula|mux4|ALT_INV_Mux27~1_combout\ <= NOT \ula|mux4|Mux27~1_combout\;
\ula|full_adder|ALT_INV_c_out[3]~2_combout\ <= NOT \ula|full_adder|c_out[3]~2_combout\;
\ula|mux4|ALT_INV_Mux28~0_combout\ <= NOT \ula|mux4|Mux28~0_combout\;
\ula|full_adder|ALT_INV_c_out[2]~1_combout\ <= NOT \ula|full_adder|c_out[2]~1_combout\;
\ula|mux2B|ALT_INV_Y[3]~19_combout\ <= NOT \ula|mux2B|Y[3]~19_combout\;
\ula|mux4|ALT_INV_Mux29~4_combout\ <= NOT \ula|mux4|Mux29~4_combout\;
\ula|full_adder|ALT_INV_c_out\(1) <= NOT \ula|full_adder|c_out\(1);
\ula|mux2B|ALT_INV_Y[2]~18_combout\ <= NOT \ula|mux2B|Y[2]~18_combout\;
\ula|mux4|ALT_INV_Mux30~0_combout\ <= NOT \ula|mux4|Mux30~0_combout\;
\ula|full_adder|ALT_INV_c_out[0]~0_combout\ <= NOT \ula|full_adder|c_out[0]~0_combout\;
\ula|mux4|ALT_INV_Mux29~3_combout\ <= NOT \ula|mux4|Mux29~3_combout\;
\ula|mux4|ALT_INV_Mux29~2_combout\ <= NOT \ula|mux4|Mux29~2_combout\;
\ula|mux4|ALT_INV_Mux29~1_combout\ <= NOT \ula|mux4|Mux29~1_combout\;
\ula|mux4|ALT_INV_Mux29~0_combout\ <= NOT \ula|mux4|Mux29~0_combout\;
\ula_ctrl|ALT_INV_ula_ctrl~8_combout\ <= NOT \ula_ctrl|ula_ctrl~8_combout\;
\ula_ctrl|ALT_INV_ula_ctrl~7_combout\ <= NOT \ula_ctrl|ula_ctrl~7_combout\;
\ula|mux4|ALT_INV_Mux31~0_combout\ <= NOT \ula|mux4|Mux31~0_combout\;
\ula|slt|ALT_INV_result[0]~1_combout\ <= NOT \ula|slt|result[0]~1_combout\;
\ula|slt|ALT_INV_result[0]~0_combout\ <= NOT \ula|slt|result[0]~0_combout\;
\ula|mux4|ALT_INV_Mux0~0_combout\ <= NOT \ula|mux4|Mux0~0_combout\;
\ula|slt|full_adder|ALT_INV_c_out[30]~20_combout\ <= NOT \ula|slt|full_adder|c_out[30]~20_combout\;
\ula|mux2B|ALT_INV_Y[29]~17_combout\ <= NOT \ula|mux2B|Y[29]~17_combout\;
\ula|slt|full_adder|ALT_INV_c_out[28]~19_combout\ <= NOT \ula|slt|full_adder|c_out[28]~19_combout\;
\ula|slt|full_adder|ALT_INV_c_out[26]~18_combout\ <= NOT \ula|slt|full_adder|c_out[26]~18_combout\;
\ula|mux2B|ALT_INV_Y[26]~16_combout\ <= NOT \ula|mux2B|Y[26]~16_combout\;
\ula|mux2B|ALT_INV_Y[25]~15_combout\ <= NOT \ula|mux2B|Y[25]~15_combout\;
\ula|mux4|ALT_INV_Mux7~0_combout\ <= NOT \ula|mux4|Mux7~0_combout\;
\ula|slt|full_adder|ALT_INV_c_out[24]~17_combout\ <= NOT \ula|slt|full_adder|c_out[24]~17_combout\;
\ula|slt|full_adder|ALT_INV_c_out[24]~16_combout\ <= NOT \ula|slt|full_adder|c_out[24]~16_combout\;
\ula|mux2B|ALT_INV_Y[23]~14_combout\ <= NOT \ula|mux2B|Y[23]~14_combout\;
\ula|mux2B|ALT_INV_Y[22]~13_combout\ <= NOT \ula|mux2B|Y[22]~13_combout\;
\ula|slt|full_adder|ALT_INV_c_out[21]~15_combout\ <= NOT \ula|slt|full_adder|c_out[21]~15_combout\;
\ula|mux2B|ALT_INV_Y[21]~12_combout\ <= NOT \ula|mux2B|Y[21]~12_combout\;
\ula|mux2B|ALT_INV_Y[20]~11_combout\ <= NOT \ula|mux2B|Y[20]~11_combout\;
\ula|mux4|ALT_INV_Mux12~0_combout\ <= NOT \ula|mux4|Mux12~0_combout\;
\ula|slt|full_adder|ALT_INV_c_out[19]~14_combout\ <= NOT \ula|slt|full_adder|c_out[19]~14_combout\;
\ula|slt|full_adder|ALT_INV_c_out[19]~13_combout\ <= NOT \ula|slt|full_adder|c_out[19]~13_combout\;
\ula|mux2B|ALT_INV_Y[18]~10_combout\ <= NOT \ula|mux2B|Y[18]~10_combout\;
\ula|mux2B|ALT_INV_Y[17]~9_combout\ <= NOT \ula|mux2B|Y[17]~9_combout\;
\ula|slt|full_adder|ALT_INV_c_out[16]~12_combout\ <= NOT \ula|slt|full_adder|c_out[16]~12_combout\;
\ula|mux2B|ALT_INV_Y[16]~8_combout\ <= NOT \ula|mux2B|Y[16]~8_combout\;
\ula|mux2B|ALT_INV_Y[15]~7_combout\ <= NOT \ula|mux2B|Y[15]~7_combout\;
\ula|mux4|ALT_INV_Mux17~0_combout\ <= NOT \ula|mux4|Mux17~0_combout\;
\ula|slt|full_adder|ALT_INV_c_out[14]~11_combout\ <= NOT \ula|slt|full_adder|c_out[14]~11_combout\;
\ula|slt|full_adder|ALT_INV_c_out[14]~10_combout\ <= NOT \ula|slt|full_adder|c_out[14]~10_combout\;
\ula|mux2B|ALT_INV_Y[13]~6_combout\ <= NOT \ula|mux2B|Y[13]~6_combout\;
\ula|mux2B|ALT_INV_Y[12]~5_combout\ <= NOT \ula|mux2B|Y[12]~5_combout\;
\ula|slt|full_adder|ALT_INV_c_out[11]~9_combout\ <= NOT \ula|slt|full_adder|c_out[11]~9_combout\;
\ula|mux2B|ALT_INV_Y[11]~4_combout\ <= NOT \ula|mux2B|Y[11]~4_combout\;
\ula|mux2B|ALT_INV_Y[10]~3_combout\ <= NOT \ula|mux2B|Y[10]~3_combout\;
\ula|slt|full_adder|ALT_INV_c_out[9]~8_combout\ <= NOT \ula|slt|full_adder|c_out[9]~8_combout\;
\ula|mux4|ALT_INV_Mux22~0_combout\ <= NOT \ula|mux4|Mux22~0_combout\;
\ula|slt|full_adder|ALT_INV_c_out[9]~7_combout\ <= NOT \ula|slt|full_adder|c_out[9]~7_combout\;
\ula|mux2B|ALT_INV_Y[8]~2_combout\ <= NOT \ula|mux2B|Y[8]~2_combout\;
\ula|slt|full_adder|ALT_INV_c_out[7]~6_combout\ <= NOT \ula|slt|full_adder|c_out[7]~6_combout\;
\ula|mux2B|ALT_INV_Y[7]~1_combout\ <= NOT \ula|mux2B|Y[7]~1_combout\;
\ula|mux2B|ALT_INV_Y[6]~0_combout\ <= NOT \ula|mux2B|Y[6]~0_combout\;
\ula|mux4|ALT_INV_Mux26~0_combout\ <= NOT \ula|mux4|Mux26~0_combout\;
\ula|slt|full_adder|ALT_INV_c_out[5]~5_combout\ <= NOT \ula|slt|full_adder|c_out[5]~5_combout\;
\ula|slt|full_adder|ALT_INV_c_out[5]~4_combout\ <= NOT \ula|slt|full_adder|c_out[5]~4_combout\;
\ula|mux4|ALT_INV_Mux27~0_combout\ <= NOT \ula|mux4|Mux27~0_combout\;
\ula|slt|full_adder|ALT_INV_c_out[3]~3_combout\ <= NOT \ula|slt|full_adder|c_out[3]~3_combout\;
\ula|slt|full_adder|ALT_INV_c_out[3]~2_combout\ <= NOT \ula|slt|full_adder|c_out[3]~2_combout\;
\ula|slt|full_adder|ALT_INV_c_out[3]~1_combout\ <= NOT \ula|slt|full_adder|c_out[3]~1_combout\;
\ula|slt|full_adder|ALT_INV_c_out[4]~0_combout\ <= NOT \ula|slt|full_adder|c_out[4]~0_combout\;
\ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\ <= NOT \ula_ctrl|ula_ctrl[2]~6_combout\;
\ula_ctrl|ALT_INV_ula_ctrl[0]~5_combout\ <= NOT \ula_ctrl|ula_ctrl[0]~5_combout\;
\ula_ctrl|ALT_INV_ula_ctrl~4_combout\ <= NOT \ula_ctrl|ula_ctrl~4_combout\;
\ula_ctrl|ALT_INV_ula_ctrl~3_combout\ <= NOT \ula_ctrl|ula_ctrl~3_combout\;
\ula_ctrl|ALT_INV_ula_ctrl~2_combout\ <= NOT \ula_ctrl|ula_ctrl~2_combout\;
\fd_ctrl|ALT_INV_Equal6~0_combout\ <= NOT \fd_ctrl|Equal6~0_combout\;
\ula_ctrl|ALT_INV_ula_ctrl~1_combout\ <= NOT \ula_ctrl|ula_ctrl~1_combout\;
\ula_ctrl|ALT_INV_ula_ctrl~0_combout\ <= NOT \ula_ctrl|ula_ctrl~0_combout\;
\fd_ctrl|ALT_INV_op_code_aux~0_combout\ <= NOT \fd_ctrl|op_code_aux~0_combout\;
\ALT_INV_A_aux[28]~input_o\ <= NOT \A_aux[28]~input_o\;
\ALT_INV_B_aux[27]~input_o\ <= NOT \B_aux[27]~input_o\;
\ALT_INV_A_aux[27]~input_o\ <= NOT \A_aux[27]~input_o\;
\ALT_INV_B_aux[26]~input_o\ <= NOT \B_aux[26]~input_o\;
\ALT_INV_A_aux[26]~input_o\ <= NOT \A_aux[26]~input_o\;
\ALT_INV_B_aux[25]~input_o\ <= NOT \B_aux[25]~input_o\;
\ALT_INV_A_aux[25]~input_o\ <= NOT \A_aux[25]~input_o\;
\ALT_INV_B_aux[24]~input_o\ <= NOT \B_aux[24]~input_o\;
\ALT_INV_A_aux[24]~input_o\ <= NOT \A_aux[24]~input_o\;
\ALT_INV_B_aux[23]~input_o\ <= NOT \B_aux[23]~input_o\;
\ALT_INV_A_aux[23]~input_o\ <= NOT \A_aux[23]~input_o\;
\ALT_INV_B_aux[22]~input_o\ <= NOT \B_aux[22]~input_o\;
\ALT_INV_A_aux[22]~input_o\ <= NOT \A_aux[22]~input_o\;
\ALT_INV_B_aux[21]~input_o\ <= NOT \B_aux[21]~input_o\;
\ALT_INV_A_aux[21]~input_o\ <= NOT \A_aux[21]~input_o\;
\ALT_INV_B_aux[20]~input_o\ <= NOT \B_aux[20]~input_o\;
\ALT_INV_A_aux[20]~input_o\ <= NOT \A_aux[20]~input_o\;
\ALT_INV_B_aux[19]~input_o\ <= NOT \B_aux[19]~input_o\;
\ALT_INV_A_aux[19]~input_o\ <= NOT \A_aux[19]~input_o\;
\ALT_INV_B_aux[18]~input_o\ <= NOT \B_aux[18]~input_o\;
\ALT_INV_A_aux[18]~input_o\ <= NOT \A_aux[18]~input_o\;
\ALT_INV_B_aux[17]~input_o\ <= NOT \B_aux[17]~input_o\;
\ALT_INV_A_aux[17]~input_o\ <= NOT \A_aux[17]~input_o\;
\ALT_INV_B_aux[16]~input_o\ <= NOT \B_aux[16]~input_o\;
\ALT_INV_A_aux[16]~input_o\ <= NOT \A_aux[16]~input_o\;
\ALT_INV_B_aux[15]~input_o\ <= NOT \B_aux[15]~input_o\;
\ALT_INV_A_aux[15]~input_o\ <= NOT \A_aux[15]~input_o\;
\ALT_INV_B_aux[14]~input_o\ <= NOT \B_aux[14]~input_o\;
\ALT_INV_A_aux[14]~input_o\ <= NOT \A_aux[14]~input_o\;
\ALT_INV_B_aux[13]~input_o\ <= NOT \B_aux[13]~input_o\;
\ALT_INV_A_aux[13]~input_o\ <= NOT \A_aux[13]~input_o\;
\ALT_INV_B_aux[12]~input_o\ <= NOT \B_aux[12]~input_o\;
\ALT_INV_A_aux[12]~input_o\ <= NOT \A_aux[12]~input_o\;
\ALT_INV_B_aux[11]~input_o\ <= NOT \B_aux[11]~input_o\;
\ALT_INV_A_aux[11]~input_o\ <= NOT \A_aux[11]~input_o\;
\ALT_INV_B_aux[10]~input_o\ <= NOT \B_aux[10]~input_o\;
\ALT_INV_A_aux[10]~input_o\ <= NOT \A_aux[10]~input_o\;
\ALT_INV_B_aux[9]~input_o\ <= NOT \B_aux[9]~input_o\;
\ALT_INV_A_aux[9]~input_o\ <= NOT \A_aux[9]~input_o\;
\ALT_INV_B_aux[8]~input_o\ <= NOT \B_aux[8]~input_o\;
\ALT_INV_A_aux[8]~input_o\ <= NOT \A_aux[8]~input_o\;
\ALT_INV_B_aux[7]~input_o\ <= NOT \B_aux[7]~input_o\;
\ALT_INV_A_aux[7]~input_o\ <= NOT \A_aux[7]~input_o\;
\ALT_INV_B_aux[6]~input_o\ <= NOT \B_aux[6]~input_o\;
\ALT_INV_A_aux[6]~input_o\ <= NOT \A_aux[6]~input_o\;
\ALT_INV_B_aux[5]~input_o\ <= NOT \B_aux[5]~input_o\;
\ALT_INV_A_aux[5]~input_o\ <= NOT \A_aux[5]~input_o\;
\ALT_INV_B_aux[3]~input_o\ <= NOT \B_aux[3]~input_o\;
\ALT_INV_A_aux[3]~input_o\ <= NOT \A_aux[3]~input_o\;
\ALT_INV_B_aux[2]~input_o\ <= NOT \B_aux[2]~input_o\;
\ALT_INV_A_aux[2]~input_o\ <= NOT \A_aux[2]~input_o\;
\ALT_INV_B_aux[1]~input_o\ <= NOT \B_aux[1]~input_o\;
\ALT_INV_A_aux[1]~input_o\ <= NOT \A_aux[1]~input_o\;
\ALT_INV_B_aux[4]~input_o\ <= NOT \B_aux[4]~input_o\;
\ALT_INV_A_aux[4]~input_o\ <= NOT \A_aux[4]~input_o\;
\ALT_INV_A_aux[0]~input_o\ <= NOT \A_aux[0]~input_o\;
\ALT_INV_B_aux[0]~input_o\ <= NOT \B_aux[0]~input_o\;
\ALT_INV_funct_aux[2]~input_o\ <= NOT \funct_aux[2]~input_o\;
\ALT_INV_funct_aux[1]~input_o\ <= NOT \funct_aux[1]~input_o\;
\ALT_INV_funct_aux[5]~input_o\ <= NOT \funct_aux[5]~input_o\;
\ALT_INV_funct_aux[4]~input_o\ <= NOT \funct_aux[4]~input_o\;
\ALT_INV_op_code_aux[5]~input_o\ <= NOT \op_code_aux[5]~input_o\;
\ALT_INV_op_code_aux[4]~input_o\ <= NOT \op_code_aux[4]~input_o\;
\ALT_INV_op_code_aux[3]~input_o\ <= NOT \op_code_aux[3]~input_o\;
\ALT_INV_op_code_aux[0]~input_o\ <= NOT \op_code_aux[0]~input_o\;
\ALT_INV_op_code_aux[1]~input_o\ <= NOT \op_code_aux[1]~input_o\;
\ALT_INV_op_code_aux[2]~input_o\ <= NOT \op_code_aux[2]~input_o\;
\ALT_INV_funct_aux[0]~input_o\ <= NOT \funct_aux[0]~input_o\;
\ALT_INV_funct_aux[3]~input_o\ <= NOT \funct_aux[3]~input_o\;
\fd_ctrl|ALT_INV_Equal1~0_combout\ <= NOT \fd_ctrl|Equal1~0_combout\;
\fd_ctrl|ALT_INV_Equal2~0_combout\ <= NOT \fd_ctrl|Equal2~0_combout\;
\ula|ALT_INV_zero~7_combout\ <= NOT \ula|zero~7_combout\;
\ula|ALT_INV_zero~6_combout\ <= NOT \ula|zero~6_combout\;
\ula|ALT_INV_zero~5_combout\ <= NOT \ula|zero~5_combout\;
\ALT_INV_B_aux[31]~input_o\ <= NOT \B_aux[31]~input_o\;
\ALT_INV_A_aux[31]~input_o\ <= NOT \A_aux[31]~input_o\;
\ALT_INV_B_aux[30]~input_o\ <= NOT \B_aux[30]~input_o\;
\ALT_INV_A_aux[30]~input_o\ <= NOT \A_aux[30]~input_o\;
\ALT_INV_B_aux[29]~input_o\ <= NOT \B_aux[29]~input_o\;
\ALT_INV_A_aux[29]~input_o\ <= NOT \A_aux[29]~input_o\;
\ALT_INV_B_aux[28]~input_o\ <= NOT \B_aux[28]~input_o\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux30~0_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux29~4_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux28~0_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux27~1_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux25~0_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux24~0_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux23~0_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux21~0_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux20~0_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux19~0_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux17~1_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux15~0_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

\saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux14~0_combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

\saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux13~0_combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

\saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

\saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux11~0_combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

\saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux10~0_combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

\saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

\saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux8~0_combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

\saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

\saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

\saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

\saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

\saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux3~1_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

\saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

\saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

\saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|mux4|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

\zero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula|ALT_INV_zero~7_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

\mux1_teste~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \mux1_teste~output_o\);

\mux2_teste~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|ALT_INV_op_code_aux~0_combout\,
	devoe => ww_devoe,
	o => \mux2_teste~output_o\);

\mux3_teste~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|Equal2~0_combout\,
	devoe => ww_devoe,
	o => \mux3_teste~output_o\);

\mux4_teste~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \mux4_teste~output_o\);

\habEscReg_teste~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|habEscReg~combout\,
	devoe => ww_devoe,
	o => \habEscReg_teste~output_o\);

\beq_teste~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \beq_teste~output_o\);

\habLeiMEM_teste~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|Equal1~0_combout\,
	devoe => ww_devoe,
	o => \habLeiMEM_teste~output_o\);

\habEscMEM_teste~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|Equal5~0_combout\,
	devoe => ww_devoe,
	o => \habEscMEM_teste~output_o\);

\ULAop_teste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|Equal6~0_combout\,
	devoe => ww_devoe,
	o => \ULAop_teste[0]~output_o\);

\ULAop_teste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \fd_ctrl|ALT_INV_op_code_aux~0_combout\,
	devoe => ww_devoe,
	o => \ULAop_teste[1]~output_o\);

\ula_ctrl_teste[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_ctrl|ula_ctrl[0]~5_combout\,
	devoe => ww_devoe,
	o => \ula_ctrl_teste[0]~output_o\);

\ula_ctrl_teste[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_ctrl|ula_ctrl[1]~9_combout\,
	devoe => ww_devoe,
	o => \ula_ctrl_teste[1]~output_o\);

\ula_ctrl_teste[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ula_ctrl|ula_ctrl[2]~6_combout\,
	devoe => ww_devoe,
	o => \ula_ctrl_teste[2]~output_o\);

\ula_ctrl_teste[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ula_ctrl_teste[3]~output_o\);

\funct_aux[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct_aux(0),
	o => \funct_aux[0]~input_o\);

\op_code_aux[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code_aux(2),
	o => \op_code_aux[2]~input_o\);

\op_code_aux[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code_aux(1),
	o => \op_code_aux[1]~input_o\);

\op_code_aux[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code_aux(0),
	o => \op_code_aux[0]~input_o\);

\op_code_aux[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code_aux(3),
	o => \op_code_aux[3]~input_o\);

\op_code_aux[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code_aux(4),
	o => \op_code_aux[4]~input_o\);

\op_code_aux[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_code_aux(5),
	o => \op_code_aux[5]~input_o\);

\fd_ctrl|op_code_aux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fd_ctrl|op_code_aux~0_combout\ = ( \op_code_aux[4]~input_o\ & ( \op_code_aux[5]~input_o\ ) ) # ( !\op_code_aux[4]~input_o\ & ( \op_code_aux[5]~input_o\ ) ) # ( \op_code_aux[4]~input_o\ & ( !\op_code_aux[5]~input_o\ ) ) # ( !\op_code_aux[4]~input_o\ & ( 
-- !\op_code_aux[5]~input_o\ & ( (((\op_code_aux[3]~input_o\) # (\op_code_aux[0]~input_o\)) # (\op_code_aux[1]~input_o\)) # (\op_code_aux[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code_aux[2]~input_o\,
	datab => \ALT_INV_op_code_aux[1]~input_o\,
	datac => \ALT_INV_op_code_aux[0]~input_o\,
	datad => \ALT_INV_op_code_aux[3]~input_o\,
	datae => \ALT_INV_op_code_aux[4]~input_o\,
	dataf => \ALT_INV_op_code_aux[5]~input_o\,
	combout => \fd_ctrl|op_code_aux~0_combout\);

\funct_aux[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct_aux(4),
	o => \funct_aux[4]~input_o\);

\funct_aux[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct_aux(5),
	o => \funct_aux[5]~input_o\);

\ula_ctrl|ula_ctrl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~0_combout\ = (!\funct_aux[4]~input_o\ & \funct_aux[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct_aux[4]~input_o\,
	datab => \ALT_INV_funct_aux[5]~input_o\,
	combout => \ula_ctrl|ula_ctrl~0_combout\);

\funct_aux[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct_aux(1),
	o => \funct_aux[1]~input_o\);

\funct_aux[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct_aux(2),
	o => \funct_aux[2]~input_o\);

\ula_ctrl|ula_ctrl~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~1_combout\ = (\funct_aux[1]~input_o\ & !\funct_aux[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct_aux[1]~input_o\,
	datab => \ALT_INV_funct_aux[2]~input_o\,
	combout => \ula_ctrl|ula_ctrl~1_combout\);

\fd_ctrl|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal6~0_combout\ = ( !\op_code_aux[4]~input_o\ & ( !\op_code_aux[5]~input_o\ & ( (\op_code_aux[2]~input_o\ & (!\op_code_aux[1]~input_o\ & (!\op_code_aux[0]~input_o\ & !\op_code_aux[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code_aux[2]~input_o\,
	datab => \ALT_INV_op_code_aux[1]~input_o\,
	datac => \ALT_INV_op_code_aux[0]~input_o\,
	datad => \ALT_INV_op_code_aux[3]~input_o\,
	datae => \ALT_INV_op_code_aux[4]~input_o\,
	dataf => \ALT_INV_op_code_aux[5]~input_o\,
	combout => \fd_ctrl|Equal6~0_combout\);

\ula_ctrl|ula_ctrl~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~2_combout\ = ( \ula_ctrl|ula_ctrl~1_combout\ & ( !\fd_ctrl|Equal6~0_combout\ & ( ((!\ula_ctrl|ula_ctrl~0_combout\) # (\fd_ctrl|op_code_aux~0_combout\)) # (\funct_aux[0]~input_o\) ) ) ) # ( !\ula_ctrl|ula_ctrl~1_combout\ & ( 
-- !\fd_ctrl|Equal6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_funct_aux[0]~input_o\,
	datac => \fd_ctrl|ALT_INV_op_code_aux~0_combout\,
	datad => \ula_ctrl|ALT_INV_ula_ctrl~0_combout\,
	datae => \ula_ctrl|ALT_INV_ula_ctrl~1_combout\,
	dataf => \fd_ctrl|ALT_INV_Equal6~0_combout\,
	combout => \ula_ctrl|ula_ctrl~2_combout\);

\funct_aux[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_funct_aux(3),
	o => \funct_aux[3]~input_o\);

\ula_ctrl|ula_ctrl~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~3_combout\ = (!\funct_aux[3]~input_o\ & !\funct_aux[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct_aux[3]~input_o\,
	datab => \ALT_INV_funct_aux[1]~input_o\,
	combout => \ula_ctrl|ula_ctrl~3_combout\);

\ula_ctrl|ula_ctrl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~4_combout\ = ( \fd_ctrl|Equal6~0_combout\ & ( \ula_ctrl|ula_ctrl~3_combout\ & ( (!\funct_aux[2]~input_o\ & (!\funct_aux[0]~input_o\ & (!\fd_ctrl|op_code_aux~0_combout\ & \ula_ctrl|ula_ctrl~0_combout\))) ) ) ) # ( 
-- !\fd_ctrl|Equal6~0_combout\ & ( \ula_ctrl|ula_ctrl~3_combout\ & ( ((!\funct_aux[2]~input_o\ & (!\funct_aux[0]~input_o\ & \ula_ctrl|ula_ctrl~0_combout\))) # (\fd_ctrl|op_code_aux~0_combout\) ) ) ) # ( !\fd_ctrl|Equal6~0_combout\ & ( 
-- !\ula_ctrl|ula_ctrl~3_combout\ & ( \fd_ctrl|op_code_aux~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111100011110000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct_aux[2]~input_o\,
	datab => \ALT_INV_funct_aux[0]~input_o\,
	datac => \fd_ctrl|ALT_INV_op_code_aux~0_combout\,
	datad => \ula_ctrl|ALT_INV_ula_ctrl~0_combout\,
	datae => \fd_ctrl|ALT_INV_Equal6~0_combout\,
	dataf => \ula_ctrl|ALT_INV_ula_ctrl~3_combout\,
	combout => \ula_ctrl|ula_ctrl~4_combout\);

\B_aux[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(0),
	o => \B_aux[0]~input_o\);

\A_aux[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(0),
	o => \A_aux[0]~input_o\);

\ula_ctrl|ula_ctrl[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[0]~5_combout\ = ( !\fd_ctrl|op_code_aux~0_combout\ & ( \ula_ctrl|ula_ctrl~0_combout\ & ( (!\funct_aux[3]~input_o\ & (!\funct_aux[1]~input_o\ & (\funct_aux[2]~input_o\ & \funct_aux[0]~input_o\))) # (\funct_aux[3]~input_o\ & 
-- (\funct_aux[1]~input_o\ & (!\funct_aux[2]~input_o\ & !\funct_aux[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct_aux[3]~input_o\,
	datab => \ALT_INV_funct_aux[1]~input_o\,
	datac => \ALT_INV_funct_aux[2]~input_o\,
	datad => \ALT_INV_funct_aux[0]~input_o\,
	datae => \fd_ctrl|ALT_INV_op_code_aux~0_combout\,
	dataf => \ula_ctrl|ALT_INV_ula_ctrl~0_combout\,
	combout => \ula_ctrl|ula_ctrl[0]~5_combout\);

\ula_ctrl|ula_ctrl[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[2]~6_combout\ = (!\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	combout => \ula_ctrl|ula_ctrl[2]~6_combout\);

\A_aux[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(4),
	o => \A_aux[4]~input_o\);

\B_aux[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(4),
	o => \B_aux[4]~input_o\);

\ula|slt|full_adder|c_out[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[4]~0_combout\ = (!\A_aux[4]~input_o\ & (!\B_aux[4]~input_o\ $ (((!\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010000000011100001000000001110000100000000111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_A_aux[4]~input_o\,
	datad => \ALT_INV_B_aux[4]~input_o\,
	combout => \ula|slt|full_adder|c_out[4]~0_combout\);

\A_aux[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(1),
	o => \A_aux[1]~input_o\);

\B_aux[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(1),
	o => \B_aux[1]~input_o\);

\ula|slt|full_adder|c_out[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[3]~1_combout\ = ( \A_aux[1]~input_o\ & ( \B_aux[1]~input_o\ & ( (!\ula_ctrl|ula_ctrl~2_combout\ & (!\ula_ctrl|ula_ctrl~4_combout\ & (\B_aux[0]~input_o\ & !\A_aux[0]~input_o\))) ) ) ) # ( !\A_aux[1]~input_o\ & ( \B_aux[1]~input_o\ 
-- & ( (!\ula_ctrl|ula_ctrl~2_combout\ & ((!\ula_ctrl|ula_ctrl~4_combout\) # ((!\B_aux[0]~input_o\ & !\A_aux[0]~input_o\)))) # (\ula_ctrl|ula_ctrl~2_combout\ & (((!\B_aux[0]~input_o\ & !\A_aux[0]~input_o\)))) ) ) ) # ( \A_aux[1]~input_o\ & ( 
-- !\B_aux[1]~input_o\ & ( (!\B_aux[0]~input_o\ & (!\A_aux[0]~input_o\ & ((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))) ) ) ) # ( !\A_aux[1]~input_o\ & ( !\B_aux[1]~input_o\ & ( (((\B_aux[0]~input_o\ & !\A_aux[0]~input_o\)) # 
-- (\ula_ctrl|ula_ctrl~4_combout\)) # (\ula_ctrl|ula_ctrl~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101110111011100000000000011111000100010000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[0]~input_o\,
	datad => \ALT_INV_A_aux[0]~input_o\,
	datae => \ALT_INV_A_aux[1]~input_o\,
	dataf => \ALT_INV_B_aux[1]~input_o\,
	combout => \ula|slt|full_adder|c_out[3]~1_combout\);

\A_aux[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(2),
	o => \A_aux[2]~input_o\);

\B_aux[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(2),
	o => \B_aux[2]~input_o\);

\A_aux[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(3),
	o => \A_aux[3]~input_o\);

\B_aux[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(3),
	o => \B_aux[3]~input_o\);

\ula|slt|full_adder|c_out[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[3]~2_combout\ = ( \A_aux[3]~input_o\ & ( \B_aux[3]~input_o\ & ( (!\A_aux[2]~input_o\ & (!\B_aux[2]~input_o\ $ (((!\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~4_combout\))))) ) ) ) # ( !\A_aux[3]~input_o\ & ( 
-- \B_aux[3]~input_o\ & ( (!\ula_ctrl|ula_ctrl~2_combout\ & ((!\ula_ctrl|ula_ctrl~4_combout\) # ((!\A_aux[2]~input_o\ & !\B_aux[2]~input_o\)))) # (\ula_ctrl|ula_ctrl~2_combout\ & (((!\A_aux[2]~input_o\ & !\B_aux[2]~input_o\)))) ) ) ) # ( \A_aux[3]~input_o\ & 
-- ( !\B_aux[3]~input_o\ & ( (!\A_aux[2]~input_o\ & (!\B_aux[2]~input_o\ $ (((!\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~4_combout\))))) ) ) ) # ( !\A_aux[3]~input_o\ & ( !\B_aux[3]~input_o\ & ( (((!\A_aux[2]~input_o\ & \B_aux[2]~input_o\)) # 
-- (\ula_ctrl|ula_ctrl~4_combout\)) # (\ula_ctrl|ula_ctrl~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111110111011100001000000011111000100010000111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_A_aux[2]~input_o\,
	datad => \ALT_INV_B_aux[2]~input_o\,
	datae => \ALT_INV_A_aux[3]~input_o\,
	dataf => \ALT_INV_B_aux[3]~input_o\,
	combout => \ula|slt|full_adder|c_out[3]~2_combout\);

\ula|slt|full_adder|c_out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[3]~3_combout\ = ( \A_aux[3]~input_o\ & ( \B_aux[3]~input_o\ & ( (((\A_aux[2]~input_o\ & !\B_aux[2]~input_o\)) # (\ula_ctrl|ula_ctrl~4_combout\)) # (\ula_ctrl|ula_ctrl~2_combout\) ) ) ) # ( !\A_aux[3]~input_o\ & ( 
-- \B_aux[3]~input_o\ & ( (\A_aux[2]~input_o\ & (\B_aux[2]~input_o\ & ((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))) ) ) ) # ( \A_aux[3]~input_o\ & ( !\B_aux[3]~input_o\ & ( (!\ula_ctrl|ula_ctrl~2_combout\ & 
-- ((!\ula_ctrl|ula_ctrl~4_combout\) # ((\A_aux[2]~input_o\ & \B_aux[2]~input_o\)))) # (\ula_ctrl|ula_ctrl~2_combout\ & (((\A_aux[2]~input_o\ & \B_aux[2]~input_o\)))) ) ) ) # ( !\A_aux[3]~input_o\ & ( !\B_aux[3]~input_o\ & ( (!\ula_ctrl|ula_ctrl~2_combout\ & 
-- (!\ula_ctrl|ula_ctrl~4_combout\ & (\A_aux[2]~input_o\ & !\B_aux[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000100010001000111100000000000001110111111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_A_aux[2]~input_o\,
	datad => \ALT_INV_B_aux[2]~input_o\,
	datae => \ALT_INV_A_aux[3]~input_o\,
	dataf => \ALT_INV_B_aux[3]~input_o\,
	combout => \ula|slt|full_adder|c_out[3]~3_combout\);

\ula|mux4|Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~0_combout\ = (\A_aux[4]~input_o\ & (!\B_aux[4]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000111000010000000011100001000000001110000100000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_A_aux[4]~input_o\,
	datad => \ALT_INV_B_aux[4]~input_o\,
	combout => \ula|mux4|Mux27~0_combout\);

\A_aux[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(5),
	o => \A_aux[5]~input_o\);

\B_aux[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(5),
	o => \B_aux[5]~input_o\);

\ula|slt|full_adder|c_out[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[5]~4_combout\ = (!\A_aux[5]~input_o\ & (!\B_aux[5]~input_o\ $ (((!\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010000000011100001000000001110000100000000111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_A_aux[5]~input_o\,
	datad => \ALT_INV_B_aux[5]~input_o\,
	combout => \ula|slt|full_adder|c_out[5]~4_combout\);

\ula|slt|full_adder|c_out[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[5]~5_combout\ = ( \ula|mux4|Mux27~0_combout\ & ( !\ula|slt|full_adder|c_out[5]~4_combout\ ) ) # ( !\ula|mux4|Mux27~0_combout\ & ( !\ula|slt|full_adder|c_out[5]~4_combout\ & ( (!\ula|slt|full_adder|c_out[4]~0_combout\ & 
-- (((!\ula|slt|full_adder|c_out[3]~1_combout\ & !\ula|slt|full_adder|c_out[3]~2_combout\)) # (\ula|slt|full_adder|c_out[3]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010101010111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[4]~0_combout\,
	datab => \ula|slt|full_adder|ALT_INV_c_out[3]~1_combout\,
	datac => \ula|slt|full_adder|ALT_INV_c_out[3]~2_combout\,
	datad => \ula|slt|full_adder|ALT_INV_c_out[3]~3_combout\,
	datae => \ula|mux4|ALT_INV_Mux27~0_combout\,
	dataf => \ula|slt|full_adder|ALT_INV_c_out[5]~4_combout\,
	combout => \ula|slt|full_adder|c_out[5]~5_combout\);

\ula|mux4|Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~0_combout\ = (\A_aux[5]~input_o\ & (!\B_aux[5]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000111000010000000011100001000000001110000100000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_A_aux[5]~input_o\,
	datad => \ALT_INV_B_aux[5]~input_o\,
	combout => \ula|mux4|Mux26~0_combout\);

\A_aux[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(6),
	o => \A_aux[6]~input_o\);

\B_aux[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(6),
	o => \B_aux[6]~input_o\);

\ula|mux2B|Y[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[6]~0_combout\ = !\B_aux[6]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[6]~input_o\,
	combout => \ula|mux2B|Y[6]~0_combout\);

\A_aux[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(7),
	o => \A_aux[7]~input_o\);

\B_aux[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(7),
	o => \B_aux[7]~input_o\);

\ula|mux2B|Y[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[7]~1_combout\ = !\B_aux[7]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[7]~input_o\,
	combout => \ula|mux2B|Y[7]~1_combout\);

\ula|slt|full_adder|c_out[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[7]~6_combout\ = ( !\A_aux[7]~input_o\ & ( \ula|mux2B|Y[7]~1_combout\ & ( (!\A_aux[6]~input_o\ & ((!\ula|mux2B|Y[6]~0_combout\) # ((!\ula|slt|full_adder|c_out[5]~5_combout\ & !\ula|mux4|Mux26~0_combout\)))) # (\A_aux[6]~input_o\ & 
-- (!\ula|slt|full_adder|c_out[5]~5_combout\ & (!\ula|mux4|Mux26~0_combout\ & !\ula|mux2B|Y[6]~0_combout\))) ) ) ) # ( \A_aux[7]~input_o\ & ( !\ula|mux2B|Y[7]~1_combout\ & ( (!\A_aux[6]~input_o\ & ((!\ula|mux2B|Y[6]~0_combout\) # 
-- ((!\ula|slt|full_adder|c_out[5]~5_combout\ & !\ula|mux4|Mux26~0_combout\)))) # (\A_aux[6]~input_o\ & (!\ula|slt|full_adder|c_out[5]~5_combout\ & (!\ula|mux4|Mux26~0_combout\ & !\ula|mux2B|Y[6]~0_combout\))) ) ) ) # ( !\A_aux[7]~input_o\ & ( 
-- !\ula|mux2B|Y[7]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[5]~5_combout\,
	datab => \ula|mux4|ALT_INV_Mux26~0_combout\,
	datac => \ALT_INV_A_aux[6]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[6]~0_combout\,
	datae => \ALT_INV_A_aux[7]~input_o\,
	dataf => \ula|mux2B|ALT_INV_Y[7]~1_combout\,
	combout => \ula|slt|full_adder|c_out[7]~6_combout\);

\A_aux[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(8),
	o => \A_aux[8]~input_o\);

\B_aux[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(8),
	o => \B_aux[8]~input_o\);

\ula|mux2B|Y[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[8]~2_combout\ = !\B_aux[8]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[8]~input_o\,
	combout => \ula|mux2B|Y[8]~2_combout\);

\A_aux[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(9),
	o => \A_aux[9]~input_o\);

\B_aux[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(9),
	o => \B_aux[9]~input_o\);

\ula|slt|full_adder|c_out[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[9]~7_combout\ = (!\A_aux[9]~input_o\ & (!\B_aux[9]~input_o\ $ (((!\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010000000011100001000000001110000100000000111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_A_aux[9]~input_o\,
	datad => \ALT_INV_B_aux[9]~input_o\,
	combout => \ula|slt|full_adder|c_out[9]~7_combout\);

\ula|mux4|Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~0_combout\ = (\A_aux[9]~input_o\ & (!\B_aux[9]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000111000010000000011100001000000001110000100000000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_A_aux[9]~input_o\,
	datad => \ALT_INV_B_aux[9]~input_o\,
	combout => \ula|mux4|Mux22~0_combout\);

\ula|slt|full_adder|c_out[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[9]~8_combout\ = ( !\ula|mux4|Mux22~0_combout\ & ( ((!\ula|slt|full_adder|c_out[7]~6_combout\ & (!\A_aux[8]~input_o\ & !\ula|mux2B|Y[8]~2_combout\)) # (\ula|slt|full_adder|c_out[7]~6_combout\ & ((!\A_aux[8]~input_o\) # 
-- (!\ula|mux2B|Y[8]~2_combout\)))) # (\ula|slt|full_adder|c_out[9]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010011111111000000000000000011010100111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[7]~6_combout\,
	datab => \ALT_INV_A_aux[8]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[8]~2_combout\,
	datad => \ula|slt|full_adder|ALT_INV_c_out[9]~7_combout\,
	datae => \ula|mux4|ALT_INV_Mux22~0_combout\,
	combout => \ula|slt|full_adder|c_out[9]~8_combout\);

\A_aux[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(10),
	o => \A_aux[10]~input_o\);

\B_aux[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(10),
	o => \B_aux[10]~input_o\);

\ula|mux2B|Y[10]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[10]~3_combout\ = !\B_aux[10]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[10]~input_o\,
	combout => \ula|mux2B|Y[10]~3_combout\);

\A_aux[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(11),
	o => \A_aux[11]~input_o\);

\B_aux[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(11),
	o => \B_aux[11]~input_o\);

\ula|mux2B|Y[11]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[11]~4_combout\ = !\B_aux[11]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[11]~input_o\,
	combout => \ula|mux2B|Y[11]~4_combout\);

\ula|slt|full_adder|c_out[11]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[11]~9_combout\ = ( \ula|mux2B|Y[11]~4_combout\ & ( ((!\ula|slt|full_adder|c_out[9]~8_combout\ & ((\ula|mux2B|Y[10]~3_combout\) # (\A_aux[10]~input_o\))) # (\ula|slt|full_adder|c_out[9]~8_combout\ & (\A_aux[10]~input_o\ & 
-- \ula|mux2B|Y[10]~3_combout\))) # (\A_aux[11]~input_o\) ) ) # ( !\ula|mux2B|Y[11]~4_combout\ & ( (\A_aux[11]~input_o\ & ((!\ula|slt|full_adder|c_out[9]~8_combout\ & ((\ula|mux2B|Y[10]~3_combout\) # (\A_aux[10]~input_o\))) # 
-- (\ula|slt|full_adder|c_out[9]~8_combout\ & (\A_aux[10]~input_o\ & \ula|mux2B|Y[10]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[9]~8_combout\,
	datab => \ALT_INV_A_aux[10]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[10]~3_combout\,
	datad => \ALT_INV_A_aux[11]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[11]~4_combout\,
	combout => \ula|slt|full_adder|c_out[11]~9_combout\);

\A_aux[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(12),
	o => \A_aux[12]~input_o\);

\B_aux[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(12),
	o => \B_aux[12]~input_o\);

\ula|mux2B|Y[12]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[12]~5_combout\ = !\B_aux[12]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[12]~input_o\,
	combout => \ula|mux2B|Y[12]~5_combout\);

\A_aux[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(13),
	o => \A_aux[13]~input_o\);

\B_aux[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(13),
	o => \B_aux[13]~input_o\);

\ula|mux2B|Y[13]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[13]~6_combout\ = !\B_aux[13]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[13]~input_o\,
	combout => \ula|mux2B|Y[13]~6_combout\);

\A_aux[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(14),
	o => \A_aux[14]~input_o\);

\B_aux[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(14),
	o => \B_aux[14]~input_o\);

\ula|slt|full_adder|c_out[14]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[14]~10_combout\ = (!\A_aux[14]~input_o\ & (!\B_aux[14]~input_o\ $ (((!\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000010000000011100001000000001110000100000000111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_A_aux[14]~input_o\,
	datad => \ALT_INV_B_aux[14]~input_o\,
	combout => \ula|slt|full_adder|c_out[14]~10_combout\);

\ula|slt|full_adder|c_out[14]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[14]~11_combout\ = ( \ula|mux2B|Y[13]~6_combout\ & ( !\ula|slt|full_adder|c_out[14]~10_combout\ & ( ((!\ula|slt|full_adder|c_out[11]~9_combout\ & (\A_aux[12]~input_o\ & \ula|mux2B|Y[12]~5_combout\)) # 
-- (\ula|slt|full_adder|c_out[11]~9_combout\ & ((\ula|mux2B|Y[12]~5_combout\) # (\A_aux[12]~input_o\)))) # (\A_aux[13]~input_o\) ) ) ) # ( !\ula|mux2B|Y[13]~6_combout\ & ( !\ula|slt|full_adder|c_out[14]~10_combout\ & ( (\A_aux[13]~input_o\ & 
-- ((!\ula|slt|full_adder|c_out[11]~9_combout\ & (\A_aux[12]~input_o\ & \ula|mux2B|Y[12]~5_combout\)) # (\ula|slt|full_adder|c_out[11]~9_combout\ & ((\ula|mux2B|Y[12]~5_combout\) # (\A_aux[12]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[11]~9_combout\,
	datab => \ALT_INV_A_aux[12]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[12]~5_combout\,
	datad => \ALT_INV_A_aux[13]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[13]~6_combout\,
	dataf => \ula|slt|full_adder|ALT_INV_c_out[14]~10_combout\,
	combout => \ula|slt|full_adder|c_out[14]~11_combout\);

\ula|mux4|Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~0_combout\ = (\A_aux[14]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[14]~input_o\,
	datac => \ALT_INV_B_aux[14]~input_o\,
	combout => \ula|mux4|Mux17~0_combout\);

\A_aux[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(15),
	o => \A_aux[15]~input_o\);

\B_aux[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(15),
	o => \B_aux[15]~input_o\);

\ula|mux2B|Y[15]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[15]~7_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[15]~input_o\,
	combout => \ula|mux2B|Y[15]~7_combout\);

\A_aux[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(16),
	o => \A_aux[16]~input_o\);

\B_aux[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(16),
	o => \B_aux[16]~input_o\);

\ula|mux2B|Y[16]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[16]~8_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[16]~input_o\,
	combout => \ula|mux2B|Y[16]~8_combout\);

\ula|slt|full_adder|c_out[16]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[16]~12_combout\ = ( !\A_aux[16]~input_o\ & ( \ula|mux2B|Y[16]~8_combout\ & ( (!\A_aux[15]~input_o\ & ((!\ula|mux2B|Y[15]~7_combout\) # ((!\ula|slt|full_adder|c_out[14]~11_combout\ & !\ula|mux4|Mux17~0_combout\)))) # 
-- (\A_aux[15]~input_o\ & (!\ula|slt|full_adder|c_out[14]~11_combout\ & (!\ula|mux4|Mux17~0_combout\ & !\ula|mux2B|Y[15]~7_combout\))) ) ) ) # ( \A_aux[16]~input_o\ & ( !\ula|mux2B|Y[16]~8_combout\ & ( (!\A_aux[15]~input_o\ & ((!\ula|mux2B|Y[15]~7_combout\) 
-- # ((!\ula|slt|full_adder|c_out[14]~11_combout\ & !\ula|mux4|Mux17~0_combout\)))) # (\A_aux[15]~input_o\ & (!\ula|slt|full_adder|c_out[14]~11_combout\ & (!\ula|mux4|Mux17~0_combout\ & !\ula|mux2B|Y[15]~7_combout\))) ) ) ) # ( !\A_aux[16]~input_o\ & ( 
-- !\ula|mux2B|Y[16]~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[14]~11_combout\,
	datab => \ula|mux4|ALT_INV_Mux17~0_combout\,
	datac => \ALT_INV_A_aux[15]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[15]~7_combout\,
	datae => \ALT_INV_A_aux[16]~input_o\,
	dataf => \ula|mux2B|ALT_INV_Y[16]~8_combout\,
	combout => \ula|slt|full_adder|c_out[16]~12_combout\);

\A_aux[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(17),
	o => \A_aux[17]~input_o\);

\B_aux[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(17),
	o => \B_aux[17]~input_o\);

\ula|mux2B|Y[17]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[17]~9_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[17]~input_o\,
	combout => \ula|mux2B|Y[17]~9_combout\);

\A_aux[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(18),
	o => \A_aux[18]~input_o\);

\B_aux[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(18),
	o => \B_aux[18]~input_o\);

\ula|mux2B|Y[18]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[18]~10_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[18]~input_o\,
	combout => \ula|mux2B|Y[18]~10_combout\);

\A_aux[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(19),
	o => \A_aux[19]~input_o\);

\B_aux[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(19),
	o => \B_aux[19]~input_o\);

\ula|slt|full_adder|c_out[19]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[19]~13_combout\ = (!\A_aux[19]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (\B_aux[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[19]~input_o\,
	datac => \ALT_INV_B_aux[19]~input_o\,
	combout => \ula|slt|full_adder|c_out[19]~13_combout\);

\ula|slt|full_adder|c_out[19]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[19]~14_combout\ = ( \ula|mux2B|Y[18]~10_combout\ & ( !\ula|slt|full_adder|c_out[19]~13_combout\ & ( ((!\ula|slt|full_adder|c_out[16]~12_combout\ & ((\ula|mux2B|Y[17]~9_combout\) # (\A_aux[17]~input_o\))) # 
-- (\ula|slt|full_adder|c_out[16]~12_combout\ & (\A_aux[17]~input_o\ & \ula|mux2B|Y[17]~9_combout\))) # (\A_aux[18]~input_o\) ) ) ) # ( !\ula|mux2B|Y[18]~10_combout\ & ( !\ula|slt|full_adder|c_out[19]~13_combout\ & ( (\A_aux[18]~input_o\ & 
-- ((!\ula|slt|full_adder|c_out[16]~12_combout\ & ((\ula|mux2B|Y[17]~9_combout\) # (\A_aux[17]~input_o\))) # (\ula|slt|full_adder|c_out[16]~12_combout\ & (\A_aux[17]~input_o\ & \ula|mux2B|Y[17]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[16]~12_combout\,
	datab => \ALT_INV_A_aux[17]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[17]~9_combout\,
	datad => \ALT_INV_A_aux[18]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[18]~10_combout\,
	dataf => \ula|slt|full_adder|ALT_INV_c_out[19]~13_combout\,
	combout => \ula|slt|full_adder|c_out[19]~14_combout\);

\ula|mux4|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~0_combout\ = (\A_aux[19]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[19]~input_o\,
	datac => \ALT_INV_B_aux[19]~input_o\,
	combout => \ula|mux4|Mux12~0_combout\);

\A_aux[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(20),
	o => \A_aux[20]~input_o\);

\B_aux[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(20),
	o => \B_aux[20]~input_o\);

\ula|mux2B|Y[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[20]~11_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[20]~input_o\,
	combout => \ula|mux2B|Y[20]~11_combout\);

\A_aux[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(21),
	o => \A_aux[21]~input_o\);

\B_aux[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(21),
	o => \B_aux[21]~input_o\);

\ula|mux2B|Y[21]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[21]~12_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[21]~input_o\,
	combout => \ula|mux2B|Y[21]~12_combout\);

\ula|slt|full_adder|c_out[21]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[21]~15_combout\ = ( !\A_aux[21]~input_o\ & ( \ula|mux2B|Y[21]~12_combout\ & ( (!\A_aux[20]~input_o\ & ((!\ula|mux2B|Y[20]~11_combout\) # ((!\ula|slt|full_adder|c_out[19]~14_combout\ & !\ula|mux4|Mux12~0_combout\)))) # 
-- (\A_aux[20]~input_o\ & (!\ula|slt|full_adder|c_out[19]~14_combout\ & (!\ula|mux4|Mux12~0_combout\ & !\ula|mux2B|Y[20]~11_combout\))) ) ) ) # ( \A_aux[21]~input_o\ & ( !\ula|mux2B|Y[21]~12_combout\ & ( (!\A_aux[20]~input_o\ & 
-- ((!\ula|mux2B|Y[20]~11_combout\) # ((!\ula|slt|full_adder|c_out[19]~14_combout\ & !\ula|mux4|Mux12~0_combout\)))) # (\A_aux[20]~input_o\ & (!\ula|slt|full_adder|c_out[19]~14_combout\ & (!\ula|mux4|Mux12~0_combout\ & !\ula|mux2B|Y[20]~11_combout\))) ) ) ) 
-- # ( !\A_aux[21]~input_o\ & ( !\ula|mux2B|Y[21]~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[19]~14_combout\,
	datab => \ula|mux4|ALT_INV_Mux12~0_combout\,
	datac => \ALT_INV_A_aux[20]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[20]~11_combout\,
	datae => \ALT_INV_A_aux[21]~input_o\,
	dataf => \ula|mux2B|ALT_INV_Y[21]~12_combout\,
	combout => \ula|slt|full_adder|c_out[21]~15_combout\);

\A_aux[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(22),
	o => \A_aux[22]~input_o\);

\B_aux[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(22),
	o => \B_aux[22]~input_o\);

\ula|mux2B|Y[22]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[22]~13_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[22]~input_o\,
	combout => \ula|mux2B|Y[22]~13_combout\);

\A_aux[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(23),
	o => \A_aux[23]~input_o\);

\B_aux[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(23),
	o => \B_aux[23]~input_o\);

\ula|mux2B|Y[23]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[23]~14_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[23]~input_o\,
	combout => \ula|mux2B|Y[23]~14_combout\);

\A_aux[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(24),
	o => \A_aux[24]~input_o\);

\B_aux[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(24),
	o => \B_aux[24]~input_o\);

\ula|slt|full_adder|c_out[24]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[24]~16_combout\ = (!\A_aux[24]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (\B_aux[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[24]~input_o\,
	datac => \ALT_INV_B_aux[24]~input_o\,
	combout => \ula|slt|full_adder|c_out[24]~16_combout\);

\ula|slt|full_adder|c_out[24]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[24]~17_combout\ = ( \ula|mux2B|Y[23]~14_combout\ & ( !\ula|slt|full_adder|c_out[24]~16_combout\ & ( ((!\ula|slt|full_adder|c_out[21]~15_combout\ & ((\ula|mux2B|Y[22]~13_combout\) # (\A_aux[22]~input_o\))) # 
-- (\ula|slt|full_adder|c_out[21]~15_combout\ & (\A_aux[22]~input_o\ & \ula|mux2B|Y[22]~13_combout\))) # (\A_aux[23]~input_o\) ) ) ) # ( !\ula|mux2B|Y[23]~14_combout\ & ( !\ula|slt|full_adder|c_out[24]~16_combout\ & ( (\A_aux[23]~input_o\ & 
-- ((!\ula|slt|full_adder|c_out[21]~15_combout\ & ((\ula|mux2B|Y[22]~13_combout\) # (\A_aux[22]~input_o\))) # (\ula|slt|full_adder|c_out[21]~15_combout\ & (\A_aux[22]~input_o\ & \ula|mux2B|Y[22]~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[21]~15_combout\,
	datab => \ALT_INV_A_aux[22]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[22]~13_combout\,
	datad => \ALT_INV_A_aux[23]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[23]~14_combout\,
	dataf => \ula|slt|full_adder|ALT_INV_c_out[24]~16_combout\,
	combout => \ula|slt|full_adder|c_out[24]~17_combout\);

\ula|mux4|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~0_combout\ = (\A_aux[24]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[24]~input_o\,
	datac => \ALT_INV_B_aux[24]~input_o\,
	combout => \ula|mux4|Mux7~0_combout\);

\A_aux[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(25),
	o => \A_aux[25]~input_o\);

\B_aux[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(25),
	o => \B_aux[25]~input_o\);

\ula|mux2B|Y[25]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[25]~15_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[25]~input_o\,
	combout => \ula|mux2B|Y[25]~15_combout\);

\A_aux[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(26),
	o => \A_aux[26]~input_o\);

\B_aux[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(26),
	o => \B_aux[26]~input_o\);

\ula|mux2B|Y[26]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[26]~16_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[26]~input_o\,
	combout => \ula|mux2B|Y[26]~16_combout\);

\ula|slt|full_adder|c_out[26]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[26]~18_combout\ = ( !\A_aux[26]~input_o\ & ( \ula|mux2B|Y[26]~16_combout\ & ( (!\A_aux[25]~input_o\ & ((!\ula|mux2B|Y[25]~15_combout\) # ((!\ula|slt|full_adder|c_out[24]~17_combout\ & !\ula|mux4|Mux7~0_combout\)))) # 
-- (\A_aux[25]~input_o\ & (!\ula|slt|full_adder|c_out[24]~17_combout\ & (!\ula|mux4|Mux7~0_combout\ & !\ula|mux2B|Y[25]~15_combout\))) ) ) ) # ( \A_aux[26]~input_o\ & ( !\ula|mux2B|Y[26]~16_combout\ & ( (!\A_aux[25]~input_o\ & 
-- ((!\ula|mux2B|Y[25]~15_combout\) # ((!\ula|slt|full_adder|c_out[24]~17_combout\ & !\ula|mux4|Mux7~0_combout\)))) # (\A_aux[25]~input_o\ & (!\ula|slt|full_adder|c_out[24]~17_combout\ & (!\ula|mux4|Mux7~0_combout\ & !\ula|mux2B|Y[25]~15_combout\))) ) ) ) # 
-- ( !\A_aux[26]~input_o\ & ( !\ula|mux2B|Y[26]~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[24]~17_combout\,
	datab => \ula|mux4|ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_A_aux[25]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[25]~15_combout\,
	datae => \ALT_INV_A_aux[26]~input_o\,
	dataf => \ula|mux2B|ALT_INV_Y[26]~16_combout\,
	combout => \ula|slt|full_adder|c_out[26]~18_combout\);

\A_aux[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(27),
	o => \A_aux[27]~input_o\);

\B_aux[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(27),
	o => \B_aux[27]~input_o\);

\A_aux[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(28),
	o => \A_aux[28]~input_o\);

\B_aux[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(28),
	o => \B_aux[28]~input_o\);

\ula|slt|full_adder|c_out[28]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[28]~19_combout\ = ( \A_aux[28]~input_o\ & ( \B_aux[28]~input_o\ & ( (!\ula_ctrl|ula_ctrl[2]~6_combout\) # ((!\ula|slt|full_adder|c_out[26]~18_combout\ & ((!\B_aux[27]~input_o\) # (\A_aux[27]~input_o\))) # 
-- (\ula|slt|full_adder|c_out[26]~18_combout\ & (\A_aux[27]~input_o\ & !\B_aux[27]~input_o\))) ) ) ) # ( !\A_aux[28]~input_o\ & ( \B_aux[28]~input_o\ & ( (!\ula_ctrl|ula_ctrl[2]~6_combout\ & ((!\ula|slt|full_adder|c_out[26]~18_combout\ & 
-- ((\B_aux[27]~input_o\) # (\A_aux[27]~input_o\))) # (\ula|slt|full_adder|c_out[26]~18_combout\ & (\A_aux[27]~input_o\ & \B_aux[27]~input_o\)))) ) ) ) # ( \A_aux[28]~input_o\ & ( !\B_aux[28]~input_o\ & ( ((!\ula|slt|full_adder|c_out[26]~18_combout\ & 
-- ((\B_aux[27]~input_o\) # (\A_aux[27]~input_o\))) # (\ula|slt|full_adder|c_out[26]~18_combout\ & (\A_aux[27]~input_o\ & \B_aux[27]~input_o\))) # (\ula_ctrl|ula_ctrl[2]~6_combout\) ) ) ) # ( !\A_aux[28]~input_o\ & ( !\B_aux[28]~input_o\ & ( 
-- (\ula_ctrl|ula_ctrl[2]~6_combout\ & ((!\ula|slt|full_adder|c_out[26]~18_combout\ & ((!\B_aux[27]~input_o\) # (\A_aux[27]~input_o\))) # (\ula|slt|full_adder|c_out[26]~18_combout\ & (\A_aux[27]~input_o\ & !\B_aux[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000100010111011101111100001000100010101110111110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ula|slt|full_adder|ALT_INV_c_out[26]~18_combout\,
	datac => \ALT_INV_A_aux[27]~input_o\,
	datad => \ALT_INV_B_aux[27]~input_o\,
	datae => \ALT_INV_A_aux[28]~input_o\,
	dataf => \ALT_INV_B_aux[28]~input_o\,
	combout => \ula|slt|full_adder|c_out[28]~19_combout\);

\A_aux[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(29),
	o => \A_aux[29]~input_o\);

\B_aux[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(29),
	o => \B_aux[29]~input_o\);

\ula|mux2B|Y[29]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[29]~17_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[29]~input_o\,
	combout => \ula|mux2B|Y[29]~17_combout\);

\A_aux[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(30),
	o => \A_aux[30]~input_o\);

\B_aux[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(30),
	o => \B_aux[30]~input_o\);

\ula|slt|full_adder|c_out[30]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|full_adder|c_out[30]~20_combout\ = (!\A_aux[30]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (\B_aux[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[30]~input_o\,
	datac => \ALT_INV_B_aux[30]~input_o\,
	combout => \ula|slt|full_adder|c_out[30]~20_combout\);

\A_aux[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A_aux(31),
	o => \A_aux[31]~input_o\);

\B_aux[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B_aux(31),
	o => \B_aux[31]~input_o\);

\ula|mux4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~0_combout\ = (\A_aux[31]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[31]~input_o\,
	datac => \ALT_INV_B_aux[31]~input_o\,
	combout => \ula|mux4|Mux0~0_combout\);

\ula|slt|result[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|result[0]~0_combout\ = ( \B_aux[31]~input_o\ & ( (!\ula_ctrl|ula_ctrl[2]~6_combout\ & (\A_aux[30]~input_o\ & (\B_aux[30]~input_o\))) # (\ula_ctrl|ula_ctrl[2]~6_combout\ & ((!\A_aux[31]~input_o\) # ((\A_aux[30]~input_o\ & !\B_aux[30]~input_o\)))) 
-- ) ) # ( !\B_aux[31]~input_o\ & ( (!\ula_ctrl|ula_ctrl[2]~6_combout\ & ((!\A_aux[31]~input_o\) # ((\A_aux[30]~input_o\ & \B_aux[30]~input_o\)))) # (\ula_ctrl|ula_ctrl[2]~6_combout\ & (\A_aux[30]~input_o\ & (!\B_aux[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101000010010010101110001001010111010000100100101011100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[30]~input_o\,
	datac => \ALT_INV_B_aux[30]~input_o\,
	datad => \ALT_INV_A_aux[31]~input_o\,
	datae => \ALT_INV_B_aux[31]~input_o\,
	combout => \ula|slt|result[0]~0_combout\);

\ula|slt|result[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|slt|result[0]~1_combout\ = ( !\ula|mux4|Mux0~0_combout\ & ( \ula|slt|result[0]~0_combout\ ) ) # ( !\ula|mux4|Mux0~0_combout\ & ( !\ula|slt|result[0]~0_combout\ & ( (!\ula|slt|full_adder|c_out[30]~20_combout\ & 
-- ((!\ula|slt|full_adder|c_out[28]~19_combout\ & (\A_aux[29]~input_o\ & \ula|mux2B|Y[29]~17_combout\)) # (\ula|slt|full_adder|c_out[28]~19_combout\ & ((\ula|mux2B|Y[29]~17_combout\) # (\A_aux[29]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[28]~19_combout\,
	datab => \ALT_INV_A_aux[29]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[29]~17_combout\,
	datad => \ula|slt|full_adder|ALT_INV_c_out[30]~20_combout\,
	datae => \ula|mux4|ALT_INV_Mux0~0_combout\,
	dataf => \ula|slt|ALT_INV_result[0]~0_combout\,
	combout => \ula|slt|result[0]~1_combout\);

\ula|mux4|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux31~0_combout\ = ( \ula_ctrl|ula_ctrl[0]~5_combout\ & ( \ula|slt|result[0]~1_combout\ & ( (\ula_ctrl|ula_ctrl~2_combout\ & (!\ula_ctrl|ula_ctrl~4_combout\ & ((\A_aux[0]~input_o\) # (\B_aux[0]~input_o\)))) ) ) ) # ( 
-- !\ula_ctrl|ula_ctrl[0]~5_combout\ & ( \ula|slt|result[0]~1_combout\ & ( (!\B_aux[0]~input_o\ & (\A_aux[0]~input_o\ & ((!\ula_ctrl|ula_ctrl~2_combout\) # (\ula_ctrl|ula_ctrl~4_combout\)))) # (\B_aux[0]~input_o\ & (!\A_aux[0]~input_o\ $ 
-- (((\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~4_combout\))))) ) ) ) # ( \ula_ctrl|ula_ctrl[0]~5_combout\ & ( !\ula|slt|result[0]~1_combout\ & ( (!\ula_ctrl|ula_ctrl~2_combout\) # (((\A_aux[0]~input_o\) # (\B_aux[0]~input_o\)) # 
-- (\ula_ctrl|ula_ctrl~4_combout\)) ) ) ) # ( !\ula_ctrl|ula_ctrl[0]~5_combout\ & ( !\ula|slt|result[0]~1_combout\ & ( (!\B_aux[0]~input_o\ & (\A_aux[0]~input_o\ & ((!\ula_ctrl|ula_ctrl~2_combout\) # (\ula_ctrl|ula_ctrl~4_combout\)))) # (\B_aux[0]~input_o\ & 
-- (!\A_aux[0]~input_o\ $ (((\ula_ctrl|ula_ctrl~2_combout\ & !\ula_ctrl|ula_ctrl~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101110110100101111111111111100001011101101000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[0]~input_o\,
	datad => \ALT_INV_A_aux[0]~input_o\,
	datae => \ula_ctrl|ALT_INV_ula_ctrl[0]~5_combout\,
	dataf => \ula|slt|ALT_INV_result[0]~1_combout\,
	combout => \ula|mux4|Mux31~0_combout\);

\ula_ctrl|ula_ctrl~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~7_combout\ = (!\fd_ctrl|op_code_aux~0_combout\ & \ula_ctrl|ula_ctrl~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fd_ctrl|ALT_INV_op_code_aux~0_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~0_combout\,
	combout => \ula_ctrl|ula_ctrl~7_combout\);

\ula_ctrl|ula_ctrl~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl~8_combout\ = (!\funct_aux[3]~input_o\ & (!\funct_aux[0]~input_o\ & (\ula_ctrl|ula_ctrl~7_combout\ & \ula_ctrl|ula_ctrl~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct_aux[3]~input_o\,
	datab => \ALT_INV_funct_aux[0]~input_o\,
	datac => \ula_ctrl|ALT_INV_ula_ctrl~7_combout\,
	datad => \ula_ctrl|ALT_INV_ula_ctrl~1_combout\,
	combout => \ula_ctrl|ula_ctrl~8_combout\);

\ula|mux4|Mux29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~0_combout\ = (\funct_aux[2]~input_o\ & (\funct_aux[0]~input_o\ & \ula_ctrl|ula_ctrl~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct_aux[2]~input_o\,
	datab => \ALT_INV_funct_aux[0]~input_o\,
	datac => \ula_ctrl|ALT_INV_ula_ctrl~3_combout\,
	combout => \ula|mux4|Mux29~0_combout\);

\ula|mux4|Mux29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~1_combout\ = ( \ula|mux4|Mux29~0_combout\ & ( (!\ula_ctrl|ula_ctrl~7_combout\ & (!\ula_ctrl|ula_ctrl~8_combout\ & (!\fd_ctrl|Equal6~0_combout\ & !\ula_ctrl|ula_ctrl~4_combout\))) ) ) # ( !\ula|mux4|Mux29~0_combout\ & ( 
-- (!\ula_ctrl|ula_ctrl~8_combout\ & (!\fd_ctrl|Equal6~0_combout\ & !\ula_ctrl|ula_ctrl~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000100000000000000011000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~7_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~8_combout\,
	datac => \fd_ctrl|ALT_INV_Equal6~0_combout\,
	datad => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~0_combout\,
	combout => \ula|mux4|Mux29~1_combout\);

\ula|mux4|Mux29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~2_combout\ = ( \ula_ctrl|ula_ctrl~7_combout\ & ( (!\funct_aux[3]~input_o\ & (!\funct_aux[1]~input_o\ & (\funct_aux[2]~input_o\ & \funct_aux[0]~input_o\))) # (\funct_aux[3]~input_o\ & (\funct_aux[1]~input_o\ & (!\funct_aux[2]~input_o\ & 
-- !\funct_aux[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000100000000000000000000001000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_funct_aux[3]~input_o\,
	datab => \ALT_INV_funct_aux[1]~input_o\,
	datac => \ALT_INV_funct_aux[2]~input_o\,
	datad => \ALT_INV_funct_aux[0]~input_o\,
	datae => \ula_ctrl|ALT_INV_ula_ctrl~7_combout\,
	combout => \ula|mux4|Mux29~2_combout\);

\ula|mux4|Mux29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~3_combout\ = (!\ula_ctrl|ula_ctrl~8_combout\ & (!\fd_ctrl|Equal6~0_combout\ & (!\ula_ctrl|ula_ctrl~4_combout\ & \ula|mux4|Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~8_combout\,
	datab => \fd_ctrl|ALT_INV_Equal6~0_combout\,
	datac => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~2_combout\,
	combout => \ula|mux4|Mux29~3_combout\);

\ula|full_adder|c_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[0]~0_combout\ = (!\B_aux[0]~input_o\ & ((\ula_ctrl|ula_ctrl[2]~6_combout\))) # (\B_aux[0]~input_o\ & (\A_aux[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_aux[0]~input_o\,
	datab => \ALT_INV_A_aux[0]~input_o\,
	datac => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	combout => \ula|full_adder|c_out[0]~0_combout\);

\ula|mux4|Mux30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux30~0_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[0]~0_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[1]~input_o\)) # (\A_aux[1]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[0]~0_combout\ & ( (!\A_aux[1]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (\B_aux[1]~input_o\)))) # (\A_aux[1]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- ((!\B_aux[1]~input_o\)))) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[0]~0_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[1]~input_o\)) # (\A_aux[1]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[0]~0_combout\ & ( (!\A_aux[1]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[1]~input_o\)))) # (\A_aux[1]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- (!\B_aux[1]~input_o\ $ (!\ula|mux4|Mux29~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100010010011110110000000010010110000100100111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[1]~input_o\,
	datac => \ALT_INV_B_aux[1]~input_o\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[0]~0_combout\,
	combout => \ula|mux4|Mux30~0_combout\);

\ula|mux2B|Y[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[2]~18_combout\ = !\B_aux[2]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[2]~input_o\,
	combout => \ula|mux2B|Y[2]~18_combout\);

\ula|full_adder|c_out[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out\(1) = ( \A_aux[1]~input_o\ & ( \B_aux[1]~input_o\ & ( (((!\B_aux[0]~input_o\) # (\A_aux[0]~input_o\)) # (\ula_ctrl|ula_ctrl~4_combout\)) # (\ula_ctrl|ula_ctrl~2_combout\) ) ) ) # ( !\A_aux[1]~input_o\ & ( \B_aux[1]~input_o\ & ( 
-- (\B_aux[0]~input_o\ & (\A_aux[0]~input_o\ & ((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))) ) ) ) # ( \A_aux[1]~input_o\ & ( !\B_aux[1]~input_o\ & ( (!\ula_ctrl|ula_ctrl~2_combout\ & ((!\ula_ctrl|ula_ctrl~4_combout\) # 
-- ((\B_aux[0]~input_o\ & \A_aux[0]~input_o\)))) # (\ula_ctrl|ula_ctrl~2_combout\ & (((\B_aux[0]~input_o\ & \A_aux[0]~input_o\)))) ) ) ) # ( !\A_aux[1]~input_o\ & ( !\B_aux[1]~input_o\ & ( (!\ula_ctrl|ula_ctrl~2_combout\ & (!\ula_ctrl|ula_ctrl~4_combout\ & 
-- ((!\B_aux[0]~input_o\) # (\A_aux[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100010001000111100000000000001111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[0]~input_o\,
	datad => \ALT_INV_A_aux[0]~input_o\,
	datae => \ALT_INV_A_aux[1]~input_o\,
	dataf => \ALT_INV_B_aux[1]~input_o\,
	combout => \ula|full_adder|c_out\(1));

\ula|mux4|Mux29~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux29~4_combout\ = ( \ula|full_adder|c_out\(1) & ( (!\A_aux[2]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[2]~18_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[2]~input_o\ & ((!\ula|mux4|Mux29~3_combout\ & 
-- (\ula|mux2B|Y[2]~18_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) ) # ( !\ula|full_adder|c_out\(1) & ( (!\A_aux[2]~input_o\ & (\ula|mux2B|Y[2]~18_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[2]~input_o\ & 
-- (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[2]~18_combout\ & !\ula|mux4|Mux29~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101110000100100010111000001100001011100001001000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[2]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[2]~18_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out\(1),
	combout => \ula|mux4|Mux29~4_combout\);

\ula|mux2B|Y[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[3]~19_combout\ = !\B_aux[3]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[3]~input_o\,
	combout => \ula|mux2B|Y[3]~19_combout\);

\ula|full_adder|c_out[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[2]~1_combout\ = (!\A_aux[2]~input_o\ & (\ula|mux2B|Y[2]~18_combout\ & \ula|full_adder|c_out\(1))) # (\A_aux[2]~input_o\ & ((\ula|full_adder|c_out\(1)) # (\ula|mux2B|Y[2]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100010111000101110001011100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[2]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[2]~18_combout\,
	datac => \ula|full_adder|ALT_INV_c_out\(1),
	combout => \ula|full_adder|c_out[2]~1_combout\);

\ula|mux4|Mux28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux28~0_combout\ = ( \ula|full_adder|c_out[2]~1_combout\ & ( (!\A_aux[3]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[3]~19_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[3]~input_o\ & ((!\ula|mux4|Mux29~3_combout\ & 
-- (\ula|mux2B|Y[3]~19_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) ) # ( !\ula|full_adder|c_out[2]~1_combout\ & ( (!\A_aux[3]~input_o\ & (\ula|mux2B|Y[3]~19_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[3]~input_o\ 
-- & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[3]~19_combout\ & !\ula|mux4|Mux29~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101110000100100010111000001100001011100001001000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[3]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[3]~19_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[2]~1_combout\,
	combout => \ula|mux4|Mux28~0_combout\);

\ula|full_adder|c_out[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[3]~2_combout\ = ( \ula|full_adder|c_out\(1) & ( (!\A_aux[3]~input_o\ & (\ula|mux2B|Y[3]~19_combout\ & ((\ula|mux2B|Y[2]~18_combout\) # (\A_aux[2]~input_o\)))) # (\A_aux[3]~input_o\ & (((\ula|mux2B|Y[3]~19_combout\) # 
-- (\ula|mux2B|Y[2]~18_combout\)) # (\A_aux[2]~input_o\))) ) ) # ( !\ula|full_adder|c_out\(1) & ( (!\A_aux[3]~input_o\ & (\A_aux[2]~input_o\ & (\ula|mux2B|Y[2]~18_combout\ & \ula|mux2B|Y[3]~19_combout\))) # (\A_aux[3]~input_o\ & (((\A_aux[2]~input_o\ & 
-- \ula|mux2B|Y[2]~18_combout\)) # (\ula|mux2B|Y[3]~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000001110111111100000001000111110000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[2]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[2]~18_combout\,
	datac => \ALT_INV_A_aux[3]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[3]~19_combout\,
	datae => \ula|full_adder|ALT_INV_c_out\(1),
	combout => \ula|full_adder|c_out[3]~2_combout\);

\ula|mux4|Mux27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux27~1_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[3]~2_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\B_aux[4]~input_o\ $ (!\ula_ctrl|ula_ctrl[2]~6_combout\)) # (\A_aux[4]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[3]~2_combout\ & ( (!\A_aux[4]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\B_aux[4]~input_o\ $ (\ula_ctrl|ula_ctrl[2]~6_combout\)))) # (\A_aux[4]~input_o\ & (!\B_aux[4]~input_o\ $ 
-- ((!\ula_ctrl|ula_ctrl[2]~6_combout\)))) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[3]~2_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\B_aux[4]~input_o\ $ (!\ula_ctrl|ula_ctrl[2]~6_combout\)) # (\A_aux[4]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[3]~2_combout\ & ( (!\A_aux[4]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\B_aux[4]~input_o\ $ (!\ula_ctrl|ula_ctrl[2]~6_combout\)))) # (\A_aux[4]~input_o\ & (!\B_aux[4]~input_o\ $ 
-- (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\ula|mux4|Mux29~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100010100011111010000000010010110000101000111110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[4]~input_o\,
	datab => \ALT_INV_B_aux[4]~input_o\,
	datac => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[3]~2_combout\,
	combout => \ula|mux4|Mux27~1_combout\);

\ula|mux2B|Y[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[5]~20_combout\ = !\B_aux[5]~input_o\ $ (((\ula_ctrl|ula_ctrl~4_combout\) # (\ula_ctrl|ula_ctrl~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	datac => \ALT_INV_B_aux[5]~input_o\,
	combout => \ula|mux2B|Y[5]~20_combout\);

\ula|full_adder|c_out[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[4]~3_combout\ = ( \ula|mux2B|Y[3]~19_combout\ & ( \ula|full_adder|c_out\(1) & ( (!\ula|slt|full_adder|c_out[4]~0_combout\ & (((\A_aux[3]~input_o\) # (\ula|mux2B|Y[2]~18_combout\)) # (\A_aux[2]~input_o\))) ) ) ) # ( 
-- !\ula|mux2B|Y[3]~19_combout\ & ( \ula|full_adder|c_out\(1) & ( (!\ula|slt|full_adder|c_out[4]~0_combout\ & (\A_aux[3]~input_o\ & ((\ula|mux2B|Y[2]~18_combout\) # (\A_aux[2]~input_o\)))) ) ) ) # ( \ula|mux2B|Y[3]~19_combout\ & ( !\ula|full_adder|c_out\(1) 
-- & ( (!\ula|slt|full_adder|c_out[4]~0_combout\ & (((\A_aux[2]~input_o\ & \ula|mux2B|Y[2]~18_combout\)) # (\A_aux[3]~input_o\))) ) ) ) # ( !\ula|mux2B|Y[3]~19_combout\ & ( !\ula|full_adder|c_out\(1) & ( (!\ula|slt|full_adder|c_out[4]~0_combout\ & 
-- (\A_aux[2]~input_o\ & (\ula|mux2B|Y[2]~18_combout\ & \A_aux[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000101010101000000000001010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|slt|full_adder|ALT_INV_c_out[4]~0_combout\,
	datab => \ALT_INV_A_aux[2]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[2]~18_combout\,
	datad => \ALT_INV_A_aux[3]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[3]~19_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out\(1),
	combout => \ula|full_adder|c_out[4]~3_combout\);

\ula|mux4|Mux26~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux26~1_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[4]~3_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[5]~20_combout\) # (\A_aux[5]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( 
-- \ula|full_adder|c_out[4]~3_combout\ & ( (!\A_aux[5]~input_o\ & (!\ula|mux2B|Y[5]~20_combout\ & !\ula|mux4|Mux29~1_combout\)) # (\A_aux[5]~input_o\ & (\ula|mux2B|Y[5]~20_combout\)) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( 
-- !\ula|full_adder|c_out[4]~3_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[5]~20_combout\) # (\A_aux[5]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[4]~3_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & 
-- (!\ula|mux4|Mux27~0_combout\ $ (!\A_aux[5]~input_o\ $ (\ula|mux2B|Y[5]~20_combout\)))) # (\ula|mux4|Mux29~1_combout\ & (((\A_aux[5]~input_o\ & \ula|mux2B|Y[5]~20_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000011001111110000000011000011000000110011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux27~0_combout\,
	datab => \ALT_INV_A_aux[5]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[5]~20_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[4]~3_combout\,
	combout => \ula|mux4|Mux26~1_combout\);

\ula|full_adder|c_out[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[5]~4_combout\ = (!\A_aux[5]~input_o\ & ((!\ula|mux2B|Y[5]~20_combout\) # ((!\ula|mux4|Mux27~0_combout\ & !\ula|full_adder|c_out[4]~3_combout\)))) # (\A_aux[5]~input_o\ & (!\ula|mux4|Mux27~0_combout\ & (!\ula|mux2B|Y[5]~20_combout\ & 
-- !\ula|full_adder|c_out[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000011101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux27~0_combout\,
	datab => \ALT_INV_A_aux[5]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[5]~20_combout\,
	datad => \ula|full_adder|ALT_INV_c_out[4]~3_combout\,
	combout => \ula|full_adder|c_out[5]~4_combout\);

\ula|mux4|Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux25~0_combout\ = ( \ula|full_adder|c_out[5]~4_combout\ & ( (!\A_aux[6]~input_o\ & (\ula|mux2B|Y[6]~0_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[6]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[6]~0_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[5]~4_combout\ & ( (!\A_aux[6]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[6]~0_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[6]~input_o\ & ((!\ula|mux4|Mux29~3_combout\ & 
-- (\ula|mux2B|Y[6]~0_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[6]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[6]~0_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[5]~4_combout\,
	combout => \ula|mux4|Mux25~0_combout\);

\ula|full_adder|c_out[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[6]~5_combout\ = ( \ula|mux2B|Y[6]~0_combout\ & ( \ula|full_adder|c_out[4]~3_combout\ & ( (!\A_aux[5]~input_o\ & (!\ula|mux2B|Y[5]~20_combout\ & !\A_aux[6]~input_o\)) ) ) ) # ( !\ula|mux2B|Y[6]~0_combout\ & ( 
-- \ula|full_adder|c_out[4]~3_combout\ & ( (!\A_aux[6]~input_o\) # ((!\A_aux[5]~input_o\ & !\ula|mux2B|Y[5]~20_combout\)) ) ) ) # ( \ula|mux2B|Y[6]~0_combout\ & ( !\ula|full_adder|c_out[4]~3_combout\ & ( (!\A_aux[6]~input_o\ & ((!\ula|mux4|Mux27~0_combout\ & 
-- ((!\A_aux[5]~input_o\) # (!\ula|mux2B|Y[5]~20_combout\))) # (\ula|mux4|Mux27~0_combout\ & (!\A_aux[5]~input_o\ & !\ula|mux2B|Y[5]~20_combout\)))) ) ) ) # ( !\ula|mux2B|Y[6]~0_combout\ & ( !\ula|full_adder|c_out[4]~3_combout\ & ( (!\A_aux[6]~input_o\) # 
-- ((!\ula|mux4|Mux27~0_combout\ & ((!\A_aux[5]~input_o\) # (!\ula|mux2B|Y[5]~20_combout\))) # (\ula|mux4|Mux27~0_combout\ & (!\A_aux[5]~input_o\ & !\ula|mux2B|Y[5]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux27~0_combout\,
	datab => \ALT_INV_A_aux[5]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[5]~20_combout\,
	datad => \ALT_INV_A_aux[6]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[6]~0_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[4]~3_combout\,
	combout => \ula|full_adder|c_out[6]~5_combout\);

\ula|mux4|Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux24~0_combout\ = ( \ula|full_adder|c_out[6]~5_combout\ & ( (!\A_aux[7]~input_o\ & (\ula|mux2B|Y[7]~1_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[7]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[7]~1_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[6]~5_combout\ & ( (!\A_aux[7]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[7]~1_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[7]~input_o\ & ((!\ula|mux4|Mux29~3_combout\ & 
-- (\ula|mux2B|Y[7]~1_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[7]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[7]~1_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[6]~5_combout\,
	combout => \ula|mux4|Mux24~0_combout\);

\ula|full_adder|c_out[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[7]~6_combout\ = (!\A_aux[7]~input_o\ & (\ula|mux2B|Y[7]~1_combout\ & !\ula|full_adder|c_out[6]~5_combout\)) # (\A_aux[7]~input_o\ & ((!\ula|full_adder|c_out[6]~5_combout\) # (\ula|mux2B|Y[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[7]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[7]~1_combout\,
	datac => \ula|full_adder|ALT_INV_c_out[6]~5_combout\,
	combout => \ula|full_adder|c_out[7]~6_combout\);

\ula|mux4|Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux23~0_combout\ = ( \ula|full_adder|c_out[7]~6_combout\ & ( (!\A_aux[8]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[8]~2_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[8]~input_o\ & ((!\ula|mux4|Mux29~3_combout\ & 
-- (\ula|mux2B|Y[8]~2_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) ) # ( !\ula|full_adder|c_out[7]~6_combout\ & ( (!\A_aux[8]~input_o\ & (\ula|mux2B|Y[8]~2_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[8]~input_o\ & 
-- (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[8]~2_combout\ & !\ula|mux4|Mux29~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101110000100100010111000001100001011100001001000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[8]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[8]~2_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[7]~6_combout\,
	combout => \ula|mux4|Mux23~0_combout\);

\ula|full_adder|c_out[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[8]~7_combout\ = ( \ula|full_adder|c_out[6]~5_combout\ & ( (!\A_aux[8]~input_o\ & (\A_aux[7]~input_o\ & (\ula|mux2B|Y[7]~1_combout\ & \ula|mux2B|Y[8]~2_combout\))) # (\A_aux[8]~input_o\ & (((\A_aux[7]~input_o\ & 
-- \ula|mux2B|Y[7]~1_combout\)) # (\ula|mux2B|Y[8]~2_combout\))) ) ) # ( !\ula|full_adder|c_out[6]~5_combout\ & ( (!\A_aux[8]~input_o\ & (\ula|mux2B|Y[8]~2_combout\ & ((\ula|mux2B|Y[7]~1_combout\) # (\A_aux[7]~input_o\)))) # (\A_aux[8]~input_o\ & 
-- (((\ula|mux2B|Y[8]~2_combout\) # (\ula|mux2B|Y[7]~1_combout\)) # (\A_aux[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000010001111100000111011111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[7]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[7]~1_combout\,
	datac => \ALT_INV_A_aux[8]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[8]~2_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[6]~5_combout\,
	combout => \ula|full_adder|c_out[8]~7_combout\);

\ula|mux4|Mux22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux22~1_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[8]~7_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[9]~input_o\)) # (\A_aux[9]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[8]~7_combout\ & ( (!\A_aux[9]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (\B_aux[9]~input_o\)))) # (\A_aux[9]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- ((!\B_aux[9]~input_o\)))) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[8]~7_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[9]~input_o\)) # (\A_aux[9]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[8]~7_combout\ & ( (!\A_aux[9]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[9]~input_o\)))) # (\A_aux[9]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- (!\B_aux[9]~input_o\ $ (!\ula|mux4|Mux29~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100010010011110110000000010010110000100100111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[9]~input_o\,
	datac => \ALT_INV_B_aux[9]~input_o\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[8]~7_combout\,
	combout => \ula|mux4|Mux22~1_combout\);

\ula|full_adder|c_out[9]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[9]~8_combout\ = ( !\ula|slt|full_adder|c_out[9]~7_combout\ & ( \ula|full_adder|c_out[6]~5_combout\ & ( (!\A_aux[8]~input_o\ & (\A_aux[7]~input_o\ & (\ula|mux2B|Y[7]~1_combout\ & \ula|mux2B|Y[8]~2_combout\))) # (\A_aux[8]~input_o\ & 
-- (((\A_aux[7]~input_o\ & \ula|mux2B|Y[7]~1_combout\)) # (\ula|mux2B|Y[8]~2_combout\))) ) ) ) # ( !\ula|slt|full_adder|c_out[9]~7_combout\ & ( !\ula|full_adder|c_out[6]~5_combout\ & ( (!\A_aux[8]~input_o\ & (\ula|mux2B|Y[8]~2_combout\ & 
-- ((\ula|mux2B|Y[7]~1_combout\) # (\A_aux[7]~input_o\)))) # (\A_aux[8]~input_o\ & (((\ula|mux2B|Y[8]~2_combout\) # (\ula|mux2B|Y[7]~1_combout\)) # (\A_aux[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000000000000000000001000111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[7]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[7]~1_combout\,
	datac => \ALT_INV_A_aux[8]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[8]~2_combout\,
	datae => \ula|slt|full_adder|ALT_INV_c_out[9]~7_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[6]~5_combout\,
	combout => \ula|full_adder|c_out[9]~8_combout\);

\ula|mux4|Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux21~0_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[9]~8_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[10]~3_combout\) # (\A_aux[10]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( 
-- \ula|full_adder|c_out[9]~8_combout\ & ( (!\A_aux[10]~input_o\ & (!\ula|mux2B|Y[10]~3_combout\ & !\ula|mux4|Mux29~1_combout\)) # (\A_aux[10]~input_o\ & (\ula|mux2B|Y[10]~3_combout\)) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( 
-- !\ula|full_adder|c_out[9]~8_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[10]~3_combout\) # (\A_aux[10]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[9]~8_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & 
-- (!\ula|mux4|Mux22~0_combout\ $ (!\A_aux[10]~input_o\ $ (\ula|mux2B|Y[10]~3_combout\)))) # (\ula|mux4|Mux29~1_combout\ & (((\A_aux[10]~input_o\ & \ula|mux2B|Y[10]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000011001111110000000011000011000000110011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux22~0_combout\,
	datab => \ALT_INV_A_aux[10]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[10]~3_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[9]~8_combout\,
	combout => \ula|mux4|Mux21~0_combout\);

\ula|full_adder|c_out[10]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[10]~9_combout\ = (!\A_aux[10]~input_o\ & ((!\ula|mux2B|Y[10]~3_combout\) # ((!\ula|mux4|Mux22~0_combout\ & !\ula|full_adder|c_out[9]~8_combout\)))) # (\A_aux[10]~input_o\ & (!\ula|mux4|Mux22~0_combout\ & (!\ula|mux2B|Y[10]~3_combout\ 
-- & !\ula|full_adder|c_out[9]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000011101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux22~0_combout\,
	datab => \ALT_INV_A_aux[10]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[10]~3_combout\,
	datad => \ula|full_adder|ALT_INV_c_out[9]~8_combout\,
	combout => \ula|full_adder|c_out[10]~9_combout\);

\ula|mux4|Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux20~0_combout\ = ( \ula|full_adder|c_out[10]~9_combout\ & ( (!\A_aux[11]~input_o\ & (\ula|mux2B|Y[11]~4_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[11]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[11]~4_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[10]~9_combout\ & ( (!\A_aux[11]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[11]~4_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[11]~input_o\ & 
-- ((!\ula|mux4|Mux29~3_combout\ & (\ula|mux2B|Y[11]~4_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[11]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[11]~4_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[10]~9_combout\,
	combout => \ula|mux4|Mux20~0_combout\);

\ula|full_adder|c_out[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[11]~10_combout\ = ( \ula|mux2B|Y[11]~4_combout\ & ( \ula|full_adder|c_out[9]~8_combout\ & ( (!\A_aux[10]~input_o\ & (!\ula|mux2B|Y[10]~3_combout\ & !\A_aux[11]~input_o\)) ) ) ) # ( !\ula|mux2B|Y[11]~4_combout\ & ( 
-- \ula|full_adder|c_out[9]~8_combout\ & ( (!\A_aux[11]~input_o\) # ((!\A_aux[10]~input_o\ & !\ula|mux2B|Y[10]~3_combout\)) ) ) ) # ( \ula|mux2B|Y[11]~4_combout\ & ( !\ula|full_adder|c_out[9]~8_combout\ & ( (!\A_aux[11]~input_o\ & 
-- ((!\ula|mux4|Mux22~0_combout\ & ((!\A_aux[10]~input_o\) # (!\ula|mux2B|Y[10]~3_combout\))) # (\ula|mux4|Mux22~0_combout\ & (!\A_aux[10]~input_o\ & !\ula|mux2B|Y[10]~3_combout\)))) ) ) ) # ( !\ula|mux2B|Y[11]~4_combout\ & ( 
-- !\ula|full_adder|c_out[9]~8_combout\ & ( (!\A_aux[11]~input_o\) # ((!\ula|mux4|Mux22~0_combout\ & ((!\A_aux[10]~input_o\) # (!\ula|mux2B|Y[10]~3_combout\))) # (\ula|mux4|Mux22~0_combout\ & (!\A_aux[10]~input_o\ & !\ula|mux2B|Y[10]~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux22~0_combout\,
	datab => \ALT_INV_A_aux[10]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[10]~3_combout\,
	datad => \ALT_INV_A_aux[11]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[11]~4_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[9]~8_combout\,
	combout => \ula|full_adder|c_out[11]~10_combout\);

\ula|mux4|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux19~0_combout\ = ( \ula|full_adder|c_out[11]~10_combout\ & ( (!\A_aux[12]~input_o\ & (\ula|mux2B|Y[12]~5_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[12]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[12]~5_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[11]~10_combout\ & ( (!\A_aux[12]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[12]~5_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[12]~input_o\ & 
-- ((!\ula|mux4|Mux29~3_combout\ & (\ula|mux2B|Y[12]~5_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[12]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[12]~5_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[11]~10_combout\,
	combout => \ula|mux4|Mux19~0_combout\);

\ula|full_adder|c_out[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[12]~11_combout\ = (!\A_aux[12]~input_o\ & (\ula|mux2B|Y[12]~5_combout\ & !\ula|full_adder|c_out[11]~10_combout\)) # (\A_aux[12]~input_o\ & ((!\ula|full_adder|c_out[11]~10_combout\) # (\ula|mux2B|Y[12]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[12]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[12]~5_combout\,
	datac => \ula|full_adder|ALT_INV_c_out[11]~10_combout\,
	combout => \ula|full_adder|c_out[12]~11_combout\);

\ula|mux4|Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux18~0_combout\ = ( \ula|full_adder|c_out[12]~11_combout\ & ( (!\A_aux[13]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[13]~6_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[13]~input_o\ & ((!\ula|mux4|Mux29~3_combout\ & 
-- (\ula|mux2B|Y[13]~6_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) ) # ( !\ula|full_adder|c_out[12]~11_combout\ & ( (!\A_aux[13]~input_o\ & (\ula|mux2B|Y[13]~6_combout\ & (!\ula|mux4|Mux29~1_combout\))) # 
-- (\A_aux[13]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[13]~6_combout\ & !\ula|mux4|Mux29~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101110000100100010111000001100001011100001001000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[13]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[13]~6_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[12]~11_combout\,
	combout => \ula|mux4|Mux18~0_combout\);

\ula|full_adder|c_out[13]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[13]~12_combout\ = ( \ula|full_adder|c_out[11]~10_combout\ & ( (!\A_aux[13]~input_o\ & (\A_aux[12]~input_o\ & (\ula|mux2B|Y[12]~5_combout\ & \ula|mux2B|Y[13]~6_combout\))) # (\A_aux[13]~input_o\ & (((\A_aux[12]~input_o\ & 
-- \ula|mux2B|Y[12]~5_combout\)) # (\ula|mux2B|Y[13]~6_combout\))) ) ) # ( !\ula|full_adder|c_out[11]~10_combout\ & ( (!\A_aux[13]~input_o\ & (\ula|mux2B|Y[13]~6_combout\ & ((\ula|mux2B|Y[12]~5_combout\) # (\A_aux[12]~input_o\)))) # (\A_aux[13]~input_o\ & 
-- (((\ula|mux2B|Y[13]~6_combout\) # (\ula|mux2B|Y[12]~5_combout\)) # (\A_aux[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000010001111100000111011111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[12]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[12]~5_combout\,
	datac => \ALT_INV_A_aux[13]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[13]~6_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[11]~10_combout\,
	combout => \ula|full_adder|c_out[13]~12_combout\);

\ula|mux4|Mux17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux17~1_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[13]~12_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[14]~input_o\)) # (\A_aux[14]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[13]~12_combout\ & ( (!\A_aux[14]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (\B_aux[14]~input_o\)))) # (\A_aux[14]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- ((!\B_aux[14]~input_o\)))) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[13]~12_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[14]~input_o\)) # (\A_aux[14]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[13]~12_combout\ & ( (!\A_aux[14]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[14]~input_o\)))) # (\A_aux[14]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- (!\B_aux[14]~input_o\ $ (!\ula|mux4|Mux29~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100010010011110110000000010010110000100100111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[14]~input_o\,
	datac => \ALT_INV_B_aux[14]~input_o\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[13]~12_combout\,
	combout => \ula|mux4|Mux17~1_combout\);

\ula|full_adder|c_out[14]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[14]~13_combout\ = ( !\ula|slt|full_adder|c_out[14]~10_combout\ & ( \ula|full_adder|c_out[11]~10_combout\ & ( (!\A_aux[13]~input_o\ & (\A_aux[12]~input_o\ & (\ula|mux2B|Y[12]~5_combout\ & \ula|mux2B|Y[13]~6_combout\))) # 
-- (\A_aux[13]~input_o\ & (((\A_aux[12]~input_o\ & \ula|mux2B|Y[12]~5_combout\)) # (\ula|mux2B|Y[13]~6_combout\))) ) ) ) # ( !\ula|slt|full_adder|c_out[14]~10_combout\ & ( !\ula|full_adder|c_out[11]~10_combout\ & ( (!\A_aux[13]~input_o\ & 
-- (\ula|mux2B|Y[13]~6_combout\ & ((\ula|mux2B|Y[12]~5_combout\) # (\A_aux[12]~input_o\)))) # (\A_aux[13]~input_o\ & (((\ula|mux2B|Y[13]~6_combout\) # (\ula|mux2B|Y[12]~5_combout\)) # (\A_aux[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000000000000000000001000111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[12]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[12]~5_combout\,
	datac => \ALT_INV_A_aux[13]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[13]~6_combout\,
	datae => \ula|slt|full_adder|ALT_INV_c_out[14]~10_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[11]~10_combout\,
	combout => \ula|full_adder|c_out[14]~13_combout\);

\ula|mux4|Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux16~0_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[14]~13_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[15]~7_combout\) # (\A_aux[15]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( 
-- \ula|full_adder|c_out[14]~13_combout\ & ( (!\A_aux[15]~input_o\ & (!\ula|mux2B|Y[15]~7_combout\ & !\ula|mux4|Mux29~1_combout\)) # (\A_aux[15]~input_o\ & (\ula|mux2B|Y[15]~7_combout\)) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( 
-- !\ula|full_adder|c_out[14]~13_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[15]~7_combout\) # (\A_aux[15]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[14]~13_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & 
-- (!\ula|mux4|Mux17~0_combout\ $ (!\A_aux[15]~input_o\ $ (\ula|mux2B|Y[15]~7_combout\)))) # (\ula|mux4|Mux29~1_combout\ & (((\A_aux[15]~input_o\ & \ula|mux2B|Y[15]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000011001111110000000011000011000000110011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_A_aux[15]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[15]~7_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[14]~13_combout\,
	combout => \ula|mux4|Mux16~0_combout\);

\ula|full_adder|c_out[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[15]~14_combout\ = (!\A_aux[15]~input_o\ & ((!\ula|mux2B|Y[15]~7_combout\) # ((!\ula|mux4|Mux17~0_combout\ & !\ula|full_adder|c_out[14]~13_combout\)))) # (\A_aux[15]~input_o\ & (!\ula|mux4|Mux17~0_combout\ & 
-- (!\ula|mux2B|Y[15]~7_combout\ & !\ula|full_adder|c_out[14]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000011101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_A_aux[15]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[15]~7_combout\,
	datad => \ula|full_adder|ALT_INV_c_out[14]~13_combout\,
	combout => \ula|full_adder|c_out[15]~14_combout\);

\ula|mux4|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux15~0_combout\ = ( \ula|full_adder|c_out[15]~14_combout\ & ( (!\A_aux[16]~input_o\ & (\ula|mux2B|Y[16]~8_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[16]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[16]~8_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[15]~14_combout\ & ( (!\A_aux[16]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[16]~8_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[16]~input_o\ & 
-- ((!\ula|mux4|Mux29~3_combout\ & (\ula|mux2B|Y[16]~8_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[16]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[16]~8_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[15]~14_combout\,
	combout => \ula|mux4|Mux15~0_combout\);

\ula|full_adder|c_out[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[16]~15_combout\ = ( \ula|mux2B|Y[16]~8_combout\ & ( \ula|full_adder|c_out[14]~13_combout\ & ( (!\A_aux[15]~input_o\ & (!\ula|mux2B|Y[15]~7_combout\ & !\A_aux[16]~input_o\)) ) ) ) # ( !\ula|mux2B|Y[16]~8_combout\ & ( 
-- \ula|full_adder|c_out[14]~13_combout\ & ( (!\A_aux[16]~input_o\) # ((!\A_aux[15]~input_o\ & !\ula|mux2B|Y[15]~7_combout\)) ) ) ) # ( \ula|mux2B|Y[16]~8_combout\ & ( !\ula|full_adder|c_out[14]~13_combout\ & ( (!\A_aux[16]~input_o\ & 
-- ((!\ula|mux4|Mux17~0_combout\ & ((!\A_aux[15]~input_o\) # (!\ula|mux2B|Y[15]~7_combout\))) # (\ula|mux4|Mux17~0_combout\ & (!\A_aux[15]~input_o\ & !\ula|mux2B|Y[15]~7_combout\)))) ) ) ) # ( !\ula|mux2B|Y[16]~8_combout\ & ( 
-- !\ula|full_adder|c_out[14]~13_combout\ & ( (!\A_aux[16]~input_o\) # ((!\ula|mux4|Mux17~0_combout\ & ((!\A_aux[15]~input_o\) # (!\ula|mux2B|Y[15]~7_combout\))) # (\ula|mux4|Mux17~0_combout\ & (!\A_aux[15]~input_o\ & !\ula|mux2B|Y[15]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux17~0_combout\,
	datab => \ALT_INV_A_aux[15]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[15]~7_combout\,
	datad => \ALT_INV_A_aux[16]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[16]~8_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[14]~13_combout\,
	combout => \ula|full_adder|c_out[16]~15_combout\);

\ula|mux4|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux14~0_combout\ = ( \ula|full_adder|c_out[16]~15_combout\ & ( (!\A_aux[17]~input_o\ & (\ula|mux2B|Y[17]~9_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[17]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[17]~9_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[16]~15_combout\ & ( (!\A_aux[17]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[17]~9_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[17]~input_o\ & 
-- ((!\ula|mux4|Mux29~3_combout\ & (\ula|mux2B|Y[17]~9_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[17]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[17]~9_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[16]~15_combout\,
	combout => \ula|mux4|Mux14~0_combout\);

\ula|full_adder|c_out[17]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[17]~16_combout\ = (!\A_aux[17]~input_o\ & (\ula|mux2B|Y[17]~9_combout\ & !\ula|full_adder|c_out[16]~15_combout\)) # (\A_aux[17]~input_o\ & ((!\ula|full_adder|c_out[16]~15_combout\) # (\ula|mux2B|Y[17]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[17]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[17]~9_combout\,
	datac => \ula|full_adder|ALT_INV_c_out[16]~15_combout\,
	combout => \ula|full_adder|c_out[17]~16_combout\);

\ula|mux4|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux13~0_combout\ = ( \ula|full_adder|c_out[17]~16_combout\ & ( (!\A_aux[18]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[18]~10_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[18]~input_o\ & ((!\ula|mux4|Mux29~3_combout\ & 
-- (\ula|mux2B|Y[18]~10_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) ) # ( !\ula|full_adder|c_out[17]~16_combout\ & ( (!\A_aux[18]~input_o\ & (\ula|mux2B|Y[18]~10_combout\ & (!\ula|mux4|Mux29~1_combout\))) # 
-- (\A_aux[18]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[18]~10_combout\ & !\ula|mux4|Mux29~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101110000100100010111000001100001011100001001000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[18]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[18]~10_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[17]~16_combout\,
	combout => \ula|mux4|Mux13~0_combout\);

\ula|full_adder|c_out[18]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[18]~17_combout\ = ( \ula|full_adder|c_out[16]~15_combout\ & ( (!\A_aux[18]~input_o\ & (\A_aux[17]~input_o\ & (\ula|mux2B|Y[17]~9_combout\ & \ula|mux2B|Y[18]~10_combout\))) # (\A_aux[18]~input_o\ & (((\A_aux[17]~input_o\ & 
-- \ula|mux2B|Y[17]~9_combout\)) # (\ula|mux2B|Y[18]~10_combout\))) ) ) # ( !\ula|full_adder|c_out[16]~15_combout\ & ( (!\A_aux[18]~input_o\ & (\ula|mux2B|Y[18]~10_combout\ & ((\ula|mux2B|Y[17]~9_combout\) # (\A_aux[17]~input_o\)))) # (\A_aux[18]~input_o\ & 
-- (((\ula|mux2B|Y[18]~10_combout\) # (\ula|mux2B|Y[17]~9_combout\)) # (\A_aux[17]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000010001111100000111011111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[17]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[17]~9_combout\,
	datac => \ALT_INV_A_aux[18]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[18]~10_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[16]~15_combout\,
	combout => \ula|full_adder|c_out[18]~17_combout\);

\ula|mux4|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux12~1_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[18]~17_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[19]~input_o\)) # (\A_aux[19]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[18]~17_combout\ & ( (!\A_aux[19]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (\B_aux[19]~input_o\)))) # (\A_aux[19]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- ((!\B_aux[19]~input_o\)))) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[18]~17_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[19]~input_o\)) # (\A_aux[19]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[18]~17_combout\ & ( (!\A_aux[19]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[19]~input_o\)))) # (\A_aux[19]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- (!\B_aux[19]~input_o\ $ (!\ula|mux4|Mux29~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100010010011110110000000010010110000100100111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[19]~input_o\,
	datac => \ALT_INV_B_aux[19]~input_o\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[18]~17_combout\,
	combout => \ula|mux4|Mux12~1_combout\);

\ula|full_adder|c_out[19]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[19]~18_combout\ = ( !\ula|slt|full_adder|c_out[19]~13_combout\ & ( \ula|full_adder|c_out[16]~15_combout\ & ( (!\A_aux[18]~input_o\ & (\A_aux[17]~input_o\ & (\ula|mux2B|Y[17]~9_combout\ & \ula|mux2B|Y[18]~10_combout\))) # 
-- (\A_aux[18]~input_o\ & (((\A_aux[17]~input_o\ & \ula|mux2B|Y[17]~9_combout\)) # (\ula|mux2B|Y[18]~10_combout\))) ) ) ) # ( !\ula|slt|full_adder|c_out[19]~13_combout\ & ( !\ula|full_adder|c_out[16]~15_combout\ & ( (!\A_aux[18]~input_o\ & 
-- (\ula|mux2B|Y[18]~10_combout\ & ((\ula|mux2B|Y[17]~9_combout\) # (\A_aux[17]~input_o\)))) # (\A_aux[18]~input_o\ & (((\ula|mux2B|Y[18]~10_combout\) # (\ula|mux2B|Y[17]~9_combout\)) # (\A_aux[17]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000000000000000000001000111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[17]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[17]~9_combout\,
	datac => \ALT_INV_A_aux[18]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[18]~10_combout\,
	datae => \ula|slt|full_adder|ALT_INV_c_out[19]~13_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[16]~15_combout\,
	combout => \ula|full_adder|c_out[19]~18_combout\);

\ula|mux4|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux11~0_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[19]~18_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[20]~11_combout\) # (\A_aux[20]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( 
-- \ula|full_adder|c_out[19]~18_combout\ & ( (!\A_aux[20]~input_o\ & (!\ula|mux2B|Y[20]~11_combout\ & !\ula|mux4|Mux29~1_combout\)) # (\A_aux[20]~input_o\ & (\ula|mux2B|Y[20]~11_combout\)) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( 
-- !\ula|full_adder|c_out[19]~18_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[20]~11_combout\) # (\A_aux[20]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[19]~18_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & 
-- (!\ula|mux4|Mux12~0_combout\ $ (!\A_aux[20]~input_o\ $ (\ula|mux2B|Y[20]~11_combout\)))) # (\ula|mux4|Mux29~1_combout\ & (((\A_aux[20]~input_o\ & \ula|mux2B|Y[20]~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000011001111110000000011000011000000110011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux12~0_combout\,
	datab => \ALT_INV_A_aux[20]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[20]~11_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[19]~18_combout\,
	combout => \ula|mux4|Mux11~0_combout\);

\ula|full_adder|c_out[20]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[20]~19_combout\ = (!\A_aux[20]~input_o\ & ((!\ula|mux2B|Y[20]~11_combout\) # ((!\ula|mux4|Mux12~0_combout\ & !\ula|full_adder|c_out[19]~18_combout\)))) # (\A_aux[20]~input_o\ & (!\ula|mux4|Mux12~0_combout\ & 
-- (!\ula|mux2B|Y[20]~11_combout\ & !\ula|full_adder|c_out[19]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000011101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux12~0_combout\,
	datab => \ALT_INV_A_aux[20]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[20]~11_combout\,
	datad => \ula|full_adder|ALT_INV_c_out[19]~18_combout\,
	combout => \ula|full_adder|c_out[20]~19_combout\);

\ula|mux4|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux10~0_combout\ = ( \ula|full_adder|c_out[20]~19_combout\ & ( (!\A_aux[21]~input_o\ & (\ula|mux2B|Y[21]~12_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[21]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[21]~12_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[20]~19_combout\ & ( (!\A_aux[21]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[21]~12_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[21]~input_o\ & 
-- ((!\ula|mux4|Mux29~3_combout\ & (\ula|mux2B|Y[21]~12_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[21]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[21]~12_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[20]~19_combout\,
	combout => \ula|mux4|Mux10~0_combout\);

\ula|full_adder|c_out[21]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[21]~20_combout\ = ( \ula|mux2B|Y[21]~12_combout\ & ( \ula|full_adder|c_out[19]~18_combout\ & ( (!\A_aux[20]~input_o\ & (!\ula|mux2B|Y[20]~11_combout\ & !\A_aux[21]~input_o\)) ) ) ) # ( !\ula|mux2B|Y[21]~12_combout\ & ( 
-- \ula|full_adder|c_out[19]~18_combout\ & ( (!\A_aux[21]~input_o\) # ((!\A_aux[20]~input_o\ & !\ula|mux2B|Y[20]~11_combout\)) ) ) ) # ( \ula|mux2B|Y[21]~12_combout\ & ( !\ula|full_adder|c_out[19]~18_combout\ & ( (!\A_aux[21]~input_o\ & 
-- ((!\ula|mux4|Mux12~0_combout\ & ((!\A_aux[20]~input_o\) # (!\ula|mux2B|Y[20]~11_combout\))) # (\ula|mux4|Mux12~0_combout\ & (!\A_aux[20]~input_o\ & !\ula|mux2B|Y[20]~11_combout\)))) ) ) ) # ( !\ula|mux2B|Y[21]~12_combout\ & ( 
-- !\ula|full_adder|c_out[19]~18_combout\ & ( (!\A_aux[21]~input_o\) # ((!\ula|mux4|Mux12~0_combout\ & ((!\A_aux[20]~input_o\) # (!\ula|mux2B|Y[20]~11_combout\))) # (\ula|mux4|Mux12~0_combout\ & (!\A_aux[20]~input_o\ & !\ula|mux2B|Y[20]~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux12~0_combout\,
	datab => \ALT_INV_A_aux[20]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[20]~11_combout\,
	datad => \ALT_INV_A_aux[21]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[21]~12_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[19]~18_combout\,
	combout => \ula|full_adder|c_out[21]~20_combout\);

\ula|mux4|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux9~0_combout\ = ( \ula|full_adder|c_out[21]~20_combout\ & ( (!\A_aux[22]~input_o\ & (\ula|mux2B|Y[22]~13_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[22]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[22]~13_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[21]~20_combout\ & ( (!\A_aux[22]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[22]~13_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[22]~input_o\ & 
-- ((!\ula|mux4|Mux29~3_combout\ & (\ula|mux2B|Y[22]~13_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[22]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[22]~13_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[21]~20_combout\,
	combout => \ula|mux4|Mux9~0_combout\);

\ula|full_adder|c_out[22]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[22]~21_combout\ = (!\A_aux[22]~input_o\ & (\ula|mux2B|Y[22]~13_combout\ & !\ula|full_adder|c_out[21]~20_combout\)) # (\A_aux[22]~input_o\ & ((!\ula|full_adder|c_out[21]~20_combout\) # (\ula|mux2B|Y[22]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001011100010111000101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[22]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[22]~13_combout\,
	datac => \ula|full_adder|ALT_INV_c_out[21]~20_combout\,
	combout => \ula|full_adder|c_out[22]~21_combout\);

\ula|mux4|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux8~0_combout\ = ( \ula|full_adder|c_out[22]~21_combout\ & ( (!\A_aux[23]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[23]~14_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[23]~input_o\ & ((!\ula|mux4|Mux29~3_combout\ & 
-- (\ula|mux2B|Y[23]~14_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) ) # ( !\ula|full_adder|c_out[22]~21_combout\ & ( (!\A_aux[23]~input_o\ & (\ula|mux2B|Y[23]~14_combout\ & (!\ula|mux4|Mux29~1_combout\))) # 
-- (\A_aux[23]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[23]~14_combout\ & !\ula|mux4|Mux29~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101110000100100010111000001100001011100001001000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[23]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[23]~14_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[22]~21_combout\,
	combout => \ula|mux4|Mux8~0_combout\);

\ula|full_adder|c_out[23]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[23]~22_combout\ = ( \ula|full_adder|c_out[21]~20_combout\ & ( (!\A_aux[23]~input_o\ & (\A_aux[22]~input_o\ & (\ula|mux2B|Y[22]~13_combout\ & \ula|mux2B|Y[23]~14_combout\))) # (\A_aux[23]~input_o\ & (((\A_aux[22]~input_o\ & 
-- \ula|mux2B|Y[22]~13_combout\)) # (\ula|mux2B|Y[23]~14_combout\))) ) ) # ( !\ula|full_adder|c_out[21]~20_combout\ & ( (!\A_aux[23]~input_o\ & (\ula|mux2B|Y[23]~14_combout\ & ((\ula|mux2B|Y[22]~13_combout\) # (\A_aux[22]~input_o\)))) # (\A_aux[23]~input_o\ 
-- & (((\ula|mux2B|Y[23]~14_combout\) # (\ula|mux2B|Y[22]~13_combout\)) # (\A_aux[22]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000010001111100000111011111110000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[22]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[22]~13_combout\,
	datac => \ALT_INV_A_aux[23]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[23]~14_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[21]~20_combout\,
	combout => \ula|full_adder|c_out[23]~22_combout\);

\ula|mux4|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux7~1_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[23]~22_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[24]~input_o\)) # (\A_aux[24]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[23]~22_combout\ & ( (!\A_aux[24]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (\B_aux[24]~input_o\)))) # (\A_aux[24]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- ((!\B_aux[24]~input_o\)))) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[23]~22_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[24]~input_o\)) # (\A_aux[24]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[23]~22_combout\ & ( (!\A_aux[24]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[24]~input_o\)))) # (\A_aux[24]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- (!\B_aux[24]~input_o\ $ (!\ula|mux4|Mux29~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100010010011110110000000010010110000100100111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[24]~input_o\,
	datac => \ALT_INV_B_aux[24]~input_o\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[23]~22_combout\,
	combout => \ula|mux4|Mux7~1_combout\);

\ula|full_adder|c_out[24]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[24]~23_combout\ = ( !\ula|slt|full_adder|c_out[24]~16_combout\ & ( \ula|full_adder|c_out[21]~20_combout\ & ( (!\A_aux[23]~input_o\ & (\A_aux[22]~input_o\ & (\ula|mux2B|Y[22]~13_combout\ & \ula|mux2B|Y[23]~14_combout\))) # 
-- (\A_aux[23]~input_o\ & (((\A_aux[22]~input_o\ & \ula|mux2B|Y[22]~13_combout\)) # (\ula|mux2B|Y[23]~14_combout\))) ) ) ) # ( !\ula|slt|full_adder|c_out[24]~16_combout\ & ( !\ula|full_adder|c_out[21]~20_combout\ & ( (!\A_aux[23]~input_o\ & 
-- (\ula|mux2B|Y[23]~14_combout\ & ((\ula|mux2B|Y[22]~13_combout\) # (\A_aux[22]~input_o\)))) # (\A_aux[23]~input_o\ & (((\ula|mux2B|Y[23]~14_combout\) # (\ula|mux2B|Y[22]~13_combout\)) # (\A_aux[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111000000000000000000000001000111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[22]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[22]~13_combout\,
	datac => \ALT_INV_A_aux[23]~input_o\,
	datad => \ula|mux2B|ALT_INV_Y[23]~14_combout\,
	datae => \ula|slt|full_adder|ALT_INV_c_out[24]~16_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[21]~20_combout\,
	combout => \ula|full_adder|c_out[24]~23_combout\);

\ula|mux4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux6~0_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[24]~23_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[25]~15_combout\) # (\A_aux[25]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( 
-- \ula|full_adder|c_out[24]~23_combout\ & ( (!\A_aux[25]~input_o\ & (!\ula|mux2B|Y[25]~15_combout\ & !\ula|mux4|Mux29~1_combout\)) # (\A_aux[25]~input_o\ & (\ula|mux2B|Y[25]~15_combout\)) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( 
-- !\ula|full_adder|c_out[24]~23_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((\ula|mux2B|Y[25]~15_combout\) # (\A_aux[25]~input_o\))) ) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[24]~23_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & 
-- (!\ula|mux4|Mux7~0_combout\ $ (!\A_aux[25]~input_o\ $ (\ula|mux2B|Y[25]~15_combout\)))) # (\ula|mux4|Mux29~1_combout\ & (((\A_aux[25]~input_o\ & \ula|mux2B|Y[25]~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100000011001111110000000011000011000000110011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux7~0_combout\,
	datab => \ALT_INV_A_aux[25]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[25]~15_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[24]~23_combout\,
	combout => \ula|mux4|Mux6~0_combout\);

\ula|full_adder|c_out[25]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[25]~24_combout\ = (!\A_aux[25]~input_o\ & ((!\ula|mux2B|Y[25]~15_combout\) # ((!\ula|mux4|Mux7~0_combout\ & !\ula|full_adder|c_out[24]~23_combout\)))) # (\A_aux[25]~input_o\ & (!\ula|mux4|Mux7~0_combout\ & 
-- (!\ula|mux2B|Y[25]~15_combout\ & !\ula|full_adder|c_out[24]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100011000000111010001100000011101000110000001110100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux7~0_combout\,
	datab => \ALT_INV_A_aux[25]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[25]~15_combout\,
	datad => \ula|full_adder|ALT_INV_c_out[24]~23_combout\,
	combout => \ula|full_adder|c_out[25]~24_combout\);

\ula|mux4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~0_combout\ = ( \ula|full_adder|c_out[25]~24_combout\ & ( (!\A_aux[26]~input_o\ & (\ula|mux2B|Y[26]~16_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[26]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[26]~16_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[25]~24_combout\ & ( (!\A_aux[26]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[26]~16_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[26]~input_o\ & 
-- ((!\ula|mux4|Mux29~3_combout\ & (\ula|mux2B|Y[26]~16_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[26]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[26]~16_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[25]~24_combout\,
	combout => \ula|mux4|Mux5~0_combout\);

\ula|mux2B|Y[27]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux2B|Y[27]~21_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_B_aux[27]~input_o\,
	combout => \ula|mux2B|Y[27]~21_combout\);

\ula|full_adder|c_out[26]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[26]~25_combout\ = ( \ula|mux2B|Y[26]~16_combout\ & ( \ula|full_adder|c_out[24]~23_combout\ & ( (!\A_aux[25]~input_o\ & (!\ula|mux2B|Y[25]~15_combout\ & !\A_aux[26]~input_o\)) ) ) ) # ( !\ula|mux2B|Y[26]~16_combout\ & ( 
-- \ula|full_adder|c_out[24]~23_combout\ & ( (!\A_aux[26]~input_o\) # ((!\A_aux[25]~input_o\ & !\ula|mux2B|Y[25]~15_combout\)) ) ) ) # ( \ula|mux2B|Y[26]~16_combout\ & ( !\ula|full_adder|c_out[24]~23_combout\ & ( (!\A_aux[26]~input_o\ & 
-- ((!\ula|mux4|Mux7~0_combout\ & ((!\A_aux[25]~input_o\) # (!\ula|mux2B|Y[25]~15_combout\))) # (\ula|mux4|Mux7~0_combout\ & (!\A_aux[25]~input_o\ & !\ula|mux2B|Y[25]~15_combout\)))) ) ) ) # ( !\ula|mux2B|Y[26]~16_combout\ & ( 
-- !\ula|full_adder|c_out[24]~23_combout\ & ( (!\A_aux[26]~input_o\) # ((!\ula|mux4|Mux7~0_combout\ & ((!\A_aux[25]~input_o\) # (!\ula|mux2B|Y[25]~15_combout\))) # (\ula|mux4|Mux7~0_combout\ & (!\A_aux[25]~input_o\ & !\ula|mux2B|Y[25]~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101000111010000000000011111111110000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux7~0_combout\,
	datab => \ALT_INV_A_aux[25]~input_o\,
	datac => \ula|mux2B|ALT_INV_Y[25]~15_combout\,
	datad => \ALT_INV_A_aux[26]~input_o\,
	datae => \ula|mux2B|ALT_INV_Y[26]~16_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[24]~23_combout\,
	combout => \ula|full_adder|c_out[26]~25_combout\);

\ula|mux4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux4~0_combout\ = ( \ula|full_adder|c_out[26]~25_combout\ & ( (!\A_aux[27]~input_o\ & (\ula|mux2B|Y[27]~21_combout\ & (!\ula|mux4|Mux29~1_combout\))) # (\A_aux[27]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[27]~21_combout\ & 
-- !\ula|mux4|Mux29~3_combout\))))) ) ) # ( !\ula|full_adder|c_out[26]~25_combout\ & ( (!\A_aux[27]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[27]~21_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[27]~input_o\ & 
-- ((!\ula|mux4|Mux29~3_combout\ & (\ula|mux2B|Y[27]~21_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000101110000011000010111000010010001011100000110000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[27]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[27]~21_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[26]~25_combout\,
	combout => \ula|mux4|Mux4~0_combout\);

\ula|mux4|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux5~1_combout\ = (!\ula|mux4|Mux29~1_combout\ & !\ula|mux4|Mux29~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datab => \ula|mux4|ALT_INV_Mux29~3_combout\,
	combout => \ula|mux4|Mux5~1_combout\);

\ula|full_adder|result[28]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|result[28]~0_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\A_aux[28]~input_o\ $ (\B_aux[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[28]~input_o\,
	datac => \ALT_INV_B_aux[28]~input_o\,
	combout => \ula|full_adder|result[28]~0_combout\);

\ula|mux4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~0_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[28]~input_o\)) # (\A_aux[28]~input_o\))) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( (\A_aux[28]~input_o\ & 
-- (\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[28]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010011110110000000000000000000100100111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[28]~input_o\,
	datac => \ALT_INV_B_aux[28]~input_o\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	combout => \ula|mux4|Mux3~0_combout\);

\ula|mux4|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux3~1_combout\ = ( \ula|full_adder|result[28]~0_combout\ & ( \ula|mux4|Mux3~0_combout\ ) ) # ( !\ula|full_adder|result[28]~0_combout\ & ( \ula|mux4|Mux3~0_combout\ ) ) # ( \ula|full_adder|result[28]~0_combout\ & ( !\ula|mux4|Mux3~0_combout\ & ( 
-- (\ula|mux4|Mux5~1_combout\ & ((!\A_aux[27]~input_o\ & ((!\ula|mux2B|Y[27]~21_combout\) # (\ula|full_adder|c_out[26]~25_combout\))) # (\A_aux[27]~input_o\ & (!\ula|mux2B|Y[27]~21_combout\ & \ula|full_adder|c_out[26]~25_combout\)))) ) ) ) # ( 
-- !\ula|full_adder|result[28]~0_combout\ & ( !\ula|mux4|Mux3~0_combout\ & ( (\ula|mux4|Mux5~1_combout\ & ((!\A_aux[27]~input_o\ & (\ula|mux2B|Y[27]~21_combout\ & !\ula|full_adder|c_out[26]~25_combout\)) # (\A_aux[27]~input_o\ & 
-- ((!\ula|full_adder|c_out[26]~25_combout\) # (\ula|mux2B|Y[27]~21_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000001000010000000111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[27]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[27]~21_combout\,
	datac => \ula|mux4|ALT_INV_Mux5~1_combout\,
	datad => \ula|full_adder|ALT_INV_c_out[26]~25_combout\,
	datae => \ula|full_adder|ALT_INV_result[28]~0_combout\,
	dataf => \ula|mux4|ALT_INV_Mux3~0_combout\,
	combout => \ula|mux4|Mux3~1_combout\);

\ula|full_adder|c_out[28]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[28]~26_combout\ = ( \B_aux[28]~input_o\ & ( \ula|full_adder|c_out[26]~25_combout\ & ( (!\A_aux[27]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ & ((\A_aux[28]~input_o\)))) # (\A_aux[27]~input_o\ & ((!\B_aux[27]~input_o\ & 
-- ((\A_aux[28]~input_o\))) # (\B_aux[27]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\)))) ) ) ) # ( !\B_aux[28]~input_o\ & ( \ula|full_adder|c_out[26]~25_combout\ & ( (!\A_aux[27]~input_o\ & (\ula_ctrl|ula_ctrl[2]~6_combout\ & ((\A_aux[28]~input_o\)))) # 
-- (\A_aux[27]~input_o\ & ((!\B_aux[27]~input_o\ & (\ula_ctrl|ula_ctrl[2]~6_combout\)) # (\B_aux[27]~input_o\ & ((\A_aux[28]~input_o\))))) ) ) ) # ( \B_aux[28]~input_o\ & ( !\ula|full_adder|c_out[26]~25_combout\ & ( (!\A_aux[27]~input_o\ & 
-- ((!\B_aux[27]~input_o\ & ((\A_aux[28]~input_o\))) # (\B_aux[27]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\)))) # (\A_aux[27]~input_o\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\) # ((\A_aux[28]~input_o\)))) ) ) ) # ( !\B_aux[28]~input_o\ & ( 
-- !\ula|full_adder|c_out[26]~25_combout\ & ( (!\A_aux[27]~input_o\ & ((!\B_aux[27]~input_o\ & (\ula_ctrl|ula_ctrl[2]~6_combout\)) # (\B_aux[27]~input_o\ & ((\A_aux[28]~input_o\))))) # (\A_aux[27]~input_o\ & (((\A_aux[28]~input_o\)) # 
-- (\ula_ctrl|ula_ctrl[2]~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000101111111001010101111101100010000010101110000001010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[27]~input_o\,
	datac => \ALT_INV_B_aux[27]~input_o\,
	datad => \ALT_INV_A_aux[28]~input_o\,
	datae => \ALT_INV_B_aux[28]~input_o\,
	dataf => \ula|full_adder|ALT_INV_c_out[26]~25_combout\,
	combout => \ula|full_adder|c_out[28]~26_combout\);

\ula|mux4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux2~0_combout\ = ( \ula|full_adder|c_out[28]~26_combout\ & ( (!\A_aux[29]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula|mux2B|Y[29]~17_combout\ $ (\ula|mux4|Mux29~3_combout\)))) # (\A_aux[29]~input_o\ & ((!\ula|mux4|Mux29~3_combout\ & 
-- (\ula|mux2B|Y[29]~17_combout\)) # (\ula|mux4|Mux29~3_combout\ & ((!\ula|mux4|Mux29~1_combout\))))) ) ) # ( !\ula|full_adder|c_out[28]~26_combout\ & ( (!\A_aux[29]~input_o\ & (\ula|mux2B|Y[29]~17_combout\ & (!\ula|mux4|Mux29~1_combout\))) # 
-- (\A_aux[29]~input_o\ & (!\ula|mux4|Mux29~1_combout\ $ (((\ula|mux2B|Y[29]~17_combout\ & !\ula|mux4|Mux29~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101110000100100010111000001100001011100001001000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[29]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[29]~17_combout\,
	datac => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux29~3_combout\,
	datae => \ula|full_adder|ALT_INV_c_out[28]~26_combout\,
	combout => \ula|mux4|Mux2~0_combout\);

\ula|full_adder|result[30]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|result[30]~1_combout\ = !\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\A_aux[30]~input_o\ $ (\B_aux[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[30]~input_o\,
	datac => \ALT_INV_B_aux[30]~input_o\,
	combout => \ula|full_adder|result[30]~1_combout\);

\ula|mux4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~0_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[30]~input_o\)) # (\A_aux[30]~input_o\))) ) ) # ( !\ula|mux4|Mux29~3_combout\ & ( (\A_aux[30]~input_o\ & 
-- (\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010011110110000000000000000000100100111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[30]~input_o\,
	datac => \ALT_INV_B_aux[30]~input_o\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	combout => \ula|mux4|Mux1~0_combout\);

\ula|mux4|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux1~1_combout\ = ( \ula|full_adder|result[30]~1_combout\ & ( \ula|mux4|Mux1~0_combout\ ) ) # ( !\ula|full_adder|result[30]~1_combout\ & ( \ula|mux4|Mux1~0_combout\ ) ) # ( \ula|full_adder|result[30]~1_combout\ & ( !\ula|mux4|Mux1~0_combout\ & ( 
-- (\ula|mux4|Mux5~1_combout\ & ((!\A_aux[29]~input_o\ & ((!\ula|mux2B|Y[29]~17_combout\) # (!\ula|full_adder|c_out[28]~26_combout\))) # (\A_aux[29]~input_o\ & (!\ula|mux2B|Y[29]~17_combout\ & !\ula|full_adder|c_out[28]~26_combout\)))) ) ) ) # ( 
-- !\ula|full_adder|result[30]~1_combout\ & ( !\ula|mux4|Mux1~0_combout\ & ( (\ula|mux4|Mux5~1_combout\ & ((!\A_aux[29]~input_o\ & (\ula|mux2B|Y[29]~17_combout\ & \ula|full_adder|c_out[28]~26_combout\)) # (\A_aux[29]~input_o\ & 
-- ((\ula|full_adder|c_out[28]~26_combout\) # (\ula|mux2B|Y[29]~17_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000011100000100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A_aux[29]~input_o\,
	datab => \ula|mux2B|ALT_INV_Y[29]~17_combout\,
	datac => \ula|mux4|ALT_INV_Mux5~1_combout\,
	datad => \ula|full_adder|ALT_INV_c_out[28]~26_combout\,
	datae => \ula|full_adder|ALT_INV_result[30]~1_combout\,
	dataf => \ula|mux4|ALT_INV_Mux1~0_combout\,
	combout => \ula|mux4|Mux1~1_combout\);

\ula|full_adder|c_out[30]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|full_adder|c_out[30]~27_combout\ = ( \B_aux[30]~input_o\ & ( \ula|full_adder|c_out[28]~26_combout\ & ( (!\A_aux[29]~input_o\ & ((!\B_aux[29]~input_o\ & ((\A_aux[30]~input_o\))) # (\B_aux[29]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\)))) # 
-- (\A_aux[29]~input_o\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\) # ((\A_aux[30]~input_o\)))) ) ) ) # ( !\B_aux[30]~input_o\ & ( \ula|full_adder|c_out[28]~26_combout\ & ( (!\A_aux[29]~input_o\ & ((!\B_aux[29]~input_o\ & (\ula_ctrl|ula_ctrl[2]~6_combout\)) # 
-- (\B_aux[29]~input_o\ & ((\A_aux[30]~input_o\))))) # (\A_aux[29]~input_o\ & (((\A_aux[30]~input_o\)) # (\ula_ctrl|ula_ctrl[2]~6_combout\))) ) ) ) # ( \B_aux[30]~input_o\ & ( !\ula|full_adder|c_out[28]~26_combout\ & ( (!\A_aux[29]~input_o\ & 
-- (!\ula_ctrl|ula_ctrl[2]~6_combout\ & ((\A_aux[30]~input_o\)))) # (\A_aux[29]~input_o\ & ((!\B_aux[29]~input_o\ & ((\A_aux[30]~input_o\))) # (\B_aux[29]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\)))) ) ) ) # ( !\B_aux[30]~input_o\ & ( 
-- !\ula|full_adder|c_out[28]~26_combout\ & ( (!\A_aux[29]~input_o\ & (\ula_ctrl|ula_ctrl[2]~6_combout\ & ((\A_aux[30]~input_o\)))) # (\A_aux[29]~input_o\ & ((!\B_aux[29]~input_o\ & (\ula_ctrl|ula_ctrl[2]~6_combout\)) # (\B_aux[29]~input_o\ & 
-- ((\A_aux[30]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010111000000101011101001010001011111110010101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[29]~input_o\,
	datac => \ALT_INV_B_aux[29]~input_o\,
	datad => \ALT_INV_A_aux[30]~input_o\,
	datae => \ALT_INV_B_aux[30]~input_o\,
	dataf => \ula|full_adder|ALT_INV_c_out[28]~26_combout\,
	combout => \ula|full_adder|c_out[30]~27_combout\);

\ula|mux4|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|mux4|Mux0~1_combout\ = ( \ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[30]~27_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[31]~input_o\)) # (\A_aux[31]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( \ula|full_adder|c_out[30]~27_combout\ & ( (!\A_aux[31]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (\B_aux[31]~input_o\)))) # (\A_aux[31]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- ((!\B_aux[31]~input_o\)))) ) ) ) # ( \ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[30]~27_combout\ & ( (!\ula|mux4|Mux29~1_combout\ & ((!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[31]~input_o\)) # (\A_aux[31]~input_o\))) ) ) ) # ( 
-- !\ula|mux4|Mux29~3_combout\ & ( !\ula|full_adder|c_out[30]~27_combout\ & ( (!\A_aux[31]~input_o\ & (!\ula|mux4|Mux29~1_combout\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ (!\B_aux[31]~input_o\)))) # (\A_aux[31]~input_o\ & (!\ula_ctrl|ula_ctrl[2]~6_combout\ $ 
-- (!\B_aux[31]~input_o\ $ (!\ula|mux4|Mux29~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100010010011110110000000010010110000100100111101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl[2]~6_combout\,
	datab => \ALT_INV_A_aux[31]~input_o\,
	datac => \ALT_INV_B_aux[31]~input_o\,
	datad => \ula|mux4|ALT_INV_Mux29~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux29~3_combout\,
	dataf => \ula|full_adder|ALT_INV_c_out[30]~27_combout\,
	combout => \ula|mux4|Mux0~1_combout\);

\ula|zero~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|zero~0_combout\ = ( !\ula|mux4|Mux26~1_combout\ & ( (!\ula|mux4|Mux30~0_combout\ & (!\ula|mux4|Mux29~4_combout\ & (!\ula|mux4|Mux28~0_combout\ & !\ula|mux4|Mux27~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux30~0_combout\,
	datab => \ula|mux4|ALT_INV_Mux29~4_combout\,
	datac => \ula|mux4|ALT_INV_Mux28~0_combout\,
	datad => \ula|mux4|ALT_INV_Mux27~1_combout\,
	datae => \ula|mux4|ALT_INV_Mux26~1_combout\,
	combout => \ula|zero~0_combout\);

\ula|zero~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|zero~1_combout\ = ( \ula|zero~0_combout\ & ( (!\ula|mux4|Mux25~0_combout\ & (!\ula|mux4|Mux24~0_combout\ & (!\ula|mux4|Mux23~0_combout\ & !\ula|mux4|Mux22~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux25~0_combout\,
	datab => \ula|mux4|ALT_INV_Mux24~0_combout\,
	datac => \ula|mux4|ALT_INV_Mux23~0_combout\,
	datad => \ula|mux4|ALT_INV_Mux22~1_combout\,
	datae => \ula|ALT_INV_zero~0_combout\,
	combout => \ula|zero~1_combout\);

\ula|zero~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|zero~2_combout\ = (!\ula|mux4|Mux21~0_combout\ & (!\ula|mux4|Mux20~0_combout\ & (!\ula|mux4|Mux19~0_combout\ & \ula|zero~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux21~0_combout\,
	datab => \ula|mux4|ALT_INV_Mux20~0_combout\,
	datac => \ula|mux4|ALT_INV_Mux19~0_combout\,
	datad => \ula|ALT_INV_zero~1_combout\,
	combout => \ula|zero~2_combout\);

\ula|zero~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|zero~3_combout\ = ( \ula|zero~2_combout\ & ( (!\ula|mux4|Mux18~0_combout\ & (!\ula|mux4|Mux17~1_combout\ & (!\ula|mux4|Mux16~0_combout\ & !\ula|mux4|Mux15~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux18~0_combout\,
	datab => \ula|mux4|ALT_INV_Mux17~1_combout\,
	datac => \ula|mux4|ALT_INV_Mux16~0_combout\,
	datad => \ula|mux4|ALT_INV_Mux15~0_combout\,
	datae => \ula|ALT_INV_zero~2_combout\,
	combout => \ula|zero~3_combout\);

\ula|zero~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|zero~4_combout\ = ( \ula|zero~3_combout\ & ( (!\ula|mux4|Mux14~0_combout\ & (!\ula|mux4|Mux13~0_combout\ & (!\ula|mux4|Mux12~1_combout\ & !\ula|mux4|Mux11~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux14~0_combout\,
	datab => \ula|mux4|ALT_INV_Mux13~0_combout\,
	datac => \ula|mux4|ALT_INV_Mux12~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux11~0_combout\,
	datae => \ula|ALT_INV_zero~3_combout\,
	combout => \ula|zero~4_combout\);

\ula|zero~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|zero~5_combout\ = ( \ula|zero~4_combout\ & ( (!\ula|mux4|Mux10~0_combout\ & (!\ula|mux4|Mux9~0_combout\ & (!\ula|mux4|Mux8~0_combout\ & !\ula|mux4|Mux7~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux10~0_combout\,
	datab => \ula|mux4|ALT_INV_Mux9~0_combout\,
	datac => \ula|mux4|ALT_INV_Mux8~0_combout\,
	datad => \ula|mux4|ALT_INV_Mux7~1_combout\,
	datae => \ula|ALT_INV_zero~4_combout\,
	combout => \ula|zero~5_combout\);

\ula|zero~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|zero~6_combout\ = ( \ula|zero~5_combout\ & ( (!\ula|mux4|Mux6~0_combout\ & (!\ula|mux4|Mux5~0_combout\ & (!\ula|mux4|Mux4~0_combout\ & !\ula|mux4|Mux3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux6~0_combout\,
	datab => \ula|mux4|ALT_INV_Mux5~0_combout\,
	datac => \ula|mux4|ALT_INV_Mux4~0_combout\,
	datad => \ula|mux4|ALT_INV_Mux3~1_combout\,
	datae => \ula|ALT_INV_zero~5_combout\,
	combout => \ula|zero~6_combout\);

\ula|zero~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula|zero~7_combout\ = ( \ula|zero~6_combout\ & ( (((\ula|mux4|Mux0~1_combout\) # (\ula|mux4|Mux1~1_combout\)) # (\ula|mux4|Mux2~0_combout\)) # (\ula|mux4|Mux31~0_combout\) ) ) # ( !\ula|zero~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011111111111111111111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula|mux4|ALT_INV_Mux31~0_combout\,
	datab => \ula|mux4|ALT_INV_Mux2~0_combout\,
	datac => \ula|mux4|ALT_INV_Mux1~1_combout\,
	datad => \ula|mux4|ALT_INV_Mux0~1_combout\,
	datae => \ula|ALT_INV_zero~6_combout\,
	combout => \ula|zero~7_combout\);

\fd_ctrl|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal0~0_combout\ = ( !\op_code_aux[4]~input_o\ & ( !\op_code_aux[5]~input_o\ & ( (!\op_code_aux[2]~input_o\ & (\op_code_aux[1]~input_o\ & (!\op_code_aux[0]~input_o\ & !\op_code_aux[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code_aux[2]~input_o\,
	datab => \ALT_INV_op_code_aux[1]~input_o\,
	datac => \ALT_INV_op_code_aux[0]~input_o\,
	datad => \ALT_INV_op_code_aux[3]~input_o\,
	datae => \ALT_INV_op_code_aux[4]~input_o\,
	dataf => \ALT_INV_op_code_aux[5]~input_o\,
	combout => \fd_ctrl|Equal0~0_combout\);

\fd_ctrl|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal2~0_combout\ = (!\op_code_aux[4]~input_o\ & \op_code_aux[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code_aux[4]~input_o\,
	datab => \ALT_INV_op_code_aux[5]~input_o\,
	combout => \fd_ctrl|Equal2~0_combout\);

\fd_ctrl|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal1~0_combout\ = ( \fd_ctrl|Equal2~0_combout\ & ( (!\op_code_aux[2]~input_o\ & (\op_code_aux[1]~input_o\ & (\op_code_aux[0]~input_o\ & !\op_code_aux[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code_aux[2]~input_o\,
	datab => \ALT_INV_op_code_aux[1]~input_o\,
	datac => \ALT_INV_op_code_aux[0]~input_o\,
	datad => \ALT_INV_op_code_aux[3]~input_o\,
	datae => \fd_ctrl|ALT_INV_Equal2~0_combout\,
	combout => \fd_ctrl|Equal1~0_combout\);

\fd_ctrl|habEscReg\ : cyclonev_lcell_comb
-- Equation(s):
-- \fd_ctrl|habEscReg~combout\ = (!\fd_ctrl|op_code_aux~0_combout\) # (\fd_ctrl|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fd_ctrl|ALT_INV_op_code_aux~0_combout\,
	datab => \fd_ctrl|ALT_INV_Equal1~0_combout\,
	combout => \fd_ctrl|habEscReg~combout\);

\fd_ctrl|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \fd_ctrl|Equal5~0_combout\ = ( \fd_ctrl|Equal2~0_combout\ & ( (!\op_code_aux[2]~input_o\ & (\op_code_aux[1]~input_o\ & (\op_code_aux[0]~input_o\ & \op_code_aux[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_code_aux[2]~input_o\,
	datab => \ALT_INV_op_code_aux[1]~input_o\,
	datac => \ALT_INV_op_code_aux[0]~input_o\,
	datad => \ALT_INV_op_code_aux[3]~input_o\,
	datae => \fd_ctrl|ALT_INV_Equal2~0_combout\,
	combout => \fd_ctrl|Equal5~0_combout\);

\ula_ctrl|ula_ctrl[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ula_ctrl|ula_ctrl[1]~9_combout\ = (!\ula_ctrl|ula_ctrl~2_combout\) # (\ula_ctrl|ula_ctrl~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ula_ctrl|ALT_INV_ula_ctrl~2_combout\,
	datab => \ula_ctrl|ALT_INV_ula_ctrl~4_combout\,
	combout => \ula_ctrl|ula_ctrl[1]~9_combout\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

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

ww_zero <= \zero~output_o\;

ww_mux1_teste <= \mux1_teste~output_o\;

ww_mux2_teste <= \mux2_teste~output_o\;

ww_mux3_teste <= \mux3_teste~output_o\;

ww_mux4_teste <= \mux4_teste~output_o\;

ww_habEscReg_teste <= \habEscReg_teste~output_o\;

ww_beq_teste <= \beq_teste~output_o\;

ww_habLeiMEM_teste <= \habLeiMEM_teste~output_o\;

ww_habEscMEM_teste <= \habEscMEM_teste~output_o\;

ww_ULAop_teste(0) <= \ULAop_teste[0]~output_o\;

ww_ULAop_teste(1) <= \ULAop_teste[1]~output_o\;

ww_ula_ctrl_teste(0) <= \ula_ctrl_teste[0]~output_o\;

ww_ula_ctrl_teste(1) <= \ula_ctrl_teste[1]~output_o\;

ww_ula_ctrl_teste(2) <= \ula_ctrl_teste[2]~output_o\;

ww_ula_ctrl_teste(3) <= \ula_ctrl_teste[3]~output_o\;
END structure;


