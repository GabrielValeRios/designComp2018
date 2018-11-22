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

-- DATE "11/22/2018 15:17:25"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mips IS
    PORT (
	clk : IN std_logic;
	fio1 : OUT std_logic_vector(31 DOWNTO 0);
	fio2 : OUT std_logic_vector(31 DOWNTO 0);
	fio3 : OUT std_logic_vector(31 DOWNTO 0);
	fio4 : OUT std_logic_vector(3 DOWNTO 0);
	fio5 : OUT std_logic;
	fio6 : OUT std_logic_vector(1 DOWNTO 0);
	fio7 : OUT std_logic_vector(4 DOWNTO 0);
	fio8 : OUT std_logic_vector(63 DOWNTO 0);
	fio9 : OUT std_logic_vector(146 DOWNTO 0);
	fio10 : OUT std_logic_vector(106 DOWNTO 0);
	fio11 : OUT std_logic_vector(70 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- fio1[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[1]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[2]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[4]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[5]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[6]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[8]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[11]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[12]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[14]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[15]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[16]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[17]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[18]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[19]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[20]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[21]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[22]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[23]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[24]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[25]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[26]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[27]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[28]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[29]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[30]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[31]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[0]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[1]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[4]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[6]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[8]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[9]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[10]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[11]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[12]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[13]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[14]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[15]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[16]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[17]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[18]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[19]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[20]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[21]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[22]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[23]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[24]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[25]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[26]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[27]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[28]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[29]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[30]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[31]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[1]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[3]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[6]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[7]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[8]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[9]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[10]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[11]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[12]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[13]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[14]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[15]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[16]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[17]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[18]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[19]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[20]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[21]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[22]	=>  Location: PIN_AD22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[23]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[24]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[25]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[26]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[27]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[28]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[29]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[30]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[31]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[1]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[3]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio5	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio6[0]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio6[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio7[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio7[1]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio7[2]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio7[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio7[4]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[0]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[1]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[6]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[8]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[9]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[10]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[11]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[12]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[14]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[15]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[16]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[17]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[19]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[20]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[21]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[22]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[23]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[24]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[25]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[26]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[27]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[28]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[29]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[30]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[31]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[32]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[33]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[34]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[35]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[36]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[37]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[38]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[39]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[40]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[41]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[42]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[43]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[44]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[45]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[46]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[47]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[48]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[49]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[50]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[51]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[52]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[53]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[54]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[55]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[56]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[57]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[58]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[59]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[60]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[61]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[62]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio8[63]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[1]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[5]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[8]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[9]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[10]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[11]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[12]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[13]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[14]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[15]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[16]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[17]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[18]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[19]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[20]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[21]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[22]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[23]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[24]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[25]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[26]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[27]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[28]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[29]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[30]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[31]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[32]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[33]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[34]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[35]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[36]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[37]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[38]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[39]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[40]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[41]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[42]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[43]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[44]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[45]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[46]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[47]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[48]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[49]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[50]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[51]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[52]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[53]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[54]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[55]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[56]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[57]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[58]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[59]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[60]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[61]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[62]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[63]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[64]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[65]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[66]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[67]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[68]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[69]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[70]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[71]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[72]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[73]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[74]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[75]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[76]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[77]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[78]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[79]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[80]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[81]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[82]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[83]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[84]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[85]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[86]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[87]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[88]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[89]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[90]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[91]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[92]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[93]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[94]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[95]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[96]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[97]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[98]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[99]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[100]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[101]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[102]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[103]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[104]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[105]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[106]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[107]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[108]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[109]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[110]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[111]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[112]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[113]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[114]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[115]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[116]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[117]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[118]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[119]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[120]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[121]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[122]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[123]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[124]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[125]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[126]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[127]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[128]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[129]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[130]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[131]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[132]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[133]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[134]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[135]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[136]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[137]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[138]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[139]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[140]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[141]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[142]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[143]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[144]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[145]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio9[146]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[0]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[1]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[3]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[4]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[5]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[6]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[7]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[8]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[9]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[10]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[11]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[12]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[13]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[14]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[15]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[16]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[17]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[18]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[19]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[20]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[21]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[22]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[23]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[24]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[25]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[26]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[27]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[28]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[29]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[30]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[31]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[32]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[33]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[34]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[35]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[36]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[37]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[38]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[39]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[40]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[41]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[42]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[43]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[44]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[45]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[46]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[47]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[48]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[49]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[50]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[51]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[52]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[53]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[54]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[55]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[56]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[57]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[58]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[59]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[60]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[61]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[62]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[63]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[64]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[65]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[66]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[67]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[68]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[69]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[70]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[71]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[72]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[73]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[74]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[75]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[76]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[77]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[78]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[79]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[80]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[81]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[82]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[83]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[84]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[85]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[86]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[87]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[88]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[89]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[90]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[91]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[92]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[93]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[94]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[95]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[96]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[97]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[98]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[99]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[100]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[101]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[102]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[103]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[104]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[105]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio10[106]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[1]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[2]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[4]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[6]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[7]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[9]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[11]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[12]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[13]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[14]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[15]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[16]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[17]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[18]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[19]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[20]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[21]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[22]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[23]	=>  Location: PIN_AD28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[24]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[25]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[26]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[27]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[28]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[29]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[30]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[31]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[32]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[33]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[34]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[35]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[36]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[37]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[38]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[39]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[40]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[41]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[42]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[43]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[44]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[45]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[46]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[47]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[48]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[49]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[50]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[51]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[52]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[53]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[54]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[55]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[56]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[57]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[58]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[59]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[60]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[61]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[62]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[63]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[64]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[65]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[66]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[67]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[68]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[69]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio11[70]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mips IS
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
SIGNAL ww_fio1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_fio2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_fio3 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_fio4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_fio5 : std_logic;
SIGNAL ww_fio6 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_fio7 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_fio8 : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_fio9 : std_logic_vector(146 DOWNTO 0);
SIGNAL ww_fio10 : std_logic_vector(106 DOWNTO 0);
SIGNAL ww_fio11 : std_logic_vector(70 DOWNTO 0);
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fio1[0]~output_o\ : std_logic;
SIGNAL \fio1[1]~output_o\ : std_logic;
SIGNAL \fio1[2]~output_o\ : std_logic;
SIGNAL \fio1[3]~output_o\ : std_logic;
SIGNAL \fio1[4]~output_o\ : std_logic;
SIGNAL \fio1[5]~output_o\ : std_logic;
SIGNAL \fio1[6]~output_o\ : std_logic;
SIGNAL \fio1[7]~output_o\ : std_logic;
SIGNAL \fio1[8]~output_o\ : std_logic;
SIGNAL \fio1[9]~output_o\ : std_logic;
SIGNAL \fio1[10]~output_o\ : std_logic;
SIGNAL \fio1[11]~output_o\ : std_logic;
SIGNAL \fio1[12]~output_o\ : std_logic;
SIGNAL \fio1[13]~output_o\ : std_logic;
SIGNAL \fio1[14]~output_o\ : std_logic;
SIGNAL \fio1[15]~output_o\ : std_logic;
SIGNAL \fio1[16]~output_o\ : std_logic;
SIGNAL \fio1[17]~output_o\ : std_logic;
SIGNAL \fio1[18]~output_o\ : std_logic;
SIGNAL \fio1[19]~output_o\ : std_logic;
SIGNAL \fio1[20]~output_o\ : std_logic;
SIGNAL \fio1[21]~output_o\ : std_logic;
SIGNAL \fio1[22]~output_o\ : std_logic;
SIGNAL \fio1[23]~output_o\ : std_logic;
SIGNAL \fio1[24]~output_o\ : std_logic;
SIGNAL \fio1[25]~output_o\ : std_logic;
SIGNAL \fio1[26]~output_o\ : std_logic;
SIGNAL \fio1[27]~output_o\ : std_logic;
SIGNAL \fio1[28]~output_o\ : std_logic;
SIGNAL \fio1[29]~output_o\ : std_logic;
SIGNAL \fio1[30]~output_o\ : std_logic;
SIGNAL \fio1[31]~output_o\ : std_logic;
SIGNAL \fio2[0]~output_o\ : std_logic;
SIGNAL \fio2[1]~output_o\ : std_logic;
SIGNAL \fio2[2]~output_o\ : std_logic;
SIGNAL \fio2[3]~output_o\ : std_logic;
SIGNAL \fio2[4]~output_o\ : std_logic;
SIGNAL \fio2[5]~output_o\ : std_logic;
SIGNAL \fio2[6]~output_o\ : std_logic;
SIGNAL \fio2[7]~output_o\ : std_logic;
SIGNAL \fio2[8]~output_o\ : std_logic;
SIGNAL \fio2[9]~output_o\ : std_logic;
SIGNAL \fio2[10]~output_o\ : std_logic;
SIGNAL \fio2[11]~output_o\ : std_logic;
SIGNAL \fio2[12]~output_o\ : std_logic;
SIGNAL \fio2[13]~output_o\ : std_logic;
SIGNAL \fio2[14]~output_o\ : std_logic;
SIGNAL \fio2[15]~output_o\ : std_logic;
SIGNAL \fio2[16]~output_o\ : std_logic;
SIGNAL \fio2[17]~output_o\ : std_logic;
SIGNAL \fio2[18]~output_o\ : std_logic;
SIGNAL \fio2[19]~output_o\ : std_logic;
SIGNAL \fio2[20]~output_o\ : std_logic;
SIGNAL \fio2[21]~output_o\ : std_logic;
SIGNAL \fio2[22]~output_o\ : std_logic;
SIGNAL \fio2[23]~output_o\ : std_logic;
SIGNAL \fio2[24]~output_o\ : std_logic;
SIGNAL \fio2[25]~output_o\ : std_logic;
SIGNAL \fio2[26]~output_o\ : std_logic;
SIGNAL \fio2[27]~output_o\ : std_logic;
SIGNAL \fio2[28]~output_o\ : std_logic;
SIGNAL \fio2[29]~output_o\ : std_logic;
SIGNAL \fio2[30]~output_o\ : std_logic;
SIGNAL \fio2[31]~output_o\ : std_logic;
SIGNAL \fio3[0]~output_o\ : std_logic;
SIGNAL \fio3[1]~output_o\ : std_logic;
SIGNAL \fio3[2]~output_o\ : std_logic;
SIGNAL \fio3[3]~output_o\ : std_logic;
SIGNAL \fio3[4]~output_o\ : std_logic;
SIGNAL \fio3[5]~output_o\ : std_logic;
SIGNAL \fio3[6]~output_o\ : std_logic;
SIGNAL \fio3[7]~output_o\ : std_logic;
SIGNAL \fio3[8]~output_o\ : std_logic;
SIGNAL \fio3[9]~output_o\ : std_logic;
SIGNAL \fio3[10]~output_o\ : std_logic;
SIGNAL \fio3[11]~output_o\ : std_logic;
SIGNAL \fio3[12]~output_o\ : std_logic;
SIGNAL \fio3[13]~output_o\ : std_logic;
SIGNAL \fio3[14]~output_o\ : std_logic;
SIGNAL \fio3[15]~output_o\ : std_logic;
SIGNAL \fio3[16]~output_o\ : std_logic;
SIGNAL \fio3[17]~output_o\ : std_logic;
SIGNAL \fio3[18]~output_o\ : std_logic;
SIGNAL \fio3[19]~output_o\ : std_logic;
SIGNAL \fio3[20]~output_o\ : std_logic;
SIGNAL \fio3[21]~output_o\ : std_logic;
SIGNAL \fio3[22]~output_o\ : std_logic;
SIGNAL \fio3[23]~output_o\ : std_logic;
SIGNAL \fio3[24]~output_o\ : std_logic;
SIGNAL \fio3[25]~output_o\ : std_logic;
SIGNAL \fio3[26]~output_o\ : std_logic;
SIGNAL \fio3[27]~output_o\ : std_logic;
SIGNAL \fio3[28]~output_o\ : std_logic;
SIGNAL \fio3[29]~output_o\ : std_logic;
SIGNAL \fio3[30]~output_o\ : std_logic;
SIGNAL \fio3[31]~output_o\ : std_logic;
SIGNAL \fio4[0]~output_o\ : std_logic;
SIGNAL \fio4[1]~output_o\ : std_logic;
SIGNAL \fio4[2]~output_o\ : std_logic;
SIGNAL \fio4[3]~output_o\ : std_logic;
SIGNAL \fio5~output_o\ : std_logic;
SIGNAL \fio6[0]~output_o\ : std_logic;
SIGNAL \fio6[1]~output_o\ : std_logic;
SIGNAL \fio7[0]~output_o\ : std_logic;
SIGNAL \fio7[1]~output_o\ : std_logic;
SIGNAL \fio7[2]~output_o\ : std_logic;
SIGNAL \fio7[3]~output_o\ : std_logic;
SIGNAL \fio7[4]~output_o\ : std_logic;
SIGNAL \fio8[0]~output_o\ : std_logic;
SIGNAL \fio8[1]~output_o\ : std_logic;
SIGNAL \fio8[2]~output_o\ : std_logic;
SIGNAL \fio8[3]~output_o\ : std_logic;
SIGNAL \fio8[4]~output_o\ : std_logic;
SIGNAL \fio8[5]~output_o\ : std_logic;
SIGNAL \fio8[6]~output_o\ : std_logic;
SIGNAL \fio8[7]~output_o\ : std_logic;
SIGNAL \fio8[8]~output_o\ : std_logic;
SIGNAL \fio8[9]~output_o\ : std_logic;
SIGNAL \fio8[10]~output_o\ : std_logic;
SIGNAL \fio8[11]~output_o\ : std_logic;
SIGNAL \fio8[12]~output_o\ : std_logic;
SIGNAL \fio8[13]~output_o\ : std_logic;
SIGNAL \fio8[14]~output_o\ : std_logic;
SIGNAL \fio8[15]~output_o\ : std_logic;
SIGNAL \fio8[16]~output_o\ : std_logic;
SIGNAL \fio8[17]~output_o\ : std_logic;
SIGNAL \fio8[18]~output_o\ : std_logic;
SIGNAL \fio8[19]~output_o\ : std_logic;
SIGNAL \fio8[20]~output_o\ : std_logic;
SIGNAL \fio8[21]~output_o\ : std_logic;
SIGNAL \fio8[22]~output_o\ : std_logic;
SIGNAL \fio8[23]~output_o\ : std_logic;
SIGNAL \fio8[24]~output_o\ : std_logic;
SIGNAL \fio8[25]~output_o\ : std_logic;
SIGNAL \fio8[26]~output_o\ : std_logic;
SIGNAL \fio8[27]~output_o\ : std_logic;
SIGNAL \fio8[28]~output_o\ : std_logic;
SIGNAL \fio8[29]~output_o\ : std_logic;
SIGNAL \fio8[30]~output_o\ : std_logic;
SIGNAL \fio8[31]~output_o\ : std_logic;
SIGNAL \fio8[32]~output_o\ : std_logic;
SIGNAL \fio8[33]~output_o\ : std_logic;
SIGNAL \fio8[34]~output_o\ : std_logic;
SIGNAL \fio8[35]~output_o\ : std_logic;
SIGNAL \fio8[36]~output_o\ : std_logic;
SIGNAL \fio8[37]~output_o\ : std_logic;
SIGNAL \fio8[38]~output_o\ : std_logic;
SIGNAL \fio8[39]~output_o\ : std_logic;
SIGNAL \fio8[40]~output_o\ : std_logic;
SIGNAL \fio8[41]~output_o\ : std_logic;
SIGNAL \fio8[42]~output_o\ : std_logic;
SIGNAL \fio8[43]~output_o\ : std_logic;
SIGNAL \fio8[44]~output_o\ : std_logic;
SIGNAL \fio8[45]~output_o\ : std_logic;
SIGNAL \fio8[46]~output_o\ : std_logic;
SIGNAL \fio8[47]~output_o\ : std_logic;
SIGNAL \fio8[48]~output_o\ : std_logic;
SIGNAL \fio8[49]~output_o\ : std_logic;
SIGNAL \fio8[50]~output_o\ : std_logic;
SIGNAL \fio8[51]~output_o\ : std_logic;
SIGNAL \fio8[52]~output_o\ : std_logic;
SIGNAL \fio8[53]~output_o\ : std_logic;
SIGNAL \fio8[54]~output_o\ : std_logic;
SIGNAL \fio8[55]~output_o\ : std_logic;
SIGNAL \fio8[56]~output_o\ : std_logic;
SIGNAL \fio8[57]~output_o\ : std_logic;
SIGNAL \fio8[58]~output_o\ : std_logic;
SIGNAL \fio8[59]~output_o\ : std_logic;
SIGNAL \fio8[60]~output_o\ : std_logic;
SIGNAL \fio8[61]~output_o\ : std_logic;
SIGNAL \fio8[62]~output_o\ : std_logic;
SIGNAL \fio8[63]~output_o\ : std_logic;
SIGNAL \fio9[0]~output_o\ : std_logic;
SIGNAL \fio9[1]~output_o\ : std_logic;
SIGNAL \fio9[2]~output_o\ : std_logic;
SIGNAL \fio9[3]~output_o\ : std_logic;
SIGNAL \fio9[4]~output_o\ : std_logic;
SIGNAL \fio9[5]~output_o\ : std_logic;
SIGNAL \fio9[6]~output_o\ : std_logic;
SIGNAL \fio9[7]~output_o\ : std_logic;
SIGNAL \fio9[8]~output_o\ : std_logic;
SIGNAL \fio9[9]~output_o\ : std_logic;
SIGNAL \fio9[10]~output_o\ : std_logic;
SIGNAL \fio9[11]~output_o\ : std_logic;
SIGNAL \fio9[12]~output_o\ : std_logic;
SIGNAL \fio9[13]~output_o\ : std_logic;
SIGNAL \fio9[14]~output_o\ : std_logic;
SIGNAL \fio9[15]~output_o\ : std_logic;
SIGNAL \fio9[16]~output_o\ : std_logic;
SIGNAL \fio9[17]~output_o\ : std_logic;
SIGNAL \fio9[18]~output_o\ : std_logic;
SIGNAL \fio9[19]~output_o\ : std_logic;
SIGNAL \fio9[20]~output_o\ : std_logic;
SIGNAL \fio9[21]~output_o\ : std_logic;
SIGNAL \fio9[22]~output_o\ : std_logic;
SIGNAL \fio9[23]~output_o\ : std_logic;
SIGNAL \fio9[24]~output_o\ : std_logic;
SIGNAL \fio9[25]~output_o\ : std_logic;
SIGNAL \fio9[26]~output_o\ : std_logic;
SIGNAL \fio9[27]~output_o\ : std_logic;
SIGNAL \fio9[28]~output_o\ : std_logic;
SIGNAL \fio9[29]~output_o\ : std_logic;
SIGNAL \fio9[30]~output_o\ : std_logic;
SIGNAL \fio9[31]~output_o\ : std_logic;
SIGNAL \fio9[32]~output_o\ : std_logic;
SIGNAL \fio9[33]~output_o\ : std_logic;
SIGNAL \fio9[34]~output_o\ : std_logic;
SIGNAL \fio9[35]~output_o\ : std_logic;
SIGNAL \fio9[36]~output_o\ : std_logic;
SIGNAL \fio9[37]~output_o\ : std_logic;
SIGNAL \fio9[38]~output_o\ : std_logic;
SIGNAL \fio9[39]~output_o\ : std_logic;
SIGNAL \fio9[40]~output_o\ : std_logic;
SIGNAL \fio9[41]~output_o\ : std_logic;
SIGNAL \fio9[42]~output_o\ : std_logic;
SIGNAL \fio9[43]~output_o\ : std_logic;
SIGNAL \fio9[44]~output_o\ : std_logic;
SIGNAL \fio9[45]~output_o\ : std_logic;
SIGNAL \fio9[46]~output_o\ : std_logic;
SIGNAL \fio9[47]~output_o\ : std_logic;
SIGNAL \fio9[48]~output_o\ : std_logic;
SIGNAL \fio9[49]~output_o\ : std_logic;
SIGNAL \fio9[50]~output_o\ : std_logic;
SIGNAL \fio9[51]~output_o\ : std_logic;
SIGNAL \fio9[52]~output_o\ : std_logic;
SIGNAL \fio9[53]~output_o\ : std_logic;
SIGNAL \fio9[54]~output_o\ : std_logic;
SIGNAL \fio9[55]~output_o\ : std_logic;
SIGNAL \fio9[56]~output_o\ : std_logic;
SIGNAL \fio9[57]~output_o\ : std_logic;
SIGNAL \fio9[58]~output_o\ : std_logic;
SIGNAL \fio9[59]~output_o\ : std_logic;
SIGNAL \fio9[60]~output_o\ : std_logic;
SIGNAL \fio9[61]~output_o\ : std_logic;
SIGNAL \fio9[62]~output_o\ : std_logic;
SIGNAL \fio9[63]~output_o\ : std_logic;
SIGNAL \fio9[64]~output_o\ : std_logic;
SIGNAL \fio9[65]~output_o\ : std_logic;
SIGNAL \fio9[66]~output_o\ : std_logic;
SIGNAL \fio9[67]~output_o\ : std_logic;
SIGNAL \fio9[68]~output_o\ : std_logic;
SIGNAL \fio9[69]~output_o\ : std_logic;
SIGNAL \fio9[70]~output_o\ : std_logic;
SIGNAL \fio9[71]~output_o\ : std_logic;
SIGNAL \fio9[72]~output_o\ : std_logic;
SIGNAL \fio9[73]~output_o\ : std_logic;
SIGNAL \fio9[74]~output_o\ : std_logic;
SIGNAL \fio9[75]~output_o\ : std_logic;
SIGNAL \fio9[76]~output_o\ : std_logic;
SIGNAL \fio9[77]~output_o\ : std_logic;
SIGNAL \fio9[78]~output_o\ : std_logic;
SIGNAL \fio9[79]~output_o\ : std_logic;
SIGNAL \fio9[80]~output_o\ : std_logic;
SIGNAL \fio9[81]~output_o\ : std_logic;
SIGNAL \fio9[82]~output_o\ : std_logic;
SIGNAL \fio9[83]~output_o\ : std_logic;
SIGNAL \fio9[84]~output_o\ : std_logic;
SIGNAL \fio9[85]~output_o\ : std_logic;
SIGNAL \fio9[86]~output_o\ : std_logic;
SIGNAL \fio9[87]~output_o\ : std_logic;
SIGNAL \fio9[88]~output_o\ : std_logic;
SIGNAL \fio9[89]~output_o\ : std_logic;
SIGNAL \fio9[90]~output_o\ : std_logic;
SIGNAL \fio9[91]~output_o\ : std_logic;
SIGNAL \fio9[92]~output_o\ : std_logic;
SIGNAL \fio9[93]~output_o\ : std_logic;
SIGNAL \fio9[94]~output_o\ : std_logic;
SIGNAL \fio9[95]~output_o\ : std_logic;
SIGNAL \fio9[96]~output_o\ : std_logic;
SIGNAL \fio9[97]~output_o\ : std_logic;
SIGNAL \fio9[98]~output_o\ : std_logic;
SIGNAL \fio9[99]~output_o\ : std_logic;
SIGNAL \fio9[100]~output_o\ : std_logic;
SIGNAL \fio9[101]~output_o\ : std_logic;
SIGNAL \fio9[102]~output_o\ : std_logic;
SIGNAL \fio9[103]~output_o\ : std_logic;
SIGNAL \fio9[104]~output_o\ : std_logic;
SIGNAL \fio9[105]~output_o\ : std_logic;
SIGNAL \fio9[106]~output_o\ : std_logic;
SIGNAL \fio9[107]~output_o\ : std_logic;
SIGNAL \fio9[108]~output_o\ : std_logic;
SIGNAL \fio9[109]~output_o\ : std_logic;
SIGNAL \fio9[110]~output_o\ : std_logic;
SIGNAL \fio9[111]~output_o\ : std_logic;
SIGNAL \fio9[112]~output_o\ : std_logic;
SIGNAL \fio9[113]~output_o\ : std_logic;
SIGNAL \fio9[114]~output_o\ : std_logic;
SIGNAL \fio9[115]~output_o\ : std_logic;
SIGNAL \fio9[116]~output_o\ : std_logic;
SIGNAL \fio9[117]~output_o\ : std_logic;
SIGNAL \fio9[118]~output_o\ : std_logic;
SIGNAL \fio9[119]~output_o\ : std_logic;
SIGNAL \fio9[120]~output_o\ : std_logic;
SIGNAL \fio9[121]~output_o\ : std_logic;
SIGNAL \fio9[122]~output_o\ : std_logic;
SIGNAL \fio9[123]~output_o\ : std_logic;
SIGNAL \fio9[124]~output_o\ : std_logic;
SIGNAL \fio9[125]~output_o\ : std_logic;
SIGNAL \fio9[126]~output_o\ : std_logic;
SIGNAL \fio9[127]~output_o\ : std_logic;
SIGNAL \fio9[128]~output_o\ : std_logic;
SIGNAL \fio9[129]~output_o\ : std_logic;
SIGNAL \fio9[130]~output_o\ : std_logic;
SIGNAL \fio9[131]~output_o\ : std_logic;
SIGNAL \fio9[132]~output_o\ : std_logic;
SIGNAL \fio9[133]~output_o\ : std_logic;
SIGNAL \fio9[134]~output_o\ : std_logic;
SIGNAL \fio9[135]~output_o\ : std_logic;
SIGNAL \fio9[136]~output_o\ : std_logic;
SIGNAL \fio9[137]~output_o\ : std_logic;
SIGNAL \fio9[138]~output_o\ : std_logic;
SIGNAL \fio9[139]~output_o\ : std_logic;
SIGNAL \fio9[140]~output_o\ : std_logic;
SIGNAL \fio9[141]~output_o\ : std_logic;
SIGNAL \fio9[142]~output_o\ : std_logic;
SIGNAL \fio9[143]~output_o\ : std_logic;
SIGNAL \fio9[144]~output_o\ : std_logic;
SIGNAL \fio9[145]~output_o\ : std_logic;
SIGNAL \fio9[146]~output_o\ : std_logic;
SIGNAL \fio10[0]~output_o\ : std_logic;
SIGNAL \fio10[1]~output_o\ : std_logic;
SIGNAL \fio10[2]~output_o\ : std_logic;
SIGNAL \fio10[3]~output_o\ : std_logic;
SIGNAL \fio10[4]~output_o\ : std_logic;
SIGNAL \fio10[5]~output_o\ : std_logic;
SIGNAL \fio10[6]~output_o\ : std_logic;
SIGNAL \fio10[7]~output_o\ : std_logic;
SIGNAL \fio10[8]~output_o\ : std_logic;
SIGNAL \fio10[9]~output_o\ : std_logic;
SIGNAL \fio10[10]~output_o\ : std_logic;
SIGNAL \fio10[11]~output_o\ : std_logic;
SIGNAL \fio10[12]~output_o\ : std_logic;
SIGNAL \fio10[13]~output_o\ : std_logic;
SIGNAL \fio10[14]~output_o\ : std_logic;
SIGNAL \fio10[15]~output_o\ : std_logic;
SIGNAL \fio10[16]~output_o\ : std_logic;
SIGNAL \fio10[17]~output_o\ : std_logic;
SIGNAL \fio10[18]~output_o\ : std_logic;
SIGNAL \fio10[19]~output_o\ : std_logic;
SIGNAL \fio10[20]~output_o\ : std_logic;
SIGNAL \fio10[21]~output_o\ : std_logic;
SIGNAL \fio10[22]~output_o\ : std_logic;
SIGNAL \fio10[23]~output_o\ : std_logic;
SIGNAL \fio10[24]~output_o\ : std_logic;
SIGNAL \fio10[25]~output_o\ : std_logic;
SIGNAL \fio10[26]~output_o\ : std_logic;
SIGNAL \fio10[27]~output_o\ : std_logic;
SIGNAL \fio10[28]~output_o\ : std_logic;
SIGNAL \fio10[29]~output_o\ : std_logic;
SIGNAL \fio10[30]~output_o\ : std_logic;
SIGNAL \fio10[31]~output_o\ : std_logic;
SIGNAL \fio10[32]~output_o\ : std_logic;
SIGNAL \fio10[33]~output_o\ : std_logic;
SIGNAL \fio10[34]~output_o\ : std_logic;
SIGNAL \fio10[35]~output_o\ : std_logic;
SIGNAL \fio10[36]~output_o\ : std_logic;
SIGNAL \fio10[37]~output_o\ : std_logic;
SIGNAL \fio10[38]~output_o\ : std_logic;
SIGNAL \fio10[39]~output_o\ : std_logic;
SIGNAL \fio10[40]~output_o\ : std_logic;
SIGNAL \fio10[41]~output_o\ : std_logic;
SIGNAL \fio10[42]~output_o\ : std_logic;
SIGNAL \fio10[43]~output_o\ : std_logic;
SIGNAL \fio10[44]~output_o\ : std_logic;
SIGNAL \fio10[45]~output_o\ : std_logic;
SIGNAL \fio10[46]~output_o\ : std_logic;
SIGNAL \fio10[47]~output_o\ : std_logic;
SIGNAL \fio10[48]~output_o\ : std_logic;
SIGNAL \fio10[49]~output_o\ : std_logic;
SIGNAL \fio10[50]~output_o\ : std_logic;
SIGNAL \fio10[51]~output_o\ : std_logic;
SIGNAL \fio10[52]~output_o\ : std_logic;
SIGNAL \fio10[53]~output_o\ : std_logic;
SIGNAL \fio10[54]~output_o\ : std_logic;
SIGNAL \fio10[55]~output_o\ : std_logic;
SIGNAL \fio10[56]~output_o\ : std_logic;
SIGNAL \fio10[57]~output_o\ : std_logic;
SIGNAL \fio10[58]~output_o\ : std_logic;
SIGNAL \fio10[59]~output_o\ : std_logic;
SIGNAL \fio10[60]~output_o\ : std_logic;
SIGNAL \fio10[61]~output_o\ : std_logic;
SIGNAL \fio10[62]~output_o\ : std_logic;
SIGNAL \fio10[63]~output_o\ : std_logic;
SIGNAL \fio10[64]~output_o\ : std_logic;
SIGNAL \fio10[65]~output_o\ : std_logic;
SIGNAL \fio10[66]~output_o\ : std_logic;
SIGNAL \fio10[67]~output_o\ : std_logic;
SIGNAL \fio10[68]~output_o\ : std_logic;
SIGNAL \fio10[69]~output_o\ : std_logic;
SIGNAL \fio10[70]~output_o\ : std_logic;
SIGNAL \fio10[71]~output_o\ : std_logic;
SIGNAL \fio10[72]~output_o\ : std_logic;
SIGNAL \fio10[73]~output_o\ : std_logic;
SIGNAL \fio10[74]~output_o\ : std_logic;
SIGNAL \fio10[75]~output_o\ : std_logic;
SIGNAL \fio10[76]~output_o\ : std_logic;
SIGNAL \fio10[77]~output_o\ : std_logic;
SIGNAL \fio10[78]~output_o\ : std_logic;
SIGNAL \fio10[79]~output_o\ : std_logic;
SIGNAL \fio10[80]~output_o\ : std_logic;
SIGNAL \fio10[81]~output_o\ : std_logic;
SIGNAL \fio10[82]~output_o\ : std_logic;
SIGNAL \fio10[83]~output_o\ : std_logic;
SIGNAL \fio10[84]~output_o\ : std_logic;
SIGNAL \fio10[85]~output_o\ : std_logic;
SIGNAL \fio10[86]~output_o\ : std_logic;
SIGNAL \fio10[87]~output_o\ : std_logic;
SIGNAL \fio10[88]~output_o\ : std_logic;
SIGNAL \fio10[89]~output_o\ : std_logic;
SIGNAL \fio10[90]~output_o\ : std_logic;
SIGNAL \fio10[91]~output_o\ : std_logic;
SIGNAL \fio10[92]~output_o\ : std_logic;
SIGNAL \fio10[93]~output_o\ : std_logic;
SIGNAL \fio10[94]~output_o\ : std_logic;
SIGNAL \fio10[95]~output_o\ : std_logic;
SIGNAL \fio10[96]~output_o\ : std_logic;
SIGNAL \fio10[97]~output_o\ : std_logic;
SIGNAL \fio10[98]~output_o\ : std_logic;
SIGNAL \fio10[99]~output_o\ : std_logic;
SIGNAL \fio10[100]~output_o\ : std_logic;
SIGNAL \fio10[101]~output_o\ : std_logic;
SIGNAL \fio10[102]~output_o\ : std_logic;
SIGNAL \fio10[103]~output_o\ : std_logic;
SIGNAL \fio10[104]~output_o\ : std_logic;
SIGNAL \fio10[105]~output_o\ : std_logic;
SIGNAL \fio10[106]~output_o\ : std_logic;
SIGNAL \fio11[0]~output_o\ : std_logic;
SIGNAL \fio11[1]~output_o\ : std_logic;
SIGNAL \fio11[2]~output_o\ : std_logic;
SIGNAL \fio11[3]~output_o\ : std_logic;
SIGNAL \fio11[4]~output_o\ : std_logic;
SIGNAL \fio11[5]~output_o\ : std_logic;
SIGNAL \fio11[6]~output_o\ : std_logic;
SIGNAL \fio11[7]~output_o\ : std_logic;
SIGNAL \fio11[8]~output_o\ : std_logic;
SIGNAL \fio11[9]~output_o\ : std_logic;
SIGNAL \fio11[10]~output_o\ : std_logic;
SIGNAL \fio11[11]~output_o\ : std_logic;
SIGNAL \fio11[12]~output_o\ : std_logic;
SIGNAL \fio11[13]~output_o\ : std_logic;
SIGNAL \fio11[14]~output_o\ : std_logic;
SIGNAL \fio11[15]~output_o\ : std_logic;
SIGNAL \fio11[16]~output_o\ : std_logic;
SIGNAL \fio11[17]~output_o\ : std_logic;
SIGNAL \fio11[18]~output_o\ : std_logic;
SIGNAL \fio11[19]~output_o\ : std_logic;
SIGNAL \fio11[20]~output_o\ : std_logic;
SIGNAL \fio11[21]~output_o\ : std_logic;
SIGNAL \fio11[22]~output_o\ : std_logic;
SIGNAL \fio11[23]~output_o\ : std_logic;
SIGNAL \fio11[24]~output_o\ : std_logic;
SIGNAL \fio11[25]~output_o\ : std_logic;
SIGNAL \fio11[26]~output_o\ : std_logic;
SIGNAL \fio11[27]~output_o\ : std_logic;
SIGNAL \fio11[28]~output_o\ : std_logic;
SIGNAL \fio11[29]~output_o\ : std_logic;
SIGNAL \fio11[30]~output_o\ : std_logic;
SIGNAL \fio11[31]~output_o\ : std_logic;
SIGNAL \fio11[32]~output_o\ : std_logic;
SIGNAL \fio11[33]~output_o\ : std_logic;
SIGNAL \fio11[34]~output_o\ : std_logic;
SIGNAL \fio11[35]~output_o\ : std_logic;
SIGNAL \fio11[36]~output_o\ : std_logic;
SIGNAL \fio11[37]~output_o\ : std_logic;
SIGNAL \fio11[38]~output_o\ : std_logic;
SIGNAL \fio11[39]~output_o\ : std_logic;
SIGNAL \fio11[40]~output_o\ : std_logic;
SIGNAL \fio11[41]~output_o\ : std_logic;
SIGNAL \fio11[42]~output_o\ : std_logic;
SIGNAL \fio11[43]~output_o\ : std_logic;
SIGNAL \fio11[44]~output_o\ : std_logic;
SIGNAL \fio11[45]~output_o\ : std_logic;
SIGNAL \fio11[46]~output_o\ : std_logic;
SIGNAL \fio11[47]~output_o\ : std_logic;
SIGNAL \fio11[48]~output_o\ : std_logic;
SIGNAL \fio11[49]~output_o\ : std_logic;
SIGNAL \fio11[50]~output_o\ : std_logic;
SIGNAL \fio11[51]~output_o\ : std_logic;
SIGNAL \fio11[52]~output_o\ : std_logic;
SIGNAL \fio11[53]~output_o\ : std_logic;
SIGNAL \fio11[54]~output_o\ : std_logic;
SIGNAL \fio11[55]~output_o\ : std_logic;
SIGNAL \fio11[56]~output_o\ : std_logic;
SIGNAL \fio11[57]~output_o\ : std_logic;
SIGNAL \fio11[58]~output_o\ : std_logic;
SIGNAL \fio11[59]~output_o\ : std_logic;
SIGNAL \fio11[60]~output_o\ : std_logic;
SIGNAL \fio11[61]~output_o\ : std_logic;
SIGNAL \fio11[62]~output_o\ : std_logic;
SIGNAL \fio11[63]~output_o\ : std_logic;
SIGNAL \fio11[64]~output_o\ : std_logic;
SIGNAL \fio11[65]~output_o\ : std_logic;
SIGNAL \fio11[66]~output_o\ : std_logic;
SIGNAL \fio11[67]~output_o\ : std_logic;
SIGNAL \fio11[68]~output_o\ : std_logic;
SIGNAL \fio11[69]~output_o\ : std_logic;
SIGNAL \fio11[70]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~0_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[2]~2_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~1\ : std_logic;
SIGNAL \FD|PCAdder|Add0~2_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[3]~0_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~3\ : std_logic;
SIGNAL \FD|PCAdder|Add0~5\ : std_logic;
SIGNAL \FD|PCAdder|Add0~6_combout\ : std_logic;
SIGNAL \FD|MI|Mux30~0_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[5]~1_combout\ : std_logic;
SIGNAL \FD|MI|Mux4~0_combout\ : std_logic;
SIGNAL \FD|MI|Mux31~0_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~4_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[4]~3_combout\ : std_logic;
SIGNAL \FD|MI|Mux20~0_combout\ : std_logic;
SIGNAL \FD|Reg1|output[11]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[21]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[139]~0_combout\ : std_logic;
SIGNAL \FD|MBR|X[0]~0_combout\ : std_logic;
SIGNAL \FD|Reg4|output[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[1]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[103]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~38_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|registers~39_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~40_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~41_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|registers~42_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|registers~43_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~44_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|registers~45_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|registers~46_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~47_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|registers~48_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~49_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|registers~50_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|registers~51_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~52_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|registers~53_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~54_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|registers~55_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~56_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~57_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|registers~58_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~59_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|registers~60_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|registers~61_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|registers~62_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|registers~63_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|registers~64_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~65_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|registers~66_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|registers~67_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|registers~68_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|registers~69_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|registers_rtl_0_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~70_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~71_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \FD|BR|registers~72_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~73_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~74_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \FD|BR|registers~75_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \FD|BR|registers~76_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~77_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \FD|BR|registers~78_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \FD|BR|registers~79_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~80_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \FD|BR|registers~81_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \FD|BR|registers~82_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \FD|BR|registers~83_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \FD|BR|registers~84_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[38]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~85_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[40]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \FD|BR|registers~86_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[42]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \FD|BR|registers~87_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[44]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \FD|BR|registers~88_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[46]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \FD|BR|registers~89_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[48]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~90_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[50]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \FD|BR|registers~91_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[52]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \FD|BR|registers~92_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[54]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~93_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[56]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~94_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[58]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \FD|BR|registers~95_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[60]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \FD|BR|registers~96_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[62]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \FD|BR|registers~97_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[64]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~98_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[66]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \FD|BR|registers~99_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[68]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \FD|BR|registers~100_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[70]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \FD|BR|registers~101_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[72]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \FD|BR|registers~102_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1_bypass[74]~feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \FD|BR|registers~103_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder31|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder28|Cout~1_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder25|Cout~1_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder22|Cout~1_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder19|Cout~1_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder16|Cout~1_combout\ : std_logic;
SIGNAL \FD|Reg2|output[56]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[86]~feeder_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder12|Cout~1_combout\ : std_logic;
SIGNAL \FD|Reg2|output[85]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[53]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[82]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[83]~feeder_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder9|Cout~1_combout\ : std_logic;
SIGNAL \FD|Reg2|output[49]~feeder_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder4|Cout~1_combout\ : std_logic;
SIGNAL \FD|Reg2|output[75]~feeder_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder4|Cout~2_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder9|Cout~2_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder12|Cout~2_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder14|Cout~1_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder16|Cout~2_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder19|Cout~2_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder22|Cout~2_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder25|Cout~2_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder28|Cout~2_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|result~combout\ : std_logic;
SIGNAL \FD|MI|Mux29~0_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[6]~4_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~7\ : std_logic;
SIGNAL \FD|PCAdder|Add0~8_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[7]~5_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~9\ : std_logic;
SIGNAL \FD|PCAdder|Add0~10_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[8]~6_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~11\ : std_logic;
SIGNAL \FD|PCAdder|Add0~12_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[9]~7_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~13\ : std_logic;
SIGNAL \FD|PCAdder|Add0~14_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[10]~8_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~15\ : std_logic;
SIGNAL \FD|PCAdder|Add0~16_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[11]~9_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~17\ : std_logic;
SIGNAL \FD|PCAdder|Add0~18_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[12]~10_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~19\ : std_logic;
SIGNAL \FD|PCAdder|Add0~20_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[13]~11_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~21\ : std_logic;
SIGNAL \FD|PCAdder|Add0~22_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[14]~12_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~23\ : std_logic;
SIGNAL \FD|PCAdder|Add0~24_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[15]~13_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~25\ : std_logic;
SIGNAL \FD|PCAdder|Add0~26_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[16]~14_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~27\ : std_logic;
SIGNAL \FD|PCAdder|Add0~28_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[17]~15_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~29\ : std_logic;
SIGNAL \FD|PCAdder|Add0~30_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[18]~16_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~31\ : std_logic;
SIGNAL \FD|PCAdder|Add0~32_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[19]~17_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~33\ : std_logic;
SIGNAL \FD|PCAdder|Add0~34_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[20]~18_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~35\ : std_logic;
SIGNAL \FD|PCAdder|Add0~36_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[21]~19_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~37\ : std_logic;
SIGNAL \FD|PCAdder|Add0~38_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[22]~20_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~39\ : std_logic;
SIGNAL \FD|PCAdder|Add0~40_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[23]~21_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~41\ : std_logic;
SIGNAL \FD|PCAdder|Add0~42_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[24]~22_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~43\ : std_logic;
SIGNAL \FD|PCAdder|Add0~44_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[25]~23_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~45\ : std_logic;
SIGNAL \FD|PCAdder|Add0~46_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[26]~24_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~47\ : std_logic;
SIGNAL \FD|PCAdder|Add0~48_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[27]~25_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~49\ : std_logic;
SIGNAL \FD|PCAdder|Add0~50_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~51\ : std_logic;
SIGNAL \FD|PCAdder|Add0~52_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~53\ : std_logic;
SIGNAL \FD|PCAdder|Add0~54_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~55\ : std_logic;
SIGNAL \FD|PCAdder|Add0~56_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~57\ : std_logic;
SIGNAL \FD|PCAdder|Add0~58_combout\ : std_logic;
SIGNAL \FD|Reg2|output[10]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[13]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[109]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[110]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[111]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[112]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[113]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[114]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[115]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[116]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[117]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[118]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[123]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[124]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[125]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[126]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[131]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[132]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[134]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[136]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[137]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg2|output[145]~1_combout\ : std_logic;
SIGNAL \FD|Reg3|output[6]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[8]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[9]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[10]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[12]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[13]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[14]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[15]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[16]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[17]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[19]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[22]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[24]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[26]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[27]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[28]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[29]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[31]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[32]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[33]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[34]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[36]~feeder_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder0|soma~combout\ : std_logic;
SIGNAL \FD|Reg3|output[37]~feeder_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder1|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder2|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder3|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder4|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder4|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder5|soma~combout\ : std_logic;
SIGNAL \FD|Reg3|output[42]~feeder_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder6|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder7|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder8|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder9|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder9|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder10|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder11|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder12|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder12|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder13|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder14|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder15|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder16|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder16|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder17|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder18|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder19|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder19|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder20|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder21|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder22|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder22|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder23|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder24|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder25|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder25|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder26|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder27|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder28|soma~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder28|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder29|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder30|soma~combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder31|soma~combout\ : std_logic;
SIGNAL \FD|Reg3|output[72]~30_combout\ : std_logic;
SIGNAL \FD|Reg3|output[72]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output[72]~31\ : std_logic;
SIGNAL \FD|Reg3|output[73]~32_combout\ : std_logic;
SIGNAL \FD|Reg3|output[73]~33\ : std_logic;
SIGNAL \FD|Reg3|output[74]~34_combout\ : std_logic;
SIGNAL \FD|Reg3|output[74]~35\ : std_logic;
SIGNAL \FD|Reg3|output[75]~36_combout\ : std_logic;
SIGNAL \FD|Reg3|output[75]~37\ : std_logic;
SIGNAL \FD|Reg3|output[76]~38_combout\ : std_logic;
SIGNAL \FD|Reg3|output[76]~39\ : std_logic;
SIGNAL \FD|Reg3|output[77]~40_combout\ : std_logic;
SIGNAL \FD|Reg3|output[77]~41\ : std_logic;
SIGNAL \FD|Reg3|output[78]~42_combout\ : std_logic;
SIGNAL \FD|Reg3|output[78]~43\ : std_logic;
SIGNAL \FD|Reg3|output[79]~44_combout\ : std_logic;
SIGNAL \FD|Reg3|output[79]~45\ : std_logic;
SIGNAL \FD|Reg3|output[80]~46_combout\ : std_logic;
SIGNAL \FD|Reg3|output[80]~47\ : std_logic;
SIGNAL \FD|Reg3|output[81]~48_combout\ : std_logic;
SIGNAL \FD|Reg3|output[81]~49\ : std_logic;
SIGNAL \FD|Reg3|output[82]~50_combout\ : std_logic;
SIGNAL \FD|Reg3|output[82]~51\ : std_logic;
SIGNAL \FD|Reg3|output[83]~52_combout\ : std_logic;
SIGNAL \FD|Reg3|output[83]~53\ : std_logic;
SIGNAL \FD|Reg3|output[84]~54_combout\ : std_logic;
SIGNAL \FD|Reg3|output[84]~55\ : std_logic;
SIGNAL \FD|Reg3|output[85]~56_combout\ : std_logic;
SIGNAL \FD|Reg3|output[85]~57\ : std_logic;
SIGNAL \FD|Reg3|output[86]~58_combout\ : std_logic;
SIGNAL \FD|Reg3|output[86]~59\ : std_logic;
SIGNAL \FD|Reg3|output[87]~60_combout\ : std_logic;
SIGNAL \FD|Reg3|output[87]~61\ : std_logic;
SIGNAL \FD|Reg3|output[88]~62_combout\ : std_logic;
SIGNAL \FD|Reg3|output[88]~63\ : std_logic;
SIGNAL \FD|Reg3|output[89]~64_combout\ : std_logic;
SIGNAL \FD|Reg3|output[89]~65\ : std_logic;
SIGNAL \FD|Reg3|output[90]~66_combout\ : std_logic;
SIGNAL \FD|Reg3|output[90]~67\ : std_logic;
SIGNAL \FD|Reg3|output[91]~68_combout\ : std_logic;
SIGNAL \FD|Reg3|output[91]~69\ : std_logic;
SIGNAL \FD|Reg3|output[92]~70_combout\ : std_logic;
SIGNAL \FD|Reg3|output[92]~71\ : std_logic;
SIGNAL \FD|Reg3|output[93]~72_combout\ : std_logic;
SIGNAL \FD|Reg3|output[93]~73\ : std_logic;
SIGNAL \FD|Reg3|output[94]~74_combout\ : std_logic;
SIGNAL \FD|Reg3|output[94]~75\ : std_logic;
SIGNAL \FD|Reg3|output[95]~76_combout\ : std_logic;
SIGNAL \FD|Reg3|output[95]~77\ : std_logic;
SIGNAL \FD|Reg3|output[96]~78_combout\ : std_logic;
SIGNAL \FD|Reg3|output[96]~79\ : std_logic;
SIGNAL \FD|Reg3|output[97]~80_combout\ : std_logic;
SIGNAL \FD|Reg3|output[97]~81\ : std_logic;
SIGNAL \FD|Reg3|output[98]~82_combout\ : std_logic;
SIGNAL \FD|Reg3|output[98]~83\ : std_logic;
SIGNAL \FD|Reg3|output[99]~84_combout\ : std_logic;
SIGNAL \FD|Reg3|output[99]~85\ : std_logic;
SIGNAL \FD|Reg3|output[100]~86_combout\ : std_logic;
SIGNAL \FD|Reg3|output[100]~87\ : std_logic;
SIGNAL \FD|Reg3|output[101]~88_combout\ : std_logic;
SIGNAL \FD|Reg4|output[5]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[6]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[7]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[8]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[10]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[11]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[12]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[13]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[14]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[15]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[16]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[17]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[18]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[20]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[22]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[23]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[24]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[25]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[27]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[28]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[29]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[30]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[31]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[32]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[33]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[34]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[35]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg4|output[36]~feeder_combout\ : std_logic;
SIGNAL \FD|Reg3|output\ : std_logic_vector(106 DOWNTO 0);
SIGNAL \FD|BR|registers_rtl_0_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|BR|registers_rtl_1_bypass\ : std_logic_vector(0 TO 74);
SIGNAL \FD|Reg2|output\ : std_logic_vector(146 DOWNTO 0);
SIGNAL \FD|PC|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|Reg1|output\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \FD|Reg4|output\ : std_logic_vector(70 DOWNTO 0);
SIGNAL \FD|Reg1|ALT_INV_output\ : std_logic_vector(27 DOWNTO 27);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
fio1 <= ww_fio1;
fio2 <= ww_fio2;
fio3 <= ww_fio3;
fio4 <= ww_fio4;
fio5 <= ww_fio5;
fio6 <= ww_fio6;
fio7 <= ww_fio7;
fio8 <= ww_fio8;
fio9 <= ww_fio9;
fio10 <= ww_fio10;
fio11 <= ww_fio11;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|Reg4|output\(1) & \FD|Reg4|output\(0));

\FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\~GND~combout\ & \FD|MI|Mux20~0_combout\);

\FD|BR|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a1\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a2\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a3\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a4\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a5\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a6\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a7\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a8\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a9\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a10\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a11\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a12\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a13\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a14\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a15\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a16\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a17\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a18\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a19\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a20\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a21\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a22\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a23\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a24\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a25\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a26\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a27\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a28\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a29\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a30\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|registers_rtl_0|auto_generated|ram_block1a31\ <= \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\FD|Reg4|output\(1) & \FD|Reg4|output\(0));

\FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\FD|MI|Mux20~0_combout\ & \~GND~combout\);

\FD|BR|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a1\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a2\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a3\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a4\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a5\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a6\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a7\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a8\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a9\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a10\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a11\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a12\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a13\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a14\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a15\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a16\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a17\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a18\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a19\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a20\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a21\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a22\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a23\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a24\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a25\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a26\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a27\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a28\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a29\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a30\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\FD|BR|registers_rtl_1|auto_generated|ram_block1a31\ <= \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\FD|Reg1|ALT_INV_output\(27) <= NOT \FD|Reg1|output\(27);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X54_Y0_N23
\fio1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[0]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\fio1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\fio1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[2]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\fio1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[3]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\fio1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\fio1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[5]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\fio1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[6]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\fio1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\fio1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[8]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\fio1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[9]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\fio1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[10]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\fio1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[11]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\fio1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[12]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\fio1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[13]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\fio1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\fio1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[15]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\fio1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[16]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\fio1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[17]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\fio1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[18]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\fio1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[19]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\fio1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[20]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\fio1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[21]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\fio1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[22]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\fio1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\fio1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[24]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\fio1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[25]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\fio1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[26]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\fio1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[27]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\fio1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\fio1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[29]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\fio1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[30]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\fio1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio1[31]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\fio2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~39_combout\,
	devoe => ww_devoe,
	o => \fio2[0]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\fio2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~40_combout\,
	devoe => ww_devoe,
	o => \fio2[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\fio2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~41_combout\,
	devoe => ww_devoe,
	o => \fio2[2]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\fio2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~42_combout\,
	devoe => ww_devoe,
	o => \fio2[3]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\fio2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~43_combout\,
	devoe => ww_devoe,
	o => \fio2[4]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\fio2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~44_combout\,
	devoe => ww_devoe,
	o => \fio2[5]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\fio2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~45_combout\,
	devoe => ww_devoe,
	o => \fio2[6]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\fio2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~46_combout\,
	devoe => ww_devoe,
	o => \fio2[7]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\fio2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~47_combout\,
	devoe => ww_devoe,
	o => \fio2[8]~output_o\);

-- Location: IOOBUF_X115_Y27_N9
\fio2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~48_combout\,
	devoe => ww_devoe,
	o => \fio2[9]~output_o\);

-- Location: IOOBUF_X96_Y73_N23
\fio2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~49_combout\,
	devoe => ww_devoe,
	o => \fio2[10]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\fio2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~50_combout\,
	devoe => ww_devoe,
	o => \fio2[11]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\fio2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~51_combout\,
	devoe => ww_devoe,
	o => \fio2[12]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\fio2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~52_combout\,
	devoe => ww_devoe,
	o => \fio2[13]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\fio2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~53_combout\,
	devoe => ww_devoe,
	o => \fio2[14]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\fio2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~54_combout\,
	devoe => ww_devoe,
	o => \fio2[15]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\fio2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~55_combout\,
	devoe => ww_devoe,
	o => \fio2[16]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\fio2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~56_combout\,
	devoe => ww_devoe,
	o => \fio2[17]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\fio2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~57_combout\,
	devoe => ww_devoe,
	o => \fio2[18]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\fio2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~58_combout\,
	devoe => ww_devoe,
	o => \fio2[19]~output_o\);

-- Location: IOOBUF_X115_Y13_N2
\fio2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~59_combout\,
	devoe => ww_devoe,
	o => \fio2[20]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\fio2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~60_combout\,
	devoe => ww_devoe,
	o => \fio2[21]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\fio2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~61_combout\,
	devoe => ww_devoe,
	o => \fio2[22]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\fio2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~62_combout\,
	devoe => ww_devoe,
	o => \fio2[23]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\fio2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~63_combout\,
	devoe => ww_devoe,
	o => \fio2[24]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\fio2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~64_combout\,
	devoe => ww_devoe,
	o => \fio2[25]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\fio2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~65_combout\,
	devoe => ww_devoe,
	o => \fio2[26]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\fio2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~66_combout\,
	devoe => ww_devoe,
	o => \fio2[27]~output_o\);

-- Location: IOOBUF_X115_Y4_N23
\fio2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~67_combout\,
	devoe => ww_devoe,
	o => \fio2[28]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\fio2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~68_combout\,
	devoe => ww_devoe,
	o => \fio2[29]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\fio2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~69_combout\,
	devoe => ww_devoe,
	o => \fio2[30]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\fio2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~70_combout\,
	devoe => ww_devoe,
	o => \fio2[31]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\fio3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~72_combout\,
	devoe => ww_devoe,
	o => \fio3[0]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\fio3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~73_combout\,
	devoe => ww_devoe,
	o => \fio3[1]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\fio3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~74_combout\,
	devoe => ww_devoe,
	o => \fio3[2]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\fio3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~75_combout\,
	devoe => ww_devoe,
	o => \fio3[3]~output_o\);

-- Location: IOOBUF_X83_Y73_N9
\fio3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~76_combout\,
	devoe => ww_devoe,
	o => \fio3[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\fio3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~77_combout\,
	devoe => ww_devoe,
	o => \fio3[5]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\fio3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~78_combout\,
	devoe => ww_devoe,
	o => \fio3[6]~output_o\);

-- Location: IOOBUF_X115_Y59_N16
\fio3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~79_combout\,
	devoe => ww_devoe,
	o => \fio3[7]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\fio3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~80_combout\,
	devoe => ww_devoe,
	o => \fio3[8]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\fio3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~81_combout\,
	devoe => ww_devoe,
	o => \fio3[9]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\fio3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~82_combout\,
	devoe => ww_devoe,
	o => \fio3[10]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\fio3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~83_combout\,
	devoe => ww_devoe,
	o => \fio3[11]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\fio3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~84_combout\,
	devoe => ww_devoe,
	o => \fio3[12]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\fio3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~85_combout\,
	devoe => ww_devoe,
	o => \fio3[13]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\fio3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~86_combout\,
	devoe => ww_devoe,
	o => \fio3[14]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\fio3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~87_combout\,
	devoe => ww_devoe,
	o => \fio3[15]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\fio3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~88_combout\,
	devoe => ww_devoe,
	o => \fio3[16]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\fio3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~89_combout\,
	devoe => ww_devoe,
	o => \fio3[17]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\fio3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~90_combout\,
	devoe => ww_devoe,
	o => \fio3[18]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\fio3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~91_combout\,
	devoe => ww_devoe,
	o => \fio3[19]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\fio3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~92_combout\,
	devoe => ww_devoe,
	o => \fio3[20]~output_o\);

-- Location: IOOBUF_X115_Y10_N9
\fio3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~93_combout\,
	devoe => ww_devoe,
	o => \fio3[21]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\fio3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~94_combout\,
	devoe => ww_devoe,
	o => \fio3[22]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\fio3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~95_combout\,
	devoe => ww_devoe,
	o => \fio3[23]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\fio3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~96_combout\,
	devoe => ww_devoe,
	o => \fio3[24]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\fio3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~97_combout\,
	devoe => ww_devoe,
	o => \fio3[25]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\fio3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~98_combout\,
	devoe => ww_devoe,
	o => \fio3[26]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\fio3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~99_combout\,
	devoe => ww_devoe,
	o => \fio3[27]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\fio3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~100_combout\,
	devoe => ww_devoe,
	o => \fio3[28]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\fio3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~101_combout\,
	devoe => ww_devoe,
	o => \fio3[29]~output_o\);

-- Location: IOOBUF_X115_Y14_N9
\fio3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~102_combout\,
	devoe => ww_devoe,
	o => \fio3[30]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\fio3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~103_combout\,
	devoe => ww_devoe,
	o => \fio3[31]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\fio4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio4[0]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\fio4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fio4[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\fio4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio4[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\fio4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio4[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\fio5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|result~combout\,
	devoe => ww_devoe,
	o => \fio5~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\fio6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio6[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\fio6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|ALT_INV_output\(27),
	devoe => ww_devoe,
	o => \fio6[1]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\fio7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(0),
	devoe => ww_devoe,
	o => \fio7[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\fio7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(1),
	devoe => ww_devoe,
	o => \fio7[1]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\fio7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio7[2]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\fio7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio7[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\fio7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio7[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\fio8[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(0),
	devoe => ww_devoe,
	o => \fio8[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\fio8[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(1),
	devoe => ww_devoe,
	o => \fio8[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\fio8[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(2),
	devoe => ww_devoe,
	o => \fio8[2]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\fio8[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(3),
	devoe => ww_devoe,
	o => \fio8[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\fio8[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\fio8[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\fio8[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\fio8[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[7]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\fio8[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[8]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\fio8[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[9]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\fio8[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[10]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\fio8[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(11),
	devoe => ww_devoe,
	o => \fio8[11]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\fio8[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(11),
	devoe => ww_devoe,
	o => \fio8[12]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\fio8[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\fio8[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[14]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\fio8[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\fio8[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[16]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\fio8[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(11),
	devoe => ww_devoe,
	o => \fio8[17]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\fio8[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[18]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\fio8[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[19]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\fio8[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[20]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\fio8[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(11),
	devoe => ww_devoe,
	o => \fio8[21]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\fio8[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[22]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\fio8[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[23]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\fio8[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[24]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\fio8[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[25]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\fio8[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[26]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\fio8[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(27),
	devoe => ww_devoe,
	o => \fio8[27]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\fio8[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[28]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\fio8[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[29]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\fio8[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[30]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\fio8[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[31]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\fio8[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[32]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\fio8[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio8[33]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\fio8[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(34),
	devoe => ww_devoe,
	o => \fio8[34]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\fio8[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(35),
	devoe => ww_devoe,
	o => \fio8[35]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\fio8[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(36),
	devoe => ww_devoe,
	o => \fio8[36]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\fio8[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(37),
	devoe => ww_devoe,
	o => \fio8[37]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\fio8[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(38),
	devoe => ww_devoe,
	o => \fio8[38]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\fio8[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(39),
	devoe => ww_devoe,
	o => \fio8[39]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\fio8[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(40),
	devoe => ww_devoe,
	o => \fio8[40]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\fio8[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(41),
	devoe => ww_devoe,
	o => \fio8[41]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\fio8[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(42),
	devoe => ww_devoe,
	o => \fio8[42]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\fio8[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(43),
	devoe => ww_devoe,
	o => \fio8[43]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\fio8[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(44),
	devoe => ww_devoe,
	o => \fio8[44]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\fio8[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(45),
	devoe => ww_devoe,
	o => \fio8[45]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\fio8[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(46),
	devoe => ww_devoe,
	o => \fio8[46]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\fio8[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(47),
	devoe => ww_devoe,
	o => \fio8[47]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\fio8[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(48),
	devoe => ww_devoe,
	o => \fio8[48]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\fio8[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(49),
	devoe => ww_devoe,
	o => \fio8[49]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\fio8[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(50),
	devoe => ww_devoe,
	o => \fio8[50]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\fio8[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(51),
	devoe => ww_devoe,
	o => \fio8[51]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\fio8[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(52),
	devoe => ww_devoe,
	o => \fio8[52]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\fio8[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(53),
	devoe => ww_devoe,
	o => \fio8[53]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\fio8[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(54),
	devoe => ww_devoe,
	o => \fio8[54]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\fio8[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(55),
	devoe => ww_devoe,
	o => \fio8[55]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\fio8[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(56),
	devoe => ww_devoe,
	o => \fio8[56]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\fio8[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(57),
	devoe => ww_devoe,
	o => \fio8[57]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\fio8[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(58),
	devoe => ww_devoe,
	o => \fio8[58]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\fio8[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(59),
	devoe => ww_devoe,
	o => \fio8[59]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\fio8[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(60),
	devoe => ww_devoe,
	o => \fio8[60]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\fio8[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(61),
	devoe => ww_devoe,
	o => \fio8[61]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\fio8[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(62),
	devoe => ww_devoe,
	o => \fio8[62]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\fio8[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg1|output\(63),
	devoe => ww_devoe,
	o => \fio8[63]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\fio9[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(21),
	devoe => ww_devoe,
	o => \fio9[0]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\fio9[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(21),
	devoe => ww_devoe,
	o => \fio9[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\fio9[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\fio9[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\fio9[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[4]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\fio9[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[5]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\fio9[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(21),
	devoe => ww_devoe,
	o => \fio9[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\fio9[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[7]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\fio9[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[8]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\fio9[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[9]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\fio9[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(10),
	devoe => ww_devoe,
	o => \fio9[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\fio9[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(11),
	devoe => ww_devoe,
	o => \fio9[11]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\fio9[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(12),
	devoe => ww_devoe,
	o => \fio9[12]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\fio9[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(13),
	devoe => ww_devoe,
	o => \fio9[13]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\fio9[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[14]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\fio9[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[15]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\fio9[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[16]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\fio9[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[17]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\fio9[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[18]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\fio9[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[19]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\fio9[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[20]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\fio9[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(21),
	devoe => ww_devoe,
	o => \fio9[21]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\fio9[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(21),
	devoe => ww_devoe,
	o => \fio9[22]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\fio9[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[23]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\fio9[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[24]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\fio9[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[25]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\fio9[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[26]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\fio9[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[27]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\fio9[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[28]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\fio9[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[29]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\fio9[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[30]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\fio9[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[31]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\fio9[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[32]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\fio9[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[33]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\fio9[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[34]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\fio9[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[35]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\fio9[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[36]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\fio9[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[37]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\fio9[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[38]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\fio9[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[39]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\fio9[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[40]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\fio9[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[41]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\fio9[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(42),
	devoe => ww_devoe,
	o => \fio9[42]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\fio9[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(43),
	devoe => ww_devoe,
	o => \fio9[43]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\fio9[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(44),
	devoe => ww_devoe,
	o => \fio9[44]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\fio9[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(45),
	devoe => ww_devoe,
	o => \fio9[45]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\fio9[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(46),
	devoe => ww_devoe,
	o => \fio9[46]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\fio9[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(47),
	devoe => ww_devoe,
	o => \fio9[47]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\fio9[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(48),
	devoe => ww_devoe,
	o => \fio9[48]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\fio9[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(49),
	devoe => ww_devoe,
	o => \fio9[49]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\fio9[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(50),
	devoe => ww_devoe,
	o => \fio9[50]~output_o\);

-- Location: IOOBUF_X115_Y24_N2
\fio9[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(51),
	devoe => ww_devoe,
	o => \fio9[51]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\fio9[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(52),
	devoe => ww_devoe,
	o => \fio9[52]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\fio9[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(53),
	devoe => ww_devoe,
	o => \fio9[53]~output_o\);

-- Location: IOOBUF_X115_Y23_N9
\fio9[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(54),
	devoe => ww_devoe,
	o => \fio9[54]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\fio9[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(55),
	devoe => ww_devoe,
	o => \fio9[55]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\fio9[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(56),
	devoe => ww_devoe,
	o => \fio9[56]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\fio9[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(57),
	devoe => ww_devoe,
	o => \fio9[57]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\fio9[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(58),
	devoe => ww_devoe,
	o => \fio9[58]~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\fio9[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(59),
	devoe => ww_devoe,
	o => \fio9[59]~output_o\);

-- Location: IOOBUF_X115_Y51_N2
\fio9[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(60),
	devoe => ww_devoe,
	o => \fio9[60]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\fio9[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(61),
	devoe => ww_devoe,
	o => \fio9[61]~output_o\);

-- Location: IOOBUF_X115_Y59_N23
\fio9[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(62),
	devoe => ww_devoe,
	o => \fio9[62]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\fio9[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(63),
	devoe => ww_devoe,
	o => \fio9[63]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\fio9[64]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(64),
	devoe => ww_devoe,
	o => \fio9[64]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\fio9[65]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(65),
	devoe => ww_devoe,
	o => \fio9[65]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\fio9[66]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(66),
	devoe => ww_devoe,
	o => \fio9[66]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\fio9[67]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(67),
	devoe => ww_devoe,
	o => \fio9[67]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\fio9[68]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(68),
	devoe => ww_devoe,
	o => \fio9[68]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\fio9[69]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(69),
	devoe => ww_devoe,
	o => \fio9[69]~output_o\);

-- Location: IOOBUF_X115_Y6_N16
\fio9[70]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(70),
	devoe => ww_devoe,
	o => \fio9[70]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\fio9[71]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(71),
	devoe => ww_devoe,
	o => \fio9[71]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\fio9[72]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(72),
	devoe => ww_devoe,
	o => \fio9[72]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\fio9[73]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(73),
	devoe => ww_devoe,
	o => \fio9[73]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\fio9[74]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(74),
	devoe => ww_devoe,
	o => \fio9[74]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\fio9[75]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(75),
	devoe => ww_devoe,
	o => \fio9[75]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\fio9[76]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(76),
	devoe => ww_devoe,
	o => \fio9[76]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\fio9[77]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(77),
	devoe => ww_devoe,
	o => \fio9[77]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\fio9[78]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(78),
	devoe => ww_devoe,
	o => \fio9[78]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\fio9[79]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(79),
	devoe => ww_devoe,
	o => \fio9[79]~output_o\);

-- Location: IOOBUF_X115_Y27_N2
\fio9[80]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(80),
	devoe => ww_devoe,
	o => \fio9[80]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\fio9[81]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(81),
	devoe => ww_devoe,
	o => \fio9[81]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\fio9[82]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(82),
	devoe => ww_devoe,
	o => \fio9[82]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\fio9[83]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(83),
	devoe => ww_devoe,
	o => \fio9[83]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\fio9[84]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(84),
	devoe => ww_devoe,
	o => \fio9[84]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\fio9[85]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(85),
	devoe => ww_devoe,
	o => \fio9[85]~output_o\);

-- Location: IOOBUF_X115_Y11_N9
\fio9[86]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(86),
	devoe => ww_devoe,
	o => \fio9[86]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\fio9[87]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(87),
	devoe => ww_devoe,
	o => \fio9[87]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\fio9[88]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(88),
	devoe => ww_devoe,
	o => \fio9[88]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\fio9[89]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(89),
	devoe => ww_devoe,
	o => \fio9[89]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\fio9[90]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(90),
	devoe => ww_devoe,
	o => \fio9[90]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\fio9[91]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(91),
	devoe => ww_devoe,
	o => \fio9[91]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\fio9[92]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(92),
	devoe => ww_devoe,
	o => \fio9[92]~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\fio9[93]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(93),
	devoe => ww_devoe,
	o => \fio9[93]~output_o\);

-- Location: IOOBUF_X115_Y50_N9
\fio9[94]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(94),
	devoe => ww_devoe,
	o => \fio9[94]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\fio9[95]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(95),
	devoe => ww_devoe,
	o => \fio9[95]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\fio9[96]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(96),
	devoe => ww_devoe,
	o => \fio9[96]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\fio9[97]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(97),
	devoe => ww_devoe,
	o => \fio9[97]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\fio9[98]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(98),
	devoe => ww_devoe,
	o => \fio9[98]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\fio9[99]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(99),
	devoe => ww_devoe,
	o => \fio9[99]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\fio9[100]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(100),
	devoe => ww_devoe,
	o => \fio9[100]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\fio9[101]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(101),
	devoe => ww_devoe,
	o => \fio9[101]~output_o\);

-- Location: IOOBUF_X115_Y26_N23
\fio9[102]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(102),
	devoe => ww_devoe,
	o => \fio9[102]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\fio9[103]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(103),
	devoe => ww_devoe,
	o => \fio9[103]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\fio9[104]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(104),
	devoe => ww_devoe,
	o => \fio9[104]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\fio9[105]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(105),
	devoe => ww_devoe,
	o => \fio9[105]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\fio9[106]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[106]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\fio9[107]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[107]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\fio9[108]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(108),
	devoe => ww_devoe,
	o => \fio9[108]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\fio9[109]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(109),
	devoe => ww_devoe,
	o => \fio9[109]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\fio9[110]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(110),
	devoe => ww_devoe,
	o => \fio9[110]~output_o\);

-- Location: IOOBUF_X0_Y48_N9
\fio9[111]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(111),
	devoe => ww_devoe,
	o => \fio9[111]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\fio9[112]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(112),
	devoe => ww_devoe,
	o => \fio9[112]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\fio9[113]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(113),
	devoe => ww_devoe,
	o => \fio9[113]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\fio9[114]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(114),
	devoe => ww_devoe,
	o => \fio9[114]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\fio9[115]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(115),
	devoe => ww_devoe,
	o => \fio9[115]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\fio9[116]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(116),
	devoe => ww_devoe,
	o => \fio9[116]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\fio9[117]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(117),
	devoe => ww_devoe,
	o => \fio9[117]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\fio9[118]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(118),
	devoe => ww_devoe,
	o => \fio9[118]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\fio9[119]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(119),
	devoe => ww_devoe,
	o => \fio9[119]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\fio9[120]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(120),
	devoe => ww_devoe,
	o => \fio9[120]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\fio9[121]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(121),
	devoe => ww_devoe,
	o => \fio9[121]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\fio9[122]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(122),
	devoe => ww_devoe,
	o => \fio9[122]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\fio9[123]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(123),
	devoe => ww_devoe,
	o => \fio9[123]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\fio9[124]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(124),
	devoe => ww_devoe,
	o => \fio9[124]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\fio9[125]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(125),
	devoe => ww_devoe,
	o => \fio9[125]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\fio9[126]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(126),
	devoe => ww_devoe,
	o => \fio9[126]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\fio9[127]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(127),
	devoe => ww_devoe,
	o => \fio9[127]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\fio9[128]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(128),
	devoe => ww_devoe,
	o => \fio9[128]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\fio9[129]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(129),
	devoe => ww_devoe,
	o => \fio9[129]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\fio9[130]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(130),
	devoe => ww_devoe,
	o => \fio9[130]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\fio9[131]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(131),
	devoe => ww_devoe,
	o => \fio9[131]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\fio9[132]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(132),
	devoe => ww_devoe,
	o => \fio9[132]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\fio9[133]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(133),
	devoe => ww_devoe,
	o => \fio9[133]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\fio9[134]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(134),
	devoe => ww_devoe,
	o => \fio9[134]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\fio9[135]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(135),
	devoe => ww_devoe,
	o => \fio9[135]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\fio9[136]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(136),
	devoe => ww_devoe,
	o => \fio9[136]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\fio9[137]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(137),
	devoe => ww_devoe,
	o => \fio9[137]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\fio9[138]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[138]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\fio9[139]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(139),
	devoe => ww_devoe,
	o => \fio9[139]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\fio9[140]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[140]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\fio9[141]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[141]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\fio9[142]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[142]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\fio9[143]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[143]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\fio9[144]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio9[144]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\fio9[145]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(145),
	devoe => ww_devoe,
	o => \fio9[145]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\fio9[146]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg2|output\(139),
	devoe => ww_devoe,
	o => \fio9[146]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\fio10[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(0),
	devoe => ww_devoe,
	o => \fio10[0]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\fio10[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(1),
	devoe => ww_devoe,
	o => \fio10[1]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\fio10[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio10[2]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\fio10[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio10[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\fio10[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio10[4]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\fio10[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(5),
	devoe => ww_devoe,
	o => \fio10[5]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\fio10[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(6),
	devoe => ww_devoe,
	o => \fio10[6]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\fio10[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(7),
	devoe => ww_devoe,
	o => \fio10[7]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\fio10[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(8),
	devoe => ww_devoe,
	o => \fio10[8]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\fio10[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(9),
	devoe => ww_devoe,
	o => \fio10[9]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\fio10[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(10),
	devoe => ww_devoe,
	o => \fio10[10]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\fio10[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(11),
	devoe => ww_devoe,
	o => \fio10[11]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\fio10[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(12),
	devoe => ww_devoe,
	o => \fio10[12]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\fio10[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(13),
	devoe => ww_devoe,
	o => \fio10[13]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\fio10[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(14),
	devoe => ww_devoe,
	o => \fio10[14]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\fio10[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(15),
	devoe => ww_devoe,
	o => \fio10[15]~output_o\);

-- Location: IOOBUF_X115_Y15_N2
\fio10[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(16),
	devoe => ww_devoe,
	o => \fio10[16]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\fio10[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(17),
	devoe => ww_devoe,
	o => \fio10[17]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\fio10[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(18),
	devoe => ww_devoe,
	o => \fio10[18]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\fio10[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(19),
	devoe => ww_devoe,
	o => \fio10[19]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\fio10[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(20),
	devoe => ww_devoe,
	o => \fio10[20]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\fio10[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(21),
	devoe => ww_devoe,
	o => \fio10[21]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\fio10[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(22),
	devoe => ww_devoe,
	o => \fio10[22]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\fio10[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(23),
	devoe => ww_devoe,
	o => \fio10[23]~output_o\);

-- Location: IOOBUF_X115_Y9_N23
\fio10[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(24),
	devoe => ww_devoe,
	o => \fio10[24]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\fio10[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(25),
	devoe => ww_devoe,
	o => \fio10[25]~output_o\);

-- Location: IOOBUF_X115_Y8_N16
\fio10[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(26),
	devoe => ww_devoe,
	o => \fio10[26]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\fio10[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(27),
	devoe => ww_devoe,
	o => \fio10[27]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\fio10[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(28),
	devoe => ww_devoe,
	o => \fio10[28]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\fio10[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(29),
	devoe => ww_devoe,
	o => \fio10[29]~output_o\);

-- Location: IOOBUF_X115_Y23_N2
\fio10[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(30),
	devoe => ww_devoe,
	o => \fio10[30]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\fio10[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(31),
	devoe => ww_devoe,
	o => \fio10[31]~output_o\);

-- Location: IOOBUF_X115_Y5_N16
\fio10[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(32),
	devoe => ww_devoe,
	o => \fio10[32]~output_o\);

-- Location: IOOBUF_X115_Y15_N9
\fio10[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(33),
	devoe => ww_devoe,
	o => \fio10[33]~output_o\);

-- Location: IOOBUF_X115_Y10_N2
\fio10[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(34),
	devoe => ww_devoe,
	o => \fio10[34]~output_o\);

-- Location: IOOBUF_X115_Y12_N9
\fio10[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(35),
	devoe => ww_devoe,
	o => \fio10[35]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\fio10[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(36),
	devoe => ww_devoe,
	o => \fio10[36]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\fio10[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(37),
	devoe => ww_devoe,
	o => \fio10[37]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\fio10[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(38),
	devoe => ww_devoe,
	o => \fio10[38]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\fio10[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(39),
	devoe => ww_devoe,
	o => \fio10[39]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\fio10[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(40),
	devoe => ww_devoe,
	o => \fio10[40]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\fio10[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(41),
	devoe => ww_devoe,
	o => \fio10[41]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\fio10[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(42),
	devoe => ww_devoe,
	o => \fio10[42]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\fio10[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(43),
	devoe => ww_devoe,
	o => \fio10[43]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\fio10[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(44),
	devoe => ww_devoe,
	o => \fio10[44]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\fio10[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(45),
	devoe => ww_devoe,
	o => \fio10[45]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\fio10[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(46),
	devoe => ww_devoe,
	o => \fio10[46]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\fio10[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(47),
	devoe => ww_devoe,
	o => \fio10[47]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\fio10[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(48),
	devoe => ww_devoe,
	o => \fio10[48]~output_o\);

-- Location: IOOBUF_X115_Y28_N2
\fio10[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(49),
	devoe => ww_devoe,
	o => \fio10[49]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\fio10[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(50),
	devoe => ww_devoe,
	o => \fio10[50]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\fio10[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(51),
	devoe => ww_devoe,
	o => \fio10[51]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\fio10[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(52),
	devoe => ww_devoe,
	o => \fio10[52]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\fio10[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(53),
	devoe => ww_devoe,
	o => \fio10[53]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\fio10[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(54),
	devoe => ww_devoe,
	o => \fio10[54]~output_o\);

-- Location: IOOBUF_X115_Y44_N2
\fio10[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(55),
	devoe => ww_devoe,
	o => \fio10[55]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\fio10[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(56),
	devoe => ww_devoe,
	o => \fio10[56]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\fio10[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(57),
	devoe => ww_devoe,
	o => \fio10[57]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\fio10[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(58),
	devoe => ww_devoe,
	o => \fio10[58]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\fio10[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(59),
	devoe => ww_devoe,
	o => \fio10[59]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\fio10[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(60),
	devoe => ww_devoe,
	o => \fio10[60]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\fio10[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(61),
	devoe => ww_devoe,
	o => \fio10[61]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\fio10[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(62),
	devoe => ww_devoe,
	o => \fio10[62]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\fio10[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(63),
	devoe => ww_devoe,
	o => \fio10[63]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\fio10[64]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(64),
	devoe => ww_devoe,
	o => \fio10[64]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\fio10[65]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(65),
	devoe => ww_devoe,
	o => \fio10[65]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\fio10[66]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(66),
	devoe => ww_devoe,
	o => \fio10[66]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\fio10[67]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(67),
	devoe => ww_devoe,
	o => \fio10[67]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\fio10[68]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(68),
	devoe => ww_devoe,
	o => \fio10[68]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\fio10[69]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(69),
	devoe => ww_devoe,
	o => \fio10[69]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\fio10[70]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio10[70]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\fio10[71]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio10[71]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\fio10[72]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(72),
	devoe => ww_devoe,
	o => \fio10[72]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\fio10[73]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(73),
	devoe => ww_devoe,
	o => \fio10[73]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\fio10[74]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(74),
	devoe => ww_devoe,
	o => \fio10[74]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\fio10[75]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(75),
	devoe => ww_devoe,
	o => \fio10[75]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\fio10[76]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(76),
	devoe => ww_devoe,
	o => \fio10[76]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\fio10[77]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(77),
	devoe => ww_devoe,
	o => \fio10[77]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\fio10[78]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(78),
	devoe => ww_devoe,
	o => \fio10[78]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\fio10[79]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(79),
	devoe => ww_devoe,
	o => \fio10[79]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\fio10[80]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(80),
	devoe => ww_devoe,
	o => \fio10[80]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\fio10[81]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(81),
	devoe => ww_devoe,
	o => \fio10[81]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\fio10[82]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(82),
	devoe => ww_devoe,
	o => \fio10[82]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\fio10[83]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(83),
	devoe => ww_devoe,
	o => \fio10[83]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\fio10[84]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(84),
	devoe => ww_devoe,
	o => \fio10[84]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\fio10[85]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(85),
	devoe => ww_devoe,
	o => \fio10[85]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\fio10[86]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(86),
	devoe => ww_devoe,
	o => \fio10[86]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\fio10[87]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(87),
	devoe => ww_devoe,
	o => \fio10[87]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\fio10[88]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(88),
	devoe => ww_devoe,
	o => \fio10[88]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\fio10[89]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(89),
	devoe => ww_devoe,
	o => \fio10[89]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\fio10[90]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(90),
	devoe => ww_devoe,
	o => \fio10[90]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\fio10[91]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(91),
	devoe => ww_devoe,
	o => \fio10[91]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\fio10[92]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(92),
	devoe => ww_devoe,
	o => \fio10[92]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\fio10[93]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(93),
	devoe => ww_devoe,
	o => \fio10[93]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\fio10[94]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(94),
	devoe => ww_devoe,
	o => \fio10[94]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\fio10[95]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(95),
	devoe => ww_devoe,
	o => \fio10[95]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\fio10[96]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(96),
	devoe => ww_devoe,
	o => \fio10[96]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\fio10[97]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(97),
	devoe => ww_devoe,
	o => \fio10[97]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\fio10[98]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(98),
	devoe => ww_devoe,
	o => \fio10[98]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\fio10[99]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(99),
	devoe => ww_devoe,
	o => \fio10[99]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\fio10[100]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(100),
	devoe => ww_devoe,
	o => \fio10[100]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\fio10[101]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(101),
	devoe => ww_devoe,
	o => \fio10[101]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\fio10[102]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio10[102]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\fio10[103]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg3|output\(103),
	devoe => ww_devoe,
	o => \fio10[103]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\fio10[104]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio10[104]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\fio10[105]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio10[105]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\fio10[106]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio10[106]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\fio11[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(0),
	devoe => ww_devoe,
	o => \fio11[0]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\fio11[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(1),
	devoe => ww_devoe,
	o => \fio11[1]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\fio11[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[2]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\fio11[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\fio11[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\fio11[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(5),
	devoe => ww_devoe,
	o => \fio11[5]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\fio11[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(6),
	devoe => ww_devoe,
	o => \fio11[6]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\fio11[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(7),
	devoe => ww_devoe,
	o => \fio11[7]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\fio11[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(8),
	devoe => ww_devoe,
	o => \fio11[8]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\fio11[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(9),
	devoe => ww_devoe,
	o => \fio11[9]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\fio11[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(10),
	devoe => ww_devoe,
	o => \fio11[10]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\fio11[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(11),
	devoe => ww_devoe,
	o => \fio11[11]~output_o\);

-- Location: IOOBUF_X115_Y62_N23
\fio11[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(12),
	devoe => ww_devoe,
	o => \fio11[12]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\fio11[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(13),
	devoe => ww_devoe,
	o => \fio11[13]~output_o\);

-- Location: IOOBUF_X115_Y13_N9
\fio11[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(14),
	devoe => ww_devoe,
	o => \fio11[14]~output_o\);

-- Location: IOOBUF_X115_Y7_N16
\fio11[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(15),
	devoe => ww_devoe,
	o => \fio11[15]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\fio11[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(16),
	devoe => ww_devoe,
	o => \fio11[16]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\fio11[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(17),
	devoe => ww_devoe,
	o => \fio11[17]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\fio11[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(18),
	devoe => ww_devoe,
	o => \fio11[18]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\fio11[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(19),
	devoe => ww_devoe,
	o => \fio11[19]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\fio11[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(20),
	devoe => ww_devoe,
	o => \fio11[20]~output_o\);

-- Location: IOOBUF_X115_Y11_N2
\fio11[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(21),
	devoe => ww_devoe,
	o => \fio11[21]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\fio11[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(22),
	devoe => ww_devoe,
	o => \fio11[22]~output_o\);

-- Location: IOOBUF_X115_Y12_N2
\fio11[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(23),
	devoe => ww_devoe,
	o => \fio11[23]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\fio11[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(24),
	devoe => ww_devoe,
	o => \fio11[24]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\fio11[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(25),
	devoe => ww_devoe,
	o => \fio11[25]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\fio11[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(26),
	devoe => ww_devoe,
	o => \fio11[26]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\fio11[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(27),
	devoe => ww_devoe,
	o => \fio11[27]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\fio11[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(28),
	devoe => ww_devoe,
	o => \fio11[28]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\fio11[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(29),
	devoe => ww_devoe,
	o => \fio11[29]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\fio11[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(30),
	devoe => ww_devoe,
	o => \fio11[30]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\fio11[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(31),
	devoe => ww_devoe,
	o => \fio11[31]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\fio11[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(32),
	devoe => ww_devoe,
	o => \fio11[32]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\fio11[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(33),
	devoe => ww_devoe,
	o => \fio11[33]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\fio11[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(34),
	devoe => ww_devoe,
	o => \fio11[34]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\fio11[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(35),
	devoe => ww_devoe,
	o => \fio11[35]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\fio11[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(36),
	devoe => ww_devoe,
	o => \fio11[36]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\fio11[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[37]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\fio11[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[38]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\fio11[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[39]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\fio11[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[40]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\fio11[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[41]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\fio11[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[42]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\fio11[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[43]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\fio11[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[44]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\fio11[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[45]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\fio11[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[46]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\fio11[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[47]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\fio11[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[48]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\fio11[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[49]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\fio11[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[50]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\fio11[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[51]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\fio11[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[52]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\fio11[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[53]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\fio11[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[54]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\fio11[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[55]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\fio11[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[56]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\fio11[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[57]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\fio11[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[58]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\fio11[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[59]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\fio11[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[60]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\fio11[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[61]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\fio11[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[62]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\fio11[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[63]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\fio11[64]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[64]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\fio11[65]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[65]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\fio11[66]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[66]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\fio11[67]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[67]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\fio11[68]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[68]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\fio11[69]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio11[69]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\fio11[70]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|Reg4|output\(70),
	devoe => ww_devoe,
	o => \fio11[70]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X105_Y51_N12
\FD|BR|registers_rtl_0_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X105_Y51_N13
\FD|BR|registers_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(12));

-- Location: LCCOMB_X2_Y21_N2
\FD|PCAdder|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~0_combout\ = \FD|PC|q\(2) $ (VCC)
-- \FD|PCAdder|Add0~1\ = CARRY(\FD|PC|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(2),
	datad => VCC,
	combout => \FD|PCAdder|Add0~0_combout\,
	cout => \FD|PCAdder|Add0~1\);

-- Location: LCCOMB_X1_Y21_N28
\FD|MuxProxPC|X[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[2]~2_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~0_combout\,
	combout => \FD|MuxProxPC|X[2]~2_combout\);

-- Location: FF_X1_Y21_N29
\FD|PC|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(2));

-- Location: LCCOMB_X2_Y21_N4
\FD|PCAdder|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~2_combout\ = (\FD|PC|q\(3) & (!\FD|PCAdder|Add0~1\)) # (!\FD|PC|q\(3) & ((\FD|PCAdder|Add0~1\) # (GND)))
-- \FD|PCAdder|Add0~3\ = CARRY((!\FD|PCAdder|Add0~1\) # (!\FD|PC|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(3),
	datad => VCC,
	cin => \FD|PCAdder|Add0~1\,
	combout => \FD|PCAdder|Add0~2_combout\,
	cout => \FD|PCAdder|Add0~3\);

-- Location: LCCOMB_X1_Y21_N8
\FD|MuxProxPC|X[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[3]~0_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~2_combout\,
	combout => \FD|MuxProxPC|X[3]~0_combout\);

-- Location: FF_X1_Y21_N9
\FD|PC|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(3));

-- Location: LCCOMB_X2_Y21_N6
\FD|PCAdder|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~4_combout\ = (\FD|PC|q\(4) & (\FD|PCAdder|Add0~3\ $ (GND))) # (!\FD|PC|q\(4) & (!\FD|PCAdder|Add0~3\ & VCC))
-- \FD|PCAdder|Add0~5\ = CARRY((\FD|PC|q\(4) & !\FD|PCAdder|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(4),
	datad => VCC,
	cin => \FD|PCAdder|Add0~3\,
	combout => \FD|PCAdder|Add0~4_combout\,
	cout => \FD|PCAdder|Add0~5\);

-- Location: LCCOMB_X2_Y21_N8
\FD|PCAdder|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~6_combout\ = (\FD|PC|q\(5) & (!\FD|PCAdder|Add0~5\)) # (!\FD|PC|q\(5) & ((\FD|PCAdder|Add0~5\) # (GND)))
-- \FD|PCAdder|Add0~7\ = CARRY((!\FD|PCAdder|Add0~5\) # (!\FD|PC|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(5),
	datad => VCC,
	cin => \FD|PCAdder|Add0~5\,
	combout => \FD|PCAdder|Add0~6_combout\,
	cout => \FD|PCAdder|Add0~7\);

-- Location: LCCOMB_X1_Y21_N16
\FD|MI|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux30~0_combout\ = (\FD|PC|q\(3)) # ((!\FD|PC|q\(5) & ((!\FD|PC|q\(2)) # (!\FD|PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datab => \FD|PC|q\(5),
	datac => \FD|PC|q\(3),
	datad => \FD|PC|q\(2),
	combout => \FD|MI|Mux30~0_combout\);

-- Location: LCCOMB_X1_Y21_N14
\FD|MuxProxPC|X[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[5]~1_combout\ = (\FD|Reg1|output\(27) & ((\FD|MI|Mux30~0_combout\))) # (!\FD|Reg1|output\(27) & (\FD|PCAdder|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg1|output\(27),
	datac => \FD|PCAdder|Add0~6_combout\,
	datad => \FD|MI|Mux30~0_combout\,
	combout => \FD|MuxProxPC|X[5]~1_combout\);

-- Location: FF_X1_Y21_N15
\FD|PC|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(5));

-- Location: LCCOMB_X1_Y21_N20
\FD|MI|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux4~0_combout\ = (\FD|PC|q\(4) & (!\FD|PC|q\(5) & (!\FD|PC|q\(3) & \FD|PC|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datab => \FD|PC|q\(5),
	datac => \FD|PC|q\(3),
	datad => \FD|PC|q\(2),
	combout => \FD|MI|Mux4~0_combout\);

-- Location: FF_X1_Y21_N21
\FD|Reg1|output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MI|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(27));

-- Location: LCCOMB_X1_Y21_N22
\FD|MI|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux31~0_combout\ = (\FD|PC|q\(2) & ((\FD|PC|q\(5)) # ((\FD|PC|q\(4) & \FD|PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datab => \FD|PC|q\(5),
	datac => \FD|PC|q\(3),
	datad => \FD|PC|q\(2),
	combout => \FD|MI|Mux31~0_combout\);

-- Location: LCCOMB_X1_Y21_N6
\FD|MuxProxPC|X[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[4]~3_combout\ = (\FD|Reg1|output\(27) & (\FD|MI|Mux31~0_combout\)) # (!\FD|Reg1|output\(27) & ((\FD|PCAdder|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg1|output\(27),
	datac => \FD|MI|Mux31~0_combout\,
	datad => \FD|PCAdder|Add0~4_combout\,
	combout => \FD|MuxProxPC|X[4]~3_combout\);

-- Location: FF_X1_Y21_N7
\FD|PC|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(4));

-- Location: LCCOMB_X1_Y21_N12
\FD|MI|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux20~0_combout\ = (!\FD|PC|q\(4) & (!\FD|PC|q\(5) & (!\FD|PC|q\(3) & !\FD|PC|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datab => \FD|PC|q\(5),
	datac => \FD|PC|q\(3),
	datad => \FD|PC|q\(2),
	combout => \FD|MI|Mux20~0_combout\);

-- Location: LCCOMB_X1_Y53_N28
\FD|Reg1|output[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg1|output[11]~feeder_combout\ = \FD|MI|Mux20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux20~0_combout\,
	combout => \FD|Reg1|output[11]~feeder_combout\);

-- Location: FF_X1_Y53_N29
\FD|Reg1|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg1|output[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(11));

-- Location: LCCOMB_X1_Y53_N30
\FD|Reg2|output[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[21]~feeder_combout\ = \FD|Reg1|output\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(11),
	combout => \FD|Reg2|output[21]~feeder_combout\);

-- Location: FF_X1_Y53_N31
\FD|Reg2|output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(21));

-- Location: LCCOMB_X1_Y53_N12
\FD|Reg2|output[139]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[139]~0_combout\ = !\FD|Reg1|output\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(27),
	combout => \FD|Reg2|output[139]~0_combout\);

-- Location: FF_X1_Y53_N13
\FD|Reg2|output[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[139]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(139));

-- Location: LCCOMB_X1_Y53_N16
\FD|MBR|X[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MBR|X[0]~0_combout\ = (\FD|Reg2|output\(21) & \FD|Reg2|output\(139))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(21),
	datad => \FD|Reg2|output\(139),
	combout => \FD|MBR|X[0]~0_combout\);

-- Location: FF_X1_Y53_N17
\FD|Reg3|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MBR|X[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(0));

-- Location: LCCOMB_X1_Y53_N24
\FD|Reg4|output[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[0]~feeder_combout\ = \FD|Reg3|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(0),
	combout => \FD|Reg4|output[0]~feeder_combout\);

-- Location: FF_X1_Y53_N25
\FD|Reg4|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(0));

-- Location: LCCOMB_X100_Y50_N6
\FD|BR|registers_rtl_0_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[1]~feeder_combout\ = \FD|Reg4|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg4|output\(0),
	combout => \FD|BR|registers_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X100_Y50_N7
\FD|BR|registers_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(1));

-- Location: FF_X1_Y53_N19
\FD|Reg3|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(21),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(1));

-- Location: LCCOMB_X1_Y53_N26
\FD|Reg4|output[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[1]~feeder_combout\ = \FD|Reg3|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(1),
	combout => \FD|Reg4|output[1]~feeder_combout\);

-- Location: FF_X1_Y53_N27
\FD|Reg4|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(1));

-- Location: LCCOMB_X100_Y50_N18
\FD|BR|registers_rtl_0_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[3]~feeder_combout\ = \FD|Reg4|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg4|output\(1),
	combout => \FD|BR|registers_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X100_Y50_N19
\FD|BR|registers_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(3));

-- Location: FF_X100_Y50_N1
\FD|BR|registers_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MI|Mux20~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(2));

-- Location: LCCOMB_X1_Y53_N0
\FD|Reg3|output[103]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[103]~feeder_combout\ = \FD|Reg2|output\(139)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(139),
	combout => \FD|Reg3|output[103]~feeder_combout\);

-- Location: FF_X1_Y53_N1
\FD|Reg3|output[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[103]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(103));

-- Location: LCCOMB_X1_Y53_N10
\FD|Reg4|output[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[70]~feeder_combout\ = \FD|Reg3|output\(103)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(103),
	combout => \FD|Reg4|output[70]~feeder_combout\);

-- Location: FF_X1_Y53_N11
\FD|Reg4|output[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(70));

-- Location: LCCOMB_X100_Y50_N24
\FD|BR|registers_rtl_0_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[0]~feeder_combout\ = \FD|Reg4|output\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg4|output\(70),
	combout => \FD|BR|registers_rtl_0_bypass[0]~feeder_combout\);

-- Location: FF_X100_Y50_N25
\FD|BR|registers_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(0));

-- Location: LCCOMB_X100_Y50_N0
\FD|BR|registers~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~38_combout\ = (!\FD|BR|registers_rtl_0_bypass\(3) & (\FD|BR|registers_rtl_0_bypass\(0) & (\FD|BR|registers_rtl_0_bypass\(1) $ (!\FD|BR|registers_rtl_0_bypass\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0_bypass\(1),
	datab => \FD|BR|registers_rtl_0_bypass\(3),
	datac => \FD|BR|registers_rtl_0_bypass\(2),
	datad => \FD|BR|registers_rtl_0_bypass\(0),
	combout => \FD|BR|registers~38_combout\);

-- Location: LCCOMB_X103_Y50_N28
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

-- Location: M9K_X104_Y51_N0
\FD|BR|registers_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000002000000001000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Mips.ram0_bankregister_b26caca.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxoDados:FD|bankregister:BR|altsyncram:registers_rtl_0|altsyncram_n8h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|Reg4|output\(70),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|registers_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X105_Y51_N10
\FD|BR|registers~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~39_combout\ = (\FD|BR|registers_rtl_0_bypass\(12) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0_bypass\(12),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \FD|BR|registers~39_combout\);

-- Location: LCCOMB_X105_Y51_N16
\FD|BR|registers_rtl_0_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X105_Y51_N17
\FD|BR|registers_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(14));

-- Location: LCCOMB_X105_Y51_N26
\FD|BR|registers~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~40_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a1\ & \FD|BR|registers_rtl_0_bypass\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a1\,
	datad => \FD|BR|registers_rtl_0_bypass\(14),
	combout => \FD|BR|registers~40_combout\);

-- Location: LCCOMB_X105_Y51_N28
\FD|BR|registers_rtl_0_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X105_Y51_N29
\FD|BR|registers_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(16));

-- Location: LCCOMB_X105_Y51_N30
\FD|BR|registers~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~41_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a2\ & \FD|BR|registers_rtl_0_bypass\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a2\,
	datad => \FD|BR|registers_rtl_0_bypass\(16),
	combout => \FD|BR|registers~41_combout\);

-- Location: LCCOMB_X105_Y48_N12
\FD|BR|registers_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X105_Y48_N13
\FD|BR|registers_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(18));

-- Location: LCCOMB_X105_Y50_N0
\FD|BR|registers~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~42_combout\ = (\FD|BR|registers_rtl_0_bypass\(18) & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a3\ & !\FD|BR|registers~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0_bypass\(18),
	datab => \FD|BR|registers_rtl_0|auto_generated|ram_block1a3\,
	datad => \FD|BR|registers~38_combout\,
	combout => \FD|BR|registers~42_combout\);

-- Location: LCCOMB_X102_Y50_N24
\FD|BR|registers_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X102_Y50_N25
\FD|BR|registers_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(20));

-- Location: LCCOMB_X105_Y50_N30
\FD|BR|registers~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~43_combout\ = (\FD|BR|registers_rtl_0_bypass\(20) & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a4\ & !\FD|BR|registers~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0_bypass\(20),
	datab => \FD|BR|registers_rtl_0|auto_generated|ram_block1a4\,
	datad => \FD|BR|registers~38_combout\,
	combout => \FD|BR|registers~43_combout\);

-- Location: LCCOMB_X105_Y50_N12
\FD|BR|registers_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X105_Y50_N13
\FD|BR|registers_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(22));

-- Location: LCCOMB_X105_Y50_N22
\FD|BR|registers~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~44_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a5\ & \FD|BR|registers_rtl_0_bypass\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~38_combout\,
	datab => \FD|BR|registers_rtl_0|auto_generated|ram_block1a5\,
	datad => \FD|BR|registers_rtl_0_bypass\(22),
	combout => \FD|BR|registers~44_combout\);

-- Location: LCCOMB_X105_Y51_N4
\FD|BR|registers_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X105_Y51_N5
\FD|BR|registers_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(24));

-- Location: LCCOMB_X105_Y51_N18
\FD|BR|registers~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~45_combout\ = (\FD|BR|registers_rtl_0_bypass\(24) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(24),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a6\,
	combout => \FD|BR|registers~45_combout\);

-- Location: LCCOMB_X103_Y51_N28
\FD|BR|registers_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X103_Y51_N29
\FD|BR|registers_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(26));

-- Location: LCCOMB_X103_Y51_N26
\FD|BR|registers~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~46_combout\ = (\FD|BR|registers_rtl_0_bypass\(26) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(26),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a7\,
	combout => \FD|BR|registers~46_combout\);

-- Location: LCCOMB_X107_Y47_N20
\FD|BR|registers_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X107_Y47_N21
\FD|BR|registers_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(28));

-- Location: LCCOMB_X107_Y47_N18
\FD|BR|registers~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~47_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a8\ & \FD|BR|registers_rtl_0_bypass\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a8\,
	datad => \FD|BR|registers_rtl_0_bypass\(28),
	combout => \FD|BR|registers~47_combout\);

-- Location: LCCOMB_X107_Y47_N28
\FD|BR|registers_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X107_Y47_N29
\FD|BR|registers_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(30));

-- Location: LCCOMB_X107_Y47_N22
\FD|BR|registers~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~48_combout\ = (\FD|BR|registers_rtl_0_bypass\(30) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(30),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a9\,
	combout => \FD|BR|registers~48_combout\);

-- Location: LCCOMB_X103_Y51_N16
\FD|BR|registers_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X103_Y51_N17
\FD|BR|registers_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(32));

-- Location: LCCOMB_X103_Y51_N2
\FD|BR|registers~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~49_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a10\ & \FD|BR|registers_rtl_0_bypass\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a10\,
	datad => \FD|BR|registers_rtl_0_bypass\(32),
	combout => \FD|BR|registers~49_combout\);

-- Location: LCCOMB_X107_Y46_N12
\FD|BR|registers_rtl_0_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[34]~feeder_combout\);

-- Location: FF_X107_Y46_N13
\FD|BR|registers_rtl_0_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(34));

-- Location: LCCOMB_X107_Y46_N2
\FD|BR|registers~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~50_combout\ = (\FD|BR|registers_rtl_0_bypass\(34) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0_bypass\(34),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a11\,
	combout => \FD|BR|registers~50_combout\);

-- Location: LCCOMB_X107_Y46_N4
\FD|BR|registers_rtl_0_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[36]~feeder_combout\);

-- Location: FF_X107_Y46_N5
\FD|BR|registers_rtl_0_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(36));

-- Location: LCCOMB_X107_Y46_N6
\FD|BR|registers~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~51_combout\ = (\FD|BR|registers_rtl_0_bypass\(36) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(36),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a12\,
	combout => \FD|BR|registers~51_combout\);

-- Location: LCCOMB_X103_Y51_N24
\FD|BR|registers_rtl_0_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[38]~feeder_combout\);

-- Location: FF_X103_Y51_N25
\FD|BR|registers_rtl_0_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(38));

-- Location: LCCOMB_X103_Y51_N30
\FD|BR|registers~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~52_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a13\ & \FD|BR|registers_rtl_0_bypass\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a13\,
	datad => \FD|BR|registers_rtl_0_bypass\(38),
	combout => \FD|BR|registers~52_combout\);

-- Location: LCCOMB_X107_Y54_N12
\FD|BR|registers_rtl_0_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[40]~feeder_combout\);

-- Location: FF_X107_Y54_N13
\FD|BR|registers_rtl_0_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(40));

-- Location: LCCOMB_X107_Y54_N22
\FD|BR|registers~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~53_combout\ = (\FD|BR|registers_rtl_0_bypass\(40) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0_bypass\(40),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a14\,
	combout => \FD|BR|registers~53_combout\);

-- Location: LCCOMB_X103_Y51_N20
\FD|BR|registers_rtl_0_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[42]~feeder_combout\);

-- Location: FF_X103_Y51_N21
\FD|BR|registers_rtl_0_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(42));

-- Location: LCCOMB_X103_Y51_N10
\FD|BR|registers~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~54_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a15\ & \FD|BR|registers_rtl_0_bypass\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a15\,
	datad => \FD|BR|registers_rtl_0_bypass\(42),
	combout => \FD|BR|registers~54_combout\);

-- Location: LCCOMB_X103_Y50_N18
\FD|BR|registers_rtl_0_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[44]~feeder_combout\);

-- Location: FF_X103_Y50_N19
\FD|BR|registers_rtl_0_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(44));

-- Location: LCCOMB_X103_Y50_N12
\FD|BR|registers~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~55_combout\ = (\FD|BR|registers_rtl_0_bypass\(44) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0_bypass\(44),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a16\,
	combout => \FD|BR|registers~55_combout\);

-- Location: LCCOMB_X103_Y50_N0
\FD|BR|registers_rtl_0_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[46]~feeder_combout\);

-- Location: FF_X103_Y50_N1
\FD|BR|registers_rtl_0_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(46));

-- Location: LCCOMB_X103_Y50_N6
\FD|BR|registers~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~56_combout\ = (\FD|BR|registers_rtl_0|auto_generated|ram_block1a17\ & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0_bypass\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0|auto_generated|ram_block1a17\,
	datab => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0_bypass\(46),
	combout => \FD|BR|registers~56_combout\);

-- Location: LCCOMB_X114_Y50_N24
\FD|BR|registers_rtl_0_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[48]~feeder_combout\);

-- Location: FF_X114_Y50_N25
\FD|BR|registers_rtl_0_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(48));

-- Location: LCCOMB_X114_Y50_N6
\FD|BR|registers~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~57_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a18\ & \FD|BR|registers_rtl_0_bypass\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a18\,
	datad => \FD|BR|registers_rtl_0_bypass\(48),
	combout => \FD|BR|registers~57_combout\);

-- Location: LCCOMB_X114_Y50_N8
\FD|BR|registers_rtl_0_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[50]~feeder_combout\);

-- Location: FF_X114_Y50_N9
\FD|BR|registers_rtl_0_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(50));

-- Location: LCCOMB_X114_Y50_N10
\FD|BR|registers~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~58_combout\ = (\FD|BR|registers_rtl_0_bypass\(50) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(50),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a19\,
	combout => \FD|BR|registers~58_combout\);

-- Location: LCCOMB_X114_Y50_N28
\FD|BR|registers_rtl_0_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[52]~feeder_combout\);

-- Location: FF_X114_Y50_N29
\FD|BR|registers_rtl_0_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(52));

-- Location: LCCOMB_X114_Y50_N30
\FD|BR|registers~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~59_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a20\ & \FD|BR|registers_rtl_0_bypass\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a20\,
	datad => \FD|BR|registers_rtl_0_bypass\(52),
	combout => \FD|BR|registers~59_combout\);

-- Location: LCCOMB_X105_Y51_N20
\FD|BR|registers_rtl_0_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[54]~feeder_combout\);

-- Location: FF_X105_Y51_N21
\FD|BR|registers_rtl_0_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(54));

-- Location: LCCOMB_X105_Y51_N22
\FD|BR|registers~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~60_combout\ = (\FD|BR|registers_rtl_0_bypass\(54) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(54),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a21\,
	combout => \FD|BR|registers~60_combout\);

-- Location: LCCOMB_X103_Y51_N8
\FD|BR|registers_rtl_0_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[56]~feeder_combout\);

-- Location: FF_X103_Y51_N9
\FD|BR|registers_rtl_0_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(56));

-- Location: LCCOMB_X103_Y51_N6
\FD|BR|registers~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~61_combout\ = (\FD|BR|registers_rtl_0_bypass\(56) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(56),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a22\,
	combout => \FD|BR|registers~61_combout\);

-- Location: LCCOMB_X105_Y51_N0
\FD|BR|registers_rtl_0_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[58]~feeder_combout\);

-- Location: FF_X105_Y51_N1
\FD|BR|registers_rtl_0_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(58));

-- Location: LCCOMB_X105_Y51_N6
\FD|BR|registers~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~62_combout\ = (\FD|BR|registers_rtl_0_bypass\(58) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(58),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a23\,
	combout => \FD|BR|registers~62_combout\);

-- Location: LCCOMB_X111_Y50_N0
\FD|BR|registers_rtl_0_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[60]~feeder_combout\);

-- Location: FF_X111_Y50_N1
\FD|BR|registers_rtl_0_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(60));

-- Location: LCCOMB_X111_Y50_N22
\FD|BR|registers~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~63_combout\ = (\FD|BR|registers_rtl_0_bypass\(60) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(60),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a24\,
	combout => \FD|BR|registers~63_combout\);

-- Location: LCCOMB_X111_Y50_N12
\FD|BR|registers_rtl_0_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[62]~feeder_combout\);

-- Location: FF_X111_Y50_N13
\FD|BR|registers_rtl_0_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(62));

-- Location: LCCOMB_X111_Y50_N14
\FD|BR|registers~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~64_combout\ = (\FD|BR|registers_rtl_0_bypass\(62) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0_bypass\(62),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a25\,
	combout => \FD|BR|registers~64_combout\);

-- Location: LCCOMB_X103_Y51_N0
\FD|BR|registers_rtl_0_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[64]~feeder_combout\);

-- Location: FF_X103_Y51_N1
\FD|BR|registers_rtl_0_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(64));

-- Location: LCCOMB_X103_Y51_N22
\FD|BR|registers~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~65_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a26\ & \FD|BR|registers_rtl_0_bypass\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a26\,
	datad => \FD|BR|registers_rtl_0_bypass\(64),
	combout => \FD|BR|registers~65_combout\);

-- Location: LCCOMB_X103_Y51_N12
\FD|BR|registers_rtl_0_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[66]~feeder_combout\);

-- Location: FF_X103_Y51_N13
\FD|BR|registers_rtl_0_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(66));

-- Location: LCCOMB_X103_Y51_N14
\FD|BR|registers~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~66_combout\ = (\FD|BR|registers_rtl_0_bypass\(66) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_0_bypass\(66),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a27\,
	combout => \FD|BR|registers~66_combout\);

-- Location: LCCOMB_X114_Y46_N8
\FD|BR|registers_rtl_0_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[68]~feeder_combout\);

-- Location: FF_X114_Y46_N9
\FD|BR|registers_rtl_0_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(68));

-- Location: LCCOMB_X114_Y46_N6
\FD|BR|registers~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~67_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0_bypass\(68) & \FD|BR|registers_rtl_0|auto_generated|ram_block1a28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0_bypass\(68),
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a28\,
	combout => \FD|BR|registers~67_combout\);

-- Location: LCCOMB_X105_Y51_N24
\FD|BR|registers_rtl_0_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[70]~feeder_combout\);

-- Location: FF_X105_Y51_N25
\FD|BR|registers_rtl_0_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(70));

-- Location: LCCOMB_X105_Y51_N14
\FD|BR|registers~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~68_combout\ = (\FD|BR|registers_rtl_0_bypass\(70) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(70),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a29\,
	combout => \FD|BR|registers~68_combout\);

-- Location: LCCOMB_X103_Y51_N4
\FD|BR|registers_rtl_0_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[72]~feeder_combout\);

-- Location: FF_X103_Y51_N5
\FD|BR|registers_rtl_0_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(72));

-- Location: LCCOMB_X103_Y51_N18
\FD|BR|registers~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~69_combout\ = (\FD|BR|registers_rtl_0_bypass\(72) & (!\FD|BR|registers~38_combout\ & \FD|BR|registers_rtl_0|auto_generated|ram_block1a30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_0_bypass\(72),
	datac => \FD|BR|registers~38_combout\,
	datad => \FD|BR|registers_rtl_0|auto_generated|ram_block1a30\,
	combout => \FD|BR|registers~69_combout\);

-- Location: LCCOMB_X100_Y50_N28
\FD|BR|registers_rtl_0_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_0_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_0_bypass[74]~feeder_combout\);

-- Location: FF_X100_Y50_N29
\FD|BR|registers_rtl_0_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_0_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_0_bypass\(74));

-- Location: LCCOMB_X100_Y50_N22
\FD|BR|registers~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~70_combout\ = (!\FD|BR|registers~38_combout\ & (\FD|BR|registers_rtl_0|auto_generated|ram_block1a31\ & \FD|BR|registers_rtl_0_bypass\(74)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~38_combout\,
	datac => \FD|BR|registers_rtl_0|auto_generated|ram_block1a31\,
	datad => \FD|BR|registers_rtl_0_bypass\(74),
	combout => \FD|BR|registers~70_combout\);

-- Location: LCCOMB_X100_Y50_N30
\FD|BR|registers_rtl_1_bypass[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[3]~feeder_combout\ = \FD|Reg4|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg4|output\(1),
	combout => \FD|BR|registers_rtl_1_bypass[3]~feeder_combout\);

-- Location: FF_X100_Y50_N31
\FD|BR|registers_rtl_1_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(3));

-- Location: LCCOMB_X100_Y50_N8
\FD|BR|registers_rtl_1_bypass[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[0]~feeder_combout\ = \FD|Reg4|output\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg4|output\(70),
	combout => \FD|BR|registers_rtl_1_bypass[0]~feeder_combout\);

-- Location: FF_X100_Y50_N9
\FD|BR|registers_rtl_1_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(0));

-- Location: FF_X100_Y50_N13
\FD|BR|registers_rtl_1_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|MI|Mux20~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(4));

-- Location: LCCOMB_X100_Y50_N10
\FD|BR|registers_rtl_1_bypass[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[1]~feeder_combout\ = \FD|Reg4|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg4|output\(0),
	combout => \FD|BR|registers_rtl_1_bypass[1]~feeder_combout\);

-- Location: FF_X100_Y50_N11
\FD|BR|registers_rtl_1_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(1));

-- Location: LCCOMB_X100_Y50_N12
\FD|BR|registers~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~71_combout\ = (\FD|BR|registers_rtl_1_bypass\(0) & (!\FD|BR|registers_rtl_1_bypass\(1) & (\FD|BR|registers_rtl_1_bypass\(3) $ (!\FD|BR|registers_rtl_1_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_1_bypass\(3),
	datab => \FD|BR|registers_rtl_1_bypass\(0),
	datac => \FD|BR|registers_rtl_1_bypass\(4),
	datad => \FD|BR|registers_rtl_1_bypass\(1),
	combout => \FD|BR|registers~71_combout\);

-- Location: LCCOMB_X102_Y50_N6
\FD|BR|registers_rtl_1_bypass[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[12]~feeder_combout\);

-- Location: FF_X102_Y50_N7
\FD|BR|registers_rtl_1_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(12));

-- Location: M9K_X104_Y50_N0
\FD|BR|registers_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000002000000001000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Mips.ram0_bankregister_b26caca.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "fluxoDados:FD|bankregister:BR|altsyncram:registers_rtl_1|altsyncram_n8h1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FD|Reg4|output\(70),
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \FD|BR|registers_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X105_Y50_N24
\FD|BR|registers~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~72_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(12) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datab => \FD|BR|registers_rtl_1_bypass\(12),
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	combout => \FD|BR|registers~72_combout\);

-- Location: LCCOMB_X105_Y51_N8
\FD|BR|registers_rtl_1_bypass[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[14]~feeder_combout\);

-- Location: FF_X105_Y51_N9
\FD|BR|registers_rtl_1_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(14));

-- Location: LCCOMB_X105_Y50_N14
\FD|BR|registers~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~73_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a1\ & \FD|BR|registers_rtl_1_bypass\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a1\,
	datad => \FD|BR|registers_rtl_1_bypass\(14),
	combout => \FD|BR|registers~73_combout\);

-- Location: LCCOMB_X108_Y50_N16
\FD|BR|registers_rtl_1_bypass[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[16]~feeder_combout\);

-- Location: FF_X108_Y50_N17
\FD|BR|registers_rtl_1_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(16));

-- Location: LCCOMB_X105_Y50_N20
\FD|BR|registers~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~74_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a2\ & \FD|BR|registers_rtl_1_bypass\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a2\,
	datad => \FD|BR|registers_rtl_1_bypass\(16),
	combout => \FD|BR|registers~74_combout\);

-- Location: LCCOMB_X103_Y50_N2
\FD|BR|registers_rtl_1_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[18]~feeder_combout\);

-- Location: FF_X103_Y50_N3
\FD|BR|registers_rtl_1_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(18));

-- Location: LCCOMB_X103_Y50_N16
\FD|BR|registers~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~75_combout\ = (\FD|BR|registers_rtl_1_bypass\(18) & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a3\ & !\FD|BR|registers~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_1_bypass\(18),
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a3\,
	datad => \FD|BR|registers~71_combout\,
	combout => \FD|BR|registers~75_combout\);

-- Location: LCCOMB_X105_Y51_N2
\FD|BR|registers_rtl_1_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[20]~feeder_combout\);

-- Location: FF_X105_Y51_N3
\FD|BR|registers_rtl_1_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(20));

-- Location: LCCOMB_X105_Y50_N18
\FD|BR|registers~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~76_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(20) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datab => \FD|BR|registers_rtl_1_bypass\(20),
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a4\,
	combout => \FD|BR|registers~76_combout\);

-- Location: LCCOMB_X103_Y50_N20
\FD|BR|registers_rtl_1_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[22]~feeder_combout\);

-- Location: FF_X103_Y50_N21
\FD|BR|registers_rtl_1_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(22));

-- Location: LCCOMB_X103_Y50_N4
\FD|BR|registers~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~77_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a5\ & \FD|BR|registers_rtl_1_bypass\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datab => \FD|BR|registers_rtl_1|auto_generated|ram_block1a5\,
	datad => \FD|BR|registers_rtl_1_bypass\(22),
	combout => \FD|BR|registers~77_combout\);

-- Location: LCCOMB_X108_Y50_N6
\FD|BR|registers_rtl_1_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[24]~feeder_combout\);

-- Location: FF_X108_Y50_N7
\FD|BR|registers_rtl_1_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(24));

-- Location: LCCOMB_X105_Y50_N4
\FD|BR|registers~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~78_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(24) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datab => \FD|BR|registers_rtl_1_bypass\(24),
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a6\,
	combout => \FD|BR|registers~78_combout\);

-- Location: LCCOMB_X107_Y54_N28
\FD|BR|registers_rtl_1_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[26]~feeder_combout\);

-- Location: FF_X107_Y54_N29
\FD|BR|registers_rtl_1_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(26));

-- Location: LCCOMB_X107_Y54_N2
\FD|BR|registers~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~79_combout\ = (\FD|BR|registers_rtl_1_bypass\(26) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_1_bypass\(26),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a7\,
	combout => \FD|BR|registers~79_combout\);

-- Location: LCCOMB_X105_Y48_N14
\FD|BR|registers_rtl_1_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[28]~feeder_combout\);

-- Location: FF_X105_Y48_N15
\FD|BR|registers_rtl_1_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(28));

-- Location: LCCOMB_X105_Y50_N26
\FD|BR|registers~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~80_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a8\ & \FD|BR|registers_rtl_1_bypass\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a8\,
	datad => \FD|BR|registers_rtl_1_bypass\(28),
	combout => \FD|BR|registers~80_combout\);

-- Location: LCCOMB_X107_Y47_N8
\FD|BR|registers_rtl_1_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[30]~feeder_combout\);

-- Location: FF_X107_Y47_N9
\FD|BR|registers_rtl_1_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(30));

-- Location: LCCOMB_X107_Y47_N26
\FD|BR|registers~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~81_combout\ = (\FD|BR|registers_rtl_1_bypass\(30) & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a9\ & !\FD|BR|registers~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_1_bypass\(30),
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a9\,
	datad => \FD|BR|registers~71_combout\,
	combout => \FD|BR|registers~81_combout\);

-- Location: LCCOMB_X105_Y46_N4
\FD|BR|registers_rtl_1_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[32]~feeder_combout\);

-- Location: FF_X105_Y46_N5
\FD|BR|registers_rtl_1_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(32));

-- Location: LCCOMB_X105_Y46_N2
\FD|BR|registers~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~82_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(32) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1_bypass\(32),
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a10\,
	combout => \FD|BR|registers~82_combout\);

-- Location: LCCOMB_X107_Y46_N20
\FD|BR|registers_rtl_1_bypass[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[34]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[34]~feeder_combout\);

-- Location: FF_X107_Y46_N21
\FD|BR|registers_rtl_1_bypass[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(34));

-- Location: LCCOMB_X107_Y46_N26
\FD|BR|registers~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~83_combout\ = (\FD|BR|registers_rtl_1_bypass\(34) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_1_bypass\(34),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a11\,
	combout => \FD|BR|registers~83_combout\);

-- Location: LCCOMB_X107_Y46_N8
\FD|BR|registers_rtl_1_bypass[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[36]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[36]~feeder_combout\);

-- Location: FF_X107_Y46_N9
\FD|BR|registers_rtl_1_bypass[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(36));

-- Location: LCCOMB_X107_Y46_N14
\FD|BR|registers~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~84_combout\ = (\FD|BR|registers_rtl_1_bypass\(36) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_1_bypass\(36),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a12\,
	combout => \FD|BR|registers~84_combout\);

-- Location: LCCOMB_X105_Y46_N16
\FD|BR|registers_rtl_1_bypass[38]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[38]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[38]~feeder_combout\);

-- Location: FF_X105_Y46_N17
\FD|BR|registers_rtl_1_bypass[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[38]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(38));

-- Location: LCCOMB_X105_Y46_N30
\FD|BR|registers~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~85_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a13\ & \FD|BR|registers_rtl_1_bypass\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a13\,
	datad => \FD|BR|registers_rtl_1_bypass\(38),
	combout => \FD|BR|registers~85_combout\);

-- Location: LCCOMB_X107_Y54_N20
\FD|BR|registers_rtl_1_bypass[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[40]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[40]~feeder_combout\);

-- Location: FF_X107_Y54_N21
\FD|BR|registers_rtl_1_bypass[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(40));

-- Location: LCCOMB_X107_Y54_N10
\FD|BR|registers~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~86_combout\ = (\FD|BR|registers_rtl_1_bypass\(40) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_1_bypass\(40),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a14\,
	combout => \FD|BR|registers~86_combout\);

-- Location: LCCOMB_X111_Y50_N24
\FD|BR|registers_rtl_1_bypass[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[42]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[42]~feeder_combout\);

-- Location: FF_X111_Y50_N25
\FD|BR|registers_rtl_1_bypass[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(42));

-- Location: LCCOMB_X111_Y50_N6
\FD|BR|registers~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~87_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(42) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1_bypass\(42),
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a15\,
	combout => \FD|BR|registers~87_combout\);

-- Location: LCCOMB_X105_Y46_N20
\FD|BR|registers_rtl_1_bypass[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[44]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[44]~feeder_combout\);

-- Location: FF_X105_Y46_N21
\FD|BR|registers_rtl_1_bypass[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(44));

-- Location: LCCOMB_X105_Y46_N14
\FD|BR|registers~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~88_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(44) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datab => \FD|BR|registers_rtl_1_bypass\(44),
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a16\,
	combout => \FD|BR|registers~88_combout\);

-- Location: LCCOMB_X105_Y54_N12
\FD|BR|registers_rtl_1_bypass[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[46]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[46]~feeder_combout\);

-- Location: FF_X105_Y54_N13
\FD|BR|registers_rtl_1_bypass[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(46));

-- Location: LCCOMB_X105_Y54_N30
\FD|BR|registers~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~89_combout\ = (\FD|BR|registers_rtl_1_bypass\(46) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_1_bypass\(46),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a17\,
	combout => \FD|BR|registers~89_combout\);

-- Location: LCCOMB_X111_Y50_N16
\FD|BR|registers_rtl_1_bypass[48]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[48]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[48]~feeder_combout\);

-- Location: FF_X111_Y50_N17
\FD|BR|registers_rtl_1_bypass[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[48]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(48));

-- Location: LCCOMB_X111_Y50_N18
\FD|BR|registers~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~90_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a18\ & \FD|BR|registers_rtl_1_bypass\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a18\,
	datad => \FD|BR|registers_rtl_1_bypass\(48),
	combout => \FD|BR|registers~90_combout\);

-- Location: LCCOMB_X105_Y46_N8
\FD|BR|registers_rtl_1_bypass[50]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[50]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[50]~feeder_combout\);

-- Location: FF_X105_Y46_N9
\FD|BR|registers_rtl_1_bypass[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[50]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(50));

-- Location: LCCOMB_X105_Y46_N6
\FD|BR|registers~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~91_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(50) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1_bypass\(50),
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a19\,
	combout => \FD|BR|registers~91_combout\);

-- Location: LCCOMB_X105_Y54_N28
\FD|BR|registers_rtl_1_bypass[52]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[52]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[52]~feeder_combout\);

-- Location: FF_X105_Y54_N29
\FD|BR|registers_rtl_1_bypass[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[52]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(52));

-- Location: LCCOMB_X105_Y54_N26
\FD|BR|registers~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~92_combout\ = (\FD|BR|registers_rtl_1_bypass\(52) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers_rtl_1_bypass\(52),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a20\,
	combout => \FD|BR|registers~92_combout\);

-- Location: LCCOMB_X108_Y50_N8
\FD|BR|registers_rtl_1_bypass[54]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[54]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[54]~feeder_combout\);

-- Location: FF_X108_Y50_N9
\FD|BR|registers_rtl_1_bypass[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[54]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(54));

-- Location: LCCOMB_X108_Y50_N22
\FD|BR|registers~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~93_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a21\ & \FD|BR|registers_rtl_1_bypass\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datab => \FD|BR|registers_rtl_1|auto_generated|ram_block1a21\,
	datac => \FD|BR|registers_rtl_1_bypass\(54),
	combout => \FD|BR|registers~93_combout\);

-- Location: LCCOMB_X105_Y46_N24
\FD|BR|registers_rtl_1_bypass[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[56]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[56]~feeder_combout\);

-- Location: FF_X105_Y46_N25
\FD|BR|registers_rtl_1_bypass[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(56));

-- Location: LCCOMB_X105_Y46_N10
\FD|BR|registers~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~94_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a22\ & \FD|BR|registers_rtl_1_bypass\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a22\,
	datad => \FD|BR|registers_rtl_1_bypass\(56),
	combout => \FD|BR|registers~94_combout\);

-- Location: LCCOMB_X108_Y50_N28
\FD|BR|registers_rtl_1_bypass[58]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[58]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[58]~feeder_combout\);

-- Location: FF_X108_Y50_N29
\FD|BR|registers_rtl_1_bypass[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[58]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(58));

-- Location: LCCOMB_X108_Y50_N10
\FD|BR|registers~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~95_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(58) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datab => \FD|BR|registers_rtl_1_bypass\(58),
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a23\,
	combout => \FD|BR|registers~95_combout\);

-- Location: LCCOMB_X111_Y50_N8
\FD|BR|registers_rtl_1_bypass[60]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[60]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[60]~feeder_combout\);

-- Location: FF_X111_Y50_N9
\FD|BR|registers_rtl_1_bypass[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[60]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(60));

-- Location: LCCOMB_X111_Y50_N10
\FD|BR|registers~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~96_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(60) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datab => \FD|BR|registers_rtl_1_bypass\(60),
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a24\,
	combout => \FD|BR|registers~96_combout\);

-- Location: LCCOMB_X111_Y50_N28
\FD|BR|registers_rtl_1_bypass[62]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[62]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[62]~feeder_combout\);

-- Location: FF_X111_Y50_N29
\FD|BR|registers_rtl_1_bypass[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[62]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(62));

-- Location: LCCOMB_X111_Y50_N26
\FD|BR|registers~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~97_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(62) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1_bypass\(62),
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a25\,
	combout => \FD|BR|registers~97_combout\);

-- Location: LCCOMB_X105_Y46_N28
\FD|BR|registers_rtl_1_bypass[64]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[64]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[64]~feeder_combout\);

-- Location: FF_X105_Y46_N29
\FD|BR|registers_rtl_1_bypass[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[64]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(64));

-- Location: LCCOMB_X105_Y46_N18
\FD|BR|registers~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~98_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1|auto_generated|ram_block1a26\ & \FD|BR|registers_rtl_1_bypass\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datac => \FD|BR|registers_rtl_1|auto_generated|ram_block1a26\,
	datad => \FD|BR|registers_rtl_1_bypass\(64),
	combout => \FD|BR|registers~98_combout\);

-- Location: LCCOMB_X105_Y46_N0
\FD|BR|registers_rtl_1_bypass[66]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[66]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[66]~feeder_combout\);

-- Location: FF_X105_Y46_N1
\FD|BR|registers_rtl_1_bypass[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[66]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(66));

-- Location: LCCOMB_X105_Y46_N26
\FD|BR|registers~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~99_combout\ = (!\FD|BR|registers~71_combout\ & (\FD|BR|registers_rtl_1_bypass\(66) & \FD|BR|registers_rtl_1|auto_generated|ram_block1a27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~71_combout\,
	datab => \FD|BR|registers_rtl_1_bypass\(66),
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a27\,
	combout => \FD|BR|registers~99_combout\);

-- Location: LCCOMB_X114_Y46_N20
\FD|BR|registers_rtl_1_bypass[68]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[68]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[68]~feeder_combout\);

-- Location: FF_X114_Y46_N21
\FD|BR|registers_rtl_1_bypass[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[68]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(68));

-- Location: LCCOMB_X114_Y46_N10
\FD|BR|registers~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~100_combout\ = (\FD|BR|registers_rtl_1_bypass\(68) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_1_bypass\(68),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a28\,
	combout => \FD|BR|registers~100_combout\);

-- Location: LCCOMB_X107_Y48_N20
\FD|BR|registers_rtl_1_bypass[70]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[70]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[70]~feeder_combout\);

-- Location: FF_X107_Y48_N21
\FD|BR|registers_rtl_1_bypass[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[70]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(70));

-- Location: LCCOMB_X107_Y48_N30
\FD|BR|registers~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~101_combout\ = (\FD|BR|registers_rtl_1_bypass\(70) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_1_bypass\(70),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a29\,
	combout => \FD|BR|registers~101_combout\);

-- Location: LCCOMB_X114_Y46_N0
\FD|BR|registers_rtl_1_bypass[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[72]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[72]~feeder_combout\);

-- Location: FF_X114_Y46_N1
\FD|BR|registers_rtl_1_bypass[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(72));

-- Location: LCCOMB_X114_Y46_N26
\FD|BR|registers~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~102_combout\ = (\FD|BR|registers_rtl_1_bypass\(72) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_1_bypass\(72),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a30\,
	combout => \FD|BR|registers~102_combout\);

-- Location: LCCOMB_X100_Y50_N20
\FD|BR|registers_rtl_1_bypass[74]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers_rtl_1_bypass[74]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \FD|BR|registers_rtl_1_bypass[74]~feeder_combout\);

-- Location: FF_X100_Y50_N21
\FD|BR|registers_rtl_1_bypass[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers_rtl_1_bypass[74]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers_rtl_1_bypass\(74));

-- Location: LCCOMB_X100_Y50_N26
\FD|BR|registers~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~103_combout\ = (\FD|BR|registers_rtl_1_bypass\(74) & (!\FD|BR|registers~71_combout\ & \FD|BR|registers_rtl_1|auto_generated|ram_block1a31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers_rtl_1_bypass\(74),
	datac => \FD|BR|registers~71_combout\,
	datad => \FD|BR|registers_rtl_1|auto_generated|ram_block1a31\,
	combout => \FD|BR|registers~103_combout\);

-- Location: FF_X103_Y51_N19
\FD|Reg2|output[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(104));

-- Location: FF_X100_Y50_N23
\FD|Reg2|output[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(105));

-- Location: FF_X100_Y50_N27
\FD|Reg2|output[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(73));

-- Location: LCCOMB_X100_Y50_N16
\FD|ALU|Fulladder32|fulladder31|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder31|soma~0_combout\ = \FD|Reg2|output\(105) $ (\FD|Reg2|output\(73))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(105),
	datac => \FD|Reg2|output\(73),
	combout => \FD|ALU|Fulladder32|fulladder31|soma~0_combout\);

-- Location: FF_X114_Y46_N27
\FD|Reg2|output[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(72));

-- Location: FF_X114_Y46_N11
\FD|Reg2|output[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(70));

-- Location: FF_X114_Y46_N7
\FD|Reg2|output[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(102));

-- Location: LCCOMB_X114_Y46_N16
\FD|ALU|Fulladder32|fulladder28|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\ = (\FD|Reg2|output\(70) & \FD|Reg2|output\(102))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(70),
	datad => \FD|Reg2|output\(102),
	combout => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\);

-- Location: FF_X105_Y51_N15
\FD|Reg2|output[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(103));

-- Location: FF_X107_Y48_N31
\FD|Reg2|output[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(71));

-- Location: LCCOMB_X114_Y46_N14
\FD|ALU|Fulladder32|fulladder28|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder28|Cout~1_combout\ = (\FD|Reg2|output\(70)) # (\FD|Reg2|output\(102))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(70),
	datad => \FD|Reg2|output\(102),
	combout => \FD|ALU|Fulladder32|fulladder28|Cout~1_combout\);

-- Location: FF_X105_Y46_N27
\FD|Reg2|output[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(69));

-- Location: FF_X103_Y51_N15
\FD|Reg2|output[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(101));

-- Location: FF_X105_Y46_N19
\FD|Reg2|output[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(68));

-- Location: FF_X111_Y50_N15
\FD|Reg2|output[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(99));

-- Location: FF_X111_Y50_N27
\FD|Reg2|output[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(67));

-- Location: LCCOMB_X111_Y50_N4
\FD|ALU|Fulladder32|fulladder25|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\ = (\FD|Reg2|output\(99) & \FD|Reg2|output\(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(99),
	datac => \FD|Reg2|output\(67),
	combout => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\);

-- Location: FF_X103_Y51_N23
\FD|Reg2|output[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(100));

-- Location: FF_X111_Y50_N23
\FD|Reg2|output[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(98));

-- Location: LCCOMB_X111_Y50_N30
\FD|ALU|Fulladder32|fulladder25|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder25|Cout~1_combout\ = (\FD|Reg2|output\(99)) # (\FD|Reg2|output\(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(99),
	datac => \FD|Reg2|output\(67),
	combout => \FD|ALU|Fulladder32|fulladder25|Cout~1_combout\);

-- Location: FF_X111_Y50_N11
\FD|Reg2|output[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(66));

-- Location: FF_X103_Y51_N7
\FD|Reg2|output[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(96));

-- Location: FF_X105_Y46_N11
\FD|Reg2|output[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(64));

-- Location: LCCOMB_X108_Y50_N20
\FD|ALU|Fulladder32|fulladder22|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\ = (\FD|Reg2|output\(96) & \FD|Reg2|output\(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(96),
	datad => \FD|Reg2|output\(64),
	combout => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\);

-- Location: FF_X105_Y51_N7
\FD|Reg2|output[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(97));

-- Location: FF_X108_Y50_N11
\FD|Reg2|output[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(65));

-- Location: FF_X105_Y51_N23
\FD|Reg2|output[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(95));

-- Location: LCCOMB_X108_Y50_N18
\FD|ALU|Fulladder32|fulladder22|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder22|Cout~1_combout\ = (\FD|Reg2|output\(96)) # (\FD|Reg2|output\(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(96),
	datad => \FD|Reg2|output\(64),
	combout => \FD|ALU|Fulladder32|fulladder22|Cout~1_combout\);

-- Location: FF_X108_Y50_N23
\FD|Reg2|output[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(63));

-- Location: FF_X105_Y54_N27
\FD|Reg2|output[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(62));

-- Location: FF_X114_Y50_N31
\FD|Reg2|output[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(94));

-- Location: FF_X105_Y46_N7
\FD|Reg2|output[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(61));

-- Location: FF_X114_Y50_N11
\FD|Reg2|output[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(93));

-- Location: LCCOMB_X114_Y50_N12
\FD|ALU|Fulladder32|fulladder19|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ = (\FD|Reg2|output\(61) & \FD|Reg2|output\(93))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(61),
	datad => \FD|Reg2|output\(93),
	combout => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\);

-- Location: FF_X114_Y50_N7
\FD|Reg2|output[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(92));

-- Location: LCCOMB_X114_Y50_N26
\FD|ALU|Fulladder32|fulladder19|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder19|Cout~1_combout\ = (\FD|Reg2|output\(61)) # (\FD|Reg2|output\(93))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(61),
	datad => \FD|Reg2|output\(93),
	combout => \FD|ALU|Fulladder32|fulladder19|Cout~1_combout\);

-- Location: FF_X111_Y50_N19
\FD|Reg2|output[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(60));

-- Location: FF_X103_Y50_N7
\FD|Reg2|output[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(91));

-- Location: FF_X105_Y54_N31
\FD|Reg2|output[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(59));

-- Location: FF_X105_Y46_N15
\FD|Reg2|output[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(58));

-- Location: FF_X103_Y50_N13
\FD|Reg2|output[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(90));

-- Location: LCCOMB_X103_Y50_N8
\FD|ALU|Fulladder32|fulladder16|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder16|Cout~1_combout\ = (\FD|Reg2|output\(58)) # (\FD|Reg2|output\(90))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(58),
	datad => \FD|Reg2|output\(90),
	combout => \FD|ALU|Fulladder32|fulladder16|Cout~1_combout\);

-- Location: FF_X111_Y50_N7
\FD|Reg2|output[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(57));

-- Location: FF_X103_Y51_N11
\FD|Reg2|output[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(89));

-- Location: LCCOMB_X107_Y54_N0
\FD|Reg2|output[56]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[56]~feeder_combout\ = \FD|BR|registers~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|BR|registers~86_combout\,
	combout => \FD|Reg2|output[56]~feeder_combout\);

-- Location: FF_X107_Y54_N1
\FD|Reg2|output[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[56]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(56));

-- Location: FF_X107_Y54_N23
\FD|Reg2|output[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(88));

-- Location: FF_X103_Y51_N31
\FD|Reg2|output[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(87));

-- Location: FF_X107_Y46_N23
\FD|Reg2|output[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~84_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(54));

-- Location: LCCOMB_X107_Y46_N0
\FD|Reg2|output[86]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[86]~feeder_combout\ = \FD|BR|registers~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|BR|registers~51_combout\,
	combout => \FD|Reg2|output[86]~feeder_combout\);

-- Location: FF_X107_Y46_N1
\FD|Reg2|output[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[86]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(86));

-- Location: LCCOMB_X107_Y46_N28
\FD|ALU|Fulladder32|fulladder12|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\ = (\FD|Reg2|output\(54) & \FD|Reg2|output\(86))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(54),
	datad => \FD|Reg2|output\(86),
	combout => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\);

-- Location: FF_X105_Y46_N31
\FD|Reg2|output[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(55));

-- Location: LCCOMB_X107_Y46_N30
\FD|ALU|Fulladder32|fulladder12|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder12|Cout~1_combout\ = (\FD|Reg2|output\(54)) # (\FD|Reg2|output\(86))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(54),
	datad => \FD|Reg2|output\(86),
	combout => \FD|ALU|Fulladder32|fulladder12|Cout~1_combout\);

-- Location: LCCOMB_X107_Y46_N24
\FD|Reg2|output[85]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[85]~feeder_combout\ = \FD|BR|registers~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|BR|registers~50_combout\,
	combout => \FD|Reg2|output[85]~feeder_combout\);

-- Location: FF_X107_Y46_N25
\FD|Reg2|output[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[85]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(85));

-- Location: LCCOMB_X107_Y46_N18
\FD|Reg2|output[53]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[53]~feeder_combout\ = \FD|BR|registers~83_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BR|registers~83_combout\,
	combout => \FD|Reg2|output[53]~feeder_combout\);

-- Location: FF_X107_Y46_N19
\FD|Reg2|output[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[53]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(53));

-- Location: FF_X105_Y50_N17
\FD|Reg2|output[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~49_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(84));

-- Location: FF_X105_Y46_N3
\FD|Reg2|output[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(52));

-- Location: LCCOMB_X107_Y47_N6
\FD|Reg2|output[82]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[82]~feeder_combout\ = \FD|BR|registers~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|BR|registers~47_combout\,
	combout => \FD|Reg2|output[82]~feeder_combout\);

-- Location: FF_X107_Y47_N7
\FD|Reg2|output[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[82]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(82));

-- Location: FF_X107_Y47_N27
\FD|Reg2|output[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(51));

-- Location: LCCOMB_X107_Y47_N16
\FD|Reg2|output[83]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[83]~feeder_combout\ = \FD|BR|registers~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BR|registers~48_combout\,
	combout => \FD|Reg2|output[83]~feeder_combout\);

-- Location: FF_X107_Y47_N17
\FD|Reg2|output[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[83]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(83));

-- Location: LCCOMB_X107_Y47_N12
\FD|ALU|Fulladder32|fulladder9|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder9|Cout~1_combout\ = (\FD|Reg2|output\(51)) # (\FD|Reg2|output\(83))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(51),
	datad => \FD|Reg2|output\(83),
	combout => \FD|ALU|Fulladder32|fulladder9|Cout~1_combout\);

-- Location: FF_X106_Y50_N5
\FD|Reg2|output[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~80_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(50));

-- Location: LCCOMB_X107_Y54_N18
\FD|Reg2|output[49]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[49]~feeder_combout\ = \FD|BR|registers~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|BR|registers~79_combout\,
	combout => \FD|Reg2|output[49]~feeder_combout\);

-- Location: FF_X107_Y54_N19
\FD|Reg2|output[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[49]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(49));

-- Location: FF_X106_Y50_N3
\FD|Reg2|output[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~46_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(81));

-- Location: FF_X105_Y50_N19
\FD|Reg2|output[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~78_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(48));

-- Location: FF_X106_Y50_N1
\FD|Reg2|output[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~45_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(80));

-- Location: FF_X105_Y50_N31
\FD|Reg2|output[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(78));

-- Location: FF_X105_Y50_N23
\FD|Reg2|output[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~76_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(46));

-- Location: LCCOMB_X105_Y50_N6
\FD|ALU|Fulladder32|fulladder4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\ = (\FD|Reg2|output\(78) & \FD|Reg2|output\(46))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(78),
	datad => \FD|Reg2|output\(46),
	combout => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\);

-- Location: FF_X105_Y50_N5
\FD|Reg2|output[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~44_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(79));

-- Location: FF_X106_Y50_N27
\FD|Reg2|output[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~77_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(47));

-- Location: LCCOMB_X105_Y50_N8
\FD|ALU|Fulladder32|fulladder4|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder4|Cout~1_combout\ = (\FD|Reg2|output\(78)) # (\FD|Reg2|output\(46))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(78),
	datad => \FD|Reg2|output\(46),
	combout => \FD|ALU|Fulladder32|fulladder4|Cout~1_combout\);

-- Location: FF_X105_Y50_N1
\FD|Reg2|output[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(77));

-- Location: FF_X106_Y50_N17
\FD|Reg2|output[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~75_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(45));

-- Location: FF_X105_Y50_N21
\FD|Reg2|output[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(44));

-- Location: FF_X106_Y50_N11
\FD|Reg2|output[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~41_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(76));

-- Location: FF_X105_Y50_N15
\FD|Reg2|output[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(43));

-- Location: LCCOMB_X106_Y50_N22
\FD|Reg2|output[75]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[75]~feeder_combout\ = \FD|BR|registers~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|BR|registers~40_combout\,
	combout => \FD|Reg2|output[75]~feeder_combout\);

-- Location: FF_X106_Y50_N23
\FD|Reg2|output[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[75]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(75));

-- Location: FF_X106_Y50_N25
\FD|Reg2|output[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~39_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(74));

-- Location: FF_X105_Y50_N25
\FD|Reg2|output[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(42));

-- Location: LCCOMB_X106_Y50_N24
\FD|ALU|Fulladder32|fulladder1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\ = (\FD|Reg2|output\(43) & ((\FD|Reg2|output\(75)) # ((\FD|Reg2|output\(74) & \FD|Reg2|output\(42))))) # (!\FD|Reg2|output\(43) & (\FD|Reg2|output\(75) & (\FD|Reg2|output\(74) & \FD|Reg2|output\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(43),
	datab => \FD|Reg2|output\(75),
	datac => \FD|Reg2|output\(74),
	datad => \FD|Reg2|output\(42),
	combout => \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\);

-- Location: LCCOMB_X106_Y50_N10
\FD|ALU|Fulladder32|fulladder2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\ = (\FD|Reg2|output\(44) & ((\FD|Reg2|output\(76)) # (\FD|ALU|Fulladder32|fulladder1|Cout~0_combout\))) # (!\FD|Reg2|output\(44) & (\FD|Reg2|output\(76) & \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(44),
	datac => \FD|Reg2|output\(76),
	datad => \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\);

-- Location: LCCOMB_X106_Y50_N16
\FD|ALU|Fulladder32|fulladder4|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder4|Cout~2_combout\ = (\FD|ALU|Fulladder32|fulladder4|Cout~1_combout\ & ((\FD|Reg2|output\(77) & ((\FD|Reg2|output\(45)) # (\FD|ALU|Fulladder32|fulladder2|Cout~0_combout\))) # (!\FD|Reg2|output\(77) & (\FD|Reg2|output\(45) & 
-- \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder4|Cout~1_combout\,
	datab => \FD|Reg2|output\(77),
	datac => \FD|Reg2|output\(45),
	datad => \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder4|Cout~2_combout\);

-- Location: LCCOMB_X106_Y50_N28
\FD|ALU|Fulladder32|fulladder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\ = (\FD|Reg2|output\(79) & ((\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\) # ((\FD|Reg2|output\(47)) # (\FD|ALU|Fulladder32|fulladder4|Cout~2_combout\)))) # (!\FD|Reg2|output\(79) & (\FD|Reg2|output\(47) & 
-- ((\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder4|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\,
	datab => \FD|Reg2|output\(79),
	datac => \FD|Reg2|output\(47),
	datad => \FD|ALU|Fulladder32|fulladder4|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\);

-- Location: LCCOMB_X106_Y50_N0
\FD|ALU|Fulladder32|fulladder6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\ = (\FD|Reg2|output\(48) & ((\FD|Reg2|output\(80)) # (\FD|ALU|Fulladder32|fulladder5|Cout~0_combout\))) # (!\FD|Reg2|output\(48) & (\FD|Reg2|output\(80) & \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(48),
	datac => \FD|Reg2|output\(80),
	datad => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\);

-- Location: LCCOMB_X106_Y50_N2
\FD|ALU|Fulladder32|fulladder7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\ = (\FD|Reg2|output\(49) & ((\FD|Reg2|output\(81)) # (\FD|ALU|Fulladder32|fulladder6|Cout~0_combout\))) # (!\FD|Reg2|output\(49) & (\FD|Reg2|output\(81) & \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(49),
	datac => \FD|Reg2|output\(81),
	datad => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\);

-- Location: LCCOMB_X106_Y50_N4
\FD|ALU|Fulladder32|fulladder9|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder9|Cout~2_combout\ = (\FD|ALU|Fulladder32|fulladder9|Cout~1_combout\ & ((\FD|Reg2|output\(82) & ((\FD|Reg2|output\(50)) # (\FD|ALU|Fulladder32|fulladder7|Cout~0_combout\))) # (!\FD|Reg2|output\(82) & (\FD|Reg2|output\(50) & 
-- \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(82),
	datab => \FD|ALU|Fulladder32|fulladder9|Cout~1_combout\,
	datac => \FD|Reg2|output\(50),
	datad => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder9|Cout~2_combout\);

-- Location: LCCOMB_X107_Y47_N10
\FD|ALU|Fulladder32|fulladder9|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\ = (\FD|Reg2|output\(83) & \FD|Reg2|output\(51))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(83),
	datac => \FD|Reg2|output\(51),
	combout => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\);

-- Location: LCCOMB_X106_Y50_N6
\FD|ALU|Fulladder32|fulladder10|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\ = (\FD|Reg2|output\(84) & ((\FD|Reg2|output\(52)) # ((\FD|ALU|Fulladder32|fulladder9|Cout~2_combout\) # (\FD|ALU|Fulladder32|fulladder9|Cout~0_combout\)))) # (!\FD|Reg2|output\(84) & (\FD|Reg2|output\(52) & 
-- ((\FD|ALU|Fulladder32|fulladder9|Cout~2_combout\) # (\FD|ALU|Fulladder32|fulladder9|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(84),
	datab => \FD|Reg2|output\(52),
	datac => \FD|ALU|Fulladder32|fulladder9|Cout~2_combout\,
	datad => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\);

-- Location: LCCOMB_X106_Y50_N20
\FD|ALU|Fulladder32|fulladder12|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder12|Cout~2_combout\ = (\FD|ALU|Fulladder32|fulladder12|Cout~1_combout\ & ((\FD|Reg2|output\(85) & ((\FD|Reg2|output\(53)) # (\FD|ALU|Fulladder32|fulladder10|Cout~0_combout\))) # (!\FD|Reg2|output\(85) & (\FD|Reg2|output\(53) & 
-- \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder12|Cout~1_combout\,
	datab => \FD|Reg2|output\(85),
	datac => \FD|Reg2|output\(53),
	datad => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder12|Cout~2_combout\);

-- Location: LCCOMB_X106_Y50_N18
\FD|ALU|Fulladder32|fulladder14|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\ = (\FD|Reg2|output\(87) & ((\FD|ALU|Fulladder32|fulladder12|Cout~0_combout\) # ((\FD|Reg2|output\(55)) # (\FD|ALU|Fulladder32|fulladder12|Cout~2_combout\)))) # (!\FD|Reg2|output\(87) & (\FD|Reg2|output\(55) 
-- & ((\FD|ALU|Fulladder32|fulladder12|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder12|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(87),
	datab => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\,
	datac => \FD|Reg2|output\(55),
	datad => \FD|ALU|Fulladder32|fulladder12|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\);

-- Location: LCCOMB_X106_Y50_N12
\FD|ALU|Fulladder32|fulladder14|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder14|Cout~1_combout\ = (\FD|Reg2|output\(56) & ((\FD|Reg2|output\(88)) # (\FD|ALU|Fulladder32|fulladder14|Cout~0_combout\))) # (!\FD|Reg2|output\(56) & (\FD|Reg2|output\(88) & \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(56),
	datab => \FD|Reg2|output\(88),
	datad => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder14|Cout~1_combout\);

-- Location: LCCOMB_X106_Y50_N14
\FD|ALU|Fulladder32|fulladder16|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder16|Cout~2_combout\ = (\FD|ALU|Fulladder32|fulladder16|Cout~1_combout\ & ((\FD|Reg2|output\(57) & ((\FD|Reg2|output\(89)) # (\FD|ALU|Fulladder32|fulladder14|Cout~1_combout\))) # (!\FD|Reg2|output\(57) & (\FD|Reg2|output\(89) & 
-- \FD|ALU|Fulladder32|fulladder14|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder16|Cout~1_combout\,
	datab => \FD|Reg2|output\(57),
	datac => \FD|Reg2|output\(89),
	datad => \FD|ALU|Fulladder32|fulladder14|Cout~1_combout\,
	combout => \FD|ALU|Fulladder32|fulladder16|Cout~2_combout\);

-- Location: LCCOMB_X103_Y50_N14
\FD|ALU|Fulladder32|fulladder16|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\ = (\FD|Reg2|output\(90) & \FD|Reg2|output\(58))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(90),
	datac => \FD|Reg2|output\(58),
	combout => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\);

-- Location: LCCOMB_X106_Y50_N8
\FD|ALU|Fulladder32|fulladder17|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ = (\FD|Reg2|output\(91) & ((\FD|Reg2|output\(59)) # ((\FD|ALU|Fulladder32|fulladder16|Cout~2_combout\) # (\FD|ALU|Fulladder32|fulladder16|Cout~0_combout\)))) # (!\FD|Reg2|output\(91) & (\FD|Reg2|output\(59) 
-- & ((\FD|ALU|Fulladder32|fulladder16|Cout~2_combout\) # (\FD|ALU|Fulladder32|fulladder16|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(91),
	datab => \FD|Reg2|output\(59),
	datac => \FD|ALU|Fulladder32|fulladder16|Cout~2_combout\,
	datad => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\);

-- Location: LCCOMB_X107_Y50_N16
\FD|ALU|Fulladder32|fulladder19|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder19|Cout~2_combout\ = (\FD|ALU|Fulladder32|fulladder19|Cout~1_combout\ & ((\FD|Reg2|output\(92) & ((\FD|Reg2|output\(60)) # (\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\))) # (!\FD|Reg2|output\(92) & (\FD|Reg2|output\(60) & 
-- \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(92),
	datab => \FD|ALU|Fulladder32|fulladder19|Cout~1_combout\,
	datac => \FD|Reg2|output\(60),
	datad => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder19|Cout~2_combout\);

-- Location: LCCOMB_X107_Y50_N10
\FD|ALU|Fulladder32|fulladder20|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\ = (\FD|Reg2|output\(62) & ((\FD|Reg2|output\(94)) # ((\FD|ALU|Fulladder32|fulladder19|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder19|Cout~2_combout\)))) # (!\FD|Reg2|output\(62) & (\FD|Reg2|output\(94) 
-- & ((\FD|ALU|Fulladder32|fulladder19|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder19|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(62),
	datab => \FD|Reg2|output\(94),
	datac => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder19|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\);

-- Location: LCCOMB_X107_Y50_N24
\FD|ALU|Fulladder32|fulladder22|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder22|Cout~2_combout\ = (\FD|ALU|Fulladder32|fulladder22|Cout~1_combout\ & ((\FD|Reg2|output\(95) & ((\FD|Reg2|output\(63)) # (\FD|ALU|Fulladder32|fulladder20|Cout~0_combout\))) # (!\FD|Reg2|output\(95) & (\FD|Reg2|output\(63) & 
-- \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(95),
	datab => \FD|ALU|Fulladder32|fulladder22|Cout~1_combout\,
	datac => \FD|Reg2|output\(63),
	datad => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder22|Cout~2_combout\);

-- Location: LCCOMB_X107_Y50_N6
\FD|ALU|Fulladder32|fulladder23|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\ = (\FD|Reg2|output\(97) & ((\FD|ALU|Fulladder32|fulladder22|Cout~0_combout\) # ((\FD|Reg2|output\(65)) # (\FD|ALU|Fulladder32|fulladder22|Cout~2_combout\)))) # (!\FD|Reg2|output\(97) & (\FD|Reg2|output\(65) 
-- & ((\FD|ALU|Fulladder32|fulladder22|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder22|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\,
	datab => \FD|Reg2|output\(97),
	datac => \FD|Reg2|output\(65),
	datad => \FD|ALU|Fulladder32|fulladder22|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\);

-- Location: LCCOMB_X107_Y50_N20
\FD|ALU|Fulladder32|fulladder25|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder25|Cout~2_combout\ = (\FD|ALU|Fulladder32|fulladder25|Cout~1_combout\ & ((\FD|Reg2|output\(98) & ((\FD|Reg2|output\(66)) # (\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\))) # (!\FD|Reg2|output\(98) & (\FD|Reg2|output\(66) & 
-- \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(98),
	datab => \FD|ALU|Fulladder32|fulladder25|Cout~1_combout\,
	datac => \FD|Reg2|output\(66),
	datad => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder25|Cout~2_combout\);

-- Location: LCCOMB_X107_Y50_N18
\FD|ALU|Fulladder32|fulladder26|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\ = (\FD|Reg2|output\(68) & ((\FD|ALU|Fulladder32|fulladder25|Cout~0_combout\) # ((\FD|Reg2|output\(100)) # (\FD|ALU|Fulladder32|fulladder25|Cout~2_combout\)))) # (!\FD|Reg2|output\(68) & 
-- (\FD|Reg2|output\(100) & ((\FD|ALU|Fulladder32|fulladder25|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder25|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(68),
	datab => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\,
	datac => \FD|Reg2|output\(100),
	datad => \FD|ALU|Fulladder32|fulladder25|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\);

-- Location: LCCOMB_X107_Y50_N0
\FD|ALU|Fulladder32|fulladder28|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder28|Cout~2_combout\ = (\FD|ALU|Fulladder32|fulladder28|Cout~1_combout\ & ((\FD|Reg2|output\(69) & ((\FD|Reg2|output\(101)) # (\FD|ALU|Fulladder32|fulladder26|Cout~0_combout\))) # (!\FD|Reg2|output\(69) & (\FD|Reg2|output\(101) 
-- & \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder28|Cout~1_combout\,
	datab => \FD|Reg2|output\(69),
	datac => \FD|Reg2|output\(101),
	datad => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder28|Cout~2_combout\);

-- Location: LCCOMB_X107_Y50_N2
\FD|ALU|Fulladder32|fulladder29|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\ = (\FD|Reg2|output\(103) & ((\FD|ALU|Fulladder32|fulladder28|Cout~0_combout\) # ((\FD|Reg2|output\(71)) # (\FD|ALU|Fulladder32|fulladder28|Cout~2_combout\)))) # (!\FD|Reg2|output\(103) & 
-- (\FD|Reg2|output\(71) & ((\FD|ALU|Fulladder32|fulladder28|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder28|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\,
	datab => \FD|Reg2|output\(103),
	datac => \FD|Reg2|output\(71),
	datad => \FD|ALU|Fulladder32|fulladder28|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\);

-- Location: LCCOMB_X107_Y50_N8
\FD|ALU|MuxAlu|result\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|result~combout\ = (\FD|Reg2|output\(104) & ((\FD|Reg2|output\(72) $ (!\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\)) # (!\FD|ALU|Fulladder32|fulladder31|soma~0_combout\))) # (!\FD|Reg2|output\(104) & 
-- ((\FD|ALU|Fulladder32|fulladder31|soma~0_combout\ & ((!\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\) # (!\FD|Reg2|output\(72)))) # (!\FD|ALU|Fulladder32|fulladder31|soma~0_combout\ & ((\FD|Reg2|output\(72)) # 
-- (\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(104),
	datab => \FD|ALU|Fulladder32|fulladder31|soma~0_combout\,
	datac => \FD|Reg2|output\(72),
	datad => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|result~combout\);

-- Location: FF_X1_Y21_N23
\FD|Reg1|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MI|Mux31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(0));

-- Location: FF_X1_Y21_N17
\FD|Reg1|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MI|Mux30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(1));

-- Location: LCCOMB_X1_Y21_N26
\FD|MI|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux29~0_combout\ = (\FD|PC|q\(4) & ((\FD|PC|q\(3)) # (\FD|PC|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(3),
	datac => \FD|PC|q\(5),
	datad => \FD|PC|q\(4),
	combout => \FD|MI|Mux29~0_combout\);

-- Location: FF_X1_Y21_N27
\FD|Reg1|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MI|Mux29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(2));

-- Location: FF_X3_Y21_N17
\FD|Reg1|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|PC|q\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(3));

-- Location: FF_X2_Y21_N3
\FD|Reg1|output[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(34));

-- Location: FF_X2_Y21_N5
\FD|Reg1|output[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(35));

-- Location: FF_X2_Y21_N7
\FD|Reg1|output[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(36));

-- Location: FF_X2_Y21_N9
\FD|Reg1|output[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(37));

-- Location: LCCOMB_X1_Y21_N10
\FD|MuxProxPC|X[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[6]~4_combout\ = (\FD|Reg1|output\(27) & (\FD|MI|Mux29~0_combout\)) # (!\FD|Reg1|output\(27) & ((\FD|PCAdder|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux29~0_combout\,
	datab => \FD|Reg1|output\(27),
	datac => \FD|PCAdder|Add0~8_combout\,
	combout => \FD|MuxProxPC|X[6]~4_combout\);

-- Location: FF_X1_Y21_N11
\FD|PC|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(6));

-- Location: LCCOMB_X2_Y21_N10
\FD|PCAdder|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~8_combout\ = (\FD|PC|q\(6) & (\FD|PCAdder|Add0~7\ $ (GND))) # (!\FD|PC|q\(6) & (!\FD|PCAdder|Add0~7\ & VCC))
-- \FD|PCAdder|Add0~9\ = CARRY((\FD|PC|q\(6) & !\FD|PCAdder|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(6),
	datad => VCC,
	cin => \FD|PCAdder|Add0~7\,
	combout => \FD|PCAdder|Add0~8_combout\,
	cout => \FD|PCAdder|Add0~9\);

-- Location: FF_X2_Y21_N11
\FD|Reg1|output[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(38));

-- Location: LCCOMB_X3_Y21_N24
\FD|MuxProxPC|X[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[7]~5_combout\ = (\FD|Reg1|output\(27) & (\FD|PC|q\(5))) # (!\FD|Reg1|output\(27) & ((\FD|PCAdder|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(5),
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~10_combout\,
	combout => \FD|MuxProxPC|X[7]~5_combout\);

-- Location: FF_X3_Y21_N25
\FD|PC|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(7));

-- Location: LCCOMB_X2_Y21_N12
\FD|PCAdder|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~10_combout\ = (\FD|PC|q\(7) & (!\FD|PCAdder|Add0~9\)) # (!\FD|PC|q\(7) & ((\FD|PCAdder|Add0~9\) # (GND)))
-- \FD|PCAdder|Add0~11\ = CARRY((!\FD|PCAdder|Add0~9\) # (!\FD|PC|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(7),
	datad => VCC,
	cin => \FD|PCAdder|Add0~9\,
	combout => \FD|PCAdder|Add0~10_combout\,
	cout => \FD|PCAdder|Add0~11\);

-- Location: FF_X2_Y21_N13
\FD|Reg1|output[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(39));

-- Location: LCCOMB_X3_Y21_N10
\FD|MuxProxPC|X[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[8]~6_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~12_combout\,
	combout => \FD|MuxProxPC|X[8]~6_combout\);

-- Location: FF_X3_Y21_N11
\FD|PC|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(8));

-- Location: LCCOMB_X2_Y21_N14
\FD|PCAdder|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~12_combout\ = (\FD|PC|q\(8) & (\FD|PCAdder|Add0~11\ $ (GND))) # (!\FD|PC|q\(8) & (!\FD|PCAdder|Add0~11\ & VCC))
-- \FD|PCAdder|Add0~13\ = CARRY((\FD|PC|q\(8) & !\FD|PCAdder|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(8),
	datad => VCC,
	cin => \FD|PCAdder|Add0~11\,
	combout => \FD|PCAdder|Add0~12_combout\,
	cout => \FD|PCAdder|Add0~13\);

-- Location: FF_X2_Y21_N15
\FD|Reg1|output[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(40));

-- Location: LCCOMB_X3_Y21_N20
\FD|MuxProxPC|X[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[9]~7_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg1|output\(27),
	datac => \FD|PCAdder|Add0~14_combout\,
	combout => \FD|MuxProxPC|X[9]~7_combout\);

-- Location: FF_X3_Y21_N21
\FD|PC|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(9));

-- Location: LCCOMB_X2_Y21_N16
\FD|PCAdder|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~14_combout\ = (\FD|PC|q\(9) & (!\FD|PCAdder|Add0~13\)) # (!\FD|PC|q\(9) & ((\FD|PCAdder|Add0~13\) # (GND)))
-- \FD|PCAdder|Add0~15\ = CARRY((!\FD|PCAdder|Add0~13\) # (!\FD|PC|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(9),
	datad => VCC,
	cin => \FD|PCAdder|Add0~13\,
	combout => \FD|PCAdder|Add0~14_combout\,
	cout => \FD|PCAdder|Add0~15\);

-- Location: FF_X2_Y21_N17
\FD|Reg1|output[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(41));

-- Location: LCCOMB_X3_Y21_N30
\FD|MuxProxPC|X[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[10]~8_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~16_combout\,
	combout => \FD|MuxProxPC|X[10]~8_combout\);

-- Location: FF_X3_Y21_N31
\FD|PC|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[10]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(10));

-- Location: LCCOMB_X2_Y21_N18
\FD|PCAdder|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~16_combout\ = (\FD|PC|q\(10) & (\FD|PCAdder|Add0~15\ $ (GND))) # (!\FD|PC|q\(10) & (!\FD|PCAdder|Add0~15\ & VCC))
-- \FD|PCAdder|Add0~17\ = CARRY((\FD|PC|q\(10) & !\FD|PCAdder|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(10),
	datad => VCC,
	cin => \FD|PCAdder|Add0~15\,
	combout => \FD|PCAdder|Add0~16_combout\,
	cout => \FD|PCAdder|Add0~17\);

-- Location: FF_X2_Y21_N19
\FD|Reg1|output[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(42));

-- Location: LCCOMB_X3_Y21_N12
\FD|MuxProxPC|X[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[11]~9_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~18_combout\,
	combout => \FD|MuxProxPC|X[11]~9_combout\);

-- Location: FF_X3_Y21_N13
\FD|PC|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[11]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(11));

-- Location: LCCOMB_X2_Y21_N20
\FD|PCAdder|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~18_combout\ = (\FD|PC|q\(11) & (!\FD|PCAdder|Add0~17\)) # (!\FD|PC|q\(11) & ((\FD|PCAdder|Add0~17\) # (GND)))
-- \FD|PCAdder|Add0~19\ = CARRY((!\FD|PCAdder|Add0~17\) # (!\FD|PC|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(11),
	datad => VCC,
	cin => \FD|PCAdder|Add0~17\,
	combout => \FD|PCAdder|Add0~18_combout\,
	cout => \FD|PCAdder|Add0~19\);

-- Location: FF_X2_Y21_N21
\FD|Reg1|output[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(43));

-- Location: LCCOMB_X3_Y21_N2
\FD|MuxProxPC|X[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[12]~10_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~20_combout\,
	combout => \FD|MuxProxPC|X[12]~10_combout\);

-- Location: FF_X3_Y21_N3
\FD|PC|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[12]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(12));

-- Location: LCCOMB_X2_Y21_N22
\FD|PCAdder|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~20_combout\ = (\FD|PC|q\(12) & (\FD|PCAdder|Add0~19\ $ (GND))) # (!\FD|PC|q\(12) & (!\FD|PCAdder|Add0~19\ & VCC))
-- \FD|PCAdder|Add0~21\ = CARRY((\FD|PC|q\(12) & !\FD|PCAdder|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(12),
	datad => VCC,
	cin => \FD|PCAdder|Add0~19\,
	combout => \FD|PCAdder|Add0~20_combout\,
	cout => \FD|PCAdder|Add0~21\);

-- Location: FF_X2_Y21_N23
\FD|Reg1|output[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(44));

-- Location: LCCOMB_X3_Y21_N4
\FD|MuxProxPC|X[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[13]~11_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~22_combout\,
	combout => \FD|MuxProxPC|X[13]~11_combout\);

-- Location: FF_X3_Y21_N5
\FD|PC|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[13]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(13));

-- Location: LCCOMB_X2_Y21_N24
\FD|PCAdder|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~22_combout\ = (\FD|PC|q\(13) & (!\FD|PCAdder|Add0~21\)) # (!\FD|PC|q\(13) & ((\FD|PCAdder|Add0~21\) # (GND)))
-- \FD|PCAdder|Add0~23\ = CARRY((!\FD|PCAdder|Add0~21\) # (!\FD|PC|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(13),
	datad => VCC,
	cin => \FD|PCAdder|Add0~21\,
	combout => \FD|PCAdder|Add0~22_combout\,
	cout => \FD|PCAdder|Add0~23\);

-- Location: FF_X2_Y21_N25
\FD|Reg1|output[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(45));

-- Location: LCCOMB_X3_Y21_N18
\FD|MuxProxPC|X[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[14]~12_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg1|output\(27),
	datac => \FD|PCAdder|Add0~24_combout\,
	combout => \FD|MuxProxPC|X[14]~12_combout\);

-- Location: FF_X3_Y21_N19
\FD|PC|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[14]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(14));

-- Location: LCCOMB_X2_Y21_N26
\FD|PCAdder|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~24_combout\ = (\FD|PC|q\(14) & (\FD|PCAdder|Add0~23\ $ (GND))) # (!\FD|PC|q\(14) & (!\FD|PCAdder|Add0~23\ & VCC))
-- \FD|PCAdder|Add0~25\ = CARRY((\FD|PC|q\(14) & !\FD|PCAdder|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(14),
	datad => VCC,
	cin => \FD|PCAdder|Add0~23\,
	combout => \FD|PCAdder|Add0~24_combout\,
	cout => \FD|PCAdder|Add0~25\);

-- Location: FF_X2_Y21_N27
\FD|Reg1|output[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(46));

-- Location: LCCOMB_X1_Y21_N24
\FD|MuxProxPC|X[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[15]~13_combout\ = (\FD|Reg1|output\(27) & (\FD|MI|Mux20~0_combout\)) # (!\FD|Reg1|output\(27) & ((\FD|PCAdder|Add0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux20~0_combout\,
	datab => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~26_combout\,
	combout => \FD|MuxProxPC|X[15]~13_combout\);

-- Location: FF_X1_Y21_N25
\FD|PC|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[15]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(15));

-- Location: LCCOMB_X2_Y21_N28
\FD|PCAdder|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~26_combout\ = (\FD|PC|q\(15) & (!\FD|PCAdder|Add0~25\)) # (!\FD|PC|q\(15) & ((\FD|PCAdder|Add0~25\) # (GND)))
-- \FD|PCAdder|Add0~27\ = CARRY((!\FD|PCAdder|Add0~25\) # (!\FD|PC|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(15),
	datad => VCC,
	cin => \FD|PCAdder|Add0~25\,
	combout => \FD|PCAdder|Add0~26_combout\,
	cout => \FD|PCAdder|Add0~27\);

-- Location: FF_X2_Y21_N29
\FD|Reg1|output[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(47));

-- Location: LCCOMB_X1_Y21_N30
\FD|MuxProxPC|X[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[16]~14_combout\ = (\FD|Reg1|output\(27) & (\FD|MI|Mux20~0_combout\)) # (!\FD|Reg1|output\(27) & ((\FD|PCAdder|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux20~0_combout\,
	datac => \FD|PCAdder|Add0~28_combout\,
	datad => \FD|Reg1|output\(27),
	combout => \FD|MuxProxPC|X[16]~14_combout\);

-- Location: FF_X1_Y21_N31
\FD|PC|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[16]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(16));

-- Location: LCCOMB_X2_Y21_N30
\FD|PCAdder|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~28_combout\ = (\FD|PC|q\(16) & (\FD|PCAdder|Add0~27\ $ (GND))) # (!\FD|PC|q\(16) & (!\FD|PCAdder|Add0~27\ & VCC))
-- \FD|PCAdder|Add0~29\ = CARRY((\FD|PC|q\(16) & !\FD|PCAdder|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(16),
	datad => VCC,
	cin => \FD|PCAdder|Add0~27\,
	combout => \FD|PCAdder|Add0~28_combout\,
	cout => \FD|PCAdder|Add0~29\);

-- Location: FF_X2_Y21_N31
\FD|Reg1|output[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(48));

-- Location: LCCOMB_X3_Y20_N10
\FD|MuxProxPC|X[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[17]~15_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg1|output\(27),
	datac => \FD|PCAdder|Add0~30_combout\,
	combout => \FD|MuxProxPC|X[17]~15_combout\);

-- Location: FF_X3_Y20_N11
\FD|PC|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[17]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(17));

-- Location: LCCOMB_X2_Y20_N0
\FD|PCAdder|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~30_combout\ = (\FD|PC|q\(17) & (!\FD|PCAdder|Add0~29\)) # (!\FD|PC|q\(17) & ((\FD|PCAdder|Add0~29\) # (GND)))
-- \FD|PCAdder|Add0~31\ = CARRY((!\FD|PCAdder|Add0~29\) # (!\FD|PC|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(17),
	datad => VCC,
	cin => \FD|PCAdder|Add0~29\,
	combout => \FD|PCAdder|Add0~30_combout\,
	cout => \FD|PCAdder|Add0~31\);

-- Location: FF_X2_Y20_N1
\FD|Reg1|output[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(49));

-- Location: LCCOMB_X3_Y20_N20
\FD|MuxProxPC|X[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[18]~16_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~32_combout\,
	combout => \FD|MuxProxPC|X[18]~16_combout\);

-- Location: FF_X3_Y20_N21
\FD|PC|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[18]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(18));

-- Location: LCCOMB_X2_Y20_N2
\FD|PCAdder|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~32_combout\ = (\FD|PC|q\(18) & (\FD|PCAdder|Add0~31\ $ (GND))) # (!\FD|PC|q\(18) & (!\FD|PCAdder|Add0~31\ & VCC))
-- \FD|PCAdder|Add0~33\ = CARRY((\FD|PC|q\(18) & !\FD|PCAdder|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(18),
	datad => VCC,
	cin => \FD|PCAdder|Add0~31\,
	combout => \FD|PCAdder|Add0~32_combout\,
	cout => \FD|PCAdder|Add0~33\);

-- Location: FF_X2_Y20_N3
\FD|Reg1|output[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(50));

-- Location: LCCOMB_X3_Y20_N6
\FD|MuxProxPC|X[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[19]~17_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg1|output\(27),
	datac => \FD|PCAdder|Add0~34_combout\,
	combout => \FD|MuxProxPC|X[19]~17_combout\);

-- Location: FF_X3_Y20_N7
\FD|PC|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[19]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(19));

-- Location: LCCOMB_X2_Y20_N4
\FD|PCAdder|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~34_combout\ = (\FD|PC|q\(19) & (!\FD|PCAdder|Add0~33\)) # (!\FD|PC|q\(19) & ((\FD|PCAdder|Add0~33\) # (GND)))
-- \FD|PCAdder|Add0~35\ = CARRY((!\FD|PCAdder|Add0~33\) # (!\FD|PC|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(19),
	datad => VCC,
	cin => \FD|PCAdder|Add0~33\,
	combout => \FD|PCAdder|Add0~34_combout\,
	cout => \FD|PCAdder|Add0~35\);

-- Location: FF_X2_Y20_N5
\FD|Reg1|output[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(51));

-- Location: LCCOMB_X3_Y20_N12
\FD|MuxProxPC|X[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[20]~18_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg1|output\(27),
	datac => \FD|PCAdder|Add0~36_combout\,
	combout => \FD|MuxProxPC|X[20]~18_combout\);

-- Location: FF_X3_Y20_N13
\FD|PC|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[20]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(20));

-- Location: LCCOMB_X2_Y20_N6
\FD|PCAdder|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~36_combout\ = (\FD|PC|q\(20) & (\FD|PCAdder|Add0~35\ $ (GND))) # (!\FD|PC|q\(20) & (!\FD|PCAdder|Add0~35\ & VCC))
-- \FD|PCAdder|Add0~37\ = CARRY((\FD|PC|q\(20) & !\FD|PCAdder|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(20),
	datad => VCC,
	cin => \FD|PCAdder|Add0~35\,
	combout => \FD|PCAdder|Add0~36_combout\,
	cout => \FD|PCAdder|Add0~37\);

-- Location: FF_X2_Y20_N7
\FD|Reg1|output[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(52));

-- Location: LCCOMB_X3_Y20_N26
\FD|MuxProxPC|X[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[21]~19_combout\ = (\FD|Reg1|output\(27) & (\FD|MI|Mux20~0_combout\)) # (!\FD|Reg1|output\(27) & ((\FD|PCAdder|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux20~0_combout\,
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~38_combout\,
	combout => \FD|MuxProxPC|X[21]~19_combout\);

-- Location: FF_X3_Y20_N27
\FD|PC|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[21]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(21));

-- Location: LCCOMB_X2_Y20_N8
\FD|PCAdder|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~38_combout\ = (\FD|PC|q\(21) & (!\FD|PCAdder|Add0~37\)) # (!\FD|PC|q\(21) & ((\FD|PCAdder|Add0~37\) # (GND)))
-- \FD|PCAdder|Add0~39\ = CARRY((!\FD|PCAdder|Add0~37\) # (!\FD|PC|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(21),
	datad => VCC,
	cin => \FD|PCAdder|Add0~37\,
	combout => \FD|PCAdder|Add0~38_combout\,
	cout => \FD|PCAdder|Add0~39\);

-- Location: FF_X2_Y20_N9
\FD|Reg1|output[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(53));

-- Location: LCCOMB_X3_Y20_N4
\FD|MuxProxPC|X[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[22]~20_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~40_combout\,
	combout => \FD|MuxProxPC|X[22]~20_combout\);

-- Location: FF_X3_Y20_N5
\FD|PC|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[22]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(22));

-- Location: LCCOMB_X2_Y20_N10
\FD|PCAdder|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~40_combout\ = (\FD|PC|q\(22) & (\FD|PCAdder|Add0~39\ $ (GND))) # (!\FD|PC|q\(22) & (!\FD|PCAdder|Add0~39\ & VCC))
-- \FD|PCAdder|Add0~41\ = CARRY((\FD|PC|q\(22) & !\FD|PCAdder|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(22),
	datad => VCC,
	cin => \FD|PCAdder|Add0~39\,
	combout => \FD|PCAdder|Add0~40_combout\,
	cout => \FD|PCAdder|Add0~41\);

-- Location: FF_X2_Y20_N11
\FD|Reg1|output[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(54));

-- Location: LCCOMB_X3_Y20_N2
\FD|MuxProxPC|X[23]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[23]~21_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~42_combout\,
	combout => \FD|MuxProxPC|X[23]~21_combout\);

-- Location: FF_X3_Y20_N3
\FD|PC|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[23]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(23));

-- Location: LCCOMB_X2_Y20_N12
\FD|PCAdder|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~42_combout\ = (\FD|PC|q\(23) & (!\FD|PCAdder|Add0~41\)) # (!\FD|PC|q\(23) & ((\FD|PCAdder|Add0~41\) # (GND)))
-- \FD|PCAdder|Add0~43\ = CARRY((!\FD|PCAdder|Add0~41\) # (!\FD|PC|q\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(23),
	datad => VCC,
	cin => \FD|PCAdder|Add0~41\,
	combout => \FD|PCAdder|Add0~42_combout\,
	cout => \FD|PCAdder|Add0~43\);

-- Location: FF_X2_Y20_N13
\FD|Reg1|output[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(55));

-- Location: LCCOMB_X3_Y20_N16
\FD|MuxProxPC|X[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[24]~22_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~44_combout\,
	combout => \FD|MuxProxPC|X[24]~22_combout\);

-- Location: FF_X3_Y20_N17
\FD|PC|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[24]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(24));

-- Location: LCCOMB_X2_Y20_N14
\FD|PCAdder|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~44_combout\ = (\FD|PC|q\(24) & (\FD|PCAdder|Add0~43\ $ (GND))) # (!\FD|PC|q\(24) & (!\FD|PCAdder|Add0~43\ & VCC))
-- \FD|PCAdder|Add0~45\ = CARRY((\FD|PC|q\(24) & !\FD|PCAdder|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(24),
	datad => VCC,
	cin => \FD|PCAdder|Add0~43\,
	combout => \FD|PCAdder|Add0~44_combout\,
	cout => \FD|PCAdder|Add0~45\);

-- Location: FF_X2_Y20_N15
\FD|Reg1|output[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(56));

-- Location: LCCOMB_X3_Y20_N18
\FD|MuxProxPC|X[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[25]~23_combout\ = (\FD|Reg1|output\(27) & ((\FD|MI|Mux20~0_combout\))) # (!\FD|Reg1|output\(27) & (\FD|PCAdder|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg1|output\(27),
	datac => \FD|PCAdder|Add0~46_combout\,
	datad => \FD|MI|Mux20~0_combout\,
	combout => \FD|MuxProxPC|X[25]~23_combout\);

-- Location: FF_X3_Y20_N19
\FD|PC|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[25]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(25));

-- Location: LCCOMB_X2_Y20_N16
\FD|PCAdder|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~46_combout\ = (\FD|PC|q\(25) & (!\FD|PCAdder|Add0~45\)) # (!\FD|PC|q\(25) & ((\FD|PCAdder|Add0~45\) # (GND)))
-- \FD|PCAdder|Add0~47\ = CARRY((!\FD|PCAdder|Add0~45\) # (!\FD|PC|q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(25),
	datad => VCC,
	cin => \FD|PCAdder|Add0~45\,
	combout => \FD|PCAdder|Add0~46_combout\,
	cout => \FD|PCAdder|Add0~47\);

-- Location: FF_X2_Y20_N17
\FD|Reg1|output[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(57));

-- Location: LCCOMB_X3_Y20_N28
\FD|MuxProxPC|X[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[26]~24_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~48_combout\,
	combout => \FD|MuxProxPC|X[26]~24_combout\);

-- Location: FF_X3_Y20_N29
\FD|PC|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[26]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(26));

-- Location: LCCOMB_X2_Y20_N18
\FD|PCAdder|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~48_combout\ = (\FD|PC|q\(26) & (\FD|PCAdder|Add0~47\ $ (GND))) # (!\FD|PC|q\(26) & (!\FD|PCAdder|Add0~47\ & VCC))
-- \FD|PCAdder|Add0~49\ = CARRY((\FD|PC|q\(26) & !\FD|PCAdder|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(26),
	datad => VCC,
	cin => \FD|PCAdder|Add0~47\,
	combout => \FD|PCAdder|Add0~48_combout\,
	cout => \FD|PCAdder|Add0~49\);

-- Location: FF_X2_Y20_N19
\FD|Reg1|output[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(58));

-- Location: LCCOMB_X3_Y20_N22
\FD|MuxProxPC|X[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[27]~25_combout\ = (!\FD|Reg1|output\(27) & \FD|PCAdder|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg1|output\(27),
	datad => \FD|PCAdder|Add0~50_combout\,
	combout => \FD|MuxProxPC|X[27]~25_combout\);

-- Location: FF_X3_Y20_N23
\FD|PC|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[27]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(27));

-- Location: LCCOMB_X2_Y20_N20
\FD|PCAdder|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~50_combout\ = (\FD|PC|q\(27) & (!\FD|PCAdder|Add0~49\)) # (!\FD|PC|q\(27) & ((\FD|PCAdder|Add0~49\) # (GND)))
-- \FD|PCAdder|Add0~51\ = CARRY((!\FD|PCAdder|Add0~49\) # (!\FD|PC|q\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(27),
	datad => VCC,
	cin => \FD|PCAdder|Add0~49\,
	combout => \FD|PCAdder|Add0~50_combout\,
	cout => \FD|PCAdder|Add0~51\);

-- Location: FF_X2_Y20_N21
\FD|Reg1|output[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(59));

-- Location: LCCOMB_X2_Y20_N22
\FD|PCAdder|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~52_combout\ = (\FD|Reg1|output\(60) & (\FD|PCAdder|Add0~51\ $ (GND))) # (!\FD|Reg1|output\(60) & (!\FD|PCAdder|Add0~51\ & VCC))
-- \FD|PCAdder|Add0~53\ = CARRY((\FD|Reg1|output\(60) & !\FD|PCAdder|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg1|output\(60),
	datad => VCC,
	cin => \FD|PCAdder|Add0~51\,
	combout => \FD|PCAdder|Add0~52_combout\,
	cout => \FD|PCAdder|Add0~53\);

-- Location: FF_X2_Y20_N23
\FD|Reg1|output[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(60));

-- Location: LCCOMB_X2_Y20_N24
\FD|PCAdder|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~54_combout\ = (\FD|Reg1|output\(61) & (!\FD|PCAdder|Add0~53\)) # (!\FD|Reg1|output\(61) & ((\FD|PCAdder|Add0~53\) # (GND)))
-- \FD|PCAdder|Add0~55\ = CARRY((!\FD|PCAdder|Add0~53\) # (!\FD|Reg1|output\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg1|output\(61),
	datad => VCC,
	cin => \FD|PCAdder|Add0~53\,
	combout => \FD|PCAdder|Add0~54_combout\,
	cout => \FD|PCAdder|Add0~55\);

-- Location: FF_X2_Y20_N25
\FD|Reg1|output[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(61));

-- Location: LCCOMB_X2_Y20_N26
\FD|PCAdder|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~56_combout\ = (\FD|Reg1|output\(62) & (\FD|PCAdder|Add0~55\ $ (GND))) # (!\FD|Reg1|output\(62) & (!\FD|PCAdder|Add0~55\ & VCC))
-- \FD|PCAdder|Add0~57\ = CARRY((\FD|Reg1|output\(62) & !\FD|PCAdder|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg1|output\(62),
	datad => VCC,
	cin => \FD|PCAdder|Add0~55\,
	combout => \FD|PCAdder|Add0~56_combout\,
	cout => \FD|PCAdder|Add0~57\);

-- Location: FF_X2_Y20_N27
\FD|Reg1|output[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(62));

-- Location: LCCOMB_X2_Y20_N28
\FD|PCAdder|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~58_combout\ = \FD|PCAdder|Add0~57\ $ (\FD|Reg1|output\(63))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(63),
	cin => \FD|PCAdder|Add0~57\,
	combout => \FD|PCAdder|Add0~58_combout\);

-- Location: FF_X2_Y20_N29
\FD|Reg1|output[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|PCAdder|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg1|output\(63));

-- Location: LCCOMB_X1_Y25_N0
\FD|Reg2|output[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[10]~feeder_combout\ = \FD|Reg1|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(0),
	combout => \FD|Reg2|output[10]~feeder_combout\);

-- Location: FF_X1_Y25_N1
\FD|Reg2|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(10));

-- Location: FF_X1_Y21_N1
\FD|Reg2|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(11));

-- Location: FF_X1_Y21_N19
\FD|Reg2|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(12));

-- Location: LCCOMB_X3_Y21_N14
\FD|Reg2|output[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[13]~feeder_combout\ = \FD|Reg1|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(3),
	combout => \FD|Reg2|output[13]~feeder_combout\);

-- Location: FF_X3_Y21_N15
\FD|Reg2|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(13));

-- Location: FF_X2_Y25_N3
\FD|Reg2|output[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(34),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(108));

-- Location: LCCOMB_X2_Y24_N8
\FD|Reg2|output[109]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[109]~feeder_combout\ = \FD|Reg1|output\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(35),
	combout => \FD|Reg2|output[109]~feeder_combout\);

-- Location: FF_X2_Y24_N9
\FD|Reg2|output[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[109]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(109));

-- Location: LCCOMB_X2_Y24_N2
\FD|Reg2|output[110]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[110]~feeder_combout\ = \FD|Reg1|output\(36)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(36),
	combout => \FD|Reg2|output[110]~feeder_combout\);

-- Location: FF_X2_Y24_N3
\FD|Reg2|output[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[110]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(110));

-- Location: LCCOMB_X3_Y25_N12
\FD|Reg2|output[111]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[111]~feeder_combout\ = \FD|Reg1|output\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(37),
	combout => \FD|Reg2|output[111]~feeder_combout\);

-- Location: FF_X3_Y25_N13
\FD|Reg2|output[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[111]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(111));

-- Location: LCCOMB_X3_Y25_N10
\FD|Reg2|output[112]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[112]~feeder_combout\ = \FD|Reg1|output\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(38),
	combout => \FD|Reg2|output[112]~feeder_combout\);

-- Location: FF_X3_Y25_N11
\FD|Reg2|output[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[112]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(112));

-- Location: LCCOMB_X3_Y25_N16
\FD|Reg2|output[113]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[113]~feeder_combout\ = \FD|Reg1|output\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(39),
	combout => \FD|Reg2|output[113]~feeder_combout\);

-- Location: FF_X3_Y25_N17
\FD|Reg2|output[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[113]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(113));

-- Location: LCCOMB_X2_Y25_N4
\FD|Reg2|output[114]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[114]~feeder_combout\ = \FD|Reg1|output\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(40),
	combout => \FD|Reg2|output[114]~feeder_combout\);

-- Location: FF_X2_Y25_N5
\FD|Reg2|output[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[114]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(114));

-- Location: LCCOMB_X2_Y21_N0
\FD|Reg2|output[115]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[115]~feeder_combout\ = \FD|Reg1|output\(41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(41),
	combout => \FD|Reg2|output[115]~feeder_combout\);

-- Location: FF_X2_Y21_N1
\FD|Reg2|output[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[115]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(115));

-- Location: LCCOMB_X2_Y24_N0
\FD|Reg2|output[116]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[116]~feeder_combout\ = \FD|Reg1|output\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(42),
	combout => \FD|Reg2|output[116]~feeder_combout\);

-- Location: FF_X2_Y24_N1
\FD|Reg2|output[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[116]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(116));

-- Location: LCCOMB_X2_Y24_N10
\FD|Reg2|output[117]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[117]~feeder_combout\ = \FD|Reg1|output\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(43),
	combout => \FD|Reg2|output[117]~feeder_combout\);

-- Location: FF_X2_Y24_N11
\FD|Reg2|output[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[117]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(117));

-- Location: LCCOMB_X2_Y24_N4
\FD|Reg2|output[118]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[118]~feeder_combout\ = \FD|Reg1|output\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(44),
	combout => \FD|Reg2|output[118]~feeder_combout\);

-- Location: FF_X2_Y24_N5
\FD|Reg2|output[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[118]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(118));

-- Location: FF_X1_Y25_N3
\FD|Reg2|output[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(45),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(119));

-- Location: FF_X2_Y25_N23
\FD|Reg2|output[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(120));

-- Location: FF_X3_Y25_N27
\FD|Reg2|output[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(47),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(121));

-- Location: FF_X3_Y25_N9
\FD|Reg2|output[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(122));

-- Location: LCCOMB_X1_Y24_N30
\FD|Reg2|output[123]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[123]~feeder_combout\ = \FD|Reg1|output\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(49),
	combout => \FD|Reg2|output[123]~feeder_combout\);

-- Location: FF_X1_Y24_N31
\FD|Reg2|output[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[123]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(123));

-- Location: LCCOMB_X1_Y20_N8
\FD|Reg2|output[124]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[124]~feeder_combout\ = \FD|Reg1|output\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(50),
	combout => \FD|Reg2|output[124]~feeder_combout\);

-- Location: FF_X1_Y20_N9
\FD|Reg2|output[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[124]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(124));

-- Location: LCCOMB_X1_Y20_N10
\FD|Reg2|output[125]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[125]~feeder_combout\ = \FD|Reg1|output\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(51),
	combout => \FD|Reg2|output[125]~feeder_combout\);

-- Location: FF_X1_Y20_N11
\FD|Reg2|output[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[125]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(125));

-- Location: LCCOMB_X1_Y20_N28
\FD|Reg2|output[126]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[126]~feeder_combout\ = \FD|Reg1|output\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(52),
	combout => \FD|Reg2|output[126]~feeder_combout\);

-- Location: FF_X1_Y20_N29
\FD|Reg2|output[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[126]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(126));

-- Location: FF_X3_Y20_N1
\FD|Reg2|output[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(127));

-- Location: FF_X1_Y20_N19
\FD|Reg2|output[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(54),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(128));

-- Location: FF_X1_Y20_N21
\FD|Reg2|output[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(55),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(129));

-- Location: FF_X1_Y20_N23
\FD|Reg2|output[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(56),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(130));

-- Location: LCCOMB_X1_Y20_N0
\FD|Reg2|output[131]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[131]~feeder_combout\ = \FD|Reg1|output\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(57),
	combout => \FD|Reg2|output[131]~feeder_combout\);

-- Location: FF_X1_Y20_N1
\FD|Reg2|output[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[131]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(131));

-- Location: LCCOMB_X1_Y20_N14
\FD|Reg2|output[132]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[132]~feeder_combout\ = \FD|Reg1|output\(58)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(58),
	combout => \FD|Reg2|output[132]~feeder_combout\);

-- Location: FF_X1_Y20_N15
\FD|Reg2|output[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[132]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(132));

-- Location: FF_X1_Y20_N13
\FD|Reg2|output[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(59),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(133));

-- Location: LCCOMB_X1_Y20_N2
\FD|Reg2|output[134]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[134]~feeder_combout\ = \FD|Reg1|output\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(60),
	combout => \FD|Reg2|output[134]~feeder_combout\);

-- Location: FF_X1_Y20_N3
\FD|Reg2|output[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[134]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(134));

-- Location: FF_X1_Y20_N25
\FD|Reg2|output[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg1|output\(61),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(135));

-- Location: LCCOMB_X1_Y20_N6
\FD|Reg2|output[136]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[136]~feeder_combout\ = \FD|Reg1|output\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(62),
	combout => \FD|Reg2|output[136]~feeder_combout\);

-- Location: FF_X1_Y20_N7
\FD|Reg2|output[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[136]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(136));

-- Location: LCCOMB_X2_Y20_N30
\FD|Reg2|output[137]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[137]~feeder_combout\ = \FD|Reg1|output\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(63),
	combout => \FD|Reg2|output[137]~feeder_combout\);

-- Location: FF_X2_Y20_N31
\FD|Reg2|output[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[137]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(137));

-- Location: LCCOMB_X1_Y53_N6
\FD|Reg2|output[145]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg2|output[145]~1_combout\ = !\FD|Reg1|output\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg1|output\(27),
	combout => \FD|Reg2|output[145]~1_combout\);

-- Location: FF_X1_Y53_N7
\FD|Reg2|output[145]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg2|output[145]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg2|output\(145));

-- Location: FF_X106_Y50_N13
\FD|Reg3|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(42),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(5));

-- Location: LCCOMB_X105_Y50_N2
\FD|Reg3|output[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[6]~feeder_combout\ = \FD|Reg2|output\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(43),
	combout => \FD|Reg3|output[6]~feeder_combout\);

-- Location: FF_X105_Y50_N3
\FD|Reg3|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(6));

-- Location: FF_X107_Y48_N29
\FD|Reg3|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(44),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(7));

-- Location: LCCOMB_X68_Y72_N0
\FD|Reg3|output[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[8]~feeder_combout\ = \FD|Reg2|output\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(45),
	combout => \FD|Reg3|output[8]~feeder_combout\);

-- Location: FF_X68_Y72_N1
\FD|Reg3|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(8));

-- Location: LCCOMB_X101_Y50_N24
\FD|Reg3|output[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[9]~feeder_combout\ = \FD|Reg2|output\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(46),
	combout => \FD|Reg3|output[9]~feeder_combout\);

-- Location: FF_X101_Y50_N25
\FD|Reg3|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(9));

-- Location: LCCOMB_X107_Y54_N4
\FD|Reg3|output[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[10]~feeder_combout\ = \FD|Reg2|output\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(47),
	combout => \FD|Reg3|output[10]~feeder_combout\);

-- Location: FF_X107_Y54_N5
\FD|Reg3|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(10));

-- Location: FF_X114_Y50_N27
\FD|Reg3|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(48),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(11));

-- Location: LCCOMB_X108_Y72_N0
\FD|Reg3|output[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[12]~feeder_combout\ = \FD|Reg2|output\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(49),
	combout => \FD|Reg3|output[12]~feeder_combout\);

-- Location: FF_X108_Y72_N1
\FD|Reg3|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(12));

-- Location: LCCOMB_X113_Y37_N20
\FD|Reg3|output[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[13]~feeder_combout\ = \FD|Reg2|output\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(50),
	combout => \FD|Reg3|output[13]~feeder_combout\);

-- Location: FF_X113_Y37_N21
\FD|Reg3|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(13));

-- Location: LCCOMB_X114_Y37_N16
\FD|Reg3|output[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[14]~feeder_combout\ = \FD|Reg2|output\(51)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(51),
	combout => \FD|Reg3|output[14]~feeder_combout\);

-- Location: FF_X114_Y37_N17
\FD|Reg3|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(14));

-- Location: LCCOMB_X114_Y37_N26
\FD|Reg3|output[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[15]~feeder_combout\ = \FD|Reg2|output\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(52),
	combout => \FD|Reg3|output[15]~feeder_combout\);

-- Location: FF_X114_Y37_N27
\FD|Reg3|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(15));

-- Location: LCCOMB_X114_Y46_N12
\FD|Reg3|output[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[16]~feeder_combout\ = \FD|Reg2|output\(53)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(53),
	combout => \FD|Reg3|output[16]~feeder_combout\);

-- Location: FF_X114_Y46_N13
\FD|Reg3|output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(16));

-- Location: LCCOMB_X114_Y37_N8
\FD|Reg3|output[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[17]~feeder_combout\ = \FD|Reg2|output\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(54),
	combout => \FD|Reg3|output[17]~feeder_combout\);

-- Location: FF_X114_Y37_N9
\FD|Reg3|output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(17));

-- Location: FF_X105_Y46_N13
\FD|Reg3|output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(55),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(18));

-- Location: LCCOMB_X107_Y54_N30
\FD|Reg3|output[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[19]~feeder_combout\ = \FD|Reg2|output\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(56),
	combout => \FD|Reg3|output[19]~feeder_combout\);

-- Location: FF_X107_Y54_N31
\FD|Reg3|output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(19));

-- Location: FF_X103_Y50_N5
\FD|Reg3|output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(57),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(20));

-- Location: FF_X103_Y50_N31
\FD|Reg3|output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(21));

-- Location: LCCOMB_X114_Y54_N0
\FD|Reg3|output[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[22]~feeder_combout\ = \FD|Reg2|output\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(59),
	combout => \FD|Reg3|output[22]~feeder_combout\);

-- Location: FF_X114_Y54_N1
\FD|Reg3|output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(22));

-- Location: FF_X107_Y50_N17
\FD|Reg3|output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(60),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(23));

-- Location: LCCOMB_X114_Y50_N20
\FD|Reg3|output[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[24]~feeder_combout\ = \FD|Reg2|output\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(61),
	combout => \FD|Reg3|output[24]~feeder_combout\);

-- Location: FF_X114_Y50_N21
\FD|Reg3|output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(24));

-- Location: FF_X105_Y54_N25
\FD|Reg3|output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(62),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(25));

-- Location: LCCOMB_X114_Y50_N22
\FD|Reg3|output[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[26]~feeder_combout\ = \FD|Reg2|output\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(63),
	combout => \FD|Reg3|output[26]~feeder_combout\);

-- Location: FF_X114_Y50_N23
\FD|Reg3|output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(26));

-- Location: LCCOMB_X108_Y37_N8
\FD|Reg3|output[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[27]~feeder_combout\ = \FD|Reg2|output\(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(64),
	combout => \FD|Reg3|output[27]~feeder_combout\);

-- Location: FF_X108_Y37_N9
\FD|Reg3|output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(27));

-- Location: LCCOMB_X114_Y72_N0
\FD|Reg3|output[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[28]~feeder_combout\ = \FD|Reg2|output\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(65),
	combout => \FD|Reg3|output[28]~feeder_combout\);

-- Location: FF_X114_Y72_N1
\FD|Reg3|output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(28));

-- Location: LCCOMB_X114_Y50_N4
\FD|Reg3|output[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[29]~feeder_combout\ = \FD|Reg2|output\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(66),
	combout => \FD|Reg3|output[29]~feeder_combout\);

-- Location: FF_X114_Y50_N5
\FD|Reg3|output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(29));

-- Location: FF_X114_Y46_N15
\FD|Reg3|output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(67),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(30));

-- Location: LCCOMB_X105_Y46_N22
\FD|Reg3|output[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[31]~feeder_combout\ = \FD|Reg2|output\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(68),
	combout => \FD|Reg3|output[31]~feeder_combout\);

-- Location: FF_X105_Y46_N23
\FD|Reg3|output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(31));

-- Location: LCCOMB_X114_Y37_N6
\FD|Reg3|output[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[32]~feeder_combout\ = \FD|Reg2|output\(69)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(69),
	combout => \FD|Reg3|output[32]~feeder_combout\);

-- Location: FF_X114_Y37_N7
\FD|Reg3|output[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(32));

-- Location: LCCOMB_X114_Y46_N30
\FD|Reg3|output[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[33]~feeder_combout\ = \FD|Reg2|output\(70)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(70),
	combout => \FD|Reg3|output[33]~feeder_combout\);

-- Location: FF_X114_Y46_N31
\FD|Reg3|output[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(33));

-- Location: LCCOMB_X114_Y46_N4
\FD|Reg3|output[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[34]~feeder_combout\ = \FD|Reg2|output\(71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(71),
	combout => \FD|Reg3|output[34]~feeder_combout\);

-- Location: FF_X114_Y46_N5
\FD|Reg3|output[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(34));

-- Location: FF_X114_Y46_N23
\FD|Reg3|output[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg2|output\(72),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(35));

-- Location: LCCOMB_X69_Y72_N0
\FD|Reg3|output[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[36]~feeder_combout\ = \FD|Reg2|output\(73)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(73),
	combout => \FD|Reg3|output[36]~feeder_combout\);

-- Location: FF_X69_Y72_N1
\FD|Reg3|output[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(36));

-- Location: LCCOMB_X105_Y50_N16
\FD|ALU|Fulladder32|fulladder0|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder0|soma~combout\ = \FD|Reg2|output\(42) $ (\FD|Reg2|output\(74))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(42),
	datad => \FD|Reg2|output\(74),
	combout => \FD|ALU|Fulladder32|fulladder0|soma~combout\);

-- Location: LCCOMB_X101_Y50_N2
\FD|Reg3|output[37]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[37]~feeder_combout\ = \FD|ALU|Fulladder32|fulladder0|soma~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Fulladder32|fulladder0|soma~combout\,
	combout => \FD|Reg3|output[37]~feeder_combout\);

-- Location: FF_X101_Y50_N3
\FD|Reg3|output[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(37));

-- Location: LCCOMB_X105_Y50_N28
\FD|ALU|Fulladder32|fulladder1|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder1|soma~0_combout\ = \FD|Reg2|output\(43) $ (\FD|Reg2|output\(75) $ (((\FD|Reg2|output\(42) & \FD|Reg2|output\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(43),
	datab => \FD|Reg2|output\(75),
	datac => \FD|Reg2|output\(42),
	datad => \FD|Reg2|output\(74),
	combout => \FD|ALU|Fulladder32|fulladder1|soma~0_combout\);

-- Location: FF_X105_Y50_N29
\FD|Reg3|output[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder1|soma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(38));

-- Location: LCCOMB_X107_Y48_N22
\FD|ALU|Fulladder32|fulladder2|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder2|soma~0_combout\ = \FD|Reg2|output\(44) $ (\FD|ALU|Fulladder32|fulladder1|Cout~0_combout\ $ (\FD|Reg2|output\(76)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(44),
	datab => \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\,
	datac => \FD|Reg2|output\(76),
	combout => \FD|ALU|Fulladder32|fulladder2|soma~0_combout\);

-- Location: FF_X107_Y48_N23
\FD|Reg3|output[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder2|soma~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(39));

-- Location: LCCOMB_X101_Y50_N8
\FD|ALU|Fulladder32|fulladder3|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder3|soma~combout\ = \FD|Reg2|output\(77) $ (\FD|ALU|Fulladder32|fulladder2|Cout~0_combout\ $ (\FD|Reg2|output\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(77),
	datac => \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\,
	datad => \FD|Reg2|output\(45),
	combout => \FD|ALU|Fulladder32|fulladder3|soma~combout\);

-- Location: FF_X101_Y50_N9
\FD|Reg3|output[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder3|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(40));

-- Location: LCCOMB_X101_Y50_N28
\FD|ALU|Fulladder32|fulladder4|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder4|soma~0_combout\ = \FD|Reg2|output\(78) $ (\FD|Reg2|output\(46))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(78),
	datad => \FD|Reg2|output\(46),
	combout => \FD|ALU|Fulladder32|fulladder4|soma~0_combout\);

-- Location: LCCOMB_X101_Y50_N26
\FD|ALU|Fulladder32|fulladder4|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder4|soma~combout\ = \FD|ALU|Fulladder32|fulladder4|soma~0_combout\ $ (((\FD|Reg2|output\(45) & ((\FD|ALU|Fulladder32|fulladder2|Cout~0_combout\) # (\FD|Reg2|output\(77)))) # (!\FD|Reg2|output\(45) & 
-- (\FD|ALU|Fulladder32|fulladder2|Cout~0_combout\ & \FD|Reg2|output\(77)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(45),
	datab => \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\,
	datac => \FD|Reg2|output\(77),
	datad => \FD|ALU|Fulladder32|fulladder4|soma~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder4|soma~combout\);

-- Location: FF_X101_Y50_N27
\FD|Reg3|output[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder4|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(41));

-- Location: LCCOMB_X106_Y50_N26
\FD|ALU|Fulladder32|fulladder5|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder5|soma~combout\ = \FD|Reg2|output\(79) $ (\FD|Reg2|output\(47) $ (((\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder4|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\,
	datab => \FD|Reg2|output\(79),
	datac => \FD|Reg2|output\(47),
	datad => \FD|ALU|Fulladder32|fulladder4|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder5|soma~combout\);

-- Location: LCCOMB_X114_Y37_N28
\FD|Reg3|output[42]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[42]~feeder_combout\ = \FD|ALU|Fulladder32|fulladder5|soma~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Fulladder32|fulladder5|soma~combout\,
	combout => \FD|Reg3|output[42]~feeder_combout\);

-- Location: FF_X114_Y37_N29
\FD|Reg3|output[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[42]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(42));

-- Location: LCCOMB_X110_Y50_N16
\FD|ALU|Fulladder32|fulladder6|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder6|soma~combout\ = \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\ $ (\FD|Reg2|output\(80) $ (\FD|Reg2|output\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\,
	datac => \FD|Reg2|output\(80),
	datad => \FD|Reg2|output\(48),
	combout => \FD|ALU|Fulladder32|fulladder6|soma~combout\);

-- Location: FF_X110_Y50_N17
\FD|Reg3|output[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder6|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(43));

-- Location: LCCOMB_X107_Y54_N24
\FD|ALU|Fulladder32|fulladder7|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder7|soma~combout\ = \FD|Reg2|output\(49) $ (\FD|ALU|Fulladder32|fulladder6|Cout~0_combout\ $ (\FD|Reg2|output\(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(49),
	datac => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\,
	datad => \FD|Reg2|output\(81),
	combout => \FD|ALU|Fulladder32|fulladder7|soma~combout\);

-- Location: FF_X107_Y54_N25
\FD|Reg3|output[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder7|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(44));

-- Location: LCCOMB_X107_Y47_N24
\FD|ALU|Fulladder32|fulladder8|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder8|soma~combout\ = \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\ $ (\FD|Reg2|output\(82) $ (\FD|Reg2|output\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\,
	datac => \FD|Reg2|output\(82),
	datad => \FD|Reg2|output\(50),
	combout => \FD|ALU|Fulladder32|fulladder8|soma~combout\);

-- Location: FF_X107_Y47_N25
\FD|Reg3|output[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder8|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(45));

-- Location: LCCOMB_X107_Y47_N0
\FD|ALU|Fulladder32|fulladder9|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder9|soma~0_combout\ = \FD|Reg2|output\(83) $ (\FD|Reg2|output\(51))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(83),
	datac => \FD|Reg2|output\(51),
	combout => \FD|ALU|Fulladder32|fulladder9|soma~0_combout\);

-- Location: LCCOMB_X107_Y47_N30
\FD|ALU|Fulladder32|fulladder9|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder9|soma~combout\ = \FD|ALU|Fulladder32|fulladder9|soma~0_combout\ $ (((\FD|Reg2|output\(50) & ((\FD|Reg2|output\(82)) # (\FD|ALU|Fulladder32|fulladder7|Cout~0_combout\))) # (!\FD|Reg2|output\(50) & (\FD|Reg2|output\(82) & 
-- \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(50),
	datab => \FD|ALU|Fulladder32|fulladder9|soma~0_combout\,
	datac => \FD|Reg2|output\(82),
	datad => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder9|soma~combout\);

-- Location: FF_X107_Y47_N31
\FD|Reg3|output[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder9|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(46));

-- Location: LCCOMB_X105_Y50_N10
\FD|ALU|Fulladder32|fulladder10|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder10|soma~combout\ = \FD|Reg2|output\(52) $ (\FD|Reg2|output\(84) $ (((\FD|ALU|Fulladder32|fulladder9|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder9|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(52),
	datab => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder9|Cout~2_combout\,
	datad => \FD|Reg2|output\(84),
	combout => \FD|ALU|Fulladder32|fulladder10|soma~combout\);

-- Location: FF_X105_Y50_N11
\FD|Reg3|output[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder10|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(47));

-- Location: LCCOMB_X107_Y46_N16
\FD|ALU|Fulladder32|fulladder11|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder11|soma~combout\ = \FD|Reg2|output\(53) $ (\FD|Reg2|output\(85) $ (\FD|ALU|Fulladder32|fulladder10|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(53),
	datab => \FD|Reg2|output\(85),
	datad => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder11|soma~combout\);

-- Location: FF_X107_Y46_N17
\FD|Reg3|output[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder11|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(48));

-- Location: LCCOMB_X107_Y46_N22
\FD|ALU|Fulladder32|fulladder12|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder12|soma~0_combout\ = \FD|Reg2|output\(54) $ (\FD|Reg2|output\(86))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(54),
	datad => \FD|Reg2|output\(86),
	combout => \FD|ALU|Fulladder32|fulladder12|soma~0_combout\);

-- Location: LCCOMB_X107_Y46_N10
\FD|ALU|Fulladder32|fulladder12|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder12|soma~combout\ = \FD|ALU|Fulladder32|fulladder12|soma~0_combout\ $ (((\FD|Reg2|output\(53) & ((\FD|Reg2|output\(85)) # (\FD|ALU|Fulladder32|fulladder10|Cout~0_combout\))) # (!\FD|Reg2|output\(53) & (\FD|Reg2|output\(85) & 
-- \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(53),
	datab => \FD|Reg2|output\(85),
	datac => \FD|ALU|Fulladder32|fulladder12|soma~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder12|soma~combout\);

-- Location: FF_X107_Y46_N11
\FD|Reg3|output[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder12|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(49));

-- Location: LCCOMB_X106_Y50_N30
\FD|ALU|Fulladder32|fulladder13|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder13|soma~combout\ = \FD|Reg2|output\(87) $ (\FD|Reg2|output\(55) $ (((\FD|ALU|Fulladder32|fulladder12|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder12|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(87),
	datab => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\,
	datac => \FD|Reg2|output\(55),
	datad => \FD|ALU|Fulladder32|fulladder12|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder13|soma~combout\);

-- Location: FF_X106_Y50_N31
\FD|Reg3|output[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder13|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(50));

-- Location: LCCOMB_X107_Y54_N26
\FD|ALU|Fulladder32|fulladder14|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder14|soma~combout\ = \FD|Reg2|output\(56) $ (\FD|Reg2|output\(88) $ (\FD|ALU|Fulladder32|fulladder14|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(56),
	datac => \FD|Reg2|output\(88),
	datad => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder14|soma~combout\);

-- Location: FF_X107_Y54_N27
\FD|Reg3|output[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder14|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(51));

-- Location: LCCOMB_X103_Y50_N10
\FD|ALU|Fulladder32|fulladder15|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder15|soma~combout\ = \FD|Reg2|output\(89) $ (\FD|Reg2|output\(57) $ (\FD|ALU|Fulladder32|fulladder14|Cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(89),
	datac => \FD|Reg2|output\(57),
	datad => \FD|ALU|Fulladder32|fulladder14|Cout~1_combout\,
	combout => \FD|ALU|Fulladder32|fulladder15|soma~combout\);

-- Location: FF_X103_Y50_N11
\FD|Reg3|output[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder15|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(52));

-- Location: LCCOMB_X103_Y50_N26
\FD|ALU|Fulladder32|fulladder16|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder16|soma~0_combout\ = \FD|Reg2|output\(90) $ (\FD|Reg2|output\(58))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(90),
	datab => \FD|Reg2|output\(58),
	combout => \FD|ALU|Fulladder32|fulladder16|soma~0_combout\);

-- Location: LCCOMB_X103_Y50_N22
\FD|ALU|Fulladder32|fulladder16|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder16|soma~combout\ = \FD|ALU|Fulladder32|fulladder16|soma~0_combout\ $ (((\FD|ALU|Fulladder32|fulladder14|Cout~1_combout\ & ((\FD|Reg2|output\(89)) # (\FD|Reg2|output\(57)))) # (!\FD|ALU|Fulladder32|fulladder14|Cout~1_combout\ & 
-- (\FD|Reg2|output\(89) & \FD|Reg2|output\(57)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder14|Cout~1_combout\,
	datab => \FD|Reg2|output\(89),
	datac => \FD|Reg2|output\(57),
	datad => \FD|ALU|Fulladder32|fulladder16|soma~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder16|soma~combout\);

-- Location: FF_X103_Y50_N23
\FD|Reg3|output[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder16|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(53));

-- Location: LCCOMB_X103_Y50_N24
\FD|ALU|Fulladder32|fulladder17|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder17|soma~combout\ = \FD|Reg2|output\(59) $ (\FD|Reg2|output\(91) $ (((\FD|ALU|Fulladder32|fulladder16|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder16|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(59),
	datab => \FD|Reg2|output\(91),
	datac => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder16|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder17|soma~combout\);

-- Location: FF_X103_Y50_N25
\FD|Reg3|output[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder17|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(54));

-- Location: LCCOMB_X114_Y50_N18
\FD|ALU|Fulladder32|fulladder18|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder18|soma~combout\ = \FD|Reg2|output\(92) $ (\FD|Reg2|output\(60) $ (\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(92),
	datac => \FD|Reg2|output\(60),
	datad => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder18|soma~combout\);

-- Location: FF_X114_Y50_N19
\FD|Reg3|output[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder18|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(55));

-- Location: LCCOMB_X114_Y50_N2
\FD|ALU|Fulladder32|fulladder19|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder19|soma~0_combout\ = \FD|Reg2|output\(61) $ (\FD|Reg2|output\(93))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg2|output\(61),
	datad => \FD|Reg2|output\(93),
	combout => \FD|ALU|Fulladder32|fulladder19|soma~0_combout\);

-- Location: LCCOMB_X114_Y50_N16
\FD|ALU|Fulladder32|fulladder19|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder19|soma~combout\ = \FD|ALU|Fulladder32|fulladder19|soma~0_combout\ $ (((\FD|Reg2|output\(92) & ((\FD|Reg2|output\(60)) # (\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\))) # (!\FD|Reg2|output\(92) & (\FD|Reg2|output\(60) & 
-- \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(92),
	datab => \FD|ALU|Fulladder32|fulladder19|soma~0_combout\,
	datac => \FD|Reg2|output\(60),
	datad => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder19|soma~combout\);

-- Location: FF_X114_Y50_N17
\FD|Reg3|output[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder19|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(56));

-- Location: LCCOMB_X108_Y50_N24
\FD|ALU|Fulladder32|fulladder20|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder20|soma~combout\ = \FD|Reg2|output\(62) $ (\FD|Reg2|output\(94) $ (((\FD|ALU|Fulladder32|fulladder19|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder19|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(62),
	datab => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder19|Cout~2_combout\,
	datad => \FD|Reg2|output\(94),
	combout => \FD|ALU|Fulladder32|fulladder20|soma~combout\);

-- Location: FF_X108_Y50_N25
\FD|Reg3|output[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder20|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(57));

-- Location: LCCOMB_X108_Y50_N14
\FD|ALU|Fulladder32|fulladder21|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder21|soma~combout\ = \FD|Reg2|output\(95) $ (\FD|Reg2|output\(63) $ (\FD|ALU|Fulladder32|fulladder20|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(95),
	datac => \FD|Reg2|output\(63),
	datad => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder21|soma~combout\);

-- Location: FF_X108_Y50_N15
\FD|Reg3|output[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder21|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(58));

-- Location: LCCOMB_X108_Y50_N0
\FD|ALU|Fulladder32|fulladder22|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder22|soma~0_combout\ = \FD|Reg2|output\(96) $ (\FD|Reg2|output\(64))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(96),
	datad => \FD|Reg2|output\(64),
	combout => \FD|ALU|Fulladder32|fulladder22|soma~0_combout\);

-- Location: LCCOMB_X108_Y50_N12
\FD|ALU|Fulladder32|fulladder22|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder22|soma~combout\ = \FD|ALU|Fulladder32|fulladder22|soma~0_combout\ $ (((\FD|Reg2|output\(95) & ((\FD|Reg2|output\(63)) # (\FD|ALU|Fulladder32|fulladder20|Cout~0_combout\))) # (!\FD|Reg2|output\(95) & (\FD|Reg2|output\(63) & 
-- \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(95),
	datab => \FD|ALU|Fulladder32|fulladder22|soma~0_combout\,
	datac => \FD|Reg2|output\(63),
	datad => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder22|soma~combout\);

-- Location: FF_X108_Y50_N13
\FD|Reg3|output[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder22|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(59));

-- Location: LCCOMB_X108_Y50_N30
\FD|ALU|Fulladder32|fulladder23|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder23|soma~combout\ = \FD|Reg2|output\(65) $ (\FD|Reg2|output\(97) $ (((\FD|ALU|Fulladder32|fulladder22|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder22|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\,
	datab => \FD|Reg2|output\(65),
	datac => \FD|Reg2|output\(97),
	datad => \FD|ALU|Fulladder32|fulladder22|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder23|soma~combout\);

-- Location: FF_X108_Y50_N31
\FD|Reg3|output[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder23|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(60));

-- Location: LCCOMB_X107_Y50_N30
\FD|ALU|Fulladder32|fulladder24|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder24|soma~combout\ = \FD|Reg2|output\(98) $ (\FD|Reg2|output\(66) $ (\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(98),
	datac => \FD|Reg2|output\(66),
	datad => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder24|soma~combout\);

-- Location: FF_X107_Y50_N31
\FD|Reg3|output[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder24|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(61));

-- Location: LCCOMB_X111_Y50_N20
\FD|ALU|Fulladder32|fulladder25|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder25|soma~0_combout\ = \FD|Reg2|output\(99) $ (\FD|Reg2|output\(67))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(99),
	datac => \FD|Reg2|output\(67),
	combout => \FD|ALU|Fulladder32|fulladder25|soma~0_combout\);

-- Location: LCCOMB_X108_Y50_N4
\FD|ALU|Fulladder32|fulladder25|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder25|soma~combout\ = \FD|ALU|Fulladder32|fulladder25|soma~0_combout\ $ (((\FD|Reg2|output\(66) & ((\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\) # (\FD|Reg2|output\(98)))) # (!\FD|Reg2|output\(66) & 
-- (\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\ & \FD|Reg2|output\(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(66),
	datab => \FD|ALU|Fulladder32|fulladder25|soma~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\,
	datad => \FD|Reg2|output\(98),
	combout => \FD|ALU|Fulladder32|fulladder25|soma~combout\);

-- Location: FF_X108_Y50_N5
\FD|Reg3|output[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder25|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(62));

-- Location: LCCOMB_X107_Y50_N12
\FD|ALU|Fulladder32|fulladder26|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder26|soma~combout\ = \FD|Reg2|output\(68) $ (\FD|Reg2|output\(100) $ (((\FD|ALU|Fulladder32|fulladder25|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder25|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(68),
	datab => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\,
	datac => \FD|Reg2|output\(100),
	datad => \FD|ALU|Fulladder32|fulladder25|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder26|soma~combout\);

-- Location: FF_X107_Y50_N13
\FD|Reg3|output[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder26|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(63));

-- Location: LCCOMB_X107_Y50_N26
\FD|ALU|Fulladder32|fulladder27|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder27|soma~combout\ = \FD|Reg2|output\(69) $ (\FD|Reg2|output\(101) $ (\FD|ALU|Fulladder32|fulladder26|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(69),
	datac => \FD|Reg2|output\(101),
	datad => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder27|soma~combout\);

-- Location: FF_X107_Y50_N27
\FD|Reg3|output[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder27|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(64));

-- Location: LCCOMB_X114_Y46_N2
\FD|ALU|Fulladder32|fulladder28|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder28|soma~0_combout\ = \FD|Reg2|output\(70) $ (\FD|Reg2|output\(102))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(70),
	datad => \FD|Reg2|output\(102),
	combout => \FD|ALU|Fulladder32|fulladder28|soma~0_combout\);

-- Location: LCCOMB_X107_Y50_N4
\FD|ALU|Fulladder32|fulladder28|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder28|soma~combout\ = \FD|ALU|Fulladder32|fulladder28|soma~0_combout\ $ (((\FD|Reg2|output\(69) & ((\FD|Reg2|output\(101)) # (\FD|ALU|Fulladder32|fulladder26|Cout~0_combout\))) # (!\FD|Reg2|output\(69) & (\FD|Reg2|output\(101) & 
-- \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder28|soma~0_combout\,
	datab => \FD|Reg2|output\(69),
	datac => \FD|Reg2|output\(101),
	datad => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder28|soma~combout\);

-- Location: FF_X107_Y50_N5
\FD|Reg3|output[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder28|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(65));

-- Location: LCCOMB_X107_Y50_N22
\FD|ALU|Fulladder32|fulladder29|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder29|soma~combout\ = \FD|Reg2|output\(103) $ (\FD|Reg2|output\(71) $ (((\FD|ALU|Fulladder32|fulladder28|Cout~0_combout\) # (\FD|ALU|Fulladder32|fulladder28|Cout~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\,
	datab => \FD|Reg2|output\(103),
	datac => \FD|Reg2|output\(71),
	datad => \FD|ALU|Fulladder32|fulladder28|Cout~2_combout\,
	combout => \FD|ALU|Fulladder32|fulladder29|soma~combout\);

-- Location: FF_X107_Y50_N23
\FD|Reg3|output[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder29|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(66));

-- Location: LCCOMB_X107_Y50_N28
\FD|ALU|Fulladder32|fulladder30|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder30|soma~combout\ = \FD|Reg2|output\(104) $ (\FD|Reg2|output\(72) $ (\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(104),
	datac => \FD|Reg2|output\(72),
	datad => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder30|soma~combout\);

-- Location: FF_X107_Y50_N29
\FD|Reg3|output[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder30|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(67));

-- Location: LCCOMB_X107_Y50_N14
\FD|ALU|Fulladder32|fulladder31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder31|soma~combout\ = \FD|ALU|Fulladder32|fulladder31|soma~0_combout\ $ (((\FD|Reg2|output\(104) & ((\FD|Reg2|output\(72)) # (\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\))) # (!\FD|Reg2|output\(104) & (\FD|Reg2|output\(72) & 
-- \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(104),
	datab => \FD|ALU|Fulladder32|fulladder31|soma~0_combout\,
	datac => \FD|Reg2|output\(72),
	datad => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder31|soma~combout\);

-- Location: FF_X107_Y50_N15
\FD|Reg3|output[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder31|soma~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(68));

-- Location: FF_X107_Y50_N9
\FD|Reg3|output[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|result~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(69));

-- Location: LCCOMB_X1_Y25_N2
\FD|Reg3|output[72]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[72]~30_combout\ = (\FD|Reg2|output\(108) & (\FD|Reg2|output\(10) $ (VCC))) # (!\FD|Reg2|output\(108) & (\FD|Reg2|output\(10) & VCC))
-- \FD|Reg3|output[72]~31\ = CARRY((\FD|Reg2|output\(108) & \FD|Reg2|output\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(108),
	datab => \FD|Reg2|output\(10),
	datad => VCC,
	combout => \FD|Reg3|output[72]~30_combout\,
	cout => \FD|Reg3|output[72]~31\);

-- Location: LCCOMB_X2_Y25_N8
\FD|Reg3|output[72]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[72]~feeder_combout\ = \FD|Reg3|output[72]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output[72]~30_combout\,
	combout => \FD|Reg3|output[72]~feeder_combout\);

-- Location: FF_X2_Y25_N9
\FD|Reg3|output[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[72]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(72));

-- Location: LCCOMB_X1_Y25_N4
\FD|Reg3|output[73]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[73]~32_combout\ = (\FD|Reg2|output\(11) & ((\FD|Reg2|output\(109) & (\FD|Reg3|output[72]~31\ & VCC)) # (!\FD|Reg2|output\(109) & (!\FD|Reg3|output[72]~31\)))) # (!\FD|Reg2|output\(11) & ((\FD|Reg2|output\(109) & (!\FD|Reg3|output[72]~31\)) 
-- # (!\FD|Reg2|output\(109) & ((\FD|Reg3|output[72]~31\) # (GND)))))
-- \FD|Reg3|output[73]~33\ = CARRY((\FD|Reg2|output\(11) & (!\FD|Reg2|output\(109) & !\FD|Reg3|output[72]~31\)) # (!\FD|Reg2|output\(11) & ((!\FD|Reg3|output[72]~31\) # (!\FD|Reg2|output\(109)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(11),
	datab => \FD|Reg2|output\(109),
	datad => VCC,
	cin => \FD|Reg3|output[72]~31\,
	combout => \FD|Reg3|output[73]~32_combout\,
	cout => \FD|Reg3|output[73]~33\);

-- Location: FF_X1_Y25_N5
\FD|Reg3|output[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[73]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(73));

-- Location: LCCOMB_X1_Y25_N6
\FD|Reg3|output[74]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[74]~34_combout\ = ((\FD|Reg2|output\(12) $ (\FD|Reg2|output\(110) $ (!\FD|Reg3|output[73]~33\)))) # (GND)
-- \FD|Reg3|output[74]~35\ = CARRY((\FD|Reg2|output\(12) & ((\FD|Reg2|output\(110)) # (!\FD|Reg3|output[73]~33\))) # (!\FD|Reg2|output\(12) & (\FD|Reg2|output\(110) & !\FD|Reg3|output[73]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(12),
	datab => \FD|Reg2|output\(110),
	datad => VCC,
	cin => \FD|Reg3|output[73]~33\,
	combout => \FD|Reg3|output[74]~34_combout\,
	cout => \FD|Reg3|output[74]~35\);

-- Location: FF_X1_Y25_N7
\FD|Reg3|output[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[74]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(74));

-- Location: LCCOMB_X1_Y25_N8
\FD|Reg3|output[75]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[75]~36_combout\ = (\FD|Reg2|output\(111) & ((\FD|Reg2|output\(13) & (\FD|Reg3|output[74]~35\ & VCC)) # (!\FD|Reg2|output\(13) & (!\FD|Reg3|output[74]~35\)))) # (!\FD|Reg2|output\(111) & ((\FD|Reg2|output\(13) & (!\FD|Reg3|output[74]~35\)) 
-- # (!\FD|Reg2|output\(13) & ((\FD|Reg3|output[74]~35\) # (GND)))))
-- \FD|Reg3|output[75]~37\ = CARRY((\FD|Reg2|output\(111) & (!\FD|Reg2|output\(13) & !\FD|Reg3|output[74]~35\)) # (!\FD|Reg2|output\(111) & ((!\FD|Reg3|output[74]~35\) # (!\FD|Reg2|output\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(111),
	datab => \FD|Reg2|output\(13),
	datad => VCC,
	cin => \FD|Reg3|output[74]~35\,
	combout => \FD|Reg3|output[75]~36_combout\,
	cout => \FD|Reg3|output[75]~37\);

-- Location: FF_X1_Y25_N9
\FD|Reg3|output[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[75]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(75));

-- Location: LCCOMB_X1_Y25_N10
\FD|Reg3|output[76]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[76]~38_combout\ = (\FD|Reg2|output\(112) & (\FD|Reg3|output[75]~37\ $ (GND))) # (!\FD|Reg2|output\(112) & (!\FD|Reg3|output[75]~37\ & VCC))
-- \FD|Reg3|output[76]~39\ = CARRY((\FD|Reg2|output\(112) & !\FD|Reg3|output[75]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(112),
	datad => VCC,
	cin => \FD|Reg3|output[75]~37\,
	combout => \FD|Reg3|output[76]~38_combout\,
	cout => \FD|Reg3|output[76]~39\);

-- Location: FF_X1_Y25_N11
\FD|Reg3|output[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[76]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(76));

-- Location: LCCOMB_X1_Y25_N12
\FD|Reg3|output[77]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[77]~40_combout\ = (\FD|Reg2|output\(113) & (!\FD|Reg3|output[76]~39\)) # (!\FD|Reg2|output\(113) & ((\FD|Reg3|output[76]~39\) # (GND)))
-- \FD|Reg3|output[77]~41\ = CARRY((!\FD|Reg3|output[76]~39\) # (!\FD|Reg2|output\(113)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(113),
	datad => VCC,
	cin => \FD|Reg3|output[76]~39\,
	combout => \FD|Reg3|output[77]~40_combout\,
	cout => \FD|Reg3|output[77]~41\);

-- Location: FF_X1_Y25_N13
\FD|Reg3|output[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[77]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(77));

-- Location: LCCOMB_X1_Y25_N14
\FD|Reg3|output[78]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[78]~42_combout\ = (\FD|Reg2|output\(114) & (\FD|Reg3|output[77]~41\ $ (GND))) # (!\FD|Reg2|output\(114) & (!\FD|Reg3|output[77]~41\ & VCC))
-- \FD|Reg3|output[78]~43\ = CARRY((\FD|Reg2|output\(114) & !\FD|Reg3|output[77]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(114),
	datad => VCC,
	cin => \FD|Reg3|output[77]~41\,
	combout => \FD|Reg3|output[78]~42_combout\,
	cout => \FD|Reg3|output[78]~43\);

-- Location: FF_X1_Y25_N15
\FD|Reg3|output[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[78]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(78));

-- Location: LCCOMB_X1_Y25_N16
\FD|Reg3|output[79]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[79]~44_combout\ = (\FD|Reg2|output\(115) & (!\FD|Reg3|output[78]~43\)) # (!\FD|Reg2|output\(115) & ((\FD|Reg3|output[78]~43\) # (GND)))
-- \FD|Reg3|output[79]~45\ = CARRY((!\FD|Reg3|output[78]~43\) # (!\FD|Reg2|output\(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(115),
	datad => VCC,
	cin => \FD|Reg3|output[78]~43\,
	combout => \FD|Reg3|output[79]~44_combout\,
	cout => \FD|Reg3|output[79]~45\);

-- Location: FF_X1_Y25_N17
\FD|Reg3|output[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[79]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(79));

-- Location: LCCOMB_X1_Y25_N18
\FD|Reg3|output[80]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[80]~46_combout\ = (\FD|Reg2|output\(116) & (\FD|Reg3|output[79]~45\ $ (GND))) # (!\FD|Reg2|output\(116) & (!\FD|Reg3|output[79]~45\ & VCC))
-- \FD|Reg3|output[80]~47\ = CARRY((\FD|Reg2|output\(116) & !\FD|Reg3|output[79]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(116),
	datad => VCC,
	cin => \FD|Reg3|output[79]~45\,
	combout => \FD|Reg3|output[80]~46_combout\,
	cout => \FD|Reg3|output[80]~47\);

-- Location: FF_X1_Y25_N19
\FD|Reg3|output[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[80]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(80));

-- Location: LCCOMB_X1_Y25_N20
\FD|Reg3|output[81]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[81]~48_combout\ = (\FD|Reg2|output\(117) & (!\FD|Reg3|output[80]~47\)) # (!\FD|Reg2|output\(117) & ((\FD|Reg3|output[80]~47\) # (GND)))
-- \FD|Reg3|output[81]~49\ = CARRY((!\FD|Reg3|output[80]~47\) # (!\FD|Reg2|output\(117)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(117),
	datad => VCC,
	cin => \FD|Reg3|output[80]~47\,
	combout => \FD|Reg3|output[81]~48_combout\,
	cout => \FD|Reg3|output[81]~49\);

-- Location: FF_X1_Y25_N21
\FD|Reg3|output[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[81]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(81));

-- Location: LCCOMB_X1_Y25_N22
\FD|Reg3|output[82]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[82]~50_combout\ = (\FD|Reg2|output\(118) & (\FD|Reg3|output[81]~49\ $ (GND))) # (!\FD|Reg2|output\(118) & (!\FD|Reg3|output[81]~49\ & VCC))
-- \FD|Reg3|output[82]~51\ = CARRY((\FD|Reg2|output\(118) & !\FD|Reg3|output[81]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(118),
	datad => VCC,
	cin => \FD|Reg3|output[81]~49\,
	combout => \FD|Reg3|output[82]~50_combout\,
	cout => \FD|Reg3|output[82]~51\);

-- Location: FF_X1_Y25_N23
\FD|Reg3|output[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[82]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(82));

-- Location: LCCOMB_X1_Y25_N24
\FD|Reg3|output[83]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[83]~52_combout\ = (\FD|Reg2|output\(21) & ((\FD|Reg2|output\(119) & (\FD|Reg3|output[82]~51\ & VCC)) # (!\FD|Reg2|output\(119) & (!\FD|Reg3|output[82]~51\)))) # (!\FD|Reg2|output\(21) & ((\FD|Reg2|output\(119) & (!\FD|Reg3|output[82]~51\)) 
-- # (!\FD|Reg2|output\(119) & ((\FD|Reg3|output[82]~51\) # (GND)))))
-- \FD|Reg3|output[83]~53\ = CARRY((\FD|Reg2|output\(21) & (!\FD|Reg2|output\(119) & !\FD|Reg3|output[82]~51\)) # (!\FD|Reg2|output\(21) & ((!\FD|Reg3|output[82]~51\) # (!\FD|Reg2|output\(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(21),
	datab => \FD|Reg2|output\(119),
	datad => VCC,
	cin => \FD|Reg3|output[82]~51\,
	combout => \FD|Reg3|output[83]~52_combout\,
	cout => \FD|Reg3|output[83]~53\);

-- Location: FF_X1_Y25_N25
\FD|Reg3|output[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[83]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(83));

-- Location: LCCOMB_X1_Y25_N26
\FD|Reg3|output[84]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[84]~54_combout\ = ((\FD|Reg2|output\(21) $ (\FD|Reg2|output\(120) $ (!\FD|Reg3|output[83]~53\)))) # (GND)
-- \FD|Reg3|output[84]~55\ = CARRY((\FD|Reg2|output\(21) & ((\FD|Reg2|output\(120)) # (!\FD|Reg3|output[83]~53\))) # (!\FD|Reg2|output\(21) & (\FD|Reg2|output\(120) & !\FD|Reg3|output[83]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(21),
	datab => \FD|Reg2|output\(120),
	datad => VCC,
	cin => \FD|Reg3|output[83]~53\,
	combout => \FD|Reg3|output[84]~54_combout\,
	cout => \FD|Reg3|output[84]~55\);

-- Location: FF_X1_Y25_N27
\FD|Reg3|output[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[84]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(84));

-- Location: LCCOMB_X1_Y25_N28
\FD|Reg3|output[85]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[85]~56_combout\ = (\FD|Reg2|output\(121) & (!\FD|Reg3|output[84]~55\)) # (!\FD|Reg2|output\(121) & ((\FD|Reg3|output[84]~55\) # (GND)))
-- \FD|Reg3|output[85]~57\ = CARRY((!\FD|Reg3|output[84]~55\) # (!\FD|Reg2|output\(121)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(121),
	datad => VCC,
	cin => \FD|Reg3|output[84]~55\,
	combout => \FD|Reg3|output[85]~56_combout\,
	cout => \FD|Reg3|output[85]~57\);

-- Location: FF_X1_Y25_N29
\FD|Reg3|output[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[85]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(85));

-- Location: LCCOMB_X1_Y25_N30
\FD|Reg3|output[86]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[86]~58_combout\ = (\FD|Reg2|output\(122) & (\FD|Reg3|output[85]~57\ $ (GND))) # (!\FD|Reg2|output\(122) & (!\FD|Reg3|output[85]~57\ & VCC))
-- \FD|Reg3|output[86]~59\ = CARRY((\FD|Reg2|output\(122) & !\FD|Reg3|output[85]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(122),
	datad => VCC,
	cin => \FD|Reg3|output[85]~57\,
	combout => \FD|Reg3|output[86]~58_combout\,
	cout => \FD|Reg3|output[86]~59\);

-- Location: FF_X1_Y25_N31
\FD|Reg3|output[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[86]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(86));

-- Location: LCCOMB_X1_Y24_N0
\FD|Reg3|output[87]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[87]~60_combout\ = (\FD|Reg2|output\(123) & (!\FD|Reg3|output[86]~59\)) # (!\FD|Reg2|output\(123) & ((\FD|Reg3|output[86]~59\) # (GND)))
-- \FD|Reg3|output[87]~61\ = CARRY((!\FD|Reg3|output[86]~59\) # (!\FD|Reg2|output\(123)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(123),
	datad => VCC,
	cin => \FD|Reg3|output[86]~59\,
	combout => \FD|Reg3|output[87]~60_combout\,
	cout => \FD|Reg3|output[87]~61\);

-- Location: FF_X1_Y24_N1
\FD|Reg3|output[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[87]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(87));

-- Location: LCCOMB_X1_Y24_N2
\FD|Reg3|output[88]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[88]~62_combout\ = (\FD|Reg2|output\(124) & (\FD|Reg3|output[87]~61\ $ (GND))) # (!\FD|Reg2|output\(124) & (!\FD|Reg3|output[87]~61\ & VCC))
-- \FD|Reg3|output[88]~63\ = CARRY((\FD|Reg2|output\(124) & !\FD|Reg3|output[87]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(124),
	datad => VCC,
	cin => \FD|Reg3|output[87]~61\,
	combout => \FD|Reg3|output[88]~62_combout\,
	cout => \FD|Reg3|output[88]~63\);

-- Location: FF_X1_Y24_N3
\FD|Reg3|output[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[88]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(88));

-- Location: LCCOMB_X1_Y24_N4
\FD|Reg3|output[89]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[89]~64_combout\ = (\FD|Reg2|output\(125) & (!\FD|Reg3|output[88]~63\)) # (!\FD|Reg2|output\(125) & ((\FD|Reg3|output[88]~63\) # (GND)))
-- \FD|Reg3|output[89]~65\ = CARRY((!\FD|Reg3|output[88]~63\) # (!\FD|Reg2|output\(125)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(125),
	datad => VCC,
	cin => \FD|Reg3|output[88]~63\,
	combout => \FD|Reg3|output[89]~64_combout\,
	cout => \FD|Reg3|output[89]~65\);

-- Location: FF_X1_Y24_N5
\FD|Reg3|output[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[89]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(89));

-- Location: LCCOMB_X1_Y24_N6
\FD|Reg3|output[90]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[90]~66_combout\ = (\FD|Reg2|output\(126) & (\FD|Reg3|output[89]~65\ $ (GND))) # (!\FD|Reg2|output\(126) & (!\FD|Reg3|output[89]~65\ & VCC))
-- \FD|Reg3|output[90]~67\ = CARRY((\FD|Reg2|output\(126) & !\FD|Reg3|output[89]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(126),
	datad => VCC,
	cin => \FD|Reg3|output[89]~65\,
	combout => \FD|Reg3|output[90]~66_combout\,
	cout => \FD|Reg3|output[90]~67\);

-- Location: FF_X1_Y24_N7
\FD|Reg3|output[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[90]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(90));

-- Location: LCCOMB_X1_Y24_N8
\FD|Reg3|output[91]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[91]~68_combout\ = (\FD|Reg2|output\(127) & (!\FD|Reg3|output[90]~67\)) # (!\FD|Reg2|output\(127) & ((\FD|Reg3|output[90]~67\) # (GND)))
-- \FD|Reg3|output[91]~69\ = CARRY((!\FD|Reg3|output[90]~67\) # (!\FD|Reg2|output\(127)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(127),
	datad => VCC,
	cin => \FD|Reg3|output[90]~67\,
	combout => \FD|Reg3|output[91]~68_combout\,
	cout => \FD|Reg3|output[91]~69\);

-- Location: FF_X1_Y24_N9
\FD|Reg3|output[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[91]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(91));

-- Location: LCCOMB_X1_Y24_N10
\FD|Reg3|output[92]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[92]~70_combout\ = (\FD|Reg2|output\(128) & (\FD|Reg3|output[91]~69\ $ (GND))) # (!\FD|Reg2|output\(128) & (!\FD|Reg3|output[91]~69\ & VCC))
-- \FD|Reg3|output[92]~71\ = CARRY((\FD|Reg2|output\(128) & !\FD|Reg3|output[91]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(128),
	datad => VCC,
	cin => \FD|Reg3|output[91]~69\,
	combout => \FD|Reg3|output[92]~70_combout\,
	cout => \FD|Reg3|output[92]~71\);

-- Location: FF_X1_Y24_N11
\FD|Reg3|output[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[92]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(92));

-- Location: LCCOMB_X1_Y24_N12
\FD|Reg3|output[93]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[93]~72_combout\ = (\FD|Reg2|output\(129) & (!\FD|Reg3|output[92]~71\)) # (!\FD|Reg2|output\(129) & ((\FD|Reg3|output[92]~71\) # (GND)))
-- \FD|Reg3|output[93]~73\ = CARRY((!\FD|Reg3|output[92]~71\) # (!\FD|Reg2|output\(129)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(129),
	datad => VCC,
	cin => \FD|Reg3|output[92]~71\,
	combout => \FD|Reg3|output[93]~72_combout\,
	cout => \FD|Reg3|output[93]~73\);

-- Location: FF_X1_Y24_N13
\FD|Reg3|output[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[93]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(93));

-- Location: LCCOMB_X1_Y24_N14
\FD|Reg3|output[94]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[94]~74_combout\ = (\FD|Reg2|output\(130) & (\FD|Reg3|output[93]~73\ $ (GND))) # (!\FD|Reg2|output\(130) & (!\FD|Reg3|output[93]~73\ & VCC))
-- \FD|Reg3|output[94]~75\ = CARRY((\FD|Reg2|output\(130) & !\FD|Reg3|output[93]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(130),
	datad => VCC,
	cin => \FD|Reg3|output[93]~73\,
	combout => \FD|Reg3|output[94]~74_combout\,
	cout => \FD|Reg3|output[94]~75\);

-- Location: FF_X1_Y24_N15
\FD|Reg3|output[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[94]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(94));

-- Location: LCCOMB_X1_Y24_N16
\FD|Reg3|output[95]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[95]~76_combout\ = (\FD|Reg2|output\(131) & (!\FD|Reg3|output[94]~75\)) # (!\FD|Reg2|output\(131) & ((\FD|Reg3|output[94]~75\) # (GND)))
-- \FD|Reg3|output[95]~77\ = CARRY((!\FD|Reg3|output[94]~75\) # (!\FD|Reg2|output\(131)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|Reg2|output\(131),
	datad => VCC,
	cin => \FD|Reg3|output[94]~75\,
	combout => \FD|Reg3|output[95]~76_combout\,
	cout => \FD|Reg3|output[95]~77\);

-- Location: FF_X1_Y24_N17
\FD|Reg3|output[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[95]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(95));

-- Location: LCCOMB_X1_Y24_N18
\FD|Reg3|output[96]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[96]~78_combout\ = (\FD|Reg2|output\(132) & (\FD|Reg3|output[95]~77\ $ (GND))) # (!\FD|Reg2|output\(132) & (!\FD|Reg3|output[95]~77\ & VCC))
-- \FD|Reg3|output[96]~79\ = CARRY((\FD|Reg2|output\(132) & !\FD|Reg3|output[95]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(132),
	datad => VCC,
	cin => \FD|Reg3|output[95]~77\,
	combout => \FD|Reg3|output[96]~78_combout\,
	cout => \FD|Reg3|output[96]~79\);

-- Location: FF_X1_Y24_N19
\FD|Reg3|output[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[96]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(96));

-- Location: LCCOMB_X1_Y24_N20
\FD|Reg3|output[97]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[97]~80_combout\ = (\FD|Reg2|output\(133) & (!\FD|Reg3|output[96]~79\)) # (!\FD|Reg2|output\(133) & ((\FD|Reg3|output[96]~79\) # (GND)))
-- \FD|Reg3|output[97]~81\ = CARRY((!\FD|Reg3|output[96]~79\) # (!\FD|Reg2|output\(133)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(133),
	datad => VCC,
	cin => \FD|Reg3|output[96]~79\,
	combout => \FD|Reg3|output[97]~80_combout\,
	cout => \FD|Reg3|output[97]~81\);

-- Location: FF_X1_Y24_N21
\FD|Reg3|output[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[97]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(97));

-- Location: LCCOMB_X1_Y24_N22
\FD|Reg3|output[98]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[98]~82_combout\ = (\FD|Reg2|output\(134) & (\FD|Reg3|output[97]~81\ $ (GND))) # (!\FD|Reg2|output\(134) & (!\FD|Reg3|output[97]~81\ & VCC))
-- \FD|Reg3|output[98]~83\ = CARRY((\FD|Reg2|output\(134) & !\FD|Reg3|output[97]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(134),
	datad => VCC,
	cin => \FD|Reg3|output[97]~81\,
	combout => \FD|Reg3|output[98]~82_combout\,
	cout => \FD|Reg3|output[98]~83\);

-- Location: FF_X1_Y24_N23
\FD|Reg3|output[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[98]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(98));

-- Location: LCCOMB_X1_Y24_N24
\FD|Reg3|output[99]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[99]~84_combout\ = (\FD|Reg2|output\(135) & (!\FD|Reg3|output[98]~83\)) # (!\FD|Reg2|output\(135) & ((\FD|Reg3|output[98]~83\) # (GND)))
-- \FD|Reg3|output[99]~85\ = CARRY((!\FD|Reg3|output[98]~83\) # (!\FD|Reg2|output\(135)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(135),
	datad => VCC,
	cin => \FD|Reg3|output[98]~83\,
	combout => \FD|Reg3|output[99]~84_combout\,
	cout => \FD|Reg3|output[99]~85\);

-- Location: FF_X1_Y24_N25
\FD|Reg3|output[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[99]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(99));

-- Location: LCCOMB_X1_Y24_N26
\FD|Reg3|output[100]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[100]~86_combout\ = (\FD|Reg2|output\(136) & (\FD|Reg3|output[99]~85\ $ (GND))) # (!\FD|Reg2|output\(136) & (!\FD|Reg3|output[99]~85\ & VCC))
-- \FD|Reg3|output[100]~87\ = CARRY((\FD|Reg2|output\(136) & !\FD|Reg3|output[99]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|Reg2|output\(136),
	datad => VCC,
	cin => \FD|Reg3|output[99]~85\,
	combout => \FD|Reg3|output[100]~86_combout\,
	cout => \FD|Reg3|output[100]~87\);

-- Location: FF_X1_Y24_N27
\FD|Reg3|output[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[100]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(100));

-- Location: LCCOMB_X1_Y24_N28
\FD|Reg3|output[101]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg3|output[101]~88_combout\ = \FD|Reg3|output[100]~87\ $ (\FD|Reg2|output\(137))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg2|output\(137),
	cin => \FD|Reg3|output[100]~87\,
	combout => \FD|Reg3|output[101]~88_combout\);

-- Location: FF_X1_Y24_N29
\FD|Reg3|output[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg3|output[101]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg3|output\(101));

-- Location: LCCOMB_X101_Y50_N4
\FD|Reg4|output[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[5]~feeder_combout\ = \FD|Reg3|output\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(37),
	combout => \FD|Reg4|output[5]~feeder_combout\);

-- Location: FF_X101_Y50_N5
\FD|Reg4|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(5));

-- Location: LCCOMB_X91_Y50_N0
\FD|Reg4|output[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[6]~feeder_combout\ = \FD|Reg3|output\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(38),
	combout => \FD|Reg4|output[6]~feeder_combout\);

-- Location: FF_X91_Y50_N1
\FD|Reg4|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(6));

-- Location: LCCOMB_X114_Y46_N24
\FD|Reg4|output[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[7]~feeder_combout\ = \FD|Reg3|output\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(39),
	combout => \FD|Reg4|output[7]~feeder_combout\);

-- Location: FF_X114_Y46_N25
\FD|Reg4|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(7));

-- Location: LCCOMB_X67_Y72_N0
\FD|Reg4|output[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[8]~feeder_combout\ = \FD|Reg3|output\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(40),
	combout => \FD|Reg4|output[8]~feeder_combout\);

-- Location: FF_X67_Y72_N1
\FD|Reg4|output[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(8));

-- Location: FF_X101_Y50_N7
\FD|Reg4|output[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg3|output\(41),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(9));

-- Location: LCCOMB_X114_Y37_N18
\FD|Reg4|output[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[10]~feeder_combout\ = \FD|Reg3|output\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(42),
	combout => \FD|Reg4|output[10]~feeder_combout\);

-- Location: FF_X114_Y37_N19
\FD|Reg4|output[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(10));

-- Location: LCCOMB_X110_Y72_N0
\FD|Reg4|output[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[11]~feeder_combout\ = \FD|Reg3|output\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(43),
	combout => \FD|Reg4|output[11]~feeder_combout\);

-- Location: FF_X110_Y72_N1
\FD|Reg4|output[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(11));

-- Location: LCCOMB_X114_Y54_N2
\FD|Reg4|output[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[12]~feeder_combout\ = \FD|Reg3|output\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(44),
	combout => \FD|Reg4|output[12]~feeder_combout\);

-- Location: FF_X114_Y54_N3
\FD|Reg4|output[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(12));

-- Location: LCCOMB_X114_Y67_N4
\FD|Reg4|output[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[13]~feeder_combout\ = \FD|Reg3|output\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(45),
	combout => \FD|Reg4|output[13]~feeder_combout\);

-- Location: FF_X114_Y67_N5
\FD|Reg4|output[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(13));

-- Location: LCCOMB_X114_Y37_N12
\FD|Reg4|output[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[14]~feeder_combout\ = \FD|Reg3|output\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(46),
	combout => \FD|Reg4|output[14]~feeder_combout\);

-- Location: FF_X114_Y37_N13
\FD|Reg4|output[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(14));

-- Location: LCCOMB_X114_Y37_N2
\FD|Reg4|output[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[15]~feeder_combout\ = \FD|Reg3|output\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(47),
	combout => \FD|Reg4|output[15]~feeder_combout\);

-- Location: FF_X114_Y37_N3
\FD|Reg4|output[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(15));

-- Location: LCCOMB_X108_Y72_N2
\FD|Reg4|output[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[16]~feeder_combout\ = \FD|Reg3|output\(48)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg3|output\(48),
	combout => \FD|Reg4|output[16]~feeder_combout\);

-- Location: FF_X108_Y72_N3
\FD|Reg4|output[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(16));

-- Location: LCCOMB_X114_Y37_N24
\FD|Reg4|output[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[17]~feeder_combout\ = \FD|Reg3|output\(49)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg3|output\(49),
	combout => \FD|Reg4|output[17]~feeder_combout\);

-- Location: FF_X114_Y37_N25
\FD|Reg4|output[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(17));

-- Location: LCCOMB_X114_Y37_N22
\FD|Reg4|output[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[18]~feeder_combout\ = \FD|Reg3|output\(50)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(50),
	combout => \FD|Reg4|output[18]~feeder_combout\);

-- Location: FF_X114_Y37_N23
\FD|Reg4|output[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(18));

-- Location: FF_X107_Y54_N9
\FD|Reg4|output[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg3|output\(51),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(19));

-- Location: LCCOMB_X89_Y46_N20
\FD|Reg4|output[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[20]~feeder_combout\ = \FD|Reg3|output\(52)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(52),
	combout => \FD|Reg4|output[20]~feeder_combout\);

-- Location: FF_X89_Y46_N21
\FD|Reg4|output[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(20));

-- Location: FF_X103_Y50_N27
\FD|Reg4|output[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg3|output\(53),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(21));

-- Location: LCCOMB_X88_Y72_N0
\FD|Reg4|output[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[22]~feeder_combout\ = \FD|Reg3|output\(54)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(54),
	combout => \FD|Reg4|output[22]~feeder_combout\);

-- Location: FF_X88_Y72_N1
\FD|Reg4|output[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(22));

-- Location: LCCOMB_X114_Y46_N18
\FD|Reg4|output[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[23]~feeder_combout\ = \FD|Reg3|output\(55)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(55),
	combout => \FD|Reg4|output[23]~feeder_combout\);

-- Location: FF_X114_Y46_N19
\FD|Reg4|output[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(23));

-- Location: LCCOMB_X114_Y50_N14
\FD|Reg4|output[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[24]~feeder_combout\ = \FD|Reg3|output\(56)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(56),
	combout => \FD|Reg4|output[24]~feeder_combout\);

-- Location: FF_X114_Y50_N15
\FD|Reg4|output[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(24));

-- Location: LCCOMB_X114_Y50_N0
\FD|Reg4|output[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[25]~feeder_combout\ = \FD|Reg3|output\(57)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(57),
	combout => \FD|Reg4|output[25]~feeder_combout\);

-- Location: FF_X114_Y50_N1
\FD|Reg4|output[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(25));

-- Location: FF_X108_Y50_N3
\FD|Reg4|output[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|Reg3|output\(58),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(26));

-- Location: LCCOMB_X112_Y72_N0
\FD|Reg4|output[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[27]~feeder_combout\ = \FD|Reg3|output\(59)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg3|output\(59),
	combout => \FD|Reg4|output[27]~feeder_combout\);

-- Location: FF_X112_Y72_N1
\FD|Reg4|output[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(27));

-- Location: LCCOMB_X114_Y72_N6
\FD|Reg4|output[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[28]~feeder_combout\ = \FD|Reg3|output\(60)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg3|output\(60),
	combout => \FD|Reg4|output[28]~feeder_combout\);

-- Location: FF_X114_Y72_N7
\FD|Reg4|output[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(28));

-- Location: LCCOMB_X63_Y72_N0
\FD|Reg4|output[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[29]~feeder_combout\ = \FD|Reg3|output\(61)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg3|output\(61),
	combout => \FD|Reg4|output[29]~feeder_combout\);

-- Location: FF_X63_Y72_N1
\FD|Reg4|output[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(29));

-- Location: LCCOMB_X114_Y46_N28
\FD|Reg4|output[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[30]~feeder_combout\ = \FD|Reg3|output\(62)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(62),
	combout => \FD|Reg4|output[30]~feeder_combout\);

-- Location: FF_X114_Y46_N29
\FD|Reg4|output[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(30));

-- Location: LCCOMB_X58_Y72_N0
\FD|Reg4|output[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[31]~feeder_combout\ = \FD|Reg3|output\(63)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg3|output\(63),
	combout => \FD|Reg4|output[31]~feeder_combout\);

-- Location: FF_X58_Y72_N1
\FD|Reg4|output[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(31));

-- Location: LCCOMB_X60_Y72_N0
\FD|Reg4|output[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[32]~feeder_combout\ = \FD|Reg3|output\(64)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(64),
	combout => \FD|Reg4|output[32]~feeder_combout\);

-- Location: FF_X60_Y72_N1
\FD|Reg4|output[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(32));

-- Location: LCCOMB_X58_Y72_N26
\FD|Reg4|output[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[33]~feeder_combout\ = \FD|Reg3|output\(65)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg3|output\(65),
	combout => \FD|Reg4|output[33]~feeder_combout\);

-- Location: FF_X58_Y72_N27
\FD|Reg4|output[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(33));

-- Location: LCCOMB_X59_Y72_N0
\FD|Reg4|output[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[34]~feeder_combout\ = \FD|Reg3|output\(66)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(66),
	combout => \FD|Reg4|output[34]~feeder_combout\);

-- Location: FF_X59_Y72_N1
\FD|Reg4|output[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(34));

-- Location: LCCOMB_X60_Y72_N22
\FD|Reg4|output[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[35]~feeder_combout\ = \FD|Reg3|output\(67)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|Reg3|output\(67),
	combout => \FD|Reg4|output[35]~feeder_combout\);

-- Location: FF_X60_Y72_N23
\FD|Reg4|output[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(35));

-- Location: LCCOMB_X59_Y72_N2
\FD|Reg4|output[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|Reg4|output[36]~feeder_combout\ = \FD|Reg3|output\(68)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|Reg3|output\(68),
	combout => \FD|Reg4|output[36]~feeder_combout\);

-- Location: FF_X59_Y72_N3
\FD|Reg4|output[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|Reg4|output[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|Reg4|output\(36));

ww_fio1(0) <= \fio1[0]~output_o\;

ww_fio1(1) <= \fio1[1]~output_o\;

ww_fio1(2) <= \fio1[2]~output_o\;

ww_fio1(3) <= \fio1[3]~output_o\;

ww_fio1(4) <= \fio1[4]~output_o\;

ww_fio1(5) <= \fio1[5]~output_o\;

ww_fio1(6) <= \fio1[6]~output_o\;

ww_fio1(7) <= \fio1[7]~output_o\;

ww_fio1(8) <= \fio1[8]~output_o\;

ww_fio1(9) <= \fio1[9]~output_o\;

ww_fio1(10) <= \fio1[10]~output_o\;

ww_fio1(11) <= \fio1[11]~output_o\;

ww_fio1(12) <= \fio1[12]~output_o\;

ww_fio1(13) <= \fio1[13]~output_o\;

ww_fio1(14) <= \fio1[14]~output_o\;

ww_fio1(15) <= \fio1[15]~output_o\;

ww_fio1(16) <= \fio1[16]~output_o\;

ww_fio1(17) <= \fio1[17]~output_o\;

ww_fio1(18) <= \fio1[18]~output_o\;

ww_fio1(19) <= \fio1[19]~output_o\;

ww_fio1(20) <= \fio1[20]~output_o\;

ww_fio1(21) <= \fio1[21]~output_o\;

ww_fio1(22) <= \fio1[22]~output_o\;

ww_fio1(23) <= \fio1[23]~output_o\;

ww_fio1(24) <= \fio1[24]~output_o\;

ww_fio1(25) <= \fio1[25]~output_o\;

ww_fio1(26) <= \fio1[26]~output_o\;

ww_fio1(27) <= \fio1[27]~output_o\;

ww_fio1(28) <= \fio1[28]~output_o\;

ww_fio1(29) <= \fio1[29]~output_o\;

ww_fio1(30) <= \fio1[30]~output_o\;

ww_fio1(31) <= \fio1[31]~output_o\;

ww_fio2(0) <= \fio2[0]~output_o\;

ww_fio2(1) <= \fio2[1]~output_o\;

ww_fio2(2) <= \fio2[2]~output_o\;

ww_fio2(3) <= \fio2[3]~output_o\;

ww_fio2(4) <= \fio2[4]~output_o\;

ww_fio2(5) <= \fio2[5]~output_o\;

ww_fio2(6) <= \fio2[6]~output_o\;

ww_fio2(7) <= \fio2[7]~output_o\;

ww_fio2(8) <= \fio2[8]~output_o\;

ww_fio2(9) <= \fio2[9]~output_o\;

ww_fio2(10) <= \fio2[10]~output_o\;

ww_fio2(11) <= \fio2[11]~output_o\;

ww_fio2(12) <= \fio2[12]~output_o\;

ww_fio2(13) <= \fio2[13]~output_o\;

ww_fio2(14) <= \fio2[14]~output_o\;

ww_fio2(15) <= \fio2[15]~output_o\;

ww_fio2(16) <= \fio2[16]~output_o\;

ww_fio2(17) <= \fio2[17]~output_o\;

ww_fio2(18) <= \fio2[18]~output_o\;

ww_fio2(19) <= \fio2[19]~output_o\;

ww_fio2(20) <= \fio2[20]~output_o\;

ww_fio2(21) <= \fio2[21]~output_o\;

ww_fio2(22) <= \fio2[22]~output_o\;

ww_fio2(23) <= \fio2[23]~output_o\;

ww_fio2(24) <= \fio2[24]~output_o\;

ww_fio2(25) <= \fio2[25]~output_o\;

ww_fio2(26) <= \fio2[26]~output_o\;

ww_fio2(27) <= \fio2[27]~output_o\;

ww_fio2(28) <= \fio2[28]~output_o\;

ww_fio2(29) <= \fio2[29]~output_o\;

ww_fio2(30) <= \fio2[30]~output_o\;

ww_fio2(31) <= \fio2[31]~output_o\;

ww_fio3(0) <= \fio3[0]~output_o\;

ww_fio3(1) <= \fio3[1]~output_o\;

ww_fio3(2) <= \fio3[2]~output_o\;

ww_fio3(3) <= \fio3[3]~output_o\;

ww_fio3(4) <= \fio3[4]~output_o\;

ww_fio3(5) <= \fio3[5]~output_o\;

ww_fio3(6) <= \fio3[6]~output_o\;

ww_fio3(7) <= \fio3[7]~output_o\;

ww_fio3(8) <= \fio3[8]~output_o\;

ww_fio3(9) <= \fio3[9]~output_o\;

ww_fio3(10) <= \fio3[10]~output_o\;

ww_fio3(11) <= \fio3[11]~output_o\;

ww_fio3(12) <= \fio3[12]~output_o\;

ww_fio3(13) <= \fio3[13]~output_o\;

ww_fio3(14) <= \fio3[14]~output_o\;

ww_fio3(15) <= \fio3[15]~output_o\;

ww_fio3(16) <= \fio3[16]~output_o\;

ww_fio3(17) <= \fio3[17]~output_o\;

ww_fio3(18) <= \fio3[18]~output_o\;

ww_fio3(19) <= \fio3[19]~output_o\;

ww_fio3(20) <= \fio3[20]~output_o\;

ww_fio3(21) <= \fio3[21]~output_o\;

ww_fio3(22) <= \fio3[22]~output_o\;

ww_fio3(23) <= \fio3[23]~output_o\;

ww_fio3(24) <= \fio3[24]~output_o\;

ww_fio3(25) <= \fio3[25]~output_o\;

ww_fio3(26) <= \fio3[26]~output_o\;

ww_fio3(27) <= \fio3[27]~output_o\;

ww_fio3(28) <= \fio3[28]~output_o\;

ww_fio3(29) <= \fio3[29]~output_o\;

ww_fio3(30) <= \fio3[30]~output_o\;

ww_fio3(31) <= \fio3[31]~output_o\;

ww_fio4(0) <= \fio4[0]~output_o\;

ww_fio4(1) <= \fio4[1]~output_o\;

ww_fio4(2) <= \fio4[2]~output_o\;

ww_fio4(3) <= \fio4[3]~output_o\;

ww_fio5 <= \fio5~output_o\;

ww_fio6(0) <= \fio6[0]~output_o\;

ww_fio6(1) <= \fio6[1]~output_o\;

ww_fio7(0) <= \fio7[0]~output_o\;

ww_fio7(1) <= \fio7[1]~output_o\;

ww_fio7(2) <= \fio7[2]~output_o\;

ww_fio7(3) <= \fio7[3]~output_o\;

ww_fio7(4) <= \fio7[4]~output_o\;

ww_fio8(0) <= \fio8[0]~output_o\;

ww_fio8(1) <= \fio8[1]~output_o\;

ww_fio8(2) <= \fio8[2]~output_o\;

ww_fio8(3) <= \fio8[3]~output_o\;

ww_fio8(4) <= \fio8[4]~output_o\;

ww_fio8(5) <= \fio8[5]~output_o\;

ww_fio8(6) <= \fio8[6]~output_o\;

ww_fio8(7) <= \fio8[7]~output_o\;

ww_fio8(8) <= \fio8[8]~output_o\;

ww_fio8(9) <= \fio8[9]~output_o\;

ww_fio8(10) <= \fio8[10]~output_o\;

ww_fio8(11) <= \fio8[11]~output_o\;

ww_fio8(12) <= \fio8[12]~output_o\;

ww_fio8(13) <= \fio8[13]~output_o\;

ww_fio8(14) <= \fio8[14]~output_o\;

ww_fio8(15) <= \fio8[15]~output_o\;

ww_fio8(16) <= \fio8[16]~output_o\;

ww_fio8(17) <= \fio8[17]~output_o\;

ww_fio8(18) <= \fio8[18]~output_o\;

ww_fio8(19) <= \fio8[19]~output_o\;

ww_fio8(20) <= \fio8[20]~output_o\;

ww_fio8(21) <= \fio8[21]~output_o\;

ww_fio8(22) <= \fio8[22]~output_o\;

ww_fio8(23) <= \fio8[23]~output_o\;

ww_fio8(24) <= \fio8[24]~output_o\;

ww_fio8(25) <= \fio8[25]~output_o\;

ww_fio8(26) <= \fio8[26]~output_o\;

ww_fio8(27) <= \fio8[27]~output_o\;

ww_fio8(28) <= \fio8[28]~output_o\;

ww_fio8(29) <= \fio8[29]~output_o\;

ww_fio8(30) <= \fio8[30]~output_o\;

ww_fio8(31) <= \fio8[31]~output_o\;

ww_fio8(32) <= \fio8[32]~output_o\;

ww_fio8(33) <= \fio8[33]~output_o\;

ww_fio8(34) <= \fio8[34]~output_o\;

ww_fio8(35) <= \fio8[35]~output_o\;

ww_fio8(36) <= \fio8[36]~output_o\;

ww_fio8(37) <= \fio8[37]~output_o\;

ww_fio8(38) <= \fio8[38]~output_o\;

ww_fio8(39) <= \fio8[39]~output_o\;

ww_fio8(40) <= \fio8[40]~output_o\;

ww_fio8(41) <= \fio8[41]~output_o\;

ww_fio8(42) <= \fio8[42]~output_o\;

ww_fio8(43) <= \fio8[43]~output_o\;

ww_fio8(44) <= \fio8[44]~output_o\;

ww_fio8(45) <= \fio8[45]~output_o\;

ww_fio8(46) <= \fio8[46]~output_o\;

ww_fio8(47) <= \fio8[47]~output_o\;

ww_fio8(48) <= \fio8[48]~output_o\;

ww_fio8(49) <= \fio8[49]~output_o\;

ww_fio8(50) <= \fio8[50]~output_o\;

ww_fio8(51) <= \fio8[51]~output_o\;

ww_fio8(52) <= \fio8[52]~output_o\;

ww_fio8(53) <= \fio8[53]~output_o\;

ww_fio8(54) <= \fio8[54]~output_o\;

ww_fio8(55) <= \fio8[55]~output_o\;

ww_fio8(56) <= \fio8[56]~output_o\;

ww_fio8(57) <= \fio8[57]~output_o\;

ww_fio8(58) <= \fio8[58]~output_o\;

ww_fio8(59) <= \fio8[59]~output_o\;

ww_fio8(60) <= \fio8[60]~output_o\;

ww_fio8(61) <= \fio8[61]~output_o\;

ww_fio8(62) <= \fio8[62]~output_o\;

ww_fio8(63) <= \fio8[63]~output_o\;

ww_fio9(0) <= \fio9[0]~output_o\;

ww_fio9(1) <= \fio9[1]~output_o\;

ww_fio9(2) <= \fio9[2]~output_o\;

ww_fio9(3) <= \fio9[3]~output_o\;

ww_fio9(4) <= \fio9[4]~output_o\;

ww_fio9(5) <= \fio9[5]~output_o\;

ww_fio9(6) <= \fio9[6]~output_o\;

ww_fio9(7) <= \fio9[7]~output_o\;

ww_fio9(8) <= \fio9[8]~output_o\;

ww_fio9(9) <= \fio9[9]~output_o\;

ww_fio9(10) <= \fio9[10]~output_o\;

ww_fio9(11) <= \fio9[11]~output_o\;

ww_fio9(12) <= \fio9[12]~output_o\;

ww_fio9(13) <= \fio9[13]~output_o\;

ww_fio9(14) <= \fio9[14]~output_o\;

ww_fio9(15) <= \fio9[15]~output_o\;

ww_fio9(16) <= \fio9[16]~output_o\;

ww_fio9(17) <= \fio9[17]~output_o\;

ww_fio9(18) <= \fio9[18]~output_o\;

ww_fio9(19) <= \fio9[19]~output_o\;

ww_fio9(20) <= \fio9[20]~output_o\;

ww_fio9(21) <= \fio9[21]~output_o\;

ww_fio9(22) <= \fio9[22]~output_o\;

ww_fio9(23) <= \fio9[23]~output_o\;

ww_fio9(24) <= \fio9[24]~output_o\;

ww_fio9(25) <= \fio9[25]~output_o\;

ww_fio9(26) <= \fio9[26]~output_o\;

ww_fio9(27) <= \fio9[27]~output_o\;

ww_fio9(28) <= \fio9[28]~output_o\;

ww_fio9(29) <= \fio9[29]~output_o\;

ww_fio9(30) <= \fio9[30]~output_o\;

ww_fio9(31) <= \fio9[31]~output_o\;

ww_fio9(32) <= \fio9[32]~output_o\;

ww_fio9(33) <= \fio9[33]~output_o\;

ww_fio9(34) <= \fio9[34]~output_o\;

ww_fio9(35) <= \fio9[35]~output_o\;

ww_fio9(36) <= \fio9[36]~output_o\;

ww_fio9(37) <= \fio9[37]~output_o\;

ww_fio9(38) <= \fio9[38]~output_o\;

ww_fio9(39) <= \fio9[39]~output_o\;

ww_fio9(40) <= \fio9[40]~output_o\;

ww_fio9(41) <= \fio9[41]~output_o\;

ww_fio9(42) <= \fio9[42]~output_o\;

ww_fio9(43) <= \fio9[43]~output_o\;

ww_fio9(44) <= \fio9[44]~output_o\;

ww_fio9(45) <= \fio9[45]~output_o\;

ww_fio9(46) <= \fio9[46]~output_o\;

ww_fio9(47) <= \fio9[47]~output_o\;

ww_fio9(48) <= \fio9[48]~output_o\;

ww_fio9(49) <= \fio9[49]~output_o\;

ww_fio9(50) <= \fio9[50]~output_o\;

ww_fio9(51) <= \fio9[51]~output_o\;

ww_fio9(52) <= \fio9[52]~output_o\;

ww_fio9(53) <= \fio9[53]~output_o\;

ww_fio9(54) <= \fio9[54]~output_o\;

ww_fio9(55) <= \fio9[55]~output_o\;

ww_fio9(56) <= \fio9[56]~output_o\;

ww_fio9(57) <= \fio9[57]~output_o\;

ww_fio9(58) <= \fio9[58]~output_o\;

ww_fio9(59) <= \fio9[59]~output_o\;

ww_fio9(60) <= \fio9[60]~output_o\;

ww_fio9(61) <= \fio9[61]~output_o\;

ww_fio9(62) <= \fio9[62]~output_o\;

ww_fio9(63) <= \fio9[63]~output_o\;

ww_fio9(64) <= \fio9[64]~output_o\;

ww_fio9(65) <= \fio9[65]~output_o\;

ww_fio9(66) <= \fio9[66]~output_o\;

ww_fio9(67) <= \fio9[67]~output_o\;

ww_fio9(68) <= \fio9[68]~output_o\;

ww_fio9(69) <= \fio9[69]~output_o\;

ww_fio9(70) <= \fio9[70]~output_o\;

ww_fio9(71) <= \fio9[71]~output_o\;

ww_fio9(72) <= \fio9[72]~output_o\;

ww_fio9(73) <= \fio9[73]~output_o\;

ww_fio9(74) <= \fio9[74]~output_o\;

ww_fio9(75) <= \fio9[75]~output_o\;

ww_fio9(76) <= \fio9[76]~output_o\;

ww_fio9(77) <= \fio9[77]~output_o\;

ww_fio9(78) <= \fio9[78]~output_o\;

ww_fio9(79) <= \fio9[79]~output_o\;

ww_fio9(80) <= \fio9[80]~output_o\;

ww_fio9(81) <= \fio9[81]~output_o\;

ww_fio9(82) <= \fio9[82]~output_o\;

ww_fio9(83) <= \fio9[83]~output_o\;

ww_fio9(84) <= \fio9[84]~output_o\;

ww_fio9(85) <= \fio9[85]~output_o\;

ww_fio9(86) <= \fio9[86]~output_o\;

ww_fio9(87) <= \fio9[87]~output_o\;

ww_fio9(88) <= \fio9[88]~output_o\;

ww_fio9(89) <= \fio9[89]~output_o\;

ww_fio9(90) <= \fio9[90]~output_o\;

ww_fio9(91) <= \fio9[91]~output_o\;

ww_fio9(92) <= \fio9[92]~output_o\;

ww_fio9(93) <= \fio9[93]~output_o\;

ww_fio9(94) <= \fio9[94]~output_o\;

ww_fio9(95) <= \fio9[95]~output_o\;

ww_fio9(96) <= \fio9[96]~output_o\;

ww_fio9(97) <= \fio9[97]~output_o\;

ww_fio9(98) <= \fio9[98]~output_o\;

ww_fio9(99) <= \fio9[99]~output_o\;

ww_fio9(100) <= \fio9[100]~output_o\;

ww_fio9(101) <= \fio9[101]~output_o\;

ww_fio9(102) <= \fio9[102]~output_o\;

ww_fio9(103) <= \fio9[103]~output_o\;

ww_fio9(104) <= \fio9[104]~output_o\;

ww_fio9(105) <= \fio9[105]~output_o\;

ww_fio9(106) <= \fio9[106]~output_o\;

ww_fio9(107) <= \fio9[107]~output_o\;

ww_fio9(108) <= \fio9[108]~output_o\;

ww_fio9(109) <= \fio9[109]~output_o\;

ww_fio9(110) <= \fio9[110]~output_o\;

ww_fio9(111) <= \fio9[111]~output_o\;

ww_fio9(112) <= \fio9[112]~output_o\;

ww_fio9(113) <= \fio9[113]~output_o\;

ww_fio9(114) <= \fio9[114]~output_o\;

ww_fio9(115) <= \fio9[115]~output_o\;

ww_fio9(116) <= \fio9[116]~output_o\;

ww_fio9(117) <= \fio9[117]~output_o\;

ww_fio9(118) <= \fio9[118]~output_o\;

ww_fio9(119) <= \fio9[119]~output_o\;

ww_fio9(120) <= \fio9[120]~output_o\;

ww_fio9(121) <= \fio9[121]~output_o\;

ww_fio9(122) <= \fio9[122]~output_o\;

ww_fio9(123) <= \fio9[123]~output_o\;

ww_fio9(124) <= \fio9[124]~output_o\;

ww_fio9(125) <= \fio9[125]~output_o\;

ww_fio9(126) <= \fio9[126]~output_o\;

ww_fio9(127) <= \fio9[127]~output_o\;

ww_fio9(128) <= \fio9[128]~output_o\;

ww_fio9(129) <= \fio9[129]~output_o\;

ww_fio9(130) <= \fio9[130]~output_o\;

ww_fio9(131) <= \fio9[131]~output_o\;

ww_fio9(132) <= \fio9[132]~output_o\;

ww_fio9(133) <= \fio9[133]~output_o\;

ww_fio9(134) <= \fio9[134]~output_o\;

ww_fio9(135) <= \fio9[135]~output_o\;

ww_fio9(136) <= \fio9[136]~output_o\;

ww_fio9(137) <= \fio9[137]~output_o\;

ww_fio9(138) <= \fio9[138]~output_o\;

ww_fio9(139) <= \fio9[139]~output_o\;

ww_fio9(140) <= \fio9[140]~output_o\;

ww_fio9(141) <= \fio9[141]~output_o\;

ww_fio9(142) <= \fio9[142]~output_o\;

ww_fio9(143) <= \fio9[143]~output_o\;

ww_fio9(144) <= \fio9[144]~output_o\;

ww_fio9(145) <= \fio9[145]~output_o\;

ww_fio9(146) <= \fio9[146]~output_o\;

ww_fio10(0) <= \fio10[0]~output_o\;

ww_fio10(1) <= \fio10[1]~output_o\;

ww_fio10(2) <= \fio10[2]~output_o\;

ww_fio10(3) <= \fio10[3]~output_o\;

ww_fio10(4) <= \fio10[4]~output_o\;

ww_fio10(5) <= \fio10[5]~output_o\;

ww_fio10(6) <= \fio10[6]~output_o\;

ww_fio10(7) <= \fio10[7]~output_o\;

ww_fio10(8) <= \fio10[8]~output_o\;

ww_fio10(9) <= \fio10[9]~output_o\;

ww_fio10(10) <= \fio10[10]~output_o\;

ww_fio10(11) <= \fio10[11]~output_o\;

ww_fio10(12) <= \fio10[12]~output_o\;

ww_fio10(13) <= \fio10[13]~output_o\;

ww_fio10(14) <= \fio10[14]~output_o\;

ww_fio10(15) <= \fio10[15]~output_o\;

ww_fio10(16) <= \fio10[16]~output_o\;

ww_fio10(17) <= \fio10[17]~output_o\;

ww_fio10(18) <= \fio10[18]~output_o\;

ww_fio10(19) <= \fio10[19]~output_o\;

ww_fio10(20) <= \fio10[20]~output_o\;

ww_fio10(21) <= \fio10[21]~output_o\;

ww_fio10(22) <= \fio10[22]~output_o\;

ww_fio10(23) <= \fio10[23]~output_o\;

ww_fio10(24) <= \fio10[24]~output_o\;

ww_fio10(25) <= \fio10[25]~output_o\;

ww_fio10(26) <= \fio10[26]~output_o\;

ww_fio10(27) <= \fio10[27]~output_o\;

ww_fio10(28) <= \fio10[28]~output_o\;

ww_fio10(29) <= \fio10[29]~output_o\;

ww_fio10(30) <= \fio10[30]~output_o\;

ww_fio10(31) <= \fio10[31]~output_o\;

ww_fio10(32) <= \fio10[32]~output_o\;

ww_fio10(33) <= \fio10[33]~output_o\;

ww_fio10(34) <= \fio10[34]~output_o\;

ww_fio10(35) <= \fio10[35]~output_o\;

ww_fio10(36) <= \fio10[36]~output_o\;

ww_fio10(37) <= \fio10[37]~output_o\;

ww_fio10(38) <= \fio10[38]~output_o\;

ww_fio10(39) <= \fio10[39]~output_o\;

ww_fio10(40) <= \fio10[40]~output_o\;

ww_fio10(41) <= \fio10[41]~output_o\;

ww_fio10(42) <= \fio10[42]~output_o\;

ww_fio10(43) <= \fio10[43]~output_o\;

ww_fio10(44) <= \fio10[44]~output_o\;

ww_fio10(45) <= \fio10[45]~output_o\;

ww_fio10(46) <= \fio10[46]~output_o\;

ww_fio10(47) <= \fio10[47]~output_o\;

ww_fio10(48) <= \fio10[48]~output_o\;

ww_fio10(49) <= \fio10[49]~output_o\;

ww_fio10(50) <= \fio10[50]~output_o\;

ww_fio10(51) <= \fio10[51]~output_o\;

ww_fio10(52) <= \fio10[52]~output_o\;

ww_fio10(53) <= \fio10[53]~output_o\;

ww_fio10(54) <= \fio10[54]~output_o\;

ww_fio10(55) <= \fio10[55]~output_o\;

ww_fio10(56) <= \fio10[56]~output_o\;

ww_fio10(57) <= \fio10[57]~output_o\;

ww_fio10(58) <= \fio10[58]~output_o\;

ww_fio10(59) <= \fio10[59]~output_o\;

ww_fio10(60) <= \fio10[60]~output_o\;

ww_fio10(61) <= \fio10[61]~output_o\;

ww_fio10(62) <= \fio10[62]~output_o\;

ww_fio10(63) <= \fio10[63]~output_o\;

ww_fio10(64) <= \fio10[64]~output_o\;

ww_fio10(65) <= \fio10[65]~output_o\;

ww_fio10(66) <= \fio10[66]~output_o\;

ww_fio10(67) <= \fio10[67]~output_o\;

ww_fio10(68) <= \fio10[68]~output_o\;

ww_fio10(69) <= \fio10[69]~output_o\;

ww_fio10(70) <= \fio10[70]~output_o\;

ww_fio10(71) <= \fio10[71]~output_o\;

ww_fio10(72) <= \fio10[72]~output_o\;

ww_fio10(73) <= \fio10[73]~output_o\;

ww_fio10(74) <= \fio10[74]~output_o\;

ww_fio10(75) <= \fio10[75]~output_o\;

ww_fio10(76) <= \fio10[76]~output_o\;

ww_fio10(77) <= \fio10[77]~output_o\;

ww_fio10(78) <= \fio10[78]~output_o\;

ww_fio10(79) <= \fio10[79]~output_o\;

ww_fio10(80) <= \fio10[80]~output_o\;

ww_fio10(81) <= \fio10[81]~output_o\;

ww_fio10(82) <= \fio10[82]~output_o\;

ww_fio10(83) <= \fio10[83]~output_o\;

ww_fio10(84) <= \fio10[84]~output_o\;

ww_fio10(85) <= \fio10[85]~output_o\;

ww_fio10(86) <= \fio10[86]~output_o\;

ww_fio10(87) <= \fio10[87]~output_o\;

ww_fio10(88) <= \fio10[88]~output_o\;

ww_fio10(89) <= \fio10[89]~output_o\;

ww_fio10(90) <= \fio10[90]~output_o\;

ww_fio10(91) <= \fio10[91]~output_o\;

ww_fio10(92) <= \fio10[92]~output_o\;

ww_fio10(93) <= \fio10[93]~output_o\;

ww_fio10(94) <= \fio10[94]~output_o\;

ww_fio10(95) <= \fio10[95]~output_o\;

ww_fio10(96) <= \fio10[96]~output_o\;

ww_fio10(97) <= \fio10[97]~output_o\;

ww_fio10(98) <= \fio10[98]~output_o\;

ww_fio10(99) <= \fio10[99]~output_o\;

ww_fio10(100) <= \fio10[100]~output_o\;

ww_fio10(101) <= \fio10[101]~output_o\;

ww_fio10(102) <= \fio10[102]~output_o\;

ww_fio10(103) <= \fio10[103]~output_o\;

ww_fio10(104) <= \fio10[104]~output_o\;

ww_fio10(105) <= \fio10[105]~output_o\;

ww_fio10(106) <= \fio10[106]~output_o\;

ww_fio11(0) <= \fio11[0]~output_o\;

ww_fio11(1) <= \fio11[1]~output_o\;

ww_fio11(2) <= \fio11[2]~output_o\;

ww_fio11(3) <= \fio11[3]~output_o\;

ww_fio11(4) <= \fio11[4]~output_o\;

ww_fio11(5) <= \fio11[5]~output_o\;

ww_fio11(6) <= \fio11[6]~output_o\;

ww_fio11(7) <= \fio11[7]~output_o\;

ww_fio11(8) <= \fio11[8]~output_o\;

ww_fio11(9) <= \fio11[9]~output_o\;

ww_fio11(10) <= \fio11[10]~output_o\;

ww_fio11(11) <= \fio11[11]~output_o\;

ww_fio11(12) <= \fio11[12]~output_o\;

ww_fio11(13) <= \fio11[13]~output_o\;

ww_fio11(14) <= \fio11[14]~output_o\;

ww_fio11(15) <= \fio11[15]~output_o\;

ww_fio11(16) <= \fio11[16]~output_o\;

ww_fio11(17) <= \fio11[17]~output_o\;

ww_fio11(18) <= \fio11[18]~output_o\;

ww_fio11(19) <= \fio11[19]~output_o\;

ww_fio11(20) <= \fio11[20]~output_o\;

ww_fio11(21) <= \fio11[21]~output_o\;

ww_fio11(22) <= \fio11[22]~output_o\;

ww_fio11(23) <= \fio11[23]~output_o\;

ww_fio11(24) <= \fio11[24]~output_o\;

ww_fio11(25) <= \fio11[25]~output_o\;

ww_fio11(26) <= \fio11[26]~output_o\;

ww_fio11(27) <= \fio11[27]~output_o\;

ww_fio11(28) <= \fio11[28]~output_o\;

ww_fio11(29) <= \fio11[29]~output_o\;

ww_fio11(30) <= \fio11[30]~output_o\;

ww_fio11(31) <= \fio11[31]~output_o\;

ww_fio11(32) <= \fio11[32]~output_o\;

ww_fio11(33) <= \fio11[33]~output_o\;

ww_fio11(34) <= \fio11[34]~output_o\;

ww_fio11(35) <= \fio11[35]~output_o\;

ww_fio11(36) <= \fio11[36]~output_o\;

ww_fio11(37) <= \fio11[37]~output_o\;

ww_fio11(38) <= \fio11[38]~output_o\;

ww_fio11(39) <= \fio11[39]~output_o\;

ww_fio11(40) <= \fio11[40]~output_o\;

ww_fio11(41) <= \fio11[41]~output_o\;

ww_fio11(42) <= \fio11[42]~output_o\;

ww_fio11(43) <= \fio11[43]~output_o\;

ww_fio11(44) <= \fio11[44]~output_o\;

ww_fio11(45) <= \fio11[45]~output_o\;

ww_fio11(46) <= \fio11[46]~output_o\;

ww_fio11(47) <= \fio11[47]~output_o\;

ww_fio11(48) <= \fio11[48]~output_o\;

ww_fio11(49) <= \fio11[49]~output_o\;

ww_fio11(50) <= \fio11[50]~output_o\;

ww_fio11(51) <= \fio11[51]~output_o\;

ww_fio11(52) <= \fio11[52]~output_o\;

ww_fio11(53) <= \fio11[53]~output_o\;

ww_fio11(54) <= \fio11[54]~output_o\;

ww_fio11(55) <= \fio11[55]~output_o\;

ww_fio11(56) <= \fio11[56]~output_o\;

ww_fio11(57) <= \fio11[57]~output_o\;

ww_fio11(58) <= \fio11[58]~output_o\;

ww_fio11(59) <= \fio11[59]~output_o\;

ww_fio11(60) <= \fio11[60]~output_o\;

ww_fio11(61) <= \fio11[61]~output_o\;

ww_fio11(62) <= \fio11[62]~output_o\;

ww_fio11(63) <= \fio11[63]~output_o\;

ww_fio11(64) <= \fio11[64]~output_o\;

ww_fio11(65) <= \fio11[65]~output_o\;

ww_fio11(66) <= \fio11[66]~output_o\;

ww_fio11(67) <= \fio11[67]~output_o\;

ww_fio11(68) <= \fio11[68]~output_o\;

ww_fio11(69) <= \fio11[69]~output_o\;

ww_fio11(70) <= \fio11[70]~output_o\;
END structure;


