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

-- DATE "10/30/2018 19:41:19"

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
	fio4 : OUT std_logic_vector(3 DOWNTO 0)
	);
END mips;

-- Design Ports Information
-- fio1[0]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[1]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[4]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[5]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[6]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[8]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[9]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[10]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[12]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[13]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[14]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[15]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[16]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[17]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[18]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[19]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[20]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[21]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[22]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[23]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[24]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[25]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[26]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[27]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[28]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[29]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[30]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio1[31]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[0]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[2]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[4]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[7]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[8]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[9]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[10]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[11]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[14]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[15]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[16]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[17]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[18]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[19]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[20]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[21]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[22]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[23]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[24]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[25]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[26]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[27]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[28]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[29]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[30]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio2[31]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[0]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[1]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[2]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[5]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[6]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[7]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[9]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[10]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[11]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[12]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[13]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[14]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[15]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[16]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[17]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[18]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[19]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[20]	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[21]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[22]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[23]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[24]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[25]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[26]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[27]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[28]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[29]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[30]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio3[31]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fio4[3]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \FD|PC|q[2]~0_combout\ : std_logic;
SIGNAL \FD|PC|q\ : std_logic_vector(31 DOWNTO 0);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X45_Y0_N23
\fio1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fio1[0]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\fio1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fio1[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\fio1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\fio1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[3]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\fio1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[4]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\fio1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[5]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\fio1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\fio1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[7]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\fio1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[8]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\fio1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[9]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\fio1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[10]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\fio1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[11]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\fio1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[12]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\fio1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[13]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\fio1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[14]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\fio1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[15]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\fio1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[16]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\fio1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[17]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\fio1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[18]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\fio1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[19]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\fio1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[20]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\fio1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[21]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\fio1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[22]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\fio1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[23]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\fio1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[24]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\fio1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[25]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\fio1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[26]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\fio1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[27]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\fio1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[28]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\fio1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[29]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\fio1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[30]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\fio1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio1[31]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\fio2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fio2[0]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\fio2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\fio2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\fio2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[3]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\fio2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[4]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\fio2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\fio2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\fio2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[7]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\fio2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[8]~output_o\);

-- Location: IOOBUF_X115_Y47_N16
\fio2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[9]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\fio2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[10]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\fio2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[11]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\fio2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[12]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\fio2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[13]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\fio2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[14]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\fio2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[15]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\fio2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[16]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\fio2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[17]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\fio2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[18]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\fio2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[19]~output_o\);

-- Location: IOOBUF_X1_Y73_N23
\fio2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[20]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\fio2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[21]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\fio2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[22]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\fio2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[23]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\fio2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[24]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\fio2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[25]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\fio2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[26]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\fio2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[27]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\fio2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[28]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\fio2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[29]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\fio2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[30]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\fio2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio2[31]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\fio3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\fio3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \fio3[1]~output_o\);

-- Location: IOOBUF_X115_Y47_N23
\fio3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\fio3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[3]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\fio3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[4]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\fio3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\fio3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[6]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\fio3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[7]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\fio3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[8]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\fio3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[9]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\fio3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[10]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\fio3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[11]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\fio3[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[12]~output_o\);

-- Location: IOOBUF_X0_Y59_N23
\fio3[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[13]~output_o\);

-- Location: IOOBUF_X7_Y73_N23
\fio3[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[14]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\fio3[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[15]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\fio3[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[16]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\fio3[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[17]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\fio3[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[18]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\fio3[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[19]~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\fio3[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[20]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\fio3[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[21]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\fio3[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[22]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\fio3[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[23]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\fio3[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[24]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\fio3[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[25]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\fio3[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[26]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\fio3[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[27]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\fio3[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[28]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\fio3[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[29]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\fio3[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[30]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\fio3[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \fio3[31]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
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

-- Location: IOOBUF_X40_Y73_N2
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

-- Location: IOOBUF_X0_Y24_N9
\fio4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FD|PC|q\(2),
	devoe => ww_devoe,
	o => \fio4[2]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
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

-- Location: IOIBUF_X0_Y16_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X1_Y16_N12
\FD|PC|q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FD|PC|q[2]~0_combout\ = !\FD|PC|q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FD|PC|q\(2),
	combout => \FD|PC|q[2]~0_combout\);

-- Location: FF_X1_Y16_N13
\FD|PC|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \FD|PC|q[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FD|PC|q\(2));

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
END structure;


