-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "10/16/2018 18:00:18"

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
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fluxoDadosALU IS
    PORT (
	entradaA : IN std_logic_vector(31 DOWNTO 0);
	entradaB : IN std_logic_vector(31 DOWNTO 0);
	SEL_Inverte_SinalA : IN std_logic;
	SEL_Inverte_SinalB : IN std_logic;
	SEL_ULA : IN std_logic_vector(1 DOWNTO 0);
	last_Cout : OUT std_logic;
	resposta : OUT std_logic_vector(31 DOWNTO 0);
	Z : OUT std_logic
	);
END fluxoDadosALU;

-- Design Ports Information
-- last_Cout	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[2]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[4]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[5]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[7]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[8]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[9]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[10]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[11]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[12]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[13]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[14]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[15]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[16]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[17]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[18]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[19]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[20]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[21]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[22]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[23]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[24]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[25]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[26]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[27]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[28]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[29]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[30]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- resposta[31]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_Inverte_SinalA	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[31]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[31]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_Inverte_SinalB	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[30]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[30]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[29]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[29]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[28]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[28]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[27]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[27]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[26]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[26]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[25]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[25]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[24]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[24]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[23]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[23]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[22]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[22]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[21]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[21]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[20]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[20]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[19]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[19]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[18]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[18]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[17]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[17]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[16]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[16]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[15]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[15]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[14]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[14]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[13]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[13]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[12]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[12]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[11]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[11]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[10]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[10]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[9]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[9]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[8]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[8]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[5]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[1]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[0]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_ULA[1]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_ULA[0]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fluxoDadosALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SEL_Inverte_SinalA : std_logic;
SIGNAL ww_SEL_Inverte_SinalB : std_logic;
SIGNAL ww_SEL_ULA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_last_Cout : std_logic;
SIGNAL ww_resposta : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL \last_Cout~output_o\ : std_logic;
SIGNAL \resposta[0]~output_o\ : std_logic;
SIGNAL \resposta[1]~output_o\ : std_logic;
SIGNAL \resposta[2]~output_o\ : std_logic;
SIGNAL \resposta[3]~output_o\ : std_logic;
SIGNAL \resposta[4]~output_o\ : std_logic;
SIGNAL \resposta[5]~output_o\ : std_logic;
SIGNAL \resposta[6]~output_o\ : std_logic;
SIGNAL \resposta[7]~output_o\ : std_logic;
SIGNAL \resposta[8]~output_o\ : std_logic;
SIGNAL \resposta[9]~output_o\ : std_logic;
SIGNAL \resposta[10]~output_o\ : std_logic;
SIGNAL \resposta[11]~output_o\ : std_logic;
SIGNAL \resposta[12]~output_o\ : std_logic;
SIGNAL \resposta[13]~output_o\ : std_logic;
SIGNAL \resposta[14]~output_o\ : std_logic;
SIGNAL \resposta[15]~output_o\ : std_logic;
SIGNAL \resposta[16]~output_o\ : std_logic;
SIGNAL \resposta[17]~output_o\ : std_logic;
SIGNAL \resposta[18]~output_o\ : std_logic;
SIGNAL \resposta[19]~output_o\ : std_logic;
SIGNAL \resposta[20]~output_o\ : std_logic;
SIGNAL \resposta[21]~output_o\ : std_logic;
SIGNAL \resposta[22]~output_o\ : std_logic;
SIGNAL \resposta[23]~output_o\ : std_logic;
SIGNAL \resposta[24]~output_o\ : std_logic;
SIGNAL \resposta[25]~output_o\ : std_logic;
SIGNAL \resposta[26]~output_o\ : std_logic;
SIGNAL \resposta[27]~output_o\ : std_logic;
SIGNAL \resposta[28]~output_o\ : std_logic;
SIGNAL \resposta[29]~output_o\ : std_logic;
SIGNAL \resposta[30]~output_o\ : std_logic;
SIGNAL \resposta[31]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \entradaB[30]~input_o\ : std_logic;
SIGNAL \SEL_Inverte_SinalB~input_o\ : std_logic;
SIGNAL \MuxGenB|X[30]~1_combout\ : std_logic;
SIGNAL \entradaA[30]~input_o\ : std_logic;
SIGNAL \SEL_Inverte_SinalA~input_o\ : std_logic;
SIGNAL \entradaA[28]~input_o\ : std_logic;
SIGNAL \entradaB[28]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[28]~3_combout\ : std_logic;
SIGNAL \entradaB[27]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[27]~4_combout\ : std_logic;
SIGNAL \entradaA[27]~input_o\ : std_logic;
SIGNAL \entradaA[25]~input_o\ : std_logic;
SIGNAL \entradaB[25]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[25]~6_combout\ : std_logic;
SIGNAL \entradaB[24]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[24]~7_combout\ : std_logic;
SIGNAL \entradaB[23]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[23]~8_combout\ : std_logic;
SIGNAL \entradaB[22]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[22]~9_combout\ : std_logic;
SIGNAL \entradaB[21]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[21]~10_combout\ : std_logic;
SIGNAL \entradaA[21]~input_o\ : std_logic;
SIGNAL \entradaB[20]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[20]~11_combout\ : std_logic;
SIGNAL \entradaA[20]~input_o\ : std_logic;
SIGNAL \entradaA[19]~input_o\ : std_logic;
SIGNAL \entradaB[18]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[18]~13_combout\ : std_logic;
SIGNAL \entradaA[18]~input_o\ : std_logic;
SIGNAL \entradaB[17]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[17]~14_combout\ : std_logic;
SIGNAL \entradaA[16]~input_o\ : std_logic;
SIGNAL \entradaB[14]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[14]~17_combout\ : std_logic;
SIGNAL \entradaB[13]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[13]~18_combout\ : std_logic;
SIGNAL \entradaA[13]~input_o\ : std_logic;
SIGNAL \entradaA[12]~input_o\ : std_logic;
SIGNAL \entradaB[11]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[11]~20_combout\ : std_logic;
SIGNAL \entradaB[10]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[10]~21_combout\ : std_logic;
SIGNAL \entradaB[9]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[9]~22_combout\ : std_logic;
SIGNAL \entradaB[8]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[8]~23_combout\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[6]~25_combout\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[4]~27_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[3]~28_combout\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[2]~29_combout\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder0|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[1]~30_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder1|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder2|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder3|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder4|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[5]~26_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder5|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder6|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[7]~24_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder7|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[8]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder8|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[9]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder9|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[10]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder10|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[11]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder11|Cout~0_combout\ : std_logic;
SIGNAL \entradaB[12]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[12]~19_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder12|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder13|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[14]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder14|Cout~0_combout\ : std_logic;
SIGNAL \entradaB[15]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[15]~16_combout\ : std_logic;
SIGNAL \entradaA[15]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder15|Cout~0_combout\ : std_logic;
SIGNAL \entradaB[16]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[16]~15_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder16|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[17]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder17|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder18|Cout~0_combout\ : std_logic;
SIGNAL \entradaB[19]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[19]~12_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder19|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder20|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder21|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[22]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder22|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[23]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder23|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[24]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder24|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder25|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[26]~input_o\ : std_logic;
SIGNAL \entradaB[26]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[26]~5_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder26|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder27|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder28|Cout~0_combout\ : std_logic;
SIGNAL \entradaA[29]~input_o\ : std_logic;
SIGNAL \entradaB[29]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[29]~2_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder29|Cout~0_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder30|Cout~0_combout\ : std_logic;
SIGNAL \entradaB[31]~input_o\ : std_logic;
SIGNAL \MuxGenB|X[31]~0_combout\ : std_logic;
SIGNAL \entradaA[31]~input_o\ : std_logic;
SIGNAL \Fulladder32|fulladder31|Cout~0_combout\ : std_logic;
SIGNAL \SEL_ULA[0]~input_o\ : std_logic;
SIGNAL \SEL_ULA[1]~input_o\ : std_logic;
SIGNAL \MuxAlu|Mux31~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux31~2_combout\ : std_logic;
SIGNAL \saidaSLT[0]~3_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder0|soma~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux31~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux30~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux30~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux29~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux29~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux28~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux28~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux27~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux27~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux26~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux26~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux25~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux25~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux24~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux24~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux23~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux23~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux22~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux22~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux21~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux21~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux20~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux20~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux19~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux19~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux18~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux18~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux17~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux17~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux16~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux16~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux15~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux15~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux14~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux14~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux13~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux13~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux12~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux12~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux11~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux11~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux10~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux10~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux9~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux9~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux8~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux8~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux7~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux7~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux6~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux6~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux5~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux5~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux4~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux4~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux3~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux3~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux3~2_combout\ : std_logic;
SIGNAL \MuxAlu|Mux30~2_combout\ : std_logic;
SIGNAL \MuxAlu|Mux3~3_combout\ : std_logic;
SIGNAL \MuxAlu|Mux2~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux2~1_combout\ : std_logic;
SIGNAL \Fulladder32|fulladder30|soma~0_combout\ : std_logic;
SIGNAL \MuxGenA|X[30]~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux1~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux1~1_combout\ : std_logic;
SIGNAL \saidaSLT[0]~2_combout\ : std_logic;
SIGNAL \MuxGenA|X[31]~1_combout\ : std_logic;
SIGNAL \MuxAlu|Mux0~0_combout\ : std_logic;
SIGNAL \MuxAlu|Mux0~1_combout\ : std_logic;
SIGNAL \MuxAlu|result~0_combout\ : std_logic;
SIGNAL \MuxAlu|ALT_INV_result~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_SEL_Inverte_SinalA <= SEL_Inverte_SinalA;
ww_SEL_Inverte_SinalB <= SEL_Inverte_SinalB;
ww_SEL_ULA <= SEL_ULA;
last_Cout <= ww_last_Cout;
resposta <= ww_resposta;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\MuxAlu|ALT_INV_result~0_combout\ <= NOT \MuxAlu|result~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X52_Y73_N23
\last_Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Fulladder32|fulladder31|Cout~0_combout\,
	devoe => ww_devoe,
	o => \last_Cout~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\resposta[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \resposta[0]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\resposta[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux30~1_combout\,
	devoe => ww_devoe,
	o => \resposta[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\resposta[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux29~1_combout\,
	devoe => ww_devoe,
	o => \resposta[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\resposta[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux28~1_combout\,
	devoe => ww_devoe,
	o => \resposta[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\resposta[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux27~1_combout\,
	devoe => ww_devoe,
	o => \resposta[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\resposta[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux26~1_combout\,
	devoe => ww_devoe,
	o => \resposta[5]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\resposta[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux25~1_combout\,
	devoe => ww_devoe,
	o => \resposta[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\resposta[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux24~1_combout\,
	devoe => ww_devoe,
	o => \resposta[7]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\resposta[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux23~1_combout\,
	devoe => ww_devoe,
	o => \resposta[8]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\resposta[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \resposta[9]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\resposta[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux21~1_combout\,
	devoe => ww_devoe,
	o => \resposta[10]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\resposta[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux20~1_combout\,
	devoe => ww_devoe,
	o => \resposta[11]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\resposta[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux19~1_combout\,
	devoe => ww_devoe,
	o => \resposta[12]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\resposta[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux18~1_combout\,
	devoe => ww_devoe,
	o => \resposta[13]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\resposta[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux17~1_combout\,
	devoe => ww_devoe,
	o => \resposta[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\resposta[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \resposta[15]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\resposta[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux15~1_combout\,
	devoe => ww_devoe,
	o => \resposta[16]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\resposta[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux14~1_combout\,
	devoe => ww_devoe,
	o => \resposta[17]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\resposta[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux13~1_combout\,
	devoe => ww_devoe,
	o => \resposta[18]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\resposta[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux12~1_combout\,
	devoe => ww_devoe,
	o => \resposta[19]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\resposta[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux11~1_combout\,
	devoe => ww_devoe,
	o => \resposta[20]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\resposta[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux10~1_combout\,
	devoe => ww_devoe,
	o => \resposta[21]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\resposta[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \resposta[22]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\resposta[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux8~1_combout\,
	devoe => ww_devoe,
	o => \resposta[23]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\resposta[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux7~1_combout\,
	devoe => ww_devoe,
	o => \resposta[24]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\resposta[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux6~1_combout\,
	devoe => ww_devoe,
	o => \resposta[25]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\resposta[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux5~1_combout\,
	devoe => ww_devoe,
	o => \resposta[26]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\resposta[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux4~1_combout\,
	devoe => ww_devoe,
	o => \resposta[27]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\resposta[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \resposta[28]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\resposta[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \resposta[29]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\resposta[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux1~1_combout\,
	devoe => ww_devoe,
	o => \resposta[30]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\resposta[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \resposta[31]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MuxAlu|ALT_INV_result~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOIBUF_X62_Y73_N22
\entradaB[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(30),
	o => \entradaB[30]~input_o\);

-- Location: IOIBUF_X115_Y67_N15
\SEL_Inverte_SinalB~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_Inverte_SinalB,
	o => \SEL_Inverte_SinalB~input_o\);

-- Location: LCCOMB_X62_Y69_N26
\MuxGenB|X[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[30]~1_combout\ = \entradaB[30]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[30]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[30]~1_combout\);

-- Location: IOIBUF_X58_Y73_N1
\entradaA[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(30),
	o => \entradaA[30]~input_o\);

-- Location: IOIBUF_X58_Y0_N8
\SEL_Inverte_SinalA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_Inverte_SinalA,
	o => \SEL_Inverte_SinalA~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\entradaA[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(28),
	o => \entradaA[28]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\entradaB[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(28),
	o => \entradaB[28]~input_o\);

-- Location: LCCOMB_X61_Y69_N8
\MuxGenB|X[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[28]~3_combout\ = \entradaB[28]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaB[28]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[28]~3_combout\);

-- Location: IOIBUF_X58_Y73_N22
\entradaB[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(27),
	o => \entradaB[27]~input_o\);

-- Location: LCCOMB_X61_Y69_N26
\MuxGenB|X[27]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[27]~4_combout\ = \entradaB[27]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[27]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[27]~4_combout\);

-- Location: IOIBUF_X49_Y73_N15
\entradaA[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(27),
	o => \entradaA[27]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\entradaA[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(25),
	o => \entradaA[25]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\entradaB[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(25),
	o => \entradaB[25]~input_o\);

-- Location: LCCOMB_X68_Y69_N26
\MuxGenB|X[25]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[25]~6_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaB[25]~input_o\,
	combout => \MuxGenB|X[25]~6_combout\);

-- Location: IOIBUF_X115_Y49_N1
\entradaB[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(24),
	o => \entradaB[24]~input_o\);

-- Location: LCCOMB_X114_Y51_N24
\MuxGenB|X[24]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[24]~7_combout\ = \entradaB[24]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaB[24]~input_o\,
	datac => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[24]~7_combout\);

-- Location: IOIBUF_X115_Y53_N15
\entradaB[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(23),
	o => \entradaB[23]~input_o\);

-- Location: LCCOMB_X114_Y51_N10
\MuxGenB|X[23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[23]~8_combout\ = \entradaB[23]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[23]~input_o\,
	datac => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[23]~8_combout\);

-- Location: IOIBUF_X115_Y52_N1
\entradaB[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(22),
	o => \entradaB[22]~input_o\);

-- Location: LCCOMB_X114_Y51_N12
\MuxGenB|X[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[22]~9_combout\ = \entradaB[22]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[22]~input_o\,
	datac => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[22]~9_combout\);

-- Location: IOIBUF_X115_Y50_N1
\entradaB[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(21),
	o => \entradaB[21]~input_o\);

-- Location: LCCOMB_X114_Y51_N22
\MuxGenB|X[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[21]~10_combout\ = \entradaB[21]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaB[21]~input_o\,
	datac => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[21]~10_combout\);

-- Location: IOIBUF_X115_Y51_N8
\entradaA[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(21),
	o => \entradaA[21]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\entradaB[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(20),
	o => \entradaB[20]~input_o\);

-- Location: LCCOMB_X68_Y69_N12
\MuxGenB|X[20]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[20]~11_combout\ = \entradaB[20]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaB[20]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[20]~11_combout\);

-- Location: IOIBUF_X67_Y73_N8
\entradaA[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(20),
	o => \entradaA[20]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\entradaA[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(19),
	o => \entradaA[19]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\entradaB[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(18),
	o => \entradaB[18]~input_o\);

-- Location: LCCOMB_X86_Y69_N10
\MuxGenB|X[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[18]~13_combout\ = \entradaB[18]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaB[18]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[18]~13_combout\);

-- Location: IOIBUF_X87_Y73_N1
\entradaA[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(18),
	o => \entradaA[18]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\entradaB[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(17),
	o => \entradaB[17]~input_o\);

-- Location: LCCOMB_X86_Y69_N12
\MuxGenB|X[17]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[17]~14_combout\ = \entradaB[17]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[17]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[17]~14_combout\);

-- Location: IOIBUF_X85_Y0_N22
\entradaA[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(16),
	o => \entradaA[16]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\entradaB[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(14),
	o => \entradaB[14]~input_o\);

-- Location: LCCOMB_X86_Y1_N20
\MuxGenB|X[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[14]~17_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaB[14]~input_o\,
	combout => \MuxGenB|X[14]~17_combout\);

-- Location: IOIBUF_X83_Y0_N22
\entradaB[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(13),
	o => \entradaB[13]~input_o\);

-- Location: LCCOMB_X86_Y1_N14
\MuxGenB|X[13]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[13]~18_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaB[13]~input_o\,
	combout => \MuxGenB|X[13]~18_combout\);

-- Location: IOIBUF_X89_Y0_N15
\entradaA[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(13),
	o => \entradaA[13]~input_o\);

-- Location: IOIBUF_X115_Y26_N15
\entradaA[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(12),
	o => \entradaA[12]~input_o\);

-- Location: IOIBUF_X115_Y29_N8
\entradaB[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(11),
	o => \entradaB[11]~input_o\);

-- Location: LCCOMB_X114_Y28_N26
\MuxGenB|X[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[11]~20_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalB~input_o\,
	datac => \entradaB[11]~input_o\,
	combout => \MuxGenB|X[11]~20_combout\);

-- Location: IOIBUF_X115_Y28_N1
\entradaB[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(10),
	o => \entradaB[10]~input_o\);

-- Location: LCCOMB_X114_Y28_N12
\MuxGenB|X[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[10]~21_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalB~input_o\,
	datac => \entradaB[10]~input_o\,
	combout => \MuxGenB|X[10]~21_combout\);

-- Location: IOIBUF_X115_Y28_N8
\entradaB[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(9),
	o => \entradaB[9]~input_o\);

-- Location: LCCOMB_X114_Y28_N6
\MuxGenB|X[9]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[9]~22_combout\ = \entradaB[9]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[9]~input_o\,
	datac => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[9]~22_combout\);

-- Location: IOIBUF_X87_Y73_N22
\entradaB[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(8),
	o => \entradaB[8]~input_o\);

-- Location: LCCOMB_X86_Y69_N22
\MuxGenB|X[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[8]~23_combout\ = \entradaB[8]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[8]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[8]~23_combout\);

-- Location: IOIBUF_X69_Y73_N1
\entradaA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\entradaB[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

-- Location: LCCOMB_X73_Y69_N18
\MuxGenB|X[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[6]~25_combout\ = \entradaB[6]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[6]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[6]~25_combout\);

-- Location: IOIBUF_X72_Y73_N15
\entradaA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\entradaB[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

-- Location: LCCOMB_X73_Y69_N22
\MuxGenB|X[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[4]~27_combout\ = \entradaB[4]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[4]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[4]~27_combout\);

-- Location: IOIBUF_X81_Y73_N22
\entradaA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\entradaB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

-- Location: LCCOMB_X68_Y69_N14
\MuxGenB|X[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[3]~28_combout\ = \entradaB[3]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaB[3]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[3]~28_combout\);

-- Location: IOIBUF_X83_Y73_N1
\entradaB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

-- Location: LCCOMB_X84_Y69_N8
\MuxGenB|X[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[2]~29_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaB[2]~input_o\,
	combout => \MuxGenB|X[2]~29_combout\);

-- Location: IOIBUF_X81_Y73_N1
\entradaB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\entradaA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

-- Location: LCCOMB_X84_Y69_N20
\Fulladder32|fulladder0|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder0|Cout~0_combout\ = (\entradaB[0]~input_o\ & (\SEL_Inverte_SinalA~input_o\ $ (((\entradaA[0]~input_o\))))) # (!\entradaB[0]~input_o\ & (((\SEL_Inverte_SinalB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \entradaB[0]~input_o\,
	datac => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaA[0]~input_o\,
	combout => \Fulladder32|fulladder0|Cout~0_combout\);

-- Location: IOIBUF_X85_Y73_N8
\entradaA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\entradaB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

-- Location: LCCOMB_X84_Y69_N10
\MuxGenB|X[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[1]~30_combout\ = \entradaB[1]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaB[1]~input_o\,
	datac => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[1]~30_combout\);

-- Location: LCCOMB_X84_Y69_N22
\Fulladder32|fulladder1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder1|Cout~0_combout\ = (\Fulladder32|fulladder0|Cout~0_combout\ & ((\MuxGenB|X[1]~30_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[1]~input_o\)))) # (!\Fulladder32|fulladder0|Cout~0_combout\ & (\MuxGenB|X[1]~30_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \Fulladder32|fulladder0|Cout~0_combout\,
	datac => \entradaA[1]~input_o\,
	datad => \MuxGenB|X[1]~30_combout\,
	combout => \Fulladder32|fulladder1|Cout~0_combout\);

-- Location: IOIBUF_X83_Y73_N22
\entradaA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

-- Location: LCCOMB_X84_Y69_N0
\Fulladder32|fulladder2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder2|Cout~0_combout\ = (\MuxGenB|X[2]~29_combout\ & ((\Fulladder32|fulladder1|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[2]~input_o\)))) # (!\MuxGenB|X[2]~29_combout\ & (\Fulladder32|fulladder1|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \MuxGenB|X[2]~29_combout\,
	datac => \Fulladder32|fulladder1|Cout~0_combout\,
	datad => \entradaA[2]~input_o\,
	combout => \Fulladder32|fulladder2|Cout~0_combout\);

-- Location: LCCOMB_X84_Y69_N26
\Fulladder32|fulladder3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder3|Cout~0_combout\ = (\MuxGenB|X[3]~28_combout\ & ((\Fulladder32|fulladder2|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[3]~input_o\)))) # (!\MuxGenB|X[3]~28_combout\ & (\Fulladder32|fulladder2|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \entradaA[3]~input_o\,
	datac => \MuxGenB|X[3]~28_combout\,
	datad => \Fulladder32|fulladder2|Cout~0_combout\,
	combout => \Fulladder32|fulladder3|Cout~0_combout\);

-- Location: LCCOMB_X73_Y69_N8
\Fulladder32|fulladder4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder4|Cout~0_combout\ = (\MuxGenB|X[4]~27_combout\ & ((\Fulladder32|fulladder3|Cout~0_combout\) # (\entradaA[4]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)))) # (!\MuxGenB|X[4]~27_combout\ & (\Fulladder32|fulladder3|Cout~0_combout\ & 
-- (\entradaA[4]~input_o\ $ (\SEL_Inverte_SinalA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[4]~input_o\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \MuxGenB|X[4]~27_combout\,
	datad => \Fulladder32|fulladder3|Cout~0_combout\,
	combout => \Fulladder32|fulladder4|Cout~0_combout\);

-- Location: IOIBUF_X74_Y73_N15
\entradaA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\entradaB[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

-- Location: LCCOMB_X73_Y69_N20
\MuxGenB|X[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[5]~26_combout\ = \entradaB[5]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaB[5]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[5]~26_combout\);

-- Location: LCCOMB_X73_Y69_N10
\Fulladder32|fulladder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder5|Cout~0_combout\ = (\Fulladder32|fulladder4|Cout~0_combout\ & ((\MuxGenB|X[5]~26_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[5]~input_o\)))) # (!\Fulladder32|fulladder4|Cout~0_combout\ & (\MuxGenB|X[5]~26_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \Fulladder32|fulladder4|Cout~0_combout\,
	datac => \entradaA[5]~input_o\,
	datad => \MuxGenB|X[5]~26_combout\,
	combout => \Fulladder32|fulladder5|Cout~0_combout\);

-- Location: LCCOMB_X73_Y69_N12
\Fulladder32|fulladder6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder6|Cout~0_combout\ = (\MuxGenB|X[6]~25_combout\ & ((\Fulladder32|fulladder5|Cout~0_combout\) # (\entradaA[6]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)))) # (!\MuxGenB|X[6]~25_combout\ & (\Fulladder32|fulladder5|Cout~0_combout\ & 
-- (\entradaA[6]~input_o\ $ (\SEL_Inverte_SinalA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[6]~input_o\,
	datab => \MuxGenB|X[6]~25_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \Fulladder32|fulladder5|Cout~0_combout\,
	combout => \Fulladder32|fulladder6|Cout~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\entradaA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\entradaB[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

-- Location: LCCOMB_X73_Y69_N0
\MuxGenB|X[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[7]~24_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaB[7]~input_o\,
	combout => \MuxGenB|X[7]~24_combout\);

-- Location: LCCOMB_X73_Y69_N30
\Fulladder32|fulladder7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder7|Cout~0_combout\ = (\Fulladder32|fulladder6|Cout~0_combout\ & ((\MuxGenB|X[7]~24_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[7]~input_o\)))) # (!\Fulladder32|fulladder6|Cout~0_combout\ & (\MuxGenB|X[7]~24_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder6|Cout~0_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[7]~input_o\,
	datad => \MuxGenB|X[7]~24_combout\,
	combout => \Fulladder32|fulladder7|Cout~0_combout\);

-- Location: IOIBUF_X89_Y73_N22
\entradaA[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(8),
	o => \entradaA[8]~input_o\);

-- Location: LCCOMB_X86_Y69_N0
\Fulladder32|fulladder8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder8|Cout~0_combout\ = (\MuxGenB|X[8]~23_combout\ & ((\Fulladder32|fulladder7|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[8]~input_o\)))) # (!\MuxGenB|X[8]~23_combout\ & (\Fulladder32|fulladder7|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[8]~23_combout\,
	datab => \Fulladder32|fulladder7|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \entradaA[8]~input_o\,
	combout => \Fulladder32|fulladder8|Cout~0_combout\);

-- Location: IOIBUF_X115_Y26_N22
\entradaA[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(9),
	o => \entradaA[9]~input_o\);

-- Location: LCCOMB_X114_Y28_N8
\Fulladder32|fulladder9|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder9|Cout~0_combout\ = (\MuxGenB|X[9]~22_combout\ & ((\Fulladder32|fulladder8|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[9]~input_o\)))) # (!\MuxGenB|X[9]~22_combout\ & (\Fulladder32|fulladder8|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[9]~22_combout\,
	datab => \Fulladder32|fulladder8|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \entradaA[9]~input_o\,
	combout => \Fulladder32|fulladder9|Cout~0_combout\);

-- Location: IOIBUF_X115_Y27_N8
\entradaA[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(10),
	o => \entradaA[10]~input_o\);

-- Location: LCCOMB_X114_Y28_N2
\Fulladder32|fulladder10|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder10|Cout~0_combout\ = (\MuxGenB|X[10]~21_combout\ & ((\Fulladder32|fulladder9|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[10]~input_o\)))) # (!\MuxGenB|X[10]~21_combout\ & (\Fulladder32|fulladder9|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[10]~21_combout\,
	datab => \Fulladder32|fulladder9|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \entradaA[10]~input_o\,
	combout => \Fulladder32|fulladder10|Cout~0_combout\);

-- Location: IOIBUF_X115_Y27_N1
\entradaA[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(11),
	o => \entradaA[11]~input_o\);

-- Location: LCCOMB_X114_Y28_N4
\Fulladder32|fulladder11|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder11|Cout~0_combout\ = (\MuxGenB|X[11]~20_combout\ & ((\Fulladder32|fulladder10|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[11]~input_o\)))) # (!\MuxGenB|X[11]~20_combout\ & (\Fulladder32|fulladder10|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[11]~20_combout\,
	datab => \Fulladder32|fulladder10|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \entradaA[11]~input_o\,
	combout => \Fulladder32|fulladder11|Cout~0_combout\);

-- Location: IOIBUF_X115_Y29_N1
\entradaB[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(12),
	o => \entradaB[12]~input_o\);

-- Location: LCCOMB_X114_Y28_N24
\MuxGenB|X[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[12]~19_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalB~input_o\,
	datac => \entradaB[12]~input_o\,
	combout => \MuxGenB|X[12]~19_combout\);

-- Location: LCCOMB_X114_Y28_N22
\Fulladder32|fulladder12|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder12|Cout~0_combout\ = (\Fulladder32|fulladder11|Cout~0_combout\ & ((\MuxGenB|X[12]~19_combout\) # (\entradaA[12]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)))) # (!\Fulladder32|fulladder11|Cout~0_combout\ & (\MuxGenB|X[12]~19_combout\ & 
-- (\entradaA[12]~input_o\ $ (\SEL_Inverte_SinalA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[12]~input_o\,
	datab => \Fulladder32|fulladder11|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \MuxGenB|X[12]~19_combout\,
	combout => \Fulladder32|fulladder12|Cout~0_combout\);

-- Location: LCCOMB_X86_Y1_N16
\Fulladder32|fulladder13|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder13|Cout~0_combout\ = (\MuxGenB|X[13]~18_combout\ & ((\Fulladder32|fulladder12|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[13]~input_o\)))) # (!\MuxGenB|X[13]~18_combout\ & (\Fulladder32|fulladder12|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \MuxGenB|X[13]~18_combout\,
	datac => \entradaA[13]~input_o\,
	datad => \Fulladder32|fulladder12|Cout~0_combout\,
	combout => \Fulladder32|fulladder13|Cout~0_combout\);

-- Location: IOIBUF_X89_Y0_N8
\entradaA[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(14),
	o => \entradaA[14]~input_o\);

-- Location: LCCOMB_X86_Y1_N2
\Fulladder32|fulladder14|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder14|Cout~0_combout\ = (\MuxGenB|X[14]~17_combout\ & ((\Fulladder32|fulladder13|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[14]~input_o\)))) # (!\MuxGenB|X[14]~17_combout\ & (\Fulladder32|fulladder13|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \MuxGenB|X[14]~17_combout\,
	datac => \Fulladder32|fulladder13|Cout~0_combout\,
	datad => \entradaA[14]~input_o\,
	combout => \Fulladder32|fulladder14|Cout~0_combout\);

-- Location: IOIBUF_X83_Y0_N8
\entradaB[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(15),
	o => \entradaB[15]~input_o\);

-- Location: LCCOMB_X86_Y1_N26
\MuxGenB|X[15]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[15]~16_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaB[15]~input_o\,
	combout => \MuxGenB|X[15]~16_combout\);

-- Location: IOIBUF_X87_Y0_N22
\entradaA[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(15),
	o => \entradaA[15]~input_o\);

-- Location: LCCOMB_X86_Y1_N4
\Fulladder32|fulladder15|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder15|Cout~0_combout\ = (\Fulladder32|fulladder14|Cout~0_combout\ & ((\MuxGenB|X[15]~16_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[15]~input_o\)))) # (!\Fulladder32|fulladder14|Cout~0_combout\ & (\MuxGenB|X[15]~16_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \Fulladder32|fulladder14|Cout~0_combout\,
	datac => \MuxGenB|X[15]~16_combout\,
	datad => \entradaA[15]~input_o\,
	combout => \Fulladder32|fulladder15|Cout~0_combout\);

-- Location: IOIBUF_X85_Y0_N15
\entradaB[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(16),
	o => \entradaB[16]~input_o\);

-- Location: LCCOMB_X86_Y1_N0
\MuxGenB|X[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[16]~15_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaB[16]~input_o\,
	combout => \MuxGenB|X[16]~15_combout\);

-- Location: LCCOMB_X86_Y1_N6
\Fulladder32|fulladder16|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder16|Cout~0_combout\ = (\Fulladder32|fulladder15|Cout~0_combout\ & ((\MuxGenB|X[16]~15_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[16]~input_o\)))) # (!\Fulladder32|fulladder15|Cout~0_combout\ & (\MuxGenB|X[16]~15_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \entradaA[16]~input_o\,
	datac => \Fulladder32|fulladder15|Cout~0_combout\,
	datad => \MuxGenB|X[16]~15_combout\,
	combout => \Fulladder32|fulladder16|Cout~0_combout\);

-- Location: IOIBUF_X87_Y73_N8
\entradaA[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(17),
	o => \entradaA[17]~input_o\);

-- Location: LCCOMB_X86_Y69_N18
\Fulladder32|fulladder17|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder17|Cout~0_combout\ = (\MuxGenB|X[17]~14_combout\ & ((\Fulladder32|fulladder16|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[17]~input_o\)))) # (!\MuxGenB|X[17]~14_combout\ & (\Fulladder32|fulladder16|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[17]~14_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \Fulladder32|fulladder16|Cout~0_combout\,
	datad => \entradaA[17]~input_o\,
	combout => \Fulladder32|fulladder17|Cout~0_combout\);

-- Location: LCCOMB_X86_Y69_N4
\Fulladder32|fulladder18|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder18|Cout~0_combout\ = (\MuxGenB|X[18]~13_combout\ & ((\Fulladder32|fulladder17|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[18]~input_o\)))) # (!\MuxGenB|X[18]~13_combout\ & (\Fulladder32|fulladder17|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[18]~13_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[18]~input_o\,
	datad => \Fulladder32|fulladder17|Cout~0_combout\,
	combout => \Fulladder32|fulladder18|Cout~0_combout\);

-- Location: IOIBUF_X94_Y73_N8
\entradaB[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(19),
	o => \entradaB[19]~input_o\);

-- Location: LCCOMB_X86_Y69_N24
\MuxGenB|X[19]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[19]~12_combout\ = \entradaB[19]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaB[19]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[19]~12_combout\);

-- Location: LCCOMB_X86_Y69_N6
\Fulladder32|fulladder19|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder19|Cout~0_combout\ = (\Fulladder32|fulladder18|Cout~0_combout\ & ((\MuxGenB|X[19]~12_combout\) # (\entradaA[19]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)))) # (!\Fulladder32|fulladder18|Cout~0_combout\ & (\MuxGenB|X[19]~12_combout\ & 
-- (\entradaA[19]~input_o\ $ (\SEL_Inverte_SinalA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[19]~input_o\,
	datab => \Fulladder32|fulladder18|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \MuxGenB|X[19]~12_combout\,
	combout => \Fulladder32|fulladder19|Cout~0_combout\);

-- Location: LCCOMB_X68_Y69_N24
\Fulladder32|fulladder20|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder20|Cout~0_combout\ = (\MuxGenB|X[20]~11_combout\ & ((\Fulladder32|fulladder19|Cout~0_combout\) # (\entradaA[20]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)))) # (!\MuxGenB|X[20]~11_combout\ & (\Fulladder32|fulladder19|Cout~0_combout\ & 
-- (\entradaA[20]~input_o\ $ (\SEL_Inverte_SinalA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[20]~11_combout\,
	datab => \entradaA[20]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \Fulladder32|fulladder19|Cout~0_combout\,
	combout => \Fulladder32|fulladder20|Cout~0_combout\);

-- Location: LCCOMB_X114_Y51_N8
\Fulladder32|fulladder21|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder21|Cout~0_combout\ = (\MuxGenB|X[21]~10_combout\ & ((\Fulladder32|fulladder20|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[21]~input_o\)))) # (!\MuxGenB|X[21]~10_combout\ & (\Fulladder32|fulladder20|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[21]~10_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[21]~input_o\,
	datad => \Fulladder32|fulladder20|Cout~0_combout\,
	combout => \Fulladder32|fulladder21|Cout~0_combout\);

-- Location: IOIBUF_X115_Y48_N1
\entradaA[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(22),
	o => \entradaA[22]~input_o\);

-- Location: LCCOMB_X114_Y51_N26
\Fulladder32|fulladder22|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder22|Cout~0_combout\ = (\MuxGenB|X[22]~9_combout\ & ((\Fulladder32|fulladder21|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[22]~input_o\)))) # (!\MuxGenB|X[22]~9_combout\ & (\Fulladder32|fulladder21|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[22]~9_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \Fulladder32|fulladder21|Cout~0_combout\,
	datad => \entradaA[22]~input_o\,
	combout => \Fulladder32|fulladder22|Cout~0_combout\);

-- Location: IOIBUF_X115_Y51_N1
\entradaA[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(23),
	o => \entradaA[23]~input_o\);

-- Location: LCCOMB_X114_Y51_N4
\Fulladder32|fulladder23|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder23|Cout~0_combout\ = (\MuxGenB|X[23]~8_combout\ & ((\Fulladder32|fulladder22|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[23]~input_o\)))) # (!\MuxGenB|X[23]~8_combout\ & (\Fulladder32|fulladder22|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[23]~8_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \Fulladder32|fulladder22|Cout~0_combout\,
	datad => \entradaA[23]~input_o\,
	combout => \Fulladder32|fulladder23|Cout~0_combout\);

-- Location: IOIBUF_X115_Y52_N8
\entradaA[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(24),
	o => \entradaA[24]~input_o\);

-- Location: LCCOMB_X114_Y51_N6
\Fulladder32|fulladder24|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder24|Cout~0_combout\ = (\MuxGenB|X[24]~7_combout\ & ((\Fulladder32|fulladder23|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[24]~input_o\)))) # (!\MuxGenB|X[24]~7_combout\ & (\Fulladder32|fulladder23|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \MuxGenB|X[24]~7_combout\,
	datac => \Fulladder32|fulladder23|Cout~0_combout\,
	datad => \entradaA[24]~input_o\,
	combout => \Fulladder32|fulladder24|Cout~0_combout\);

-- Location: LCCOMB_X61_Y69_N22
\Fulladder32|fulladder25|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder25|Cout~0_combout\ = (\MuxGenB|X[25]~6_combout\ & ((\Fulladder32|fulladder24|Cout~0_combout\) # (\entradaA[25]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)))) # (!\MuxGenB|X[25]~6_combout\ & (\Fulladder32|fulladder24|Cout~0_combout\ & 
-- (\entradaA[25]~input_o\ $ (\SEL_Inverte_SinalA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[25]~input_o\,
	datab => \MuxGenB|X[25]~6_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \Fulladder32|fulladder24|Cout~0_combout\,
	combout => \Fulladder32|fulladder25|Cout~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\entradaA[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(26),
	o => \entradaA[26]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\entradaB[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(26),
	o => \entradaB[26]~input_o\);

-- Location: LCCOMB_X61_Y69_N20
\MuxGenB|X[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[26]~5_combout\ = \entradaB[26]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaB[26]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[26]~5_combout\);

-- Location: LCCOMB_X61_Y69_N24
\Fulladder32|fulladder26|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder26|Cout~0_combout\ = (\Fulladder32|fulladder25|Cout~0_combout\ & ((\MuxGenB|X[26]~5_combout\) # (\entradaA[26]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)))) # (!\Fulladder32|fulladder25|Cout~0_combout\ & (\MuxGenB|X[26]~5_combout\ & 
-- (\entradaA[26]~input_o\ $ (\SEL_Inverte_SinalA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder25|Cout~0_combout\,
	datab => \entradaA[26]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \MuxGenB|X[26]~5_combout\,
	combout => \Fulladder32|fulladder26|Cout~0_combout\);

-- Location: LCCOMB_X61_Y69_N10
\Fulladder32|fulladder27|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder27|Cout~0_combout\ = (\MuxGenB|X[27]~4_combout\ & ((\Fulladder32|fulladder26|Cout~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[27]~input_o\)))) # (!\MuxGenB|X[27]~4_combout\ & (\Fulladder32|fulladder26|Cout~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[27]~4_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[27]~input_o\,
	datad => \Fulladder32|fulladder26|Cout~0_combout\,
	combout => \Fulladder32|fulladder27|Cout~0_combout\);

-- Location: LCCOMB_X61_Y69_N12
\Fulladder32|fulladder28|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder28|Cout~0_combout\ = (\MuxGenB|X[28]~3_combout\ & ((\Fulladder32|fulladder27|Cout~0_combout\) # (\entradaA[28]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)))) # (!\MuxGenB|X[28]~3_combout\ & (\Fulladder32|fulladder27|Cout~0_combout\ & 
-- (\entradaA[28]~input_o\ $ (\SEL_Inverte_SinalA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[28]~input_o\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \MuxGenB|X[28]~3_combout\,
	datad => \Fulladder32|fulladder27|Cout~0_combout\,
	combout => \Fulladder32|fulladder28|Cout~0_combout\);

-- Location: IOIBUF_X52_Y73_N8
\entradaA[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(29),
	o => \entradaA[29]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\entradaB[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(29),
	o => \entradaB[29]~input_o\);

-- Location: LCCOMB_X68_Y69_N8
\MuxGenB|X[29]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[29]~2_combout\ = \SEL_Inverte_SinalB~input_o\ $ (\entradaB[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaB[29]~input_o\,
	combout => \MuxGenB|X[29]~2_combout\);

-- Location: LCCOMB_X62_Y69_N28
\Fulladder32|fulladder29|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder29|Cout~0_combout\ = (\Fulladder32|fulladder28|Cout~0_combout\ & ((\MuxGenB|X[29]~2_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[29]~input_o\)))) # (!\Fulladder32|fulladder28|Cout~0_combout\ & (\MuxGenB|X[29]~2_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder28|Cout~0_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[29]~input_o\,
	datad => \MuxGenB|X[29]~2_combout\,
	combout => \Fulladder32|fulladder29|Cout~0_combout\);

-- Location: LCCOMB_X62_Y69_N30
\Fulladder32|fulladder30|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder30|Cout~0_combout\ = (\MuxGenB|X[30]~1_combout\ & ((\Fulladder32|fulladder29|Cout~0_combout\) # (\entradaA[30]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)))) # (!\MuxGenB|X[30]~1_combout\ & (\Fulladder32|fulladder29|Cout~0_combout\ & 
-- (\entradaA[30]~input_o\ $ (\SEL_Inverte_SinalA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[30]~1_combout\,
	datab => \entradaA[30]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \Fulladder32|fulladder29|Cout~0_combout\,
	combout => \Fulladder32|fulladder30|Cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N8
\entradaB[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(31),
	o => \entradaB[31]~input_o\);

-- Location: LCCOMB_X62_Y69_N8
\MuxGenB|X[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenB|X[31]~0_combout\ = \entradaB[31]~input_o\ $ (\SEL_Inverte_SinalB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entradaB[31]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxGenB|X[31]~0_combout\);

-- Location: IOIBUF_X58_Y0_N1
\entradaA[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(31),
	o => \entradaA[31]~input_o\);

-- Location: LCCOMB_X62_Y69_N24
\Fulladder32|fulladder31|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder31|Cout~0_combout\ = (\Fulladder32|fulladder30|Cout~0_combout\ & ((\MuxGenB|X[31]~0_combout\) # (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[31]~input_o\)))) # (!\Fulladder32|fulladder30|Cout~0_combout\ & (\MuxGenB|X[31]~0_combout\ & 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder30|Cout~0_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \MuxGenB|X[31]~0_combout\,
	datad => \entradaA[31]~input_o\,
	combout => \Fulladder32|fulladder31|Cout~0_combout\);

-- Location: IOIBUF_X115_Y68_N15
\SEL_ULA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_ULA(0),
	o => \SEL_ULA[0]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\SEL_ULA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_ULA(1),
	o => \SEL_ULA[1]~input_o\);

-- Location: LCCOMB_X84_Y69_N4
\MuxAlu|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux31~1_combout\ = (\SEL_ULA[1]~input_o\ & (((\SEL_ULA[0]~input_o\)))) # (!\SEL_ULA[1]~input_o\ & (\SEL_Inverte_SinalA~input_o\ $ ((\entradaA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \entradaA[0]~input_o\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux31~1_combout\);

-- Location: LCCOMB_X84_Y69_N30
\MuxAlu|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux31~2_combout\ = (\SEL_ULA[0]~input_o\ & ((\MuxAlu|Mux31~1_combout\) # (\SEL_Inverte_SinalB~input_o\ $ (\entradaB[0]~input_o\)))) # (!\SEL_ULA[0]~input_o\ & (\MuxAlu|Mux31~1_combout\ & (\SEL_Inverte_SinalB~input_o\ $ (\entradaB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[0]~input_o\,
	datab => \MuxAlu|Mux31~1_combout\,
	datac => \SEL_Inverte_SinalB~input_o\,
	datad => \entradaB[0]~input_o\,
	combout => \MuxAlu|Mux31~2_combout\);

-- Location: LCCOMB_X62_Y69_N6
\saidaSLT[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaSLT[0]~3_combout\ = (\Fulladder32|fulladder30|Cout~0_combout\ & (\MuxGenB|X[31]~0_combout\ & (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[31]~input_o\)))) # (!\Fulladder32|fulladder30|Cout~0_combout\ & ((\MuxGenB|X[31]~0_combout\) # 
-- (\SEL_Inverte_SinalA~input_o\ $ (\entradaA[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder30|Cout~0_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \MuxGenB|X[31]~0_combout\,
	datad => \entradaA[31]~input_o\,
	combout => \saidaSLT[0]~3_combout\);

-- Location: LCCOMB_X84_Y69_N12
\Fulladder32|fulladder0|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder0|soma~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaB[0]~input_o\ $ (\entradaA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaB[0]~input_o\,
	datad => \entradaA[0]~input_o\,
	combout => \Fulladder32|fulladder0|soma~0_combout\);

-- Location: LCCOMB_X84_Y69_N6
\MuxAlu|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux31~0_combout\ = (\MuxAlu|Mux31~2_combout\ & (((\saidaSLT[0]~3_combout\)) # (!\SEL_ULA[1]~input_o\))) # (!\MuxAlu|Mux31~2_combout\ & (\SEL_ULA[1]~input_o\ & ((\Fulladder32|fulladder0|soma~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAlu|Mux31~2_combout\,
	datab => \SEL_ULA[1]~input_o\,
	datac => \saidaSLT[0]~3_combout\,
	datad => \Fulladder32|fulladder0|soma~0_combout\,
	combout => \MuxAlu|Mux31~0_combout\);

-- Location: LCCOMB_X84_Y69_N16
\MuxAlu|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux30~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[1]~input_o\ $ (((\Fulladder32|fulladder0|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \Fulladder32|fulladder0|Cout~0_combout\,
	datac => \entradaA[1]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux30~0_combout\);

-- Location: LCCOMB_X84_Y69_N2
\MuxAlu|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux30~1_combout\ = (\MuxGenB|X[1]~30_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux30~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[1]~30_combout\ & (\MuxAlu|Mux30~0_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[1]~30_combout\,
	datab => \MuxAlu|Mux30~0_combout\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux30~1_combout\);

-- Location: LCCOMB_X84_Y69_N28
\MuxAlu|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux29~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[2]~input_o\ $ (((\Fulladder32|fulladder1|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \entradaA[2]~input_o\,
	datac => \Fulladder32|fulladder1|Cout~0_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux29~0_combout\);

-- Location: LCCOMB_X84_Y69_N14
\MuxAlu|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux29~1_combout\ = (\MuxAlu|Mux29~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxGenB|X[2]~29_combout\))))) # (!\MuxAlu|Mux29~0_combout\ & (\MuxGenB|X[2]~29_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[0]~input_o\,
	datab => \MuxAlu|Mux29~0_combout\,
	datac => \MuxGenB|X[2]~29_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux29~1_combout\);

-- Location: LCCOMB_X84_Y69_N24
\MuxAlu|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux28~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[3]~input_o\ $ (((\Fulladder32|fulladder2|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \Fulladder32|fulladder2|Cout~0_combout\,
	datac => \entradaA[3]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux28~0_combout\);

-- Location: LCCOMB_X84_Y69_N18
\MuxAlu|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux28~1_combout\ = (\MuxAlu|Mux28~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxGenB|X[3]~28_combout\))))) # (!\MuxAlu|Mux28~0_combout\ & (\MuxGenB|X[3]~28_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[0]~input_o\,
	datab => \MuxAlu|Mux28~0_combout\,
	datac => \MuxGenB|X[3]~28_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux28~1_combout\);

-- Location: LCCOMB_X73_Y69_N16
\MuxAlu|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux27~0_combout\ = \entradaA[4]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder3|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[4]~input_o\,
	datab => \Fulladder32|fulladder3|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux27~0_combout\);

-- Location: LCCOMB_X73_Y69_N2
\MuxAlu|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux27~1_combout\ = (\MuxGenB|X[4]~27_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux27~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[4]~27_combout\ & (\MuxAlu|Mux27~0_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[4]~27_combout\,
	datab => \SEL_ULA[1]~input_o\,
	datac => \MuxAlu|Mux27~0_combout\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux27~1_combout\);

-- Location: LCCOMB_X73_Y69_N28
\MuxAlu|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux26~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[5]~input_o\ $ (((\Fulladder32|fulladder4|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \Fulladder32|fulladder4|Cout~0_combout\,
	datac => \entradaA[5]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux26~0_combout\);

-- Location: LCCOMB_X73_Y69_N6
\MuxAlu|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux26~1_combout\ = (\MuxGenB|X[5]~26_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxAlu|Mux26~0_combout\))))) # (!\MuxGenB|X[5]~26_combout\ & (\MuxAlu|Mux26~0_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[5]~26_combout\,
	datab => \SEL_ULA[0]~input_o\,
	datac => \MuxAlu|Mux26~0_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux26~1_combout\);

-- Location: LCCOMB_X73_Y69_N24
\MuxAlu|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux25~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[6]~input_o\ $ (((\Fulladder32|fulladder5|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder5|Cout~0_combout\,
	datab => \SEL_ULA[1]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \entradaA[6]~input_o\,
	combout => \MuxAlu|Mux25~0_combout\);

-- Location: LCCOMB_X73_Y69_N26
\MuxAlu|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux25~1_combout\ = (\MuxAlu|Mux25~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxGenB|X[6]~25_combout\))))) # (!\MuxAlu|Mux25~0_combout\ & (\MuxGenB|X[6]~25_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAlu|Mux25~0_combout\,
	datab => \SEL_ULA[0]~input_o\,
	datac => \MuxGenB|X[6]~25_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux25~1_combout\);

-- Location: LCCOMB_X73_Y69_N4
\MuxAlu|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux24~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[7]~input_o\ $ (((\Fulladder32|fulladder6|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder6|Cout~0_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[7]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux24~0_combout\);

-- Location: LCCOMB_X73_Y69_N14
\MuxAlu|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux24~1_combout\ = (\MuxGenB|X[7]~24_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxAlu|Mux24~0_combout\))))) # (!\MuxGenB|X[7]~24_combout\ & (\MuxAlu|Mux24~0_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[7]~24_combout\,
	datab => \SEL_ULA[0]~input_o\,
	datac => \MuxAlu|Mux24~0_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux24~1_combout\);

-- Location: LCCOMB_X86_Y69_N16
\MuxAlu|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux23~0_combout\ = \entradaA[8]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder7|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[8]~input_o\,
	datab => \Fulladder32|fulladder7|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux23~0_combout\);

-- Location: LCCOMB_X86_Y69_N2
\MuxAlu|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux23~1_combout\ = (\MuxAlu|Mux23~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxGenB|X[8]~23_combout\))))) # (!\MuxAlu|Mux23~0_combout\ & (\MuxGenB|X[8]~23_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[0]~input_o\,
	datab => \MuxAlu|Mux23~0_combout\,
	datac => \MuxGenB|X[8]~23_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux23~1_combout\);

-- Location: LCCOMB_X114_Y28_N0
\MuxAlu|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux22~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[9]~input_o\ $ (((\Fulladder32|fulladder8|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder8|Cout~0_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \entradaA[9]~input_o\,
	combout => \MuxAlu|Mux22~0_combout\);

-- Location: LCCOMB_X114_Y28_N18
\MuxAlu|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux22~1_combout\ = (\MuxGenB|X[9]~22_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux22~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[9]~22_combout\ & (\MuxAlu|Mux22~0_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[9]~22_combout\,
	datab => \MuxAlu|Mux22~0_combout\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux22~1_combout\);

-- Location: LCCOMB_X114_Y28_N20
\MuxAlu|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux21~0_combout\ = \entradaA[10]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder9|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[10]~input_o\,
	datab => \Fulladder32|fulladder9|Cout~0_combout\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \SEL_Inverte_SinalA~input_o\,
	combout => \MuxAlu|Mux21~0_combout\);

-- Location: LCCOMB_X114_Y28_N14
\MuxAlu|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux21~1_combout\ = (\MuxGenB|X[10]~21_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux21~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[10]~21_combout\ & (\MuxAlu|Mux21~0_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[10]~21_combout\,
	datab => \MuxAlu|Mux21~0_combout\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux21~1_combout\);

-- Location: LCCOMB_X114_Y28_N16
\MuxAlu|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux20~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[11]~input_o\ $ (((\Fulladder32|fulladder10|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \Fulladder32|fulladder10|Cout~0_combout\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \entradaA[11]~input_o\,
	combout => \MuxAlu|Mux20~0_combout\);

-- Location: LCCOMB_X114_Y28_N10
\MuxAlu|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux20~1_combout\ = (\MuxGenB|X[11]~20_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux20~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[11]~20_combout\ & (\MuxAlu|Mux20~0_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[11]~20_combout\,
	datab => \MuxAlu|Mux20~0_combout\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux20~1_combout\);

-- Location: LCCOMB_X114_Y28_N28
\MuxAlu|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux19~0_combout\ = \entradaA[12]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder11|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder11|Cout~0_combout\,
	datab => \SEL_ULA[1]~input_o\,
	datac => \entradaA[12]~input_o\,
	datad => \SEL_Inverte_SinalA~input_o\,
	combout => \MuxAlu|Mux19~0_combout\);

-- Location: LCCOMB_X114_Y28_N30
\MuxAlu|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux19~1_combout\ = (\MuxGenB|X[12]~19_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxAlu|Mux19~0_combout\))))) # (!\MuxGenB|X[12]~19_combout\ & (\MuxAlu|Mux19~0_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[0]~input_o\,
	datab => \MuxGenB|X[12]~19_combout\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \MuxAlu|Mux19~0_combout\,
	combout => \MuxAlu|Mux19~1_combout\);

-- Location: LCCOMB_X86_Y1_N24
\MuxAlu|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux18~0_combout\ = \entradaA[13]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\SEL_ULA[1]~input_o\ & \Fulladder32|fulladder12|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[13]~input_o\,
	datab => \SEL_ULA[1]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \Fulladder32|fulladder12|Cout~0_combout\,
	combout => \MuxAlu|Mux18~0_combout\);

-- Location: LCCOMB_X86_Y1_N18
\MuxAlu|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux18~1_combout\ = (\MuxGenB|X[13]~18_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux18~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[13]~18_combout\ & (\MuxAlu|Mux18~0_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[13]~18_combout\,
	datab => \MuxAlu|Mux18~0_combout\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux18~1_combout\);

-- Location: LCCOMB_X86_Y1_N12
\MuxAlu|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux17~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[14]~input_o\ $ (((\Fulladder32|fulladder13|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \Fulladder32|fulladder13|Cout~0_combout\,
	datac => \entradaA[14]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux17~0_combout\);

-- Location: LCCOMB_X86_Y1_N22
\MuxAlu|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux17~1_combout\ = (\MuxAlu|Mux17~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxGenB|X[14]~17_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxAlu|Mux17~0_combout\ & (\MuxGenB|X[14]~17_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAlu|Mux17~0_combout\,
	datab => \MuxGenB|X[14]~17_combout\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux17~1_combout\);

-- Location: LCCOMB_X86_Y1_N8
\MuxAlu|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux16~0_combout\ = \entradaA[15]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder14|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[15]~input_o\,
	datab => \Fulladder32|fulladder14|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux16~0_combout\);

-- Location: LCCOMB_X86_Y1_N10
\MuxAlu|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux16~1_combout\ = (\MuxGenB|X[15]~16_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux16~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[15]~16_combout\ & (\MuxAlu|Mux16~0_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[15]~16_combout\,
	datab => \MuxAlu|Mux16~0_combout\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux16~1_combout\);

-- Location: LCCOMB_X86_Y1_N28
\MuxAlu|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux15~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[16]~input_o\ $ (((\Fulladder32|fulladder15|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \entradaA[16]~input_o\,
	datac => \Fulladder32|fulladder15|Cout~0_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux15~0_combout\);

-- Location: LCCOMB_X86_Y1_N30
\MuxAlu|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux15~1_combout\ = (\MuxAlu|Mux15~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxGenB|X[16]~15_combout\))))) # (!\MuxAlu|Mux15~0_combout\ & (\MuxGenB|X[16]~15_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \MuxAlu|Mux15~0_combout\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \MuxGenB|X[16]~15_combout\,
	combout => \MuxAlu|Mux15~1_combout\);

-- Location: LCCOMB_X86_Y69_N20
\MuxAlu|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux14~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[17]~input_o\ $ (((\Fulladder32|fulladder16|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_Inverte_SinalA~input_o\,
	datab => \entradaA[17]~input_o\,
	datac => \Fulladder32|fulladder16|Cout~0_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux14~0_combout\);

-- Location: LCCOMB_X86_Y69_N30
\MuxAlu|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux14~1_combout\ = (\MuxGenB|X[17]~14_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux14~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[17]~14_combout\ & (\MuxAlu|Mux14~0_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[17]~14_combout\,
	datab => \MuxAlu|Mux14~0_combout\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux14~1_combout\);

-- Location: LCCOMB_X86_Y69_N8
\MuxAlu|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux13~0_combout\ = \entradaA[18]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder17|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[18]~input_o\,
	datab => \Fulladder32|fulladder17|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux13~0_combout\);

-- Location: LCCOMB_X86_Y69_N26
\MuxAlu|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux13~1_combout\ = (\MuxGenB|X[18]~13_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux13~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[18]~13_combout\ & (\MuxAlu|Mux13~0_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[18]~13_combout\,
	datab => \MuxAlu|Mux13~0_combout\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux13~1_combout\);

-- Location: LCCOMB_X86_Y69_N28
\MuxAlu|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux12~0_combout\ = \entradaA[19]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder18|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[19]~input_o\,
	datab => \Fulladder32|fulladder18|Cout~0_combout\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux12~0_combout\);

-- Location: LCCOMB_X86_Y69_N14
\MuxAlu|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux12~1_combout\ = (\MuxAlu|Mux12~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxGenB|X[19]~12_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxAlu|Mux12~0_combout\ & (\MuxGenB|X[19]~12_combout\ & (\SEL_ULA[0]~input_o\ $ (\SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAlu|Mux12~0_combout\,
	datab => \MuxGenB|X[19]~12_combout\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux12~1_combout\);

-- Location: LCCOMB_X68_Y69_N10
\MuxAlu|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux11~0_combout\ = \entradaA[20]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder19|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder19|Cout~0_combout\,
	datab => \entradaA[20]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux11~0_combout\);

-- Location: LCCOMB_X68_Y69_N4
\MuxAlu|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux11~1_combout\ = (\MuxGenB|X[20]~11_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxAlu|Mux11~0_combout\))))) # (!\MuxGenB|X[20]~11_combout\ & (\MuxAlu|Mux11~0_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[20]~11_combout\,
	datab => \SEL_ULA[1]~input_o\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \MuxAlu|Mux11~0_combout\,
	combout => \MuxAlu|Mux11~1_combout\);

-- Location: LCCOMB_X114_Y51_N16
\MuxAlu|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux10~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[21]~input_o\ $ (((\Fulladder32|fulladder20|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder20|Cout~0_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[21]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux10~0_combout\);

-- Location: LCCOMB_X114_Y51_N18
\MuxAlu|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux10~1_combout\ = (\MuxAlu|Mux10~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxGenB|X[21]~10_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxAlu|Mux10~0_combout\ & (\MuxGenB|X[21]~10_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \MuxAlu|Mux10~0_combout\,
	datac => \MuxGenB|X[21]~10_combout\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux10~1_combout\);

-- Location: LCCOMB_X114_Y51_N20
\MuxAlu|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux9~0_combout\ = \entradaA[22]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder21|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[22]~input_o\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \Fulladder32|fulladder21|Cout~0_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux9~0_combout\);

-- Location: LCCOMB_X114_Y51_N14
\MuxAlu|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux9~1_combout\ = (\MuxAlu|Mux9~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxGenB|X[22]~9_combout\))))) # (!\MuxAlu|Mux9~0_combout\ & (\MuxGenB|X[22]~9_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \MuxAlu|Mux9~0_combout\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \MuxGenB|X[22]~9_combout\,
	combout => \MuxAlu|Mux9~1_combout\);

-- Location: LCCOMB_X114_Y51_N0
\MuxAlu|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux8~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[23]~input_o\ $ (((\SEL_ULA[1]~input_o\ & \Fulladder32|fulladder22|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \Fulladder32|fulladder22|Cout~0_combout\,
	datad => \entradaA[23]~input_o\,
	combout => \MuxAlu|Mux8~0_combout\);

-- Location: LCCOMB_X114_Y51_N2
\MuxAlu|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux8~1_combout\ = (\MuxAlu|Mux8~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxGenB|X[23]~8_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxAlu|Mux8~0_combout\ & (\MuxGenB|X[23]~8_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \MuxAlu|Mux8~0_combout\,
	datac => \MuxGenB|X[23]~8_combout\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux8~1_combout\);

-- Location: LCCOMB_X114_Y51_N28
\MuxAlu|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux7~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[24]~input_o\ $ (((\SEL_ULA[1]~input_o\ & \Fulladder32|fulladder23|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \Fulladder32|fulladder23|Cout~0_combout\,
	datad => \entradaA[24]~input_o\,
	combout => \MuxAlu|Mux7~0_combout\);

-- Location: LCCOMB_X114_Y51_N30
\MuxAlu|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux7~1_combout\ = (\MuxGenB|X[24]~7_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxAlu|Mux7~0_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxGenB|X[24]~7_combout\ & (\MuxAlu|Mux7~0_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \MuxGenB|X[24]~7_combout\,
	datac => \MuxAlu|Mux7~0_combout\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux7~1_combout\);

-- Location: LCCOMB_X61_Y69_N6
\MuxAlu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux6~0_combout\ = \entradaA[25]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\SEL_ULA[1]~input_o\ & \Fulladder32|fulladder24|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaA[25]~input_o\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \Fulladder32|fulladder24|Cout~0_combout\,
	combout => \MuxAlu|Mux6~0_combout\);

-- Location: LCCOMB_X68_Y69_N22
\MuxAlu|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux6~1_combout\ = (\MuxGenB|X[25]~6_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxAlu|Mux6~0_combout\))))) # (!\MuxGenB|X[25]~6_combout\ & (\MuxAlu|Mux6~0_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenB|X[25]~6_combout\,
	datab => \SEL_ULA[1]~input_o\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \MuxAlu|Mux6~0_combout\,
	combout => \MuxAlu|Mux6~1_combout\);

-- Location: LCCOMB_X61_Y69_N16
\MuxAlu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux5~0_combout\ = \entradaA[26]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (((\Fulladder32|fulladder25|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder25|Cout~0_combout\,
	datab => \entradaA[26]~input_o\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \SEL_Inverte_SinalA~input_o\,
	combout => \MuxAlu|Mux5~0_combout\);

-- Location: LCCOMB_X61_Y69_N2
\MuxAlu|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux5~1_combout\ = (\MuxAlu|Mux5~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxGenB|X[26]~5_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxAlu|Mux5~0_combout\ & (\MuxGenB|X[26]~5_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAlu|Mux5~0_combout\,
	datab => \MuxGenB|X[26]~5_combout\,
	datac => \SEL_ULA[1]~input_o\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux5~1_combout\);

-- Location: LCCOMB_X61_Y69_N28
\MuxAlu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux4~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[27]~input_o\ $ (((\SEL_ULA[1]~input_o\ & \Fulladder32|fulladder26|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[27]~input_o\,
	datad => \Fulladder32|fulladder26|Cout~0_combout\,
	combout => \MuxAlu|Mux4~0_combout\);

-- Location: LCCOMB_X61_Y69_N30
\MuxAlu|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux4~1_combout\ = (\MuxAlu|Mux4~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\MuxGenB|X[27]~4_combout\) # (\SEL_ULA[0]~input_o\))))) # (!\MuxAlu|Mux4~0_combout\ & (\MuxGenB|X[27]~4_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \MuxAlu|Mux4~0_combout\,
	datac => \MuxGenB|X[27]~4_combout\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux4~1_combout\);

-- Location: LCCOMB_X61_Y69_N0
\MuxAlu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux3~0_combout\ = \Fulladder32|fulladder27|Cout~0_combout\ $ (\entradaB[28]~input_o\ $ (\SEL_Inverte_SinalB~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder27|Cout~0_combout\,
	datac => \entradaB[28]~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \MuxAlu|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y69_N18
\MuxAlu|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux3~1_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[28]~input_o\,
	combout => \MuxAlu|Mux3~1_combout\);

-- Location: LCCOMB_X61_Y69_N4
\MuxAlu|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux3~2_combout\ = (!\SEL_ULA[1]~input_o\ & ((\MuxAlu|Mux3~1_combout\ & ((\MuxGenB|X[28]~3_combout\) # (\SEL_ULA[0]~input_o\))) # (!\MuxAlu|Mux3~1_combout\ & (\MuxGenB|X[28]~3_combout\ & \SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[1]~input_o\,
	datab => \MuxAlu|Mux3~1_combout\,
	datac => \MuxGenB|X[28]~3_combout\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux3~2_combout\);

-- Location: LCCOMB_X62_Y69_N18
\MuxAlu|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux30~2_combout\ = (\SEL_ULA[1]~input_o\ & !\SEL_ULA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_ULA[1]~input_o\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux30~2_combout\);

-- Location: LCCOMB_X61_Y69_N14
\MuxAlu|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux3~3_combout\ = (\MuxAlu|Mux3~2_combout\) # ((\MuxAlu|Mux30~2_combout\ & (\MuxAlu|Mux3~0_combout\ $ (\MuxAlu|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAlu|Mux3~0_combout\,
	datab => \MuxAlu|Mux3~1_combout\,
	datac => \MuxAlu|Mux3~2_combout\,
	datad => \MuxAlu|Mux30~2_combout\,
	combout => \MuxAlu|Mux3~3_combout\);

-- Location: LCCOMB_X62_Y69_N20
\MuxAlu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux2~0_combout\ = \SEL_Inverte_SinalA~input_o\ $ (\entradaA[29]~input_o\ $ (((\Fulladder32|fulladder28|Cout~0_combout\ & \SEL_ULA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder28|Cout~0_combout\,
	datab => \SEL_Inverte_SinalA~input_o\,
	datac => \entradaA[29]~input_o\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux2~0_combout\);

-- Location: LCCOMB_X68_Y69_N0
\MuxAlu|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux2~1_combout\ = (\MuxAlu|Mux2~0_combout\ & (\SEL_ULA[1]~input_o\ $ (((\SEL_ULA[0]~input_o\) # (\MuxGenB|X[29]~2_combout\))))) # (!\MuxAlu|Mux2~0_combout\ & (\MuxGenB|X[29]~2_combout\ & (\SEL_ULA[1]~input_o\ $ (\SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAlu|Mux2~0_combout\,
	datab => \SEL_ULA[1]~input_o\,
	datac => \SEL_ULA[0]~input_o\,
	datad => \MuxGenB|X[29]~2_combout\,
	combout => \MuxAlu|Mux2~1_combout\);

-- Location: LCCOMB_X62_Y69_N10
\Fulladder32|fulladder30|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fulladder32|fulladder30|soma~0_combout\ = \entradaB[30]~input_o\ $ (\entradaA[30]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (\SEL_Inverte_SinalB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[30]~input_o\,
	datab => \entradaA[30]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \Fulladder32|fulladder30|soma~0_combout\);

-- Location: LCCOMB_X62_Y69_N22
\MuxGenA|X[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenA|X[30]~0_combout\ = \entradaA[30]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaA[30]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	combout => \MuxGenA|X[30]~0_combout\);

-- Location: LCCOMB_X62_Y69_N16
\MuxAlu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux1~0_combout\ = (!\SEL_ULA[1]~input_o\ & ((\MuxGenA|X[30]~0_combout\ & ((\MuxGenB|X[30]~1_combout\) # (\SEL_ULA[0]~input_o\))) # (!\MuxGenA|X[30]~0_combout\ & (\MuxGenB|X[30]~1_combout\ & \SEL_ULA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxGenA|X[30]~0_combout\,
	datab => \SEL_ULA[1]~input_o\,
	datac => \MuxGenB|X[30]~1_combout\,
	datad => \SEL_ULA[0]~input_o\,
	combout => \MuxAlu|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y69_N4
\MuxAlu|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux1~1_combout\ = (\MuxAlu|Mux1~0_combout\) # ((\MuxAlu|Mux30~2_combout\ & (\Fulladder32|fulladder30|soma~0_combout\ $ (\Fulladder32|fulladder29|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fulladder32|fulladder30|soma~0_combout\,
	datab => \Fulladder32|fulladder29|Cout~0_combout\,
	datac => \MuxAlu|Mux1~0_combout\,
	datad => \MuxAlu|Mux30~2_combout\,
	combout => \MuxAlu|Mux1~1_combout\);

-- Location: LCCOMB_X62_Y69_N2
\saidaSLT[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaSLT[0]~2_combout\ = \entradaB[31]~input_o\ $ (\entradaA[31]~input_o\ $ (\SEL_Inverte_SinalA~input_o\ $ (\SEL_Inverte_SinalB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entradaB[31]~input_o\,
	datab => \entradaA[31]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	datad => \SEL_Inverte_SinalB~input_o\,
	combout => \saidaSLT[0]~2_combout\);

-- Location: LCCOMB_X62_Y69_N14
\MuxGenA|X[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxGenA|X[31]~1_combout\ = \entradaA[31]~input_o\ $ (\SEL_Inverte_SinalA~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entradaA[31]~input_o\,
	datac => \SEL_Inverte_SinalA~input_o\,
	combout => \MuxGenA|X[31]~1_combout\);

-- Location: LCCOMB_X62_Y69_N0
\MuxAlu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux0~0_combout\ = (!\SEL_ULA[1]~input_o\ & ((\SEL_ULA[0]~input_o\ & ((\MuxGenA|X[31]~1_combout\) # (\MuxGenB|X[31]~0_combout\))) # (!\SEL_ULA[0]~input_o\ & (\MuxGenA|X[31]~1_combout\ & \MuxGenB|X[31]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_ULA[0]~input_o\,
	datab => \MuxGenA|X[31]~1_combout\,
	datac => \MuxGenB|X[31]~0_combout\,
	datad => \SEL_ULA[1]~input_o\,
	combout => \MuxAlu|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y69_N12
\MuxAlu|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|Mux0~1_combout\ = (\MuxAlu|Mux0~0_combout\) # ((\MuxAlu|Mux30~2_combout\ & (\saidaSLT[0]~2_combout\ $ (\Fulladder32|fulladder30|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saidaSLT[0]~2_combout\,
	datab => \MuxAlu|Mux0~0_combout\,
	datac => \Fulladder32|fulladder30|Cout~0_combout\,
	datad => \MuxAlu|Mux30~2_combout\,
	combout => \MuxAlu|Mux0~1_combout\);

-- Location: LCCOMB_X55_Y72_N0
\MuxAlu|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MuxAlu|result~0_combout\ = (\MuxAlu|Mux0~1_combout\) # (\MuxAlu|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MuxAlu|Mux0~1_combout\,
	datad => \MuxAlu|Mux1~1_combout\,
	combout => \MuxAlu|result~0_combout\);

ww_last_Cout <= \last_Cout~output_o\;

ww_resposta(0) <= \resposta[0]~output_o\;

ww_resposta(1) <= \resposta[1]~output_o\;

ww_resposta(2) <= \resposta[2]~output_o\;

ww_resposta(3) <= \resposta[3]~output_o\;

ww_resposta(4) <= \resposta[4]~output_o\;

ww_resposta(5) <= \resposta[5]~output_o\;

ww_resposta(6) <= \resposta[6]~output_o\;

ww_resposta(7) <= \resposta[7]~output_o\;

ww_resposta(8) <= \resposta[8]~output_o\;

ww_resposta(9) <= \resposta[9]~output_o\;

ww_resposta(10) <= \resposta[10]~output_o\;

ww_resposta(11) <= \resposta[11]~output_o\;

ww_resposta(12) <= \resposta[12]~output_o\;

ww_resposta(13) <= \resposta[13]~output_o\;

ww_resposta(14) <= \resposta[14]~output_o\;

ww_resposta(15) <= \resposta[15]~output_o\;

ww_resposta(16) <= \resposta[16]~output_o\;

ww_resposta(17) <= \resposta[17]~output_o\;

ww_resposta(18) <= \resposta[18]~output_o\;

ww_resposta(19) <= \resposta[19]~output_o\;

ww_resposta(20) <= \resposta[20]~output_o\;

ww_resposta(21) <= \resposta[21]~output_o\;

ww_resposta(22) <= \resposta[22]~output_o\;

ww_resposta(23) <= \resposta[23]~output_o\;

ww_resposta(24) <= \resposta[24]~output_o\;

ww_resposta(25) <= \resposta[25]~output_o\;

ww_resposta(26) <= \resposta[26]~output_o\;

ww_resposta(27) <= \resposta[27]~output_o\;

ww_resposta(28) <= \resposta[28]~output_o\;

ww_resposta(29) <= \resposta[29]~output_o\;

ww_resposta(30) <= \resposta[30]~output_o\;

ww_resposta(31) <= \resposta[31]~output_o\;

ww_Z <= \Z~output_o\;
END structure;


