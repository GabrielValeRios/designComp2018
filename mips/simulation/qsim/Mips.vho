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

-- DATE "11/01/2018 17:44:46"

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
	fio6 : OUT std_logic_vector(1 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- fio1[0]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[4]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[6]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[8]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[9]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[10]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[11]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[12]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[13]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[14]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[15]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[16]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[17]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[18]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[19]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[20]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[21]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[22]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[23]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[24]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[25]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[26]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[27]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[28]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[29]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[30]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[31]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[5]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[6]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[8]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[9]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[10]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[11]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[12]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[13]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[15]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[16]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[17]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[18]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[19]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[20]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[21]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[22]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[23]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[24]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[25]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[26]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[27]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[28]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[29]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[30]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[31]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[7]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[8]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[9]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[10]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[11]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[12]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[13]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[14]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[15]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[16]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[17]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[18]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[19]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[20]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[21]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[22]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[23]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[24]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[25]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[26]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[27]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[28]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[29]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[30]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[31]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[0]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[1]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[3]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio5	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio6[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio6[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \FD|PCAdder|Add0~0_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~1\ : std_logic;
SIGNAL \FD|PCAdder|Add0~2_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~3\ : std_logic;
SIGNAL \FD|PCAdder|Add0~5\ : std_logic;
SIGNAL \FD|PCAdder|Add0~6_combout\ : std_logic;
SIGNAL \FD|MI|Mux30~0_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[5]~1_combout\ : std_logic;
SIGNAL \FD|MI|Mux4~0_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~4_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[4]~0_combout\ : std_logic;
SIGNAL \FD|UCALU|instr[1]~37_combout\ : std_logic;
SIGNAL \FD|UCALU|instr[3]~38_combout\ : std_logic;
SIGNAL \FD|MI|Mux26~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~1094_combout\ : std_logic;
SIGNAL \FD|MI|Mux4~1_combout\ : std_logic;
SIGNAL \FD|BR|registers~38_q\ : std_logic;
SIGNAL \FD|UCALU|comb~20_combout\ : std_logic;
SIGNAL \FD|UCALU|comb~21_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux31~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~39_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux30~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux30~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~40_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux29~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux29~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~41_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux28~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux28~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~42_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux27~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux27~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~43_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux26~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux26~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~44_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux25~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux25~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~45_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux24~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux24~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~46_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux23~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux23~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~47_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux22~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux22~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~48_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux21~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux21~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~49_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux20~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux20~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~50_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux19~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux19~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~51_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux18~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux18~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~52_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux17~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux17~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~53_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux16~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux16~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~54_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux15~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux15~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~55_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux14~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux14~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~56_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux13~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux13~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~57_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux12~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux12~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~58_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux11~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux11~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~59_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux10~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux10~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~60_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux9~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux9~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~61_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux8~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux8~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~62_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux7~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux7~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~63_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux6~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux6~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~64_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux5~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux5~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~65_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux4~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux4~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~66_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux3~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux3~3_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~67_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux2~2_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux2~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~68_q\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux1~2_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder30|soma~combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux1~3_combout\ : std_logic;
SIGNAL \FD|BR|registers~69_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder30|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux0~0_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|Mux0~1_combout\ : std_logic;
SIGNAL \FD|BR|registers~1062_combout\ : std_logic;
SIGNAL \FD|BR|registers~1063_combout\ : std_logic;
SIGNAL \FD|BR|registers~1064_combout\ : std_logic;
SIGNAL \FD|BR|registers~1065_combout\ : std_logic;
SIGNAL \FD|BR|registers~1066_combout\ : std_logic;
SIGNAL \FD|BR|registers~1067_combout\ : std_logic;
SIGNAL \FD|BR|registers~1068_combout\ : std_logic;
SIGNAL \FD|BR|registers~1069_combout\ : std_logic;
SIGNAL \FD|BR|registers~1070_combout\ : std_logic;
SIGNAL \FD|BR|registers~1071_combout\ : std_logic;
SIGNAL \FD|BR|registers~1072_combout\ : std_logic;
SIGNAL \FD|BR|registers~1073_combout\ : std_logic;
SIGNAL \FD|BR|registers~1074_combout\ : std_logic;
SIGNAL \FD|BR|registers~1075_combout\ : std_logic;
SIGNAL \FD|BR|registers~1076_combout\ : std_logic;
SIGNAL \FD|BR|registers~1077_combout\ : std_logic;
SIGNAL \FD|BR|registers~1078_combout\ : std_logic;
SIGNAL \FD|BR|registers~1079_combout\ : std_logic;
SIGNAL \FD|BR|registers~1080_combout\ : std_logic;
SIGNAL \FD|BR|registers~1081_combout\ : std_logic;
SIGNAL \FD|BR|registers~1082_combout\ : std_logic;
SIGNAL \FD|BR|registers~1083_combout\ : std_logic;
SIGNAL \FD|BR|registers~1084_combout\ : std_logic;
SIGNAL \FD|BR|registers~1085_combout\ : std_logic;
SIGNAL \FD|BR|registers~1086_combout\ : std_logic;
SIGNAL \FD|BR|registers~1087_combout\ : std_logic;
SIGNAL \FD|BR|registers~1088_combout\ : std_logic;
SIGNAL \FD|BR|registers~1089_combout\ : std_logic;
SIGNAL \FD|BR|registers~1090_combout\ : std_logic;
SIGNAL \FD|BR|registers~1091_combout\ : std_logic;
SIGNAL \FD|BR|registers~1092_combout\ : std_logic;
SIGNAL \FD|BR|registers~1093_combout\ : std_logic;
SIGNAL \FD|ALU|MuxAlu|result~0_combout\ : std_logic;
SIGNAL \FD|PC|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|UCALU|instr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|ALU|MuxAlu|ALT_INV_result~0_combout\ : std_logic;
SIGNAL \FD|MI|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \FD|BR|ALT_INV_registers~1062_combout\ : std_logic;
SIGNAL \FD|BR|ALT_INV_registers~38_q\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\FD|ALU|MuxAlu|ALT_INV_result~0_combout\ <= NOT \FD|ALU|MuxAlu|result~0_combout\;
\FD|MI|ALT_INV_Mux4~0_combout\ <= NOT \FD|MI|Mux4~0_combout\;
\FD|BR|ALT_INV_registers~1062_combout\ <= NOT \FD|BR|registers~1062_combout\;
\FD|BR|ALT_INV_registers~38_q\ <= NOT \FD|BR|registers~38_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y53_N9
\fio1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux31~0_combout\,
	devoe => ww_devoe,
	o => \fio1[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\fio1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux30~3_combout\,
	devoe => ww_devoe,
	o => \fio1[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\fio1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \fio1[2]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\fio1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux28~3_combout\,
	devoe => ww_devoe,
	o => \fio1[3]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\fio1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux27~3_combout\,
	devoe => ww_devoe,
	o => \fio1[4]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\fio1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux26~3_combout\,
	devoe => ww_devoe,
	o => \fio1[5]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\fio1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux25~3_combout\,
	devoe => ww_devoe,
	o => \fio1[6]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\fio1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux24~3_combout\,
	devoe => ww_devoe,
	o => \fio1[7]~output_o\);

-- Location: IOOBUF_X0_Y62_N16
\fio1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux23~3_combout\,
	devoe => ww_devoe,
	o => \fio1[8]~output_o\);

-- Location: IOOBUF_X0_Y65_N16
\fio1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux22~3_combout\,
	devoe => ww_devoe,
	o => \fio1[9]~output_o\);

-- Location: IOOBUF_X0_Y57_N23
\fio1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux21~3_combout\,
	devoe => ww_devoe,
	o => \fio1[10]~output_o\);

-- Location: IOOBUF_X0_Y57_N16
\fio1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux20~3_combout\,
	devoe => ww_devoe,
	o => \fio1[11]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\fio1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux19~3_combout\,
	devoe => ww_devoe,
	o => \fio1[12]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\fio1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux18~3_combout\,
	devoe => ww_devoe,
	o => \fio1[13]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\fio1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux17~3_combout\,
	devoe => ww_devoe,
	o => \fio1[14]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\fio1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \fio1[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\fio1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux15~3_combout\,
	devoe => ww_devoe,
	o => \fio1[16]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\fio1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux14~3_combout\,
	devoe => ww_devoe,
	o => \fio1[17]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\fio1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux13~3_combout\,
	devoe => ww_devoe,
	o => \fio1[18]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\fio1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \fio1[19]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\fio1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \fio1[20]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\fio1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux10~3_combout\,
	devoe => ww_devoe,
	o => \fio1[21]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\fio1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux9~3_combout\,
	devoe => ww_devoe,
	o => \fio1[22]~output_o\);

-- Location: IOOBUF_X1_Y73_N2
\fio1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux8~3_combout\,
	devoe => ww_devoe,
	o => \fio1[23]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\fio1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \fio1[24]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\fio1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \fio1[25]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\fio1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \fio1[26]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\fio1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \fio1[27]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\fio1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \fio1[28]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\fio1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \fio1[29]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\fio1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \fio1[30]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\fio1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \fio1[31]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\fio2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|ALT_INV_registers~38_q\,
	devoe => ww_devoe,
	o => \fio2[0]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\fio2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~39_q\,
	devoe => ww_devoe,
	o => \fio2[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\fio2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~40_q\,
	devoe => ww_devoe,
	o => \fio2[2]~output_o\);

-- Location: IOOBUF_X0_Y63_N16
\fio2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~41_q\,
	devoe => ww_devoe,
	o => \fio2[3]~output_o\);

-- Location: IOOBUF_X0_Y63_N23
\fio2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~42_q\,
	devoe => ww_devoe,
	o => \fio2[4]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\fio2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~43_q\,
	devoe => ww_devoe,
	o => \fio2[5]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\fio2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~44_q\,
	devoe => ww_devoe,
	o => \fio2[6]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\fio2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~45_q\,
	devoe => ww_devoe,
	o => \fio2[7]~output_o\);

-- Location: IOOBUF_X0_Y67_N23
\fio2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~46_q\,
	devoe => ww_devoe,
	o => \fio2[8]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\fio2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~47_q\,
	devoe => ww_devoe,
	o => \fio2[9]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\fio2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~48_q\,
	devoe => ww_devoe,
	o => \fio2[10]~output_o\);

-- Location: IOOBUF_X0_Y67_N16
\fio2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~49_q\,
	devoe => ww_devoe,
	o => \fio2[11]~output_o\);

-- Location: IOOBUF_X0_Y66_N16
\fio2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~50_q\,
	devoe => ww_devoe,
	o => \fio2[12]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\fio2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~51_q\,
	devoe => ww_devoe,
	o => \fio2[13]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\fio2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~52_q\,
	devoe => ww_devoe,
	o => \fio2[14]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\fio2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~53_q\,
	devoe => ww_devoe,
	o => \fio2[15]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\fio2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~54_q\,
	devoe => ww_devoe,
	o => \fio2[16]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\fio2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~55_q\,
	devoe => ww_devoe,
	o => \fio2[17]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\fio2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~56_q\,
	devoe => ww_devoe,
	o => \fio2[18]~output_o\);

-- Location: IOOBUF_X0_Y52_N23
\fio2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~57_q\,
	devoe => ww_devoe,
	o => \fio2[19]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\fio2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~58_q\,
	devoe => ww_devoe,
	o => \fio2[20]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\fio2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~59_q\,
	devoe => ww_devoe,
	o => \fio2[21]~output_o\);

-- Location: IOOBUF_X0_Y59_N16
\fio2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~60_q\,
	devoe => ww_devoe,
	o => \fio2[22]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\fio2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~61_q\,
	devoe => ww_devoe,
	o => \fio2[23]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\fio2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~62_q\,
	devoe => ww_devoe,
	o => \fio2[24]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\fio2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~63_q\,
	devoe => ww_devoe,
	o => \fio2[25]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\fio2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~64_q\,
	devoe => ww_devoe,
	o => \fio2[26]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\fio2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~65_q\,
	devoe => ww_devoe,
	o => \fio2[27]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\fio2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~66_q\,
	devoe => ww_devoe,
	o => \fio2[28]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\fio2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~67_q\,
	devoe => ww_devoe,
	o => \fio2[29]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\fio2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~68_q\,
	devoe => ww_devoe,
	o => \fio2[30]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\fio2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~69_q\,
	devoe => ww_devoe,
	o => \fio2[31]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\fio3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|ALT_INV_registers~1062_combout\,
	devoe => ww_devoe,
	o => \fio3[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\fio3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1063_combout\,
	devoe => ww_devoe,
	o => \fio3[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\fio3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1064_combout\,
	devoe => ww_devoe,
	o => \fio3[2]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\fio3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1065_combout\,
	devoe => ww_devoe,
	o => \fio3[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\fio3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1066_combout\,
	devoe => ww_devoe,
	o => \fio3[4]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\fio3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1067_combout\,
	devoe => ww_devoe,
	o => \fio3[5]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
\fio3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1068_combout\,
	devoe => ww_devoe,
	o => \fio3[6]~output_o\);

-- Location: IOOBUF_X0_Y62_N23
\fio3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1069_combout\,
	devoe => ww_devoe,
	o => \fio3[7]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\fio3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1070_combout\,
	devoe => ww_devoe,
	o => \fio3[8]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\fio3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1071_combout\,
	devoe => ww_devoe,
	o => \fio3[9]~output_o\);

-- Location: IOOBUF_X0_Y55_N9
\fio3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1072_combout\,
	devoe => ww_devoe,
	o => \fio3[10]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\fio3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1073_combout\,
	devoe => ww_devoe,
	o => \fio3[11]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\fio3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1074_combout\,
	devoe => ww_devoe,
	o => \fio3[12]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\fio3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1075_combout\,
	devoe => ww_devoe,
	o => \fio3[13]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\fio3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1076_combout\,
	devoe => ww_devoe,
	o => \fio3[14]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\fio3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1077_combout\,
	devoe => ww_devoe,
	o => \fio3[15]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\fio3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1078_combout\,
	devoe => ww_devoe,
	o => \fio3[16]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\fio3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1079_combout\,
	devoe => ww_devoe,
	o => \fio3[17]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\fio3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1080_combout\,
	devoe => ww_devoe,
	o => \fio3[18]~output_o\);

-- Location: IOOBUF_X1_Y73_N16
\fio3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1081_combout\,
	devoe => ww_devoe,
	o => \fio3[19]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\fio3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1082_combout\,
	devoe => ww_devoe,
	o => \fio3[20]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\fio3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1083_combout\,
	devoe => ww_devoe,
	o => \fio3[21]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\fio3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1084_combout\,
	devoe => ww_devoe,
	o => \fio3[22]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\fio3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1085_combout\,
	devoe => ww_devoe,
	o => \fio3[23]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\fio3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1086_combout\,
	devoe => ww_devoe,
	o => \fio3[24]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\fio3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1087_combout\,
	devoe => ww_devoe,
	o => \fio3[25]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\fio3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1088_combout\,
	devoe => ww_devoe,
	o => \fio3[26]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\fio3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1089_combout\,
	devoe => ww_devoe,
	o => \fio3[27]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\fio3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1090_combout\,
	devoe => ww_devoe,
	o => \fio3[28]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\fio3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1091_combout\,
	devoe => ww_devoe,
	o => \fio3[29]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\fio3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1092_combout\,
	devoe => ww_devoe,
	o => \fio3[30]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\fio3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|registers~1093_combout\,
	devoe => ww_devoe,
	o => \fio3[31]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
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

-- Location: IOOBUF_X0_Y68_N16
\fio4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|UCALU|instr\(1),
	devoe => ww_devoe,
	o => \fio4[1]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\fio4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|UCALU|instr\(2),
	devoe => ww_devoe,
	o => \fio4[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
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

-- Location: IOOBUF_X23_Y73_N16
\fio5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|MuxAlu|ALT_INV_result~0_combout\,
	devoe => ww_devoe,
	o => \fio5~output_o\);

-- Location: IOOBUF_X0_Y11_N16
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

-- Location: IOOBUF_X16_Y73_N23
\fio6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MI|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \fio6[1]~output_o\);

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

-- Location: LCCOMB_X16_Y69_N6
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

-- Location: FF_X16_Y69_N23
\FD|PC|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|PCAdder|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(2));

-- Location: LCCOMB_X16_Y69_N8
\FD|PCAdder|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~2_combout\ = (\FD|PC|q\(3) & (!\FD|PCAdder|Add0~1\)) # (!\FD|PC|q\(3) & ((\FD|PCAdder|Add0~1\) # (GND)))
-- \FD|PCAdder|Add0~3\ = CARRY((!\FD|PCAdder|Add0~1\) # (!\FD|PC|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(3),
	datad => VCC,
	cin => \FD|PCAdder|Add0~1\,
	combout => \FD|PCAdder|Add0~2_combout\,
	cout => \FD|PCAdder|Add0~3\);

-- Location: FF_X16_Y69_N9
\FD|PC|q[3]\ : dffeas
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
	q => \FD|PC|q\(3));

-- Location: LCCOMB_X16_Y69_N10
\FD|PCAdder|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~4_combout\ = (\FD|PC|q\(4) & (\FD|PCAdder|Add0~3\ $ (GND))) # (!\FD|PC|q\(4) & (!\FD|PCAdder|Add0~3\ & VCC))
-- \FD|PCAdder|Add0~5\ = CARRY((\FD|PC|q\(4) & !\FD|PCAdder|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datad => VCC,
	cin => \FD|PCAdder|Add0~3\,
	combout => \FD|PCAdder|Add0~4_combout\,
	cout => \FD|PCAdder|Add0~5\);

-- Location: LCCOMB_X16_Y69_N12
\FD|PCAdder|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~6_combout\ = \FD|PC|q\(5) $ (\FD|PCAdder|Add0~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(5),
	cin => \FD|PCAdder|Add0~5\,
	combout => \FD|PCAdder|Add0~6_combout\);

-- Location: LCCOMB_X16_Y69_N26
\FD|MI|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux30~0_combout\ = (\FD|PC|q\(4) & (((\FD|PC|q\(3))))) # (!\FD|PC|q\(4) & ((\FD|PC|q\(5) & ((\FD|PC|q\(3)))) # (!\FD|PC|q\(5) & (\FD|PC|q\(2) & !\FD|PC|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datab => \FD|PC|q\(2),
	datac => \FD|PC|q\(5),
	datad => \FD|PC|q\(3),
	combout => \FD|MI|Mux30~0_combout\);

-- Location: LCCOMB_X16_Y69_N18
\FD|MuxProxPC|X[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[5]~1_combout\ = (\FD|MI|Mux4~0_combout\ & ((\FD|MI|Mux30~0_combout\))) # (!\FD|MI|Mux4~0_combout\ & (\FD|PCAdder|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PCAdder|Add0~6_combout\,
	datac => \FD|MI|Mux4~0_combout\,
	datad => \FD|MI|Mux30~0_combout\,
	combout => \FD|MuxProxPC|X[5]~1_combout\);

-- Location: FF_X16_Y69_N19
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

-- Location: LCCOMB_X16_Y69_N22
\FD|MI|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux4~0_combout\ = (!\FD|PC|q\(5) & (!\FD|PC|q\(4) & (\FD|PC|q\(2) & \FD|PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(5),
	datab => \FD|PC|q\(4),
	datac => \FD|PC|q\(2),
	datad => \FD|PC|q\(3),
	combout => \FD|MI|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y69_N16
\FD|MuxProxPC|X[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[4]~0_combout\ = (!\FD|MI|Mux4~0_combout\ & \FD|PCAdder|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux4~0_combout\,
	datac => \FD|PCAdder|Add0~4_combout\,
	combout => \FD|MuxProxPC|X[4]~0_combout\);

-- Location: FF_X16_Y69_N17
\FD|PC|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(4));

-- Location: LCCOMB_X14_Y69_N4
\FD|UCALU|instr[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCALU|instr[1]~37_combout\ = (\FD|PC|q\(4)) # ((\FD|PC|q\(2)) # ((\FD|PC|q\(5)) # (!\FD|PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datab => \FD|PC|q\(2),
	datac => \FD|PC|q\(3),
	datad => \FD|PC|q\(5),
	combout => \FD|UCALU|instr[1]~37_combout\);

-- Location: LCCOMB_X14_Y69_N30
\FD|UCALU|instr[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCALU|instr[3]~38_combout\ = (!\FD|PC|q\(4) & !\FD|PC|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|q\(4),
	datad => \FD|PC|q\(5),
	combout => \FD|UCALU|instr[3]~38_combout\);

-- Location: LCCOMB_X14_Y69_N6
\FD|UCALU|instr[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCALU|instr\(1) = (\FD|UCALU|instr[1]~37_combout\ & ((\FD|UCALU|instr[3]~38_combout\) # (\FD|UCALU|instr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCALU|instr[1]~37_combout\,
	datac => \FD|UCALU|instr[3]~38_combout\,
	datad => \FD|UCALU|instr\(1),
	combout => \FD|UCALU|instr\(1));

-- Location: LCCOMB_X16_Y69_N20
\FD|MI|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux26~0_combout\ = (\FD|PC|q\(5)) # ((\FD|PC|q\(4)) # ((\FD|PC|q\(2) & \FD|PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(2),
	datab => \FD|PC|q\(5),
	datac => \FD|PC|q\(3),
	datad => \FD|PC|q\(4),
	combout => \FD|MI|Mux26~0_combout\);

-- Location: LCCOMB_X16_Y69_N24
\FD|BR|registers~1094\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1094_combout\ = !\FD|ALU|MuxAlu|Mux31~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|MuxAlu|Mux31~0_combout\,
	combout => \FD|BR|registers~1094_combout\);

-- Location: LCCOMB_X14_Y69_N26
\FD|MI|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux4~1_combout\ = (\FD|PC|q\(4)) # (\FD|PC|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|q\(4),
	datad => \FD|PC|q\(5),
	combout => \FD|MI|Mux4~1_combout\);

-- Location: FF_X16_Y69_N25
\FD|BR|registers~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~1094_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~38_q\);

-- Location: LCCOMB_X16_Y69_N28
\FD|UCALU|comb~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCALU|comb~20_combout\ = (!\FD|PC|q\(4) & (!\FD|PC|q\(5) & ((\FD|PC|q\(3)) # (!\FD|PC|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datab => \FD|PC|q\(2),
	datac => \FD|PC|q\(5),
	datad => \FD|PC|q\(3),
	combout => \FD|UCALU|comb~20_combout\);

-- Location: LCCOMB_X16_Y69_N30
\FD|UCALU|comb~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCALU|comb~21_combout\ = (!\FD|PC|q\(4) & (\FD|PC|q\(2) & (!\FD|PC|q\(5) & !\FD|PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datab => \FD|PC|q\(2),
	datac => \FD|PC|q\(5),
	datad => \FD|PC|q\(3),
	combout => \FD|UCALU|comb~21_combout\);

-- Location: LCCOMB_X16_Y69_N2
\FD|UCALU|instr[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCALU|instr\(2) = (!\FD|UCALU|comb~20_combout\ & ((\FD|UCALU|comb~21_combout\) # (\FD|UCALU|instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCALU|comb~20_combout\,
	datac => \FD|UCALU|comb~21_combout\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|UCALU|instr\(2));

-- Location: LCCOMB_X16_Y69_N0
\FD|ALU|MuxAlu|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux31~0_combout\ = (\FD|UCALU|instr\(1) & (!\FD|MI|Mux26~0_combout\ & (\FD|BR|registers~38_q\))) # (!\FD|UCALU|instr\(1) & (((!\FD|BR|registers~38_q\ & !\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~38_q\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|MuxAlu|Mux31~0_combout\);

-- Location: FF_X17_Y69_N5
\FD|BR|registers~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux30~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~39_q\);

-- Location: LCCOMB_X20_Y69_N16
\FD|ALU|MuxAlu|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux30~2_combout\ = (\FD|UCALU|instr\(1) & (\FD|BR|registers~38_q\ $ (((\FD|BR|registers~39_q\) # (\FD|MI|Mux26~0_combout\))))) # (!\FD|UCALU|instr\(1) & (((\FD|BR|registers~39_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~38_q\,
	datac => \FD|BR|registers~39_q\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux30~2_combout\);

-- Location: LCCOMB_X20_Y69_N30
\FD|ALU|MuxAlu|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux30~3_combout\ = (\FD|UCALU|instr\(2) & (\FD|UCALU|instr\(1) & (!\FD|MI|Mux26~0_combout\ & !\FD|ALU|MuxAlu|Mux30~2_combout\))) # (!\FD|UCALU|instr\(2) & (((\FD|ALU|MuxAlu|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|UCALU|instr\(2),
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|MuxAlu|Mux30~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux30~3_combout\);

-- Location: FF_X17_Y69_N3
\FD|BR|registers~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux29~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~40_q\);

-- Location: LCCOMB_X20_Y69_N28
\FD|ALU|Fulladder32|fulladder1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\ = (\FD|UCALU|instr\(2) & ((\FD|MI|Mux26~0_combout\) # ((\FD|BR|registers~39_q\ & !\FD|BR|registers~38_q\)))) # (!\FD|UCALU|instr\(2) & ((\FD|BR|registers~39_q\) # ((!\FD|MI|Mux26~0_combout\ & 
-- !\FD|BR|registers~38_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|BR|registers~39_q\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|BR|registers~38_q\,
	combout => \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\);

-- Location: LCCOMB_X20_Y69_N20
\FD|ALU|MuxAlu|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux29~2_combout\ = (\FD|BR|registers~40_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder1|Cout~0_combout\))))) # (!\FD|BR|registers~40_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~40_q\,
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux29~2_combout\);

-- Location: LCCOMB_X20_Y69_N22
\FD|ALU|MuxAlu|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux29~3_combout\ = (\FD|BR|registers~40_q\ & (\FD|ALU|MuxAlu|Mux29~2_combout\ $ ((\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~40_q\ & (\FD|ALU|MuxAlu|Mux29~2_combout\ & (\FD|UCALU|instr\(2) $ 
-- (\FD|ALU|Fulladder32|fulladder1|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~40_q\,
	datab => \FD|ALU|MuxAlu|Mux29~2_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux29~3_combout\);

-- Location: FF_X17_Y69_N1
\FD|BR|registers~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux28~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~41_q\);

-- Location: LCCOMB_X17_Y69_N4
\FD|ALU|Fulladder32|fulladder2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\ = (\FD|UCALU|instr\(2) & ((\FD|BR|registers~40_q\) # ((\FD|BR|registers~39_q\ & !\FD|BR|registers~38_q\)))) # (!\FD|UCALU|instr\(2) & (\FD|BR|registers~40_q\ & ((\FD|BR|registers~39_q\) # 
-- (!\FD|BR|registers~38_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|BR|registers~40_q\,
	datac => \FD|BR|registers~39_q\,
	datad => \FD|BR|registers~38_q\,
	combout => \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\);

-- Location: LCCOMB_X17_Y69_N2
\FD|ALU|Fulladder32|fulladder2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\ = (\FD|MI|Mux26~0_combout\ & ((\FD|UCALU|instr\(2)) # ((\FD|BR|registers~40_q\)))) # (!\FD|MI|Mux26~0_combout\ & (((\FD|ALU|Fulladder32|fulladder2|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\,
	datac => \FD|BR|registers~40_q\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\);

-- Location: LCCOMB_X14_Y69_N18
\FD|ALU|MuxAlu|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux28~2_combout\ = (\FD|BR|registers~41_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder2|Cout~1_combout\))))) # (!\FD|BR|registers~41_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\,
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~41_q\,
	combout => \FD|ALU|MuxAlu|Mux28~2_combout\);

-- Location: LCCOMB_X14_Y69_N12
\FD|ALU|MuxAlu|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux28~3_combout\ = (\FD|BR|registers~41_q\ & (\FD|ALU|MuxAlu|Mux28~2_combout\ $ ((\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~41_q\ & (\FD|ALU|MuxAlu|Mux28~2_combout\ & (\FD|UCALU|instr\(2) $ 
-- (\FD|ALU|Fulladder32|fulladder2|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~41_q\,
	datab => \FD|ALU|MuxAlu|Mux28~2_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\,
	combout => \FD|ALU|MuxAlu|Mux28~3_combout\);

-- Location: LCCOMB_X17_Y69_N0
\FD|ALU|Fulladder32|fulladder3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\ = (\FD|BR|registers~41_q\ & ((\FD|ALU|Fulladder32|fulladder2|Cout~1_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~41_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder2|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~41_q\,
	datad => \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\,
	combout => \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\);

-- Location: FF_X17_Y69_N11
\FD|BR|registers~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux27~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~42_q\);

-- Location: LCCOMB_X14_Y69_N10
\FD|ALU|MuxAlu|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux27~2_combout\ = (\FD|BR|registers~42_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder3|Cout~0_combout\))))) # (!\FD|BR|registers~42_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~42_q\,
	datac => \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux27~2_combout\);

-- Location: LCCOMB_X14_Y69_N0
\FD|ALU|MuxAlu|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux27~3_combout\ = (\FD|ALU|MuxAlu|Mux27~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|Fulladder32|fulladder3|Cout~0_combout\) # (\FD|BR|registers~42_q\))))) # (!\FD|ALU|MuxAlu|Mux27~2_combout\ & (((\FD|UCALU|instr\(2) & 
-- \FD|BR|registers~42_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|ALU|MuxAlu|Mux27~2_combout\,
	datad => \FD|BR|registers~42_q\,
	combout => \FD|ALU|MuxAlu|Mux27~3_combout\);

-- Location: LCCOMB_X17_Y69_N10
\FD|ALU|Fulladder32|fulladder4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\ = (\FD|BR|registers~42_q\ & ((\FD|ALU|Fulladder32|fulladder3|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~42_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~42_q\,
	datad => \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\);

-- Location: FF_X17_Y69_N25
\FD|BR|registers~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux26~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~43_q\);

-- Location: LCCOMB_X14_Y69_N14
\FD|ALU|MuxAlu|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux26~2_combout\ = (\FD|BR|registers~43_q\ & (\FD|MI|Mux26~0_combout\ $ (((!\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\ & \FD|UCALU|instr\(1)))))) # (!\FD|BR|registers~43_q\ & (((\FD|UCALU|instr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\,
	datab => \FD|UCALU|instr\(1),
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~43_q\,
	combout => \FD|ALU|MuxAlu|Mux26~2_combout\);

-- Location: LCCOMB_X14_Y69_N24
\FD|ALU|MuxAlu|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux26~3_combout\ = (\FD|ALU|MuxAlu|Mux26~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\) # (\FD|BR|registers~43_q\))))) # (!\FD|ALU|MuxAlu|Mux26~2_combout\ & (((\FD|UCALU|instr\(2) & 
-- \FD|BR|registers~43_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\,
	datab => \FD|ALU|MuxAlu|Mux26~2_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|BR|registers~43_q\,
	combout => \FD|ALU|MuxAlu|Mux26~3_combout\);

-- Location: LCCOMB_X17_Y69_N24
\FD|ALU|Fulladder32|fulladder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\ = (\FD|BR|registers~43_q\ & ((\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~43_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~43_q\,
	datad => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\);

-- Location: FF_X17_Y69_N19
\FD|BR|registers~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux25~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~44_q\);

-- Location: LCCOMB_X20_Y69_N8
\FD|ALU|MuxAlu|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux25~2_combout\ = (\FD|BR|registers~44_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder5|Cout~0_combout\))))) # (!\FD|BR|registers~44_q\ & (((\FD|UCALU|instr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|BR|registers~44_q\,
	datac => \FD|UCALU|instr\(1),
	datad => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux25~2_combout\);

-- Location: LCCOMB_X20_Y69_N26
\FD|ALU|MuxAlu|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux25~3_combout\ = (\FD|ALU|MuxAlu|Mux25~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|Fulladder32|fulladder5|Cout~0_combout\) # (\FD|BR|registers~44_q\))))) # (!\FD|ALU|MuxAlu|Mux25~2_combout\ & (((\FD|UCALU|instr\(2) & 
-- \FD|BR|registers~44_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|ALU|MuxAlu|Mux25~2_combout\,
	datad => \FD|BR|registers~44_q\,
	combout => \FD|ALU|MuxAlu|Mux25~3_combout\);

-- Location: FF_X17_Y69_N21
\FD|BR|registers~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux24~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~45_q\);

-- Location: LCCOMB_X17_Y69_N18
\FD|ALU|Fulladder32|fulladder6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\ = (\FD|BR|registers~44_q\ & ((\FD|ALU|Fulladder32|fulladder5|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~44_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~44_q\,
	datad => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\);

-- Location: LCCOMB_X16_Y69_N4
\FD|ALU|MuxAlu|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux24~2_combout\ = (\FD|BR|registers~45_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder6|Cout~0_combout\))))) # (!\FD|BR|registers~45_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\,
	datac => \FD|BR|registers~45_q\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux24~2_combout\);

-- Location: LCCOMB_X16_Y69_N14
\FD|ALU|MuxAlu|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux24~3_combout\ = (\FD|BR|registers~45_q\ & ((\FD|ALU|MuxAlu|Mux24~2_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~45_q\ & (\FD|ALU|MuxAlu|Mux24~2_combout\ & (\FD|ALU|Fulladder32|fulladder6|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~45_q\,
	datab => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\,
	datac => \FD|ALU|MuxAlu|Mux24~2_combout\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|MuxAlu|Mux24~3_combout\);

-- Location: LCCOMB_X17_Y69_N20
\FD|ALU|Fulladder32|fulladder7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\ = (\FD|BR|registers~45_q\ & ((\FD|ALU|Fulladder32|fulladder6|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~45_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~45_q\,
	datad => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\);

-- Location: FF_X12_Y69_N17
\FD|BR|registers~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux23~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~46_q\);

-- Location: LCCOMB_X12_Y69_N18
\FD|ALU|MuxAlu|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux23~2_combout\ = (\FD|BR|registers~46_q\ & (\FD|MI|Mux26~0_combout\ $ (((!\FD|ALU|Fulladder32|fulladder7|Cout~0_combout\ & \FD|UCALU|instr\(1)))))) # (!\FD|BR|registers~46_q\ & (((\FD|UCALU|instr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\,
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|UCALU|instr\(1),
	datad => \FD|BR|registers~46_q\,
	combout => \FD|ALU|MuxAlu|Mux23~2_combout\);

-- Location: LCCOMB_X12_Y69_N16
\FD|ALU|MuxAlu|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux23~3_combout\ = (\FD|ALU|MuxAlu|Mux23~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|Fulladder32|fulladder7|Cout~0_combout\) # (\FD|BR|registers~46_q\))))) # (!\FD|ALU|MuxAlu|Mux23~2_combout\ & (((\FD|BR|registers~46_q\ & 
-- \FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\,
	datab => \FD|ALU|MuxAlu|Mux23~2_combout\,
	datac => \FD|BR|registers~46_q\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|MuxAlu|Mux23~3_combout\);

-- Location: LCCOMB_X17_Y69_N30
\FD|ALU|Fulladder32|fulladder8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\ = (\FD|BR|registers~46_q\ & ((\FD|ALU|Fulladder32|fulladder7|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~46_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~46_q\,
	datad => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\);

-- Location: FF_X12_Y69_N7
\FD|BR|registers~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux22~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~47_q\);

-- Location: LCCOMB_X12_Y69_N0
\FD|ALU|MuxAlu|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux22~2_combout\ = (\FD|BR|registers~47_q\ & (\FD|MI|Mux26~0_combout\ $ (((!\FD|ALU|Fulladder32|fulladder8|Cout~0_combout\ & \FD|UCALU|instr\(1)))))) # (!\FD|BR|registers~47_q\ & (((\FD|UCALU|instr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~47_q\,
	datab => \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\,
	datac => \FD|UCALU|instr\(1),
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux22~2_combout\);

-- Location: LCCOMB_X12_Y69_N6
\FD|ALU|MuxAlu|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux22~3_combout\ = (\FD|BR|registers~47_q\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|MuxAlu|Mux22~2_combout\))))) # (!\FD|BR|registers~47_q\ & (\FD|ALU|MuxAlu|Mux22~2_combout\ & (\FD|UCALU|instr\(2) $ 
-- (\FD|ALU|Fulladder32|fulladder8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\,
	datac => \FD|BR|registers~47_q\,
	datad => \FD|ALU|MuxAlu|Mux22~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux22~3_combout\);

-- Location: FF_X12_Y69_N13
\FD|BR|registers~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux21~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~48_q\);

-- Location: LCCOMB_X17_Y69_N16
\FD|ALU|Fulladder32|fulladder9|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\ = (\FD|BR|registers~47_q\ & ((\FD|ALU|Fulladder32|fulladder8|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~47_q\ & 
-- (((\FD|ALU|Fulladder32|fulladder8|Cout~0_combout\ & \FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~47_q\,
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\);

-- Location: LCCOMB_X12_Y69_N10
\FD|ALU|MuxAlu|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux21~2_combout\ = (\FD|BR|registers~48_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder9|Cout~0_combout\))))) # (!\FD|BR|registers~48_q\ & (((\FD|UCALU|instr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|BR|registers~48_q\,
	datac => \FD|UCALU|instr\(1),
	datad => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux21~2_combout\);

-- Location: LCCOMB_X12_Y69_N12
\FD|ALU|MuxAlu|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux21~3_combout\ = (\FD|ALU|MuxAlu|Mux21~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|Fulladder32|fulladder9|Cout~0_combout\) # (\FD|BR|registers~48_q\))))) # (!\FD|ALU|MuxAlu|Mux21~2_combout\ & (((\FD|BR|registers~48_q\ & 
-- \FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|MuxAlu|Mux21~2_combout\,
	datab => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\,
	datac => \FD|BR|registers~48_q\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|MuxAlu|Mux21~3_combout\);

-- Location: FF_X12_Y69_N15
\FD|BR|registers~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux20~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~49_q\);

-- Location: LCCOMB_X17_Y69_N26
\FD|ALU|Fulladder32|fulladder10|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\ = (\FD|BR|registers~48_q\ & ((\FD|ALU|Fulladder32|fulladder9|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~48_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~48_q\,
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\);

-- Location: LCCOMB_X12_Y69_N28
\FD|ALU|MuxAlu|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux20~2_combout\ = (\FD|BR|registers~49_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder10|Cout~0_combout\))))) # (!\FD|BR|registers~49_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~49_q\,
	datad => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux20~2_combout\);

-- Location: LCCOMB_X12_Y69_N14
\FD|ALU|MuxAlu|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux20~3_combout\ = (\FD|ALU|MuxAlu|Mux20~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|BR|registers~49_q\) # (\FD|ALU|Fulladder32|fulladder10|Cout~0_combout\))))) # (!\FD|ALU|MuxAlu|Mux20~2_combout\ & (\FD|UCALU|instr\(2) & 
-- (\FD|BR|registers~49_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|MuxAlu|Mux20~2_combout\,
	datac => \FD|BR|registers~49_q\,
	datad => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux20~3_combout\);

-- Location: LCCOMB_X17_Y69_N8
\FD|ALU|Fulladder32|fulladder11|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\ = (\FD|ALU|Fulladder32|fulladder10|Cout~0_combout\ & ((\FD|UCALU|instr\(2)) # ((\FD|BR|registers~49_q\)))) # (!\FD|ALU|Fulladder32|fulladder10|Cout~0_combout\ & (\FD|BR|registers~49_q\ & (\FD|UCALU|instr\(2) 
-- $ (\FD|MI|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\,
	datad => \FD|BR|registers~49_q\,
	combout => \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\);

-- Location: FF_X12_Y69_N9
\FD|BR|registers~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux19~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~50_q\);

-- Location: LCCOMB_X12_Y69_N26
\FD|ALU|MuxAlu|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux19~2_combout\ = (\FD|BR|registers~50_q\ & (\FD|MI|Mux26~0_combout\ $ (((!\FD|ALU|Fulladder32|fulladder11|Cout~0_combout\ & \FD|UCALU|instr\(1)))))) # (!\FD|BR|registers~50_q\ & (((\FD|UCALU|instr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\,
	datab => \FD|UCALU|instr\(1),
	datac => \FD|BR|registers~50_q\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux19~2_combout\);

-- Location: LCCOMB_X12_Y69_N8
\FD|ALU|MuxAlu|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux19~3_combout\ = (\FD|ALU|MuxAlu|Mux19~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|Fulladder32|fulladder11|Cout~0_combout\) # (\FD|BR|registers~50_q\))))) # (!\FD|ALU|MuxAlu|Mux19~2_combout\ & (((\FD|BR|registers~50_q\ & 
-- \FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|MuxAlu|Mux19~2_combout\,
	datab => \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\,
	datac => \FD|BR|registers~50_q\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|MuxAlu|Mux19~3_combout\);

-- Location: FF_X25_Y69_N9
\FD|BR|registers~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux18~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~51_q\);

-- Location: LCCOMB_X17_Y69_N22
\FD|ALU|Fulladder32|fulladder12|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\ = (\FD|ALU|Fulladder32|fulladder11|Cout~0_combout\ & ((\FD|UCALU|instr\(2)) # ((\FD|BR|registers~50_q\)))) # (!\FD|ALU|Fulladder32|fulladder11|Cout~0_combout\ & (\FD|BR|registers~50_q\ & (\FD|UCALU|instr\(2) 
-- $ (\FD|MI|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\,
	datad => \FD|BR|registers~50_q\,
	combout => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\);

-- Location: LCCOMB_X25_Y69_N18
\FD|ALU|MuxAlu|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux18~2_combout\ = (\FD|BR|registers~51_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder12|Cout~0_combout\))))) # (!\FD|BR|registers~51_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~51_q\,
	datad => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux18~2_combout\);

-- Location: LCCOMB_X25_Y69_N8
\FD|ALU|MuxAlu|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux18~3_combout\ = (\FD|ALU|MuxAlu|Mux18~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|BR|registers~51_q\) # (\FD|ALU|Fulladder32|fulladder12|Cout~0_combout\))))) # (!\FD|ALU|MuxAlu|Mux18~2_combout\ & (\FD|UCALU|instr\(2) & 
-- (\FD|BR|registers~51_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|MuxAlu|Mux18~2_combout\,
	datac => \FD|BR|registers~51_q\,
	datad => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux18~3_combout\);

-- Location: FF_X25_Y69_N11
\FD|BR|registers~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux17~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~52_q\);

-- Location: LCCOMB_X17_Y69_N28
\FD|ALU|Fulladder32|fulladder13|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\ = (\FD|ALU|Fulladder32|fulladder12|Cout~0_combout\ & ((\FD|UCALU|instr\(2)) # ((\FD|BR|registers~51_q\)))) # (!\FD|ALU|Fulladder32|fulladder12|Cout~0_combout\ & (\FD|BR|registers~51_q\ & (\FD|UCALU|instr\(2) 
-- $ (\FD|MI|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\,
	datad => \FD|BR|registers~51_q\,
	combout => \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\);

-- Location: LCCOMB_X25_Y69_N28
\FD|ALU|MuxAlu|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux17~2_combout\ = (\FD|BR|registers~52_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder13|Cout~0_combout\))))) # (!\FD|BR|registers~52_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~52_q\,
	datad => \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux17~2_combout\);

-- Location: LCCOMB_X25_Y69_N10
\FD|ALU|MuxAlu|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux17~3_combout\ = (\FD|ALU|MuxAlu|Mux17~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|BR|registers~52_q\) # (\FD|ALU|Fulladder32|fulladder13|Cout~0_combout\))))) # (!\FD|ALU|MuxAlu|Mux17~2_combout\ & (\FD|UCALU|instr\(2) & 
-- (\FD|BR|registers~52_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|MuxAlu|Mux17~2_combout\,
	datac => \FD|BR|registers~52_q\,
	datad => \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux17~3_combout\);

-- Location: LCCOMB_X17_Y69_N6
\FD|ALU|Fulladder32|fulladder14|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\ = (\FD|BR|registers~52_q\ & ((\FD|ALU|Fulladder32|fulladder13|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~52_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder13|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~52_q\,
	datad => \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\);

-- Location: FF_X25_Y69_N17
\FD|BR|registers~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux16~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~53_q\);

-- Location: LCCOMB_X25_Y69_N12
\FD|ALU|MuxAlu|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux16~2_combout\ = (\FD|BR|registers~53_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder14|Cout~0_combout\))))) # (!\FD|BR|registers~53_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~53_q\,
	datad => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux16~2_combout\);

-- Location: LCCOMB_X25_Y69_N26
\FD|ALU|MuxAlu|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux16~3_combout\ = (\FD|BR|registers~53_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux16~2_combout\)))) # (!\FD|BR|registers~53_q\ & (\FD|ALU|MuxAlu|Mux16~2_combout\ & (\FD|ALU|Fulladder32|fulladder14|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\,
	datab => \FD|BR|registers~53_q\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|MuxAlu|Mux16~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux16~3_combout\);

-- Location: LCCOMB_X17_Y69_N12
\FD|ALU|Fulladder32|fulladder15|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\ = (\FD|BR|registers~53_q\ & ((\FD|ALU|Fulladder32|fulladder14|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~53_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder14|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~53_q\,
	datad => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\);

-- Location: FF_X25_Y69_N7
\FD|BR|registers~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux15~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~54_q\);

-- Location: LCCOMB_X25_Y69_N0
\FD|ALU|MuxAlu|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux15~2_combout\ = (\FD|BR|registers~54_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder15|Cout~0_combout\))))) # (!\FD|BR|registers~54_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~54_q\,
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux15~2_combout\);

-- Location: LCCOMB_X25_Y69_N22
\FD|ALU|MuxAlu|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux15~3_combout\ = (\FD|BR|registers~54_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux15~2_combout\)))) # (!\FD|BR|registers~54_q\ & (\FD|ALU|MuxAlu|Mux15~2_combout\ & (\FD|ALU|Fulladder32|fulladder15|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\,
	datab => \FD|BR|registers~54_q\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|MuxAlu|Mux15~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux15~3_combout\);

-- Location: FF_X25_Y69_N25
\FD|BR|registers~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|MuxAlu|Mux14~3_combout\,
	sload => VCC,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~55_q\);

-- Location: LCCOMB_X17_Y69_N14
\FD|ALU|Fulladder32|fulladder16|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\ = (\FD|BR|registers~54_q\ & ((\FD|ALU|Fulladder32|fulladder15|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~54_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder15|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~54_q\,
	datad => \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\);

-- Location: LCCOMB_X25_Y69_N4
\FD|ALU|MuxAlu|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux14~2_combout\ = (\FD|BR|registers~55_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder16|Cout~0_combout\))))) # (!\FD|BR|registers~55_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~55_q\,
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux14~2_combout\);

-- Location: LCCOMB_X25_Y69_N14
\FD|ALU|MuxAlu|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux14~3_combout\ = (\FD|BR|registers~55_q\ & (\FD|UCALU|instr\(2) $ ((\FD|ALU|MuxAlu|Mux14~2_combout\)))) # (!\FD|BR|registers~55_q\ & (\FD|ALU|MuxAlu|Mux14~2_combout\ & (\FD|UCALU|instr\(2) $ 
-- (\FD|ALU|Fulladder32|fulladder16|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|BR|registers~55_q\,
	datac => \FD|ALU|MuxAlu|Mux14~2_combout\,
	datad => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux14~3_combout\);

-- Location: LCCOMB_X18_Y69_N22
\FD|ALU|Fulladder32|fulladder17|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ = (\FD|BR|registers~55_q\ & ((\FD|ALU|Fulladder32|fulladder16|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~55_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~55_q\,
	datad => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\);

-- Location: FF_X13_Y69_N21
\FD|BR|registers~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux13~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~56_q\);

-- Location: LCCOMB_X13_Y69_N18
\FD|ALU|MuxAlu|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux13~2_combout\ = (\FD|BR|registers~56_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\))))) # (!\FD|BR|registers~56_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\,
	datad => \FD|BR|registers~56_q\,
	combout => \FD|ALU|MuxAlu|Mux13~2_combout\);

-- Location: LCCOMB_X13_Y69_N20
\FD|ALU|MuxAlu|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux13~3_combout\ = (\FD|BR|registers~56_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux13~2_combout\)))) # (!\FD|BR|registers~56_q\ & (\FD|ALU|MuxAlu|Mux13~2_combout\ & (\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~56_q\,
	datad => \FD|ALU|MuxAlu|Mux13~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux13~3_combout\);

-- Location: LCCOMB_X18_Y69_N28
\FD|ALU|Fulladder32|fulladder18|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\ = (\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ & (((\FD|UCALU|instr\(2)) # (\FD|BR|registers~56_q\)))) # (!\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ & (\FD|BR|registers~56_q\ & 
-- (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\,
	datad => \FD|BR|registers~56_q\,
	combout => \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\);

-- Location: FF_X13_Y69_N31
\FD|BR|registers~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux12~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~57_q\);

-- Location: LCCOMB_X13_Y69_N24
\FD|ALU|MuxAlu|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux12~2_combout\ = (\FD|BR|registers~57_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder18|Cout~0_combout\))))) # (!\FD|BR|registers~57_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\,
	datad => \FD|BR|registers~57_q\,
	combout => \FD|ALU|MuxAlu|Mux12~2_combout\);

-- Location: LCCOMB_X13_Y69_N30
\FD|ALU|MuxAlu|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux12~3_combout\ = (\FD|BR|registers~57_q\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|MuxAlu|Mux12~2_combout\))))) # (!\FD|BR|registers~57_q\ & (\FD|ALU|MuxAlu|Mux12~2_combout\ & (\FD|UCALU|instr\(2) $ 
-- (\FD|ALU|Fulladder32|fulladder18|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\,
	datac => \FD|BR|registers~57_q\,
	datad => \FD|ALU|MuxAlu|Mux12~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux12~3_combout\);

-- Location: LCCOMB_X18_Y69_N30
\FD|ALU|Fulladder32|fulladder19|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ = (\FD|BR|registers~57_q\ & ((\FD|ALU|Fulladder32|fulladder18|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~57_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~57_q\,
	datad => \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\);

-- Location: FF_X13_Y69_N17
\FD|BR|registers~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux11~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~58_q\);

-- Location: LCCOMB_X13_Y69_N10
\FD|ALU|MuxAlu|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux11~2_combout\ = (\FD|BR|registers~58_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder19|Cout~0_combout\))))) # (!\FD|BR|registers~58_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\,
	datad => \FD|BR|registers~58_q\,
	combout => \FD|ALU|MuxAlu|Mux11~2_combout\);

-- Location: LCCOMB_X13_Y69_N16
\FD|ALU|MuxAlu|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux11~3_combout\ = (\FD|BR|registers~58_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux11~2_combout\)))) # (!\FD|BR|registers~58_q\ & (\FD|ALU|MuxAlu|Mux11~2_combout\ & (\FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~58_q\,
	datad => \FD|ALU|MuxAlu|Mux11~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux11~3_combout\);

-- Location: FF_X13_Y69_N27
\FD|BR|registers~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux10~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~59_q\);

-- Location: LCCOMB_X18_Y69_N0
\FD|ALU|Fulladder32|fulladder20|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\ = (\FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ & (((\FD|UCALU|instr\(2)) # (\FD|BR|registers~58_q\)))) # (!\FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ & (\FD|BR|registers~58_q\ & 
-- (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\,
	datad => \FD|BR|registers~58_q\,
	combout => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\);

-- Location: LCCOMB_X13_Y69_N0
\FD|ALU|MuxAlu|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux10~2_combout\ = (\FD|BR|registers~59_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder20|Cout~0_combout\))))) # (!\FD|BR|registers~59_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~59_q\,
	datad => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux10~2_combout\);

-- Location: LCCOMB_X13_Y69_N26
\FD|ALU|MuxAlu|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux10~3_combout\ = (\FD|ALU|MuxAlu|Mux10~2_combout\ & (\FD|UCALU|instr\(2) $ (((\FD|BR|registers~59_q\) # (\FD|ALU|Fulladder32|fulladder20|Cout~0_combout\))))) # (!\FD|ALU|MuxAlu|Mux10~2_combout\ & (\FD|UCALU|instr\(2) & 
-- (\FD|BR|registers~59_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|MuxAlu|Mux10~2_combout\,
	datac => \FD|BR|registers~59_q\,
	datad => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux10~3_combout\);

-- Location: LCCOMB_X18_Y69_N26
\FD|ALU|Fulladder32|fulladder21|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\ = (\FD|BR|registers~59_q\ & ((\FD|ALU|Fulladder32|fulladder20|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~59_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~59_q\,
	datad => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\);

-- Location: FF_X14_Y69_N17
\FD|BR|registers~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux9~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~60_q\);

-- Location: LCCOMB_X14_Y69_N28
\FD|ALU|MuxAlu|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux9~2_combout\ = (\FD|BR|registers~60_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder21|Cout~0_combout\))))) # (!\FD|BR|registers~60_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~60_q\,
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux9~2_combout\);

-- Location: LCCOMB_X14_Y69_N16
\FD|ALU|MuxAlu|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux9~3_combout\ = (\FD|BR|registers~60_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux9~2_combout\)))) # (!\FD|BR|registers~60_q\ & (\FD|ALU|MuxAlu|Mux9~2_combout\ & (\FD|ALU|Fulladder32|fulladder21|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~60_q\,
	datad => \FD|ALU|MuxAlu|Mux9~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux9~3_combout\);

-- Location: LCCOMB_X18_Y69_N20
\FD|ALU|Fulladder32|fulladder22|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\ = (\FD|ALU|Fulladder32|fulladder21|Cout~0_combout\ & (((\FD|UCALU|instr\(2)) # (\FD|BR|registers~60_q\)))) # (!\FD|ALU|Fulladder32|fulladder21|Cout~0_combout\ & (\FD|BR|registers~60_q\ & 
-- (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\,
	datad => \FD|BR|registers~60_q\,
	combout => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\);

-- Location: FF_X13_Y69_N9
\FD|BR|registers~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux8~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~61_q\);

-- Location: LCCOMB_X13_Y69_N6
\FD|ALU|MuxAlu|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux8~2_combout\ = (\FD|BR|registers~61_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder22|Cout~0_combout\))))) # (!\FD|BR|registers~61_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\,
	datad => \FD|BR|registers~61_q\,
	combout => \FD|ALU|MuxAlu|Mux8~2_combout\);

-- Location: LCCOMB_X13_Y69_N8
\FD|ALU|MuxAlu|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux8~3_combout\ = (\FD|BR|registers~61_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux8~2_combout\)))) # (!\FD|BR|registers~61_q\ & (\FD|ALU|MuxAlu|Mux8~2_combout\ & (\FD|ALU|Fulladder32|fulladder22|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~61_q\,
	datad => \FD|ALU|MuxAlu|Mux8~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux8~3_combout\);

-- Location: LCCOMB_X18_Y69_N10
\FD|ALU|Fulladder32|fulladder23|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\ = (\FD|BR|registers~61_q\ & ((\FD|ALU|Fulladder32|fulladder22|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~61_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~61_q\,
	datad => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\);

-- Location: FF_X19_Y69_N5
\FD|BR|registers~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux7~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~62_q\);

-- Location: LCCOMB_X19_Y69_N18
\FD|ALU|MuxAlu|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux7~2_combout\ = (\FD|BR|registers~62_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\))))) # (!\FD|BR|registers~62_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~62_q\,
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y69_N4
\FD|ALU|MuxAlu|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux7~3_combout\ = (\FD|BR|registers~62_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux7~2_combout\)))) # (!\FD|BR|registers~62_q\ & (\FD|ALU|MuxAlu|Mux7~2_combout\ & (\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~62_q\,
	datad => \FD|ALU|MuxAlu|Mux7~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux7~3_combout\);

-- Location: LCCOMB_X18_Y69_N16
\FD|ALU|Fulladder32|fulladder24|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\ = (\FD|BR|registers~62_q\ & ((\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~62_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~62_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\);

-- Location: FF_X19_Y69_N31
\FD|BR|registers~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux6~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~63_q\);

-- Location: LCCOMB_X19_Y69_N28
\FD|ALU|MuxAlu|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux6~2_combout\ = (\FD|BR|registers~63_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder24|Cout~0_combout\))))) # (!\FD|BR|registers~63_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~63_q\,
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y69_N30
\FD|ALU|MuxAlu|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux6~3_combout\ = (\FD|BR|registers~63_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux6~2_combout\)))) # (!\FD|BR|registers~63_q\ & (\FD|ALU|MuxAlu|Mux6~2_combout\ & (\FD|ALU|Fulladder32|fulladder24|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~63_q\,
	datad => \FD|ALU|MuxAlu|Mux6~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux6~3_combout\);

-- Location: LCCOMB_X18_Y69_N2
\FD|ALU|Fulladder32|fulladder25|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\ = (\FD|BR|registers~63_q\ & ((\FD|ALU|Fulladder32|fulladder24|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~63_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~63_q\,
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\);

-- Location: FF_X19_Y69_N13
\FD|BR|registers~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux5~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~64_q\);

-- Location: LCCOMB_X19_Y69_N6
\FD|ALU|MuxAlu|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux5~2_combout\ = (\FD|BR|registers~64_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder25|Cout~0_combout\))))) # (!\FD|BR|registers~64_q\ & (((\FD|UCALU|instr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~64_q\,
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|UCALU|instr\(1),
	datad => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux5~2_combout\);

-- Location: LCCOMB_X19_Y69_N12
\FD|ALU|MuxAlu|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux5~3_combout\ = (\FD|BR|registers~64_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux5~2_combout\)))) # (!\FD|BR|registers~64_q\ & (\FD|ALU|MuxAlu|Mux5~2_combout\ & (\FD|ALU|Fulladder32|fulladder25|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~64_q\,
	datad => \FD|ALU|MuxAlu|Mux5~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux5~3_combout\);

-- Location: LCCOMB_X18_Y69_N24
\FD|ALU|Fulladder32|fulladder26|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\ = (\FD|BR|registers~64_q\ & ((\FD|ALU|Fulladder32|fulladder25|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~64_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|BR|registers~64_q\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\);

-- Location: FF_X19_Y69_N23
\FD|BR|registers~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux4~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~65_q\);

-- Location: LCCOMB_X19_Y69_N16
\FD|ALU|MuxAlu|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux4~2_combout\ = (\FD|BR|registers~65_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder26|Cout~0_combout\))))) # (!\FD|BR|registers~65_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~65_q\,
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y69_N22
\FD|ALU|MuxAlu|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux4~3_combout\ = (\FD|BR|registers~65_q\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|MuxAlu|Mux4~2_combout\))))) # (!\FD|BR|registers~65_q\ & (\FD|ALU|MuxAlu|Mux4~2_combout\ & (\FD|UCALU|instr\(2) $ 
-- (\FD|ALU|Fulladder32|fulladder26|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\,
	datac => \FD|BR|registers~65_q\,
	datad => \FD|ALU|MuxAlu|Mux4~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux4~3_combout\);

-- Location: LCCOMB_X18_Y69_N6
\FD|ALU|Fulladder32|fulladder27|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\ = (\FD|BR|registers~65_q\ & ((\FD|ALU|Fulladder32|fulladder26|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~65_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|BR|registers~65_q\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\);

-- Location: FF_X19_Y69_N25
\FD|BR|registers~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux3~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~66_q\);

-- Location: LCCOMB_X19_Y69_N2
\FD|ALU|MuxAlu|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux3~2_combout\ = (\FD|BR|registers~66_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder27|Cout~0_combout\))))) # (!\FD|BR|registers~66_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\,
	datad => \FD|BR|registers~66_q\,
	combout => \FD|ALU|MuxAlu|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y69_N24
\FD|ALU|MuxAlu|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux3~3_combout\ = (\FD|BR|registers~66_q\ & (\FD|UCALU|instr\(2) $ (((\FD|ALU|MuxAlu|Mux3~2_combout\))))) # (!\FD|BR|registers~66_q\ & (\FD|ALU|MuxAlu|Mux3~2_combout\ & (\FD|UCALU|instr\(2) $ 
-- (\FD|ALU|Fulladder32|fulladder27|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\,
	datac => \FD|BR|registers~66_q\,
	datad => \FD|ALU|MuxAlu|Mux3~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux3~3_combout\);

-- Location: LCCOMB_X18_Y69_N8
\FD|ALU|Fulladder32|fulladder28|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\ = (\FD|BR|registers~66_q\ & ((\FD|ALU|Fulladder32|fulladder27|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~66_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~66_q\,
	datad => \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\);

-- Location: FF_X19_Y69_N27
\FD|BR|registers~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux2~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~67_q\);

-- Location: LCCOMB_X19_Y69_N0
\FD|ALU|MuxAlu|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux2~2_combout\ = (\FD|BR|registers~67_q\ & (\FD|MI|Mux26~0_combout\ $ (((\FD|UCALU|instr\(1) & !\FD|ALU|Fulladder32|fulladder28|Cout~0_combout\))))) # (!\FD|BR|registers~67_q\ & (\FD|UCALU|instr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|BR|registers~67_q\,
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y69_N26
\FD|ALU|MuxAlu|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux2~3_combout\ = (\FD|BR|registers~67_q\ & ((\FD|UCALU|instr\(2) $ (\FD|ALU|MuxAlu|Mux2~2_combout\)))) # (!\FD|BR|registers~67_q\ & (\FD|ALU|MuxAlu|Mux2~2_combout\ & (\FD|ALU|Fulladder32|fulladder28|Cout~0_combout\ $ 
-- (\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~67_q\,
	datad => \FD|ALU|MuxAlu|Mux2~2_combout\,
	combout => \FD|ALU|MuxAlu|Mux2~3_combout\);

-- Location: FF_X19_Y69_N21
\FD|BR|registers~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux1~3_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~68_q\);

-- Location: LCCOMB_X20_Y69_N18
\FD|ALU|MuxAlu|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux1~2_combout\ = (\FD|BR|registers~68_q\ & (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCALU|instr\(2),
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~68_q\,
	combout => \FD|ALU|MuxAlu|Mux1~2_combout\);

-- Location: LCCOMB_X18_Y69_N14
\FD|ALU|Fulladder32|fulladder29|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\ = (\FD|BR|registers~67_q\ & ((\FD|ALU|Fulladder32|fulladder28|Cout~0_combout\) # (\FD|MI|Mux26~0_combout\ $ (\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~67_q\ & 
-- (((\FD|ALU|Fulladder32|fulladder28|Cout~0_combout\ & \FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datab => \FD|BR|registers~67_q\,
	datac => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\);

-- Location: LCCOMB_X19_Y69_N10
\FD|ALU|Fulladder32|fulladder30|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder30|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\ $ (((\FD|BR|registers~68_q\ & !\FD|MI|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~68_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder30|soma~combout\);

-- Location: LCCOMB_X19_Y69_N20
\FD|ALU|MuxAlu|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux1~3_combout\ = (\FD|UCALU|instr\(1) & ((\FD|ALU|Fulladder32|fulladder30|soma~combout\))) # (!\FD|UCALU|instr\(1) & (\FD|ALU|MuxAlu|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|ALU|MuxAlu|Mux1~2_combout\,
	datac => \FD|UCALU|instr\(1),
	datad => \FD|ALU|Fulladder32|fulladder30|soma~combout\,
	combout => \FD|ALU|MuxAlu|Mux1~3_combout\);

-- Location: FF_X18_Y69_N5
\FD|BR|registers~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|MuxAlu|Mux0~1_combout\,
	ena => \FD|MI|Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~69_q\);

-- Location: LCCOMB_X18_Y69_N12
\FD|ALU|Fulladder32|fulladder30|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder30|Cout~0_combout\ = (\FD|BR|registers~68_q\ & ((\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (\FD|MI|Mux26~0_combout\)))) # (!\FD|BR|registers~68_q\ & (\FD|UCALU|instr\(2) & 
-- (\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~68_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder30|Cout~0_combout\);

-- Location: LCCOMB_X18_Y69_N18
\FD|ALU|MuxAlu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux0~0_combout\ = (\FD|UCALU|instr\(1) & (\FD|UCALU|instr\(2) $ (\FD|BR|registers~69_q\ $ (\FD|ALU|Fulladder32|fulladder30|Cout~0_combout\)))) # (!\FD|UCALU|instr\(1) & (\FD|UCALU|instr\(2) & (\FD|BR|registers~69_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~69_q\,
	datad => \FD|ALU|Fulladder32|fulladder30|Cout~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y69_N4
\FD|ALU|MuxAlu|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|Mux0~1_combout\ = \FD|ALU|MuxAlu|Mux0~0_combout\ $ (((\FD|MI|Mux26~0_combout\ & \FD|BR|registers~69_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~69_q\,
	datad => \FD|ALU|MuxAlu|Mux0~0_combout\,
	combout => \FD|ALU|MuxAlu|Mux0~1_combout\);

-- Location: LCCOMB_X20_Y69_N24
\FD|BR|registers~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1062_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~38_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~38_q\,
	combout => \FD|BR|registers~1062_combout\);

-- Location: LCCOMB_X20_Y69_N10
\FD|BR|registers~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1063_combout\ = (\FD|BR|registers~39_q\) # (!\FD|MI|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~39_q\,
	datac => \FD|MI|Mux26~0_combout\,
	combout => \FD|BR|registers~1063_combout\);

-- Location: LCCOMB_X20_Y69_N12
\FD|BR|registers~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1064_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~40_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~40_q\,
	combout => \FD|BR|registers~1064_combout\);

-- Location: LCCOMB_X14_Y69_N22
\FD|BR|registers~1065\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1065_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~41_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~41_q\,
	combout => \FD|BR|registers~1065_combout\);

-- Location: LCCOMB_X14_Y69_N8
\FD|BR|registers~1066\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1066_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~42_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~42_q\,
	combout => \FD|BR|registers~1066_combout\);

-- Location: LCCOMB_X14_Y69_N2
\FD|BR|registers~1067\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1067_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~43_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~43_q\,
	combout => \FD|BR|registers~1067_combout\);

-- Location: LCCOMB_X13_Y69_N2
\FD|BR|registers~1068\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1068_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~44_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~44_q\,
	combout => \FD|BR|registers~1068_combout\);

-- Location: LCCOMB_X12_Y69_N22
\FD|BR|registers~1069\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1069_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~45_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~45_q\,
	combout => \FD|BR|registers~1069_combout\);

-- Location: LCCOMB_X12_Y69_N24
\FD|BR|registers~1070\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1070_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~46_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~46_q\,
	combout => \FD|BR|registers~1070_combout\);

-- Location: LCCOMB_X12_Y69_N30
\FD|BR|registers~1071\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1071_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~47_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~47_q\,
	combout => \FD|BR|registers~1071_combout\);

-- Location: LCCOMB_X12_Y69_N20
\FD|BR|registers~1072\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1072_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~48_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~48_q\,
	combout => \FD|BR|registers~1072_combout\);

-- Location: LCCOMB_X12_Y69_N2
\FD|BR|registers~1073\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1073_combout\ = (\FD|BR|registers~49_q\ & \FD|MI|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BR|registers~49_q\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|BR|registers~1073_combout\);

-- Location: LCCOMB_X12_Y69_N4
\FD|BR|registers~1074\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1074_combout\ = (\FD|BR|registers~50_q\ & \FD|MI|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BR|registers~50_q\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|BR|registers~1074_combout\);

-- Location: LCCOMB_X25_Y69_N6
\FD|BR|registers~1075\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1075_combout\ = (\FD|BR|registers~51_q\ & \FD|MI|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~51_q\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|BR|registers~1075_combout\);

-- Location: LCCOMB_X25_Y69_N16
\FD|BR|registers~1076\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1076_combout\ = (\FD|BR|registers~52_q\ & \FD|MI|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~52_q\,
	datab => \FD|MI|Mux26~0_combout\,
	combout => \FD|BR|registers~1076_combout\);

-- Location: LCCOMB_X25_Y69_N24
\FD|BR|registers~1077\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1077_combout\ = (\FD|BR|registers~53_q\ & \FD|MI|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~53_q\,
	datad => \FD|MI|Mux26~0_combout\,
	combout => \FD|BR|registers~1077_combout\);

-- Location: LCCOMB_X25_Y69_N2
\FD|BR|registers~1078\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1078_combout\ = (\FD|BR|registers~54_q\ & \FD|MI|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~54_q\,
	datac => \FD|MI|Mux26~0_combout\,
	combout => \FD|BR|registers~1078_combout\);

-- Location: LCCOMB_X25_Y69_N20
\FD|BR|registers~1079\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1079_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~55_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~55_q\,
	combout => \FD|BR|registers~1079_combout\);

-- Location: LCCOMB_X13_Y69_N28
\FD|BR|registers~1080\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1080_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~56_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~56_q\,
	combout => \FD|BR|registers~1080_combout\);

-- Location: LCCOMB_X13_Y69_N22
\FD|BR|registers~1081\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1081_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~57_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~57_q\,
	combout => \FD|BR|registers~1081_combout\);

-- Location: LCCOMB_X13_Y69_N4
\FD|BR|registers~1082\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1082_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~58_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~58_q\,
	combout => \FD|BR|registers~1082_combout\);

-- Location: LCCOMB_X13_Y69_N14
\FD|BR|registers~1083\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1083_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~59_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~59_q\,
	combout => \FD|BR|registers~1083_combout\);

-- Location: LCCOMB_X14_Y69_N20
\FD|BR|registers~1084\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1084_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~60_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~60_q\,
	combout => \FD|BR|registers~1084_combout\);

-- Location: LCCOMB_X13_Y69_N12
\FD|BR|registers~1085\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1085_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~61_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~61_q\,
	combout => \FD|BR|registers~1085_combout\);

-- Location: LCCOMB_X25_Y69_N30
\FD|BR|registers~1086\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1086_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~62_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~62_q\,
	combout => \FD|BR|registers~1086_combout\);

-- Location: LCCOMB_X25_Y70_N28
\FD|BR|registers~1087\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1087_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~63_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~63_q\,
	combout => \FD|BR|registers~1087_combout\);

-- Location: LCCOMB_X19_Y69_N8
\FD|BR|registers~1088\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1088_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~64_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~64_q\,
	combout => \FD|BR|registers~1088_combout\);

-- Location: LCCOMB_X25_Y70_N30
\FD|BR|registers~1089\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1089_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~65_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~65_q\,
	combout => \FD|BR|registers~1089_combout\);

-- Location: LCCOMB_X25_Y70_N0
\FD|BR|registers~1090\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1090_combout\ = (\FD|BR|registers~66_q\ & \FD|MI|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~66_q\,
	datac => \FD|MI|Mux26~0_combout\,
	combout => \FD|BR|registers~1090_combout\);

-- Location: LCCOMB_X24_Y70_N28
\FD|BR|registers~1091\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1091_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~67_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux26~0_combout\,
	datac => \FD|BR|registers~67_q\,
	combout => \FD|BR|registers~1091_combout\);

-- Location: LCCOMB_X20_Y69_N2
\FD|BR|registers~1092\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1092_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~68_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~68_q\,
	combout => \FD|BR|registers~1092_combout\);

-- Location: LCCOMB_X18_Y70_N0
\FD|BR|registers~1093\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1093_combout\ = (\FD|MI|Mux26~0_combout\ & \FD|BR|registers~69_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux26~0_combout\,
	datad => \FD|BR|registers~69_q\,
	combout => \FD|BR|registers~1093_combout\);

-- Location: LCCOMB_X19_Y69_N14
\FD|ALU|MuxAlu|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|result~0_combout\ = (\FD|ALU|MuxAlu|Mux0~1_combout\) # ((\FD|UCALU|instr\(1) & (\FD|ALU|Fulladder32|fulladder30|soma~combout\)) # (!\FD|UCALU|instr\(1) & ((\FD|ALU|MuxAlu|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(1),
	datab => \FD|ALU|MuxAlu|Mux0~1_combout\,
	datac => \FD|ALU|Fulladder32|fulladder30|soma~combout\,
	datad => \FD|ALU|MuxAlu|Mux1~2_combout\,
	combout => \FD|ALU|MuxAlu|result~0_combout\);

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
END structure;


