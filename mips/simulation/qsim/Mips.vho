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

-- DATE "11/06/2018 15:11:52"

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
-- fio1[0]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[4]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[5]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[7]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[9]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[11]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[12]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[13]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[14]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[15]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[16]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[17]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[18]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[19]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[20]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[21]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[22]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[23]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[24]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[25]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[26]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[27]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[28]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[29]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[30]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[31]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[1]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[5]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[6]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[7]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[8]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[9]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[11]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[12]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[13]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[14]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[15]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[16]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[17]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[18]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[19]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[20]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[21]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[22]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[23]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[24]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[25]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[26]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[27]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[28]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[29]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[30]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[31]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[0]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[1]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[6]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[7]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[8]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[9]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[11]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[12]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[13]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[14]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[15]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[16]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[17]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[18]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[19]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[20]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[21]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[22]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[23]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[24]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[25]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[26]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[27]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[28]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[29]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[30]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[31]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[0]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[3]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio5	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio6[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio6[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \FD|BEQAdder|Add0~0_combout\ : std_logic;
SIGNAL \FD|MI|Mux30~0_combout\ : std_logic;
SIGNAL \FD|MI|Mux4~0_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~3\ : std_logic;
SIGNAL \FD|PCAdder|Add0~5\ : std_logic;
SIGNAL \FD|PCAdder|Add0~6_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~4_combout\ : std_logic;
SIGNAL \FD|BEQAdder|Add0~1\ : std_logic;
SIGNAL \FD|BEQAdder|Add0~4\ : std_logic;
SIGNAL \FD|BEQAdder|Add0~6\ : std_logic;
SIGNAL \FD|BEQAdder|Add0~7_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[5]~3_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[5]~4_combout\ : std_logic;
SIGNAL \FD|UCALU|Equal7~0_combout\ : std_logic;
SIGNAL \UC|cntrlWord[9]~0_combout\ : std_logic;
SIGNAL \FD|BR|registers~68_q\ : std_logic;
SIGNAL \FD|BR|registers~1094_combout\ : std_logic;
SIGNAL \FD|BR|registers~38_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder1|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~1095_combout\ : std_logic;
SIGNAL \FD|BR|registers~39_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder2|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~40_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder3|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~41_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder4|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~42_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder5|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~43_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder6|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~44_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder7|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~45_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder8|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~46_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder9|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~47_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder10|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~48_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder11|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~49_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder12|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~50_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder13|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~51_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder14|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~52_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder15|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~53_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder16|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~54_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder17|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~55_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder18|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~56feeder_combout\ : std_logic;
SIGNAL \FD|BR|registers~56_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder19|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~57_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder20|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~58_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder21|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~59_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder22|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~60_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder23|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~61_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder24|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~62_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder25|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~63_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder26|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~64_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder27|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~65_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder28|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~66_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder29|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~67_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder30|soma~combout\ : std_logic;
SIGNAL \FD|BR|registers~69_q\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder30|Cout~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder31|soma~combout\ : std_logic;
SIGNAL \FD|comb~0_combout\ : std_logic;
SIGNAL \FD|BEQAdder|Add0~2_combout\ : std_logic;
SIGNAL \FD|PCAdder|Add0~1\ : std_logic;
SIGNAL \FD|PCAdder|Add0~2_combout\ : std_logic;
SIGNAL \FD|BEQAdder|Add0~3_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[3]~0_combout\ : std_logic;
SIGNAL \FD|MI|Mux31~0_combout\ : std_logic;
SIGNAL \FD|BEQAdder|Add0~5_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[4]~1_combout\ : std_logic;
SIGNAL \FD|MuxProxPC|X[4]~2_combout\ : std_logic;
SIGNAL \FD|MI|Mux18~0_combout\ : std_logic;
SIGNAL \FD|ALU|Fulladder32|fulladder0|soma~0_combout\ : std_logic;
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
SIGNAL \FD|UCALU|instr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FD|PC|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \FD|ALU|MuxAlu|ALT_INV_result~0_combout\ : std_logic;
SIGNAL \FD|BR|ALT_INV_registers~1063_combout\ : std_logic;
SIGNAL \FD|BR|ALT_INV_registers~1062_combout\ : std_logic;
SIGNAL \FD|BR|ALT_INV_registers~39_q\ : std_logic;
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
\FD|BR|ALT_INV_registers~1063_combout\ <= NOT \FD|BR|registers~1063_combout\;
\FD|BR|ALT_INV_registers~1062_combout\ <= NOT \FD|BR|registers~1062_combout\;
\FD|BR|ALT_INV_registers~39_q\ <= NOT \FD|BR|registers~39_q\;
\FD|BR|ALT_INV_registers~38_q\ <= NOT \FD|BR|registers~38_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X100_Y73_N16
\fio1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder0|soma~0_combout\,
	devoe => ww_devoe,
	o => \fio1[0]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\fio1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder1|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[1]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\fio1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder2|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[2]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\fio1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder3|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\fio1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder4|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[4]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\fio1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder5|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\fio1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder6|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[6]~output_o\);

-- Location: IOOBUF_X105_Y73_N9
\fio1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder7|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\fio1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder8|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\fio1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder9|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[9]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\fio1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder10|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[10]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\fio1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder11|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[11]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\fio1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder12|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[12]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\fio1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder13|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[13]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\fio1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder14|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[14]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\fio1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder15|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[15]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\fio1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder16|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[16]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\fio1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder17|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[17]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\fio1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder18|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[18]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\fio1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder19|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[19]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\fio1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder20|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[20]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\fio1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder21|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[21]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\fio1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder22|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[22]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\fio1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder23|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[23]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\fio1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder24|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[24]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\fio1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder25|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[25]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\fio1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder26|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[26]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\fio1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder27|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[27]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\fio1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder28|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[28]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\fio1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder29|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[29]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\fio1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder30|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[30]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\fio1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|ALU|Fulladder32|fulladder31|soma~combout\,
	devoe => ww_devoe,
	o => \fio1[31]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
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

-- Location: IOOBUF_X109_Y73_N9
\fio2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|ALT_INV_registers~39_q\,
	devoe => ww_devoe,
	o => \fio2[1]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X52_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X74_Y73_N23
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

-- Location: IOOBUF_X115_Y69_N16
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

-- Location: IOOBUF_X115_Y69_N23
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

-- Location: IOOBUF_X58_Y73_N23
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

-- Location: IOOBUF_X87_Y73_N2
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

-- Location: IOOBUF_X58_Y73_N9
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

-- Location: IOOBUF_X115_Y64_N9
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

-- Location: IOOBUF_X79_Y73_N9
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

-- Location: IOOBUF_X102_Y73_N2
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

-- Location: IOOBUF_X107_Y73_N9
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

-- Location: IOOBUF_X115_Y69_N2
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

-- Location: IOOBUF_X105_Y73_N2
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X102_Y73_N9
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

-- Location: IOOBUF_X60_Y73_N2
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

-- Location: IOOBUF_X67_Y73_N9
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

-- Location: IOOBUF_X49_Y73_N23
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

-- Location: IOOBUF_X40_Y73_N2
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X42_Y73_N2
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

-- Location: IOOBUF_X42_Y73_N9
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

-- Location: IOOBUF_X62_Y73_N23
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

-- Location: IOOBUF_X52_Y73_N9
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

-- Location: IOOBUF_X89_Y73_N9
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

-- Location: IOOBUF_X85_Y73_N2
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

-- Location: IOOBUF_X89_Y73_N23
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

-- Location: IOOBUF_X74_Y73_N16
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X83_Y73_N9
\fio3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|BR|ALT_INV_registers~1063_combout\,
	devoe => ww_devoe,
	o => \fio3[1]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
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

-- Location: IOOBUF_X62_Y73_N16
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

-- Location: IOOBUF_X45_Y73_N2
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

-- Location: IOOBUF_X45_Y73_N9
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

-- Location: IOOBUF_X85_Y73_N16
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

-- Location: IOOBUF_X115_Y65_N23
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

-- Location: IOOBUF_X115_Y64_N2
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

-- Location: IOOBUF_X115_Y62_N23
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

-- Location: IOOBUF_X111_Y73_N2
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

-- Location: IOOBUF_X111_Y73_N9
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

-- Location: IOOBUF_X115_Y62_N16
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

-- Location: IOOBUF_X113_Y73_N9
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X115_Y66_N16
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

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: IOOBUF_X115_Y65_N16
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

-- Location: IOOBUF_X91_Y73_N16
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

-- Location: IOOBUF_X96_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N23
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X60_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N23
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

-- Location: IOOBUF_X49_Y73_N16
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X85_Y73_N23
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

-- Location: IOOBUF_X83_Y73_N23
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

-- Location: IOOBUF_X65_Y73_N16
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

-- Location: IOOBUF_X94_Y0_N9
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

-- Location: IOOBUF_X89_Y0_N9
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X100_Y73_N23
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

-- Location: IOOBUF_X85_Y73_N9
\fio6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|MI|Mux18~0_combout\,
	devoe => ww_devoe,
	o => \fio6[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\fio6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \UC|cntrlWord[9]~0_combout\,
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

-- Location: LCCOMB_X83_Y69_N6
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

-- Location: LCCOMB_X83_Y69_N16
\FD|BEQAdder|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BEQAdder|Add0~0_combout\ = (\FD|PCAdder|Add0~0_combout\ & (\FD|MI|Mux31~0_combout\ $ (VCC))) # (!\FD|PCAdder|Add0~0_combout\ & (\FD|MI|Mux31~0_combout\ & VCC))
-- \FD|BEQAdder|Add0~1\ = CARRY((\FD|PCAdder|Add0~0_combout\ & \FD|MI|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PCAdder|Add0~0_combout\,
	datab => \FD|MI|Mux31~0_combout\,
	datad => VCC,
	combout => \FD|BEQAdder|Add0~0_combout\,
	cout => \FD|BEQAdder|Add0~1\);

-- Location: LCCOMB_X83_Y69_N4
\FD|MI|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux30~0_combout\ = (!\FD|PC|q\(3) & ((\FD|PC|q\(5)) # ((\FD|PC|q\(2)) # (\FD|PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(3),
	datab => \FD|PC|q\(5),
	datac => \FD|PC|q\(2),
	datad => \FD|PC|q\(4),
	combout => \FD|MI|Mux30~0_combout\);

-- Location: LCCOMB_X82_Y69_N8
\FD|MI|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux4~0_combout\ = (\FD|PC|q\(2) & (!\FD|PC|q\(4) & (!\FD|PC|q\(5) & !\FD|PC|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(2),
	datab => \FD|PC|q\(4),
	datac => \FD|PC|q\(5),
	datad => \FD|PC|q\(3),
	combout => \FD|MI|Mux4~0_combout\);

-- Location: LCCOMB_X83_Y69_N8
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

-- Location: LCCOMB_X83_Y69_N10
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

-- Location: LCCOMB_X83_Y69_N12
\FD|PCAdder|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PCAdder|Add0~6_combout\ = \FD|PCAdder|Add0~5\ $ (\FD|PC|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \FD|PC|q\(5),
	cin => \FD|PCAdder|Add0~5\,
	combout => \FD|PCAdder|Add0~6_combout\);

-- Location: LCCOMB_X83_Y69_N18
\FD|BEQAdder|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BEQAdder|Add0~3_combout\ = (\FD|PCAdder|Add0~2_combout\ & ((\FD|MI|Mux30~0_combout\ & (!\FD|BEQAdder|Add0~1\)) # (!\FD|MI|Mux30~0_combout\ & (\FD|BEQAdder|Add0~1\ & VCC)))) # (!\FD|PCAdder|Add0~2_combout\ & ((\FD|MI|Mux30~0_combout\ & 
-- ((\FD|BEQAdder|Add0~1\) # (GND))) # (!\FD|MI|Mux30~0_combout\ & (!\FD|BEQAdder|Add0~1\))))
-- \FD|BEQAdder|Add0~4\ = CARRY((\FD|PCAdder|Add0~2_combout\ & (\FD|MI|Mux30~0_combout\ & !\FD|BEQAdder|Add0~1\)) # (!\FD|PCAdder|Add0~2_combout\ & ((\FD|MI|Mux30~0_combout\) # (!\FD|BEQAdder|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PCAdder|Add0~2_combout\,
	datab => \FD|MI|Mux30~0_combout\,
	datad => VCC,
	cin => \FD|BEQAdder|Add0~1\,
	combout => \FD|BEQAdder|Add0~3_combout\,
	cout => \FD|BEQAdder|Add0~4\);

-- Location: LCCOMB_X83_Y69_N20
\FD|BEQAdder|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BEQAdder|Add0~5_combout\ = ((\FD|PCAdder|Add0~4_combout\ $ (\FD|PC|q\(4) $ (!\FD|BEQAdder|Add0~4\)))) # (GND)
-- \FD|BEQAdder|Add0~6\ = CARRY((\FD|PCAdder|Add0~4_combout\ & ((\FD|PC|q\(4)) # (!\FD|BEQAdder|Add0~4\))) # (!\FD|PCAdder|Add0~4_combout\ & (\FD|PC|q\(4) & !\FD|BEQAdder|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PCAdder|Add0~4_combout\,
	datab => \FD|PC|q\(4),
	datad => VCC,
	cin => \FD|BEQAdder|Add0~4\,
	combout => \FD|BEQAdder|Add0~5_combout\,
	cout => \FD|BEQAdder|Add0~6\);

-- Location: LCCOMB_X83_Y69_N22
\FD|BEQAdder|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BEQAdder|Add0~7_combout\ = \FD|PC|q\(5) $ (\FD|BEQAdder|Add0~6\ $ (\FD|PCAdder|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FD|PC|q\(5),
	datad => \FD|PCAdder|Add0~6_combout\,
	cin => \FD|BEQAdder|Add0~6\,
	combout => \FD|BEQAdder|Add0~7_combout\);

-- Location: LCCOMB_X81_Y69_N6
\FD|MuxProxPC|X[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[5]~3_combout\ = (!\FD|MI|Mux4~0_combout\ & ((\FD|comb~0_combout\ & ((\FD|BEQAdder|Add0~7_combout\))) # (!\FD|comb~0_combout\ & (\FD|PCAdder|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PCAdder|Add0~6_combout\,
	datab => \FD|BEQAdder|Add0~7_combout\,
	datac => \FD|MI|Mux4~0_combout\,
	datad => \FD|comb~0_combout\,
	combout => \FD|MuxProxPC|X[5]~3_combout\);

-- Location: LCCOMB_X81_Y69_N26
\FD|MuxProxPC|X[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[5]~4_combout\ = (\FD|MuxProxPC|X[5]~3_combout\) # ((!\FD|MI|Mux30~0_combout\ & \FD|MI|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux30~0_combout\,
	datac => \FD|MI|Mux4~0_combout\,
	datad => \FD|MuxProxPC|X[5]~3_combout\,
	combout => \FD|MuxProxPC|X[5]~4_combout\);

-- Location: FF_X81_Y69_N27
\FD|PC|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(5));

-- Location: LCCOMB_X83_Y69_N14
\FD|UCALU|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCALU|Equal7~0_combout\ = (\FD|PC|q\(3)) # ((\FD|PC|q\(5)) # ((\FD|PC|q\(4)) # (!\FD|PC|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(3),
	datab => \FD|PC|q\(5),
	datac => \FD|PC|q\(2),
	datad => \FD|PC|q\(4),
	combout => \FD|UCALU|Equal7~0_combout\);

-- Location: LCCOMB_X83_Y69_N2
\FD|UCALU|instr[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|UCALU|instr\(2) = (\FD|UCALU|Equal7~0_combout\ & ((\FD|MI|Mux18~0_combout\) # (\FD|UCALU|instr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|UCALU|Equal7~0_combout\,
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|UCALU|instr\(2));

-- Location: LCCOMB_X82_Y69_N16
\UC|cntrlWord[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \UC|cntrlWord[9]~0_combout\ = (\FD|PC|q\(3)) # ((\FD|PC|q\(5)) # (\FD|PC|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(3),
	datac => \FD|PC|q\(5),
	datad => \FD|PC|q\(4),
	combout => \UC|cntrlWord[9]~0_combout\);

-- Location: FF_X82_Y69_N31
\FD|BR|registers~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder30|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~68_q\);

-- Location: LCCOMB_X81_Y69_N28
\FD|BR|registers~1094\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1094_combout\ = !\FD|ALU|Fulladder32|fulladder0|soma~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|ALU|Fulladder32|fulladder0|soma~0_combout\,
	combout => \FD|BR|registers~1094_combout\);

-- Location: FF_X81_Y69_N29
\FD|BR|registers~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~1094_combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~38_q\);

-- Location: LCCOMB_X83_Y69_N24
\FD|ALU|Fulladder32|fulladder1|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder1|soma~combout\ = (\FD|MI|Mux18~0_combout\ & (\FD|BR|registers~38_q\ $ (\FD|BR|registers~39_q\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|MI|Mux18~0_combout\ & (!\FD|BR|registers~38_q\ & ((!\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~38_q\,
	datab => \FD|BR|registers~39_q\,
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder1|soma~combout\);

-- Location: LCCOMB_X83_Y69_N0
\FD|BR|registers~1095\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1095_combout\ = !\FD|ALU|Fulladder32|fulladder1|soma~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Fulladder32|fulladder1|soma~combout\,
	combout => \FD|BR|registers~1095_combout\);

-- Location: FF_X81_Y69_N5
\FD|BR|registers~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|BR|registers~1095_combout\,
	sload => VCC,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~39_q\);

-- Location: LCCOMB_X81_Y69_N4
\FD|ALU|Fulladder32|fulladder1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\ = (\FD|BR|registers~38_q\ & ((\FD|UCALU|instr\(2) & ((!\FD|MI|Mux18~0_combout\))) # (!\FD|UCALU|instr\(2) & (!\FD|BR|registers~39_q\)))) # (!\FD|BR|registers~38_q\ & ((\FD|UCALU|instr\(2) $ 
-- (\FD|MI|Mux18~0_combout\)) # (!\FD|BR|registers~39_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~38_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~39_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\);

-- Location: LCCOMB_X81_Y69_N22
\FD|ALU|Fulladder32|fulladder2|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder2|soma~combout\ = \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\ $ (\FD|UCALU|instr\(2) $ (((\FD|BR|registers~40_q\ & \FD|MI|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder1|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~40_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder2|soma~combout\);

-- Location: FF_X81_Y69_N23
\FD|BR|registers~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder2|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~40_q\);

-- Location: LCCOMB_X81_Y69_N14
\FD|ALU|Fulladder32|fulladder2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\ = (\FD|BR|registers~40_q\ & ((\FD|UCALU|instr\(2)) # ((!\FD|BR|registers~38_q\) # (!\FD|BR|registers~39_q\)))) # (!\FD|BR|registers~40_q\ & (\FD|UCALU|instr\(2) & (!\FD|BR|registers~39_q\ & 
-- !\FD|BR|registers~38_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~40_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~39_q\,
	datad => \FD|BR|registers~38_q\,
	combout => \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\);

-- Location: LCCOMB_X81_Y69_N16
\FD|ALU|Fulladder32|fulladder2|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\ = (\FD|MI|Mux18~0_combout\ & (((\FD|ALU|Fulladder32|fulladder2|Cout~0_combout\)))) # (!\FD|MI|Mux18~0_combout\ & ((\FD|BR|registers~40_q\) # ((\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~40_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|ALU|Fulladder32|fulladder2|Cout~0_combout\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\);

-- Location: LCCOMB_X81_Y69_N8
\FD|ALU|Fulladder32|fulladder3|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder3|soma~combout\ = \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\ $ (\FD|UCALU|instr\(2) $ (((\FD|BR|registers~41_q\ & \FD|MI|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~41_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder3|soma~combout\);

-- Location: FF_X81_Y69_N9
\FD|BR|registers~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder3|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~41_q\);

-- Location: LCCOMB_X81_Y69_N20
\FD|ALU|Fulladder32|fulladder3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\ = (\FD|BR|registers~41_q\ & ((\FD|ALU|Fulladder32|fulladder2|Cout~1_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~41_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder2|Cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~41_q\,
	datad => \FD|ALU|Fulladder32|fulladder2|Cout~1_combout\,
	combout => \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\);

-- Location: LCCOMB_X81_Y69_N10
\FD|ALU|Fulladder32|fulladder4|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder4|soma~combout\ = \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\ $ (\FD|UCALU|instr\(2) $ (((\FD|BR|registers~42_q\ & \FD|MI|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~42_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder4|soma~combout\);

-- Location: FF_X81_Y69_N11
\FD|BR|registers~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder4|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~42_q\);

-- Location: LCCOMB_X81_Y69_N18
\FD|ALU|Fulladder32|fulladder4|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\ = (\FD|BR|registers~42_q\ & ((\FD|ALU|Fulladder32|fulladder3|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~42_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~42_q\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder3|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\);

-- Location: LCCOMB_X79_Y69_N4
\FD|ALU|Fulladder32|fulladder5|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder5|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~43_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~43_q\,
	datad => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder5|soma~combout\);

-- Location: FF_X80_Y69_N29
\FD|BR|registers~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|Fulladder32|fulladder5|soma~combout\,
	sload => VCC,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~43_q\);

-- Location: LCCOMB_X80_Y69_N28
\FD|ALU|Fulladder32|fulladder5|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\ = (\FD|BR|registers~43_q\ & ((\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~43_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder4|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~43_q\,
	datad => \FD|ALU|Fulladder32|fulladder4|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\);

-- Location: LCCOMB_X84_Y69_N4
\FD|ALU|Fulladder32|fulladder6|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder6|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder5|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~44_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\,
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~44_q\,
	combout => \FD|ALU|Fulladder32|fulladder6|soma~combout\);

-- Location: FF_X80_Y69_N11
\FD|BR|registers~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|Fulladder32|fulladder6|soma~combout\,
	sload => VCC,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~44_q\);

-- Location: LCCOMB_X80_Y69_N10
\FD|ALU|Fulladder32|fulladder6|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\ = (\FD|BR|registers~44_q\ & ((\FD|ALU|Fulladder32|fulladder5|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~44_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder5|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~44_q\,
	datad => \FD|ALU|Fulladder32|fulladder5|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\);

-- Location: LCCOMB_X84_Y69_N14
\FD|ALU|Fulladder32|fulladder7|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder7|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder6|Cout~0_combout\ $ (((\FD|BR|registers~45_q\ & \FD|MI|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\,
	datac => \FD|BR|registers~45_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder7|soma~combout\);

-- Location: FF_X80_Y69_N17
\FD|BR|registers~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|Fulladder32|fulladder7|soma~combout\,
	sload => VCC,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~45_q\);

-- Location: LCCOMB_X80_Y69_N16
\FD|ALU|Fulladder32|fulladder7|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\ = (\FD|BR|registers~45_q\ & ((\FD|ALU|Fulladder32|fulladder6|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~45_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder6|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~45_q\,
	datad => \FD|ALU|Fulladder32|fulladder6|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\);

-- Location: LCCOMB_X84_Y69_N28
\FD|ALU|Fulladder32|fulladder8|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder8|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder7|Cout~0_combout\ $ (((\FD|BR|registers~46_q\ & \FD|MI|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|BR|registers~46_q\,
	datac => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder8|soma~combout\);

-- Location: FF_X80_Y69_N3
\FD|BR|registers~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|Fulladder32|fulladder8|soma~combout\,
	sload => VCC,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~46_q\);

-- Location: LCCOMB_X80_Y69_N2
\FD|ALU|Fulladder32|fulladder8|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\ = (\FD|BR|registers~46_q\ & ((\FD|ALU|Fulladder32|fulladder7|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~46_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder7|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~46_q\,
	datad => \FD|ALU|Fulladder32|fulladder7|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\);

-- Location: LCCOMB_X84_Y69_N2
\FD|ALU|Fulladder32|fulladder9|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder9|soma~combout\ = \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\ $ (\FD|UCALU|instr\(2) $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~47_q\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder9|soma~combout\);

-- Location: FF_X80_Y69_N25
\FD|BR|registers~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|Fulladder32|fulladder9|soma~combout\,
	sload => VCC,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~47_q\);

-- Location: LCCOMB_X80_Y69_N24
\FD|ALU|Fulladder32|fulladder9|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\ = (\FD|BR|registers~47_q\ & ((\FD|ALU|Fulladder32|fulladder8|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~47_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder8|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~47_q\,
	datad => \FD|ALU|Fulladder32|fulladder8|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\);

-- Location: LCCOMB_X84_Y69_N20
\FD|ALU|Fulladder32|fulladder10|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder10|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder9|Cout~0_combout\ $ (((\FD|BR|registers~48_q\ & \FD|MI|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|BR|registers~48_q\,
	datac => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder10|soma~combout\);

-- Location: FF_X80_Y69_N31
\FD|BR|registers~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|Fulladder32|fulladder10|soma~combout\,
	sload => VCC,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~48_q\);

-- Location: LCCOMB_X80_Y69_N30
\FD|ALU|Fulladder32|fulladder10|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\ = (\FD|BR|registers~48_q\ & ((\FD|ALU|Fulladder32|fulladder9|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~48_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder9|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~48_q\,
	datad => \FD|ALU|Fulladder32|fulladder9|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\);

-- Location: LCCOMB_X84_Y69_N26
\FD|ALU|Fulladder32|fulladder11|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder11|soma~combout\ = \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\ $ (\FD|UCALU|instr\(2) $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~49_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~49_q\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder11|soma~combout\);

-- Location: FF_X84_Y69_N27
\FD|BR|registers~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder11|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~49_q\);

-- Location: LCCOMB_X80_Y69_N20
\FD|ALU|Fulladder32|fulladder11|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\ = (\FD|BR|registers~49_q\ & ((\FD|ALU|Fulladder32|fulladder10|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~49_q\ & (\FD|UCALU|instr\(2) & 
-- (\FD|ALU|Fulladder32|fulladder10|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~49_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|ALU|Fulladder32|fulladder10|Cout~0_combout\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\);

-- Location: LCCOMB_X84_Y69_N12
\FD|ALU|Fulladder32|fulladder12|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder12|soma~combout\ = \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\ $ (\FD|UCALU|instr\(2) $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~50_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\,
	datac => \FD|BR|registers~50_q\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder12|soma~combout\);

-- Location: FF_X84_Y69_N13
\FD|BR|registers~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder12|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~50_q\);

-- Location: LCCOMB_X80_Y69_N18
\FD|ALU|Fulladder32|fulladder12|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\ = (\FD|BR|registers~50_q\ & ((\FD|ALU|Fulladder32|fulladder11|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~50_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder11|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~50_q\,
	datad => \FD|ALU|Fulladder32|fulladder11|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\);

-- Location: LCCOMB_X87_Y69_N4
\FD|ALU|Fulladder32|fulladder13|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder13|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder12|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~51_q\,
	datad => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder13|soma~combout\);

-- Location: FF_X87_Y69_N5
\FD|BR|registers~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder13|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~51_q\);

-- Location: LCCOMB_X80_Y69_N0
\FD|ALU|Fulladder32|fulladder13|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\ = (\FD|BR|registers~51_q\ & ((\FD|ALU|Fulladder32|fulladder12|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~51_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~51_q\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder12|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\);

-- Location: LCCOMB_X87_Y69_N22
\FD|ALU|Fulladder32|fulladder14|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder14|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder13|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~52_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~52_q\,
	datad => \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder14|soma~combout\);

-- Location: FF_X87_Y69_N23
\FD|BR|registers~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder14|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~52_q\);

-- Location: LCCOMB_X80_Y69_N22
\FD|ALU|Fulladder32|fulladder14|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\ = (\FD|BR|registers~52_q\ & ((\FD|ALU|Fulladder32|fulladder13|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~52_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~52_q\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder13|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\);

-- Location: LCCOMB_X87_Y69_N12
\FD|ALU|Fulladder32|fulladder15|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder15|soma~combout\ = \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\ $ (\FD|UCALU|instr\(2) $ (((\FD|BR|registers~53_q\ & \FD|MI|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~53_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder15|soma~combout\);

-- Location: FF_X87_Y69_N13
\FD|BR|registers~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder15|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~53_q\);

-- Location: LCCOMB_X80_Y69_N4
\FD|ALU|Fulladder32|fulladder15|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\ = (\FD|BR|registers~53_q\ & ((\FD|ALU|Fulladder32|fulladder14|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~53_q\ & 
-- (((\FD|ALU|Fulladder32|fulladder14|Cout~0_combout\ & \FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~53_q\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder14|Cout~0_combout\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\);

-- Location: LCCOMB_X87_Y69_N18
\FD|ALU|Fulladder32|fulladder16|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder16|soma~combout\ = \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\ $ (\FD|UCALU|instr\(2) $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~54_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~54_q\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder16|soma~combout\);

-- Location: FF_X87_Y69_N19
\FD|BR|registers~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder16|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~54_q\);

-- Location: LCCOMB_X80_Y69_N14
\FD|ALU|Fulladder32|fulladder16|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\ = (\FD|BR|registers~54_q\ & ((\FD|ALU|Fulladder32|fulladder15|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~54_q\ & 
-- (((\FD|ALU|Fulladder32|fulladder15|Cout~0_combout\ & \FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~54_q\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder15|Cout~0_combout\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\);

-- Location: LCCOMB_X87_Y69_N28
\FD|ALU|Fulladder32|fulladder17|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder17|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder16|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~55_q\,
	datad => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder17|soma~combout\);

-- Location: FF_X87_Y69_N29
\FD|BR|registers~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder17|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~55_q\);

-- Location: LCCOMB_X80_Y69_N8
\FD|ALU|Fulladder32|fulladder17|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ = (\FD|BR|registers~55_q\ & ((\FD|ALU|Fulladder32|fulladder16|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~55_q\ & 
-- (((\FD|ALU|Fulladder32|fulladder16|Cout~0_combout\ & \FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~55_q\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder16|Cout~0_combout\,
	datad => \FD|UCALU|instr\(2),
	combout => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\);

-- Location: LCCOMB_X87_Y69_N16
\FD|ALU|Fulladder32|fulladder18|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder18|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ $ (((\FD|BR|registers~56_q\ & \FD|MI|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~56_q\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder18|soma~combout\);

-- Location: LCCOMB_X87_Y69_N2
\FD|BR|registers~56feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~56feeder_combout\ = \FD|ALU|Fulladder32|fulladder18|soma~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \FD|ALU|Fulladder32|fulladder18|soma~combout\,
	combout => \FD|BR|registers~56feeder_combout\);

-- Location: FF_X87_Y69_N3
\FD|BR|registers~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BR|registers~56feeder_combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~56_q\);

-- Location: LCCOMB_X80_Y69_N6
\FD|ALU|Fulladder32|fulladder18|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\ = (\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ & (((\FD|UCALU|instr\(2)) # (\FD|BR|registers~56_q\)))) # (!\FD|ALU|Fulladder32|fulladder17|Cout~0_combout\ & (\FD|BR|registers~56_q\ & 
-- (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|ALU|Fulladder32|fulladder17|Cout~0_combout\,
	datad => \FD|BR|registers~56_q\,
	combout => \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\);

-- Location: LCCOMB_X87_Y69_N8
\FD|ALU|Fulladder32|fulladder19|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder19|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder18|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~57_q\,
	datad => \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder19|soma~combout\);

-- Location: FF_X87_Y69_N11
\FD|BR|registers~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|Fulladder32|fulladder19|soma~combout\,
	sload => VCC,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~57_q\);

-- Location: LCCOMB_X80_Y69_N12
\FD|ALU|Fulladder32|fulladder19|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ = (\FD|BR|registers~57_q\ & ((\FD|ALU|Fulladder32|fulladder18|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~57_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~57_q\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder18|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\);

-- Location: LCCOMB_X79_Y69_N10
\FD|ALU|Fulladder32|fulladder20|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder20|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder19|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~58_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~58_q\,
	datad => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder20|soma~combout\);

-- Location: FF_X79_Y69_N11
\FD|BR|registers~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder20|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~58_q\);

-- Location: LCCOMB_X80_Y69_N26
\FD|ALU|Fulladder32|fulladder20|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\ = (\FD|BR|registers~58_q\ & ((\FD|ALU|Fulladder32|fulladder19|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~58_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~58_q\,
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder19|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\);

-- Location: LCCOMB_X79_Y69_N8
\FD|ALU|Fulladder32|fulladder21|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder21|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder20|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~59_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~59_q\,
	datad => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder21|soma~combout\);

-- Location: FF_X79_Y69_N9
\FD|BR|registers~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder21|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~59_q\);

-- Location: LCCOMB_X79_Y69_N20
\FD|ALU|Fulladder32|fulladder21|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\ = (\FD|BR|registers~59_q\ & ((\FD|ALU|Fulladder32|fulladder20|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~59_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder20|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~59_q\,
	datad => \FD|ALU|Fulladder32|fulladder20|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\);

-- Location: LCCOMB_X79_Y69_N30
\FD|ALU|Fulladder32|fulladder22|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder22|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder21|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~60_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~60_q\,
	datad => \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder22|soma~combout\);

-- Location: FF_X79_Y69_N31
\FD|BR|registers~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder22|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~60_q\);

-- Location: LCCOMB_X79_Y69_N12
\FD|ALU|Fulladder32|fulladder22|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\ = (\FD|BR|registers~60_q\ & ((\FD|ALU|Fulladder32|fulladder21|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~60_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder21|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~60_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder21|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\);

-- Location: LCCOMB_X79_Y69_N18
\FD|ALU|Fulladder32|fulladder23|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder23|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder22|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~61_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~61_q\,
	datad => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder23|soma~combout\);

-- Location: FF_X79_Y69_N19
\FD|BR|registers~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder23|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~61_q\);

-- Location: LCCOMB_X79_Y69_N28
\FD|ALU|Fulladder32|fulladder23|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\ = (\FD|BR|registers~61_q\ & ((\FD|ALU|Fulladder32|fulladder22|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~61_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder22|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|UCALU|instr\(2),
	datab => \FD|BR|registers~61_q\,
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder22|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\);

-- Location: LCCOMB_X79_Y69_N26
\FD|ALU|Fulladder32|fulladder24|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder24|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~62_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~62_q\,
	datad => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder24|soma~combout\);

-- Location: FF_X79_Y69_N27
\FD|BR|registers~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder24|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~62_q\);

-- Location: LCCOMB_X79_Y69_N16
\FD|ALU|Fulladder32|fulladder24|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\ = (\FD|BR|registers~62_q\ & ((\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~62_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder23|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~62_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder23|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\);

-- Location: LCCOMB_X79_Y69_N6
\FD|ALU|Fulladder32|fulladder25|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder25|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder24|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~63_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~63_q\,
	datad => \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder25|soma~combout\);

-- Location: FF_X79_Y69_N7
\FD|BR|registers~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder25|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~63_q\);

-- Location: LCCOMB_X79_Y69_N24
\FD|ALU|Fulladder32|fulladder25|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\ = (\FD|BR|registers~63_q\ & ((\FD|ALU|Fulladder32|fulladder24|Cout~0_combout\) # (\FD|UCALU|instr\(2) $ (!\FD|MI|Mux18~0_combout\)))) # (!\FD|BR|registers~63_q\ & (\FD|UCALU|instr\(2) & 
-- ((\FD|ALU|Fulladder32|fulladder24|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~63_q\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|ALU|Fulladder32|fulladder24|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\);

-- Location: LCCOMB_X79_Y69_N2
\FD|ALU|Fulladder32|fulladder26|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder26|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder25|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~64_q\,
	datad => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder26|soma~combout\);

-- Location: FF_X79_Y69_N3
\FD|BR|registers~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder26|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~64_q\);

-- Location: LCCOMB_X82_Y69_N12
\FD|ALU|Fulladder32|fulladder26|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\ = (\FD|BR|registers~64_q\ & ((\FD|ALU|Fulladder32|fulladder25|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~64_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|BR|registers~64_q\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder25|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\);

-- Location: LCCOMB_X82_Y69_N22
\FD|ALU|Fulladder32|fulladder27|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder27|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder26|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~65_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|BR|registers~65_q\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder27|soma~combout\);

-- Location: FF_X82_Y69_N19
\FD|BR|registers~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \FD|ALU|Fulladder32|fulladder27|soma~combout\,
	sload => VCC,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~65_q\);

-- Location: LCCOMB_X82_Y69_N18
\FD|ALU|Fulladder32|fulladder27|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\ = (\FD|BR|registers~65_q\ & ((\FD|ALU|Fulladder32|fulladder26|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~65_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~65_q\,
	datad => \FD|ALU|Fulladder32|fulladder26|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\);

-- Location: LCCOMB_X82_Y69_N20
\FD|ALU|Fulladder32|fulladder28|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder28|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder27|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~66_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~66_q\,
	datad => \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder28|soma~combout\);

-- Location: FF_X82_Y69_N21
\FD|BR|registers~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder28|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~66_q\);

-- Location: LCCOMB_X82_Y69_N24
\FD|ALU|Fulladder32|fulladder28|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\ = (\FD|BR|registers~66_q\ & ((\FD|ALU|Fulladder32|fulladder27|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~66_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|BR|registers~66_q\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder27|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\);

-- Location: LCCOMB_X82_Y69_N14
\FD|ALU|Fulladder32|fulladder29|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder29|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder28|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~67_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~67_q\,
	datad => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder29|soma~combout\);

-- Location: FF_X82_Y69_N15
\FD|BR|registers~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder29|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~67_q\);

-- Location: LCCOMB_X82_Y69_N0
\FD|ALU|Fulladder32|fulladder29|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\ = (\FD|BR|registers~67_q\ & ((\FD|ALU|Fulladder32|fulladder28|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~67_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~67_q\,
	datad => \FD|ALU|Fulladder32|fulladder28|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\);

-- Location: LCCOMB_X82_Y69_N30
\FD|ALU|Fulladder32|fulladder30|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder30|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~68_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~68_q\,
	datad => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder30|soma~combout\);

-- Location: FF_X82_Y69_N3
\FD|BR|registers~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|ALU|Fulladder32|fulladder31|soma~combout\,
	ena => \UC|cntrlWord[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|BR|registers~69_q\);

-- Location: LCCOMB_X82_Y69_N28
\FD|ALU|Fulladder32|fulladder30|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder30|Cout~0_combout\ = (\FD|BR|registers~68_q\ & ((\FD|ALU|Fulladder32|fulladder29|Cout~0_combout\) # (\FD|MI|Mux18~0_combout\ $ (!\FD|UCALU|instr\(2))))) # (!\FD|BR|registers~68_q\ & (((\FD|UCALU|instr\(2) & 
-- \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|BR|registers~68_q\,
	datac => \FD|UCALU|instr\(2),
	datad => \FD|ALU|Fulladder32|fulladder29|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder30|Cout~0_combout\);

-- Location: LCCOMB_X82_Y69_N2
\FD|ALU|Fulladder32|fulladder31|soma\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder31|soma~combout\ = \FD|UCALU|instr\(2) $ (\FD|ALU|Fulladder32|fulladder30|Cout~0_combout\ $ (((\FD|MI|Mux18~0_combout\ & \FD|BR|registers~69_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datab => \FD|UCALU|instr\(2),
	datac => \FD|BR|registers~69_q\,
	datad => \FD|ALU|Fulladder32|fulladder30|Cout~0_combout\,
	combout => \FD|ALU|Fulladder32|fulladder31|soma~combout\);

-- Location: LCCOMB_X82_Y69_N6
\FD|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|comb~0_combout\ = (\FD|MI|Mux18~0_combout\ & (!\FD|ALU|Fulladder32|fulladder30|soma~combout\ & !\FD|ALU|Fulladder32|fulladder31|soma~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|MI|Mux18~0_combout\,
	datac => \FD|ALU|Fulladder32|fulladder30|soma~combout\,
	datad => \FD|ALU|Fulladder32|fulladder31|soma~combout\,
	combout => \FD|comb~0_combout\);

-- Location: LCCOMB_X82_Y69_N4
\FD|BEQAdder|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BEQAdder|Add0~2_combout\ = (\FD|comb~0_combout\ & ((\FD|BEQAdder|Add0~0_combout\))) # (!\FD|comb~0_combout\ & (\FD|PCAdder|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PCAdder|Add0~0_combout\,
	datab => \FD|BEQAdder|Add0~0_combout\,
	datad => \FD|comb~0_combout\,
	combout => \FD|BEQAdder|Add0~2_combout\);

-- Location: FF_X82_Y69_N5
\FD|PC|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|BEQAdder|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(2));

-- Location: LCCOMB_X81_Y69_N2
\FD|MuxProxPC|X[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[3]~0_combout\ = (!\FD|MI|Mux4~0_combout\ & ((\FD|comb~0_combout\ & (\FD|BEQAdder|Add0~3_combout\)) # (!\FD|comb~0_combout\ & ((\FD|PCAdder|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BEQAdder|Add0~3_combout\,
	datab => \FD|PCAdder|Add0~2_combout\,
	datac => \FD|MI|Mux4~0_combout\,
	datad => \FD|comb~0_combout\,
	combout => \FD|MuxProxPC|X[3]~0_combout\);

-- Location: FF_X81_Y69_N3
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

-- Location: LCCOMB_X83_Y69_N26
\FD|MI|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux31~0_combout\ = (\FD|PC|q\(2) & ((\FD|PC|q\(3)) # ((\FD|PC|q\(5)) # (\FD|PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(3),
	datab => \FD|PC|q\(5),
	datac => \FD|PC|q\(2),
	datad => \FD|PC|q\(4),
	combout => \FD|MI|Mux31~0_combout\);

-- Location: LCCOMB_X82_Y69_N26
\FD|MuxProxPC|X[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[4]~1_combout\ = (!\FD|MI|Mux4~0_combout\ & ((\FD|comb~0_combout\ & (\FD|BEQAdder|Add0~5_combout\)) # (!\FD|comb~0_combout\ & ((\FD|PCAdder|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BEQAdder|Add0~5_combout\,
	datab => \FD|MI|Mux4~0_combout\,
	datac => \FD|PCAdder|Add0~4_combout\,
	datad => \FD|comb~0_combout\,
	combout => \FD|MuxProxPC|X[4]~1_combout\);

-- Location: LCCOMB_X81_Y69_N12
\FD|MuxProxPC|X[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MuxProxPC|X[4]~2_combout\ = (\FD|MuxProxPC|X[4]~1_combout\) # ((\FD|MI|Mux31~0_combout\ & \FD|MI|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux31~0_combout\,
	datac => \FD|MI|Mux4~0_combout\,
	datad => \FD|MuxProxPC|X[4]~1_combout\,
	combout => \FD|MuxProxPC|X[4]~2_combout\);

-- Location: FF_X81_Y69_N13
\FD|PC|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \FD|MuxProxPC|X[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(4));

-- Location: LCCOMB_X81_Y69_N24
\FD|MI|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|MI|Mux18~0_combout\ = (!\FD|PC|q\(4) & (!\FD|PC|q\(3) & (!\FD|PC|q\(5) & !\FD|PC|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|PC|q\(4),
	datab => \FD|PC|q\(3),
	datac => \FD|PC|q\(5),
	datad => \FD|PC|q\(2),
	combout => \FD|MI|Mux18~0_combout\);

-- Location: LCCOMB_X81_Y69_N30
\FD|ALU|Fulladder32|fulladder0|soma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|Fulladder32|fulladder0|soma~0_combout\ = (\FD|MI|Mux18~0_combout\ & \FD|BR|registers~38_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~38_q\,
	combout => \FD|ALU|Fulladder32|fulladder0|soma~0_combout\);

-- Location: LCCOMB_X83_Y69_N30
\FD|BR|registers~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1062_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~38_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~38_q\,
	combout => \FD|BR|registers~1062_combout\);

-- Location: LCCOMB_X83_Y69_N28
\FD|BR|registers~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1063_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~39_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~39_q\,
	combout => \FD|BR|registers~1063_combout\);

-- Location: LCCOMB_X81_Y72_N0
\FD|BR|registers~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1064_combout\ = (\FD|BR|registers~40_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~40_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1064_combout\);

-- Location: LCCOMB_X81_Y69_N0
\FD|BR|registers~1065\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1065_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~41_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux18~0_combout\,
	datac => \FD|BR|registers~41_q\,
	combout => \FD|BR|registers~1065_combout\);

-- Location: LCCOMB_X77_Y69_N24
\FD|BR|registers~1066\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1066_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~42_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~42_q\,
	combout => \FD|BR|registers~1066_combout\);

-- Location: LCCOMB_X77_Y69_N6
\FD|BR|registers~1067\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1067_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~43_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~43_q\,
	combout => \FD|BR|registers~1067_combout\);

-- Location: LCCOMB_X84_Y69_N18
\FD|BR|registers~1068\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1068_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~44_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~44_q\,
	combout => \FD|BR|registers~1068_combout\);

-- Location: LCCOMB_X84_Y69_N24
\FD|BR|registers~1069\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1069_combout\ = (\FD|BR|registers~45_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BR|registers~45_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1069_combout\);

-- Location: LCCOMB_X84_Y69_N22
\FD|BR|registers~1070\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1070_combout\ = (\FD|BR|registers~46_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~46_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1070_combout\);

-- Location: LCCOMB_X84_Y69_N16
\FD|BR|registers~1071\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1071_combout\ = (\FD|BR|registers~47_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BR|registers~47_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1071_combout\);

-- Location: LCCOMB_X84_Y69_N10
\FD|BR|registers~1072\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1072_combout\ = (\FD|BR|registers~48_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~48_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1072_combout\);

-- Location: LCCOMB_X84_Y69_N8
\FD|BR|registers~1073\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1073_combout\ = (\FD|BR|registers~49_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~49_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1073_combout\);

-- Location: LCCOMB_X84_Y69_N30
\FD|BR|registers~1074\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1074_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~50_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~50_q\,
	combout => \FD|BR|registers~1074_combout\);

-- Location: LCCOMB_X87_Y69_N10
\FD|BR|registers~1075\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1075_combout\ = (\FD|BR|registers~51_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~51_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1075_combout\);

-- Location: LCCOMB_X87_Y69_N30
\FD|BR|registers~1076\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1076_combout\ = (\FD|BR|registers~52_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~52_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1076_combout\);

-- Location: LCCOMB_X87_Y69_N20
\FD|BR|registers~1077\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1077_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~53_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~53_q\,
	combout => \FD|BR|registers~1077_combout\);

-- Location: LCCOMB_X87_Y69_N14
\FD|BR|registers~1078\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1078_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~54_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~54_q\,
	combout => \FD|BR|registers~1078_combout\);

-- Location: LCCOMB_X87_Y69_N0
\FD|BR|registers~1079\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1079_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~55_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~55_q\,
	combout => \FD|BR|registers~1079_combout\);

-- Location: LCCOMB_X87_Y69_N26
\FD|BR|registers~1080\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1080_combout\ = (\FD|BR|registers~56_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~56_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1080_combout\);

-- Location: LCCOMB_X87_Y69_N24
\FD|BR|registers~1081\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1081_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~57_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~57_q\,
	combout => \FD|BR|registers~1081_combout\);

-- Location: LCCOMB_X77_Y69_N28
\FD|BR|registers~1082\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1082_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~58_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~58_q\,
	combout => \FD|BR|registers~1082_combout\);

-- Location: LCCOMB_X79_Y69_N22
\FD|BR|registers~1083\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1083_combout\ = (\FD|BR|registers~59_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BR|registers~59_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1083_combout\);

-- Location: LCCOMB_X77_Y69_N26
\FD|BR|registers~1084\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1084_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~60_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~60_q\,
	combout => \FD|BR|registers~1084_combout\);

-- Location: LCCOMB_X77_Y69_N8
\FD|BR|registers~1085\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1085_combout\ = (\FD|BR|registers~61_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~61_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1085_combout\);

-- Location: LCCOMB_X79_Y69_N0
\FD|BR|registers~1086\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1086_combout\ = (\FD|BR|registers~62_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~62_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1086_combout\);

-- Location: LCCOMB_X79_Y69_N14
\FD|BR|registers~1087\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1087_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~63_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~63_q\,
	combout => \FD|BR|registers~1087_combout\);

-- Location: LCCOMB_X77_Y69_N14
\FD|BR|registers~1088\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1088_combout\ = (\FD|BR|registers~64_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FD|BR|registers~64_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1088_combout\);

-- Location: LCCOMB_X77_Y69_N4
\FD|BR|registers~1089\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1089_combout\ = (\FD|BR|registers~65_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BR|registers~65_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1089_combout\);

-- Location: LCCOMB_X87_Y69_N6
\FD|BR|registers~1090\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1090_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~66_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~66_q\,
	combout => \FD|BR|registers~1090_combout\);

-- Location: LCCOMB_X85_Y72_N0
\FD|BR|registers~1091\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1091_combout\ = (\FD|BR|registers~67_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|BR|registers~67_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1091_combout\);

-- Location: LCCOMB_X82_Y69_N10
\FD|BR|registers~1092\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1092_combout\ = (!\FD|MI|Mux18~0_combout\ & \FD|BR|registers~68_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|MI|Mux18~0_combout\,
	datad => \FD|BR|registers~68_q\,
	combout => \FD|BR|registers~1092_combout\);

-- Location: LCCOMB_X77_Y69_N22
\FD|BR|registers~1093\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|BR|registers~1093_combout\ = (\FD|BR|registers~69_q\ & !\FD|MI|Mux18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|BR|registers~69_q\,
	datad => \FD|MI|Mux18~0_combout\,
	combout => \FD|BR|registers~1093_combout\);

-- Location: LCCOMB_X100_Y72_N0
\FD|ALU|MuxAlu|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|ALU|MuxAlu|result~0_combout\ = (\FD|ALU|Fulladder32|fulladder30|soma~combout\) # (\FD|ALU|Fulladder32|fulladder31|soma~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FD|ALU|Fulladder32|fulladder30|soma~combout\,
	datac => \FD|ALU|Fulladder32|fulladder31|soma~combout\,
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


