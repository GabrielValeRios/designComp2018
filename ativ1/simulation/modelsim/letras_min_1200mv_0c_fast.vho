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

-- DATE "09/01/2018 18:33:18"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	letras IS
    PORT (
	OUT6 : OUT std_logic;
	CLK : IN std_logic;
	BIT6 : IN std_logic;
	OUT5 : OUT std_logic;
	BIT5 : IN std_logic;
	OUT4 : OUT std_logic;
	BIT4 : IN std_logic;
	OUT3 : OUT std_logic;
	BIT3 : IN std_logic;
	OUT2 : OUT std_logic;
	Entrada : IN std_logic;
	OUT1 : OUT std_logic;
	OUT0 : OUT std_logic
	);
END letras;

-- Design Ports Information
-- OUT6	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT5	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT4	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT3	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT1	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT0	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIT6	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIT5	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIT4	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BIT3	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Entrada	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF letras IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OUT6 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_BIT6 : std_logic;
SIGNAL ww_OUT5 : std_logic;
SIGNAL ww_BIT5 : std_logic;
SIGNAL ww_OUT4 : std_logic;
SIGNAL ww_BIT4 : std_logic;
SIGNAL ww_OUT3 : std_logic;
SIGNAL ww_BIT3 : std_logic;
SIGNAL ww_OUT2 : std_logic;
SIGNAL ww_Entrada : std_logic;
SIGNAL ww_OUT1 : std_logic;
SIGNAL ww_OUT0 : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OUT6~output_o\ : std_logic;
SIGNAL \OUT5~output_o\ : std_logic;
SIGNAL \OUT4~output_o\ : std_logic;
SIGNAL \OUT3~output_o\ : std_logic;
SIGNAL \OUT2~output_o\ : std_logic;
SIGNAL \OUT1~output_o\ : std_logic;
SIGNAL \OUT0~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \BIT6~input_o\ : std_logic;
SIGNAL \dff0~feeder_combout\ : std_logic;
SIGNAL \dff0~q\ : std_logic;
SIGNAL \BIT5~input_o\ : std_logic;
SIGNAL \dff1~feeder_combout\ : std_logic;
SIGNAL \dff1~q\ : std_logic;
SIGNAL \BIT4~input_o\ : std_logic;
SIGNAL \dff2~feeder_combout\ : std_logic;
SIGNAL \dff2~q\ : std_logic;
SIGNAL \BIT3~input_o\ : std_logic;
SIGNAL \dff3~feeder_combout\ : std_logic;
SIGNAL \dff3~q\ : std_logic;
SIGNAL \Entrada~input_o\ : std_logic;
SIGNAL \or2~0_combout\ : std_logic;
SIGNAL \dff7~q\ : std_logic;
SIGNAL \or3~combout\ : std_logic;
SIGNAL \dff8~q\ : std_logic;
SIGNAL \or1~combout\ : std_logic;
SIGNAL \dff4~q\ : std_logic;
SIGNAL \dff5~0_combout\ : std_logic;
SIGNAL \dff5~q\ : std_logic;
SIGNAL \dff6~0_combout\ : std_logic;
SIGNAL \dff6~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

OUT6 <= ww_OUT6;
ww_CLK <= CLK;
ww_BIT6 <= BIT6;
OUT5 <= ww_OUT5;
ww_BIT5 <= BIT5;
OUT4 <= ww_OUT4;
ww_BIT4 <= BIT4;
OUT3 <= ww_OUT3;
ww_BIT3 <= BIT3;
OUT2 <= ww_OUT2;
ww_Entrada <= Entrada;
OUT1 <= ww_OUT1;
OUT0 <= ww_OUT0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N16
\OUT6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff0~q\,
	devoe => ww_devoe,
	o => \OUT6~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\OUT5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff1~q\,
	devoe => ww_devoe,
	o => \OUT5~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\OUT4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff2~q\,
	devoe => ww_devoe,
	o => \OUT4~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\OUT3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff3~q\,
	devoe => ww_devoe,
	o => \OUT3~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\OUT2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff4~q\,
	devoe => ww_devoe,
	o => \OUT2~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\OUT1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff5~q\,
	devoe => ww_devoe,
	o => \OUT1~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\OUT0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dff6~q\,
	devoe => ww_devoe,
	o => \OUT0~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y5_N15
\BIT6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIT6,
	o => \BIT6~input_o\);

-- Location: LCCOMB_X1_Y4_N24
\dff0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dff0~feeder_combout\ = \BIT6~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BIT6~input_o\,
	combout => \dff0~feeder_combout\);

-- Location: FF_X1_Y4_N25
dff0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dff0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff0~q\);

-- Location: IOIBUF_X34_Y20_N8
\BIT5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIT5,
	o => \BIT5~input_o\);

-- Location: LCCOMB_X33_Y21_N8
\dff1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dff1~feeder_combout\ = \BIT5~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BIT5~input_o\,
	combout => \dff1~feeder_combout\);

-- Location: FF_X33_Y21_N9
dff1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff1~q\);

-- Location: IOIBUF_X28_Y24_N15
\BIT4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIT4,
	o => \BIT4~input_o\);

-- Location: LCCOMB_X28_Y21_N0
\dff2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dff2~feeder_combout\ = \BIT4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BIT4~input_o\,
	combout => \dff2~feeder_combout\);

-- Location: FF_X28_Y21_N1
dff2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dff2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff2~q\);

-- Location: IOIBUF_X0_Y23_N15
\BIT3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BIT3,
	o => \BIT3~input_o\);

-- Location: LCCOMB_X1_Y23_N16
\dff3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dff3~feeder_combout\ = \BIT3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BIT3~input_o\,
	combout => \dff3~feeder_combout\);

-- Location: FF_X1_Y23_N17
dff3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dff3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff3~q\);

-- Location: IOIBUF_X16_Y0_N22
\Entrada~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Entrada,
	o => \Entrada~input_o\);

-- Location: LCCOMB_X17_Y4_N16
\or2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \or2~0_combout\ = (!\dff8~q\ & (\Entrada~input_o\ $ (\dff7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Entrada~input_o\,
	datac => \dff7~q\,
	datad => \dff8~q\,
	combout => \or2~0_combout\);

-- Location: FF_X17_Y4_N17
dff7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \or2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff7~q\);

-- Location: LCCOMB_X17_Y4_N10
or3 : cycloneive_lcell_comb
-- Equation(s):
-- \or3~combout\ = (\Entrada~input_o\ & (!\dff8~q\ & \dff7~q\)) # (!\Entrada~input_o\ & (\dff8~q\ & !\dff7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Entrada~input_o\,
	datac => \dff8~q\,
	datad => \dff7~q\,
	combout => \or3~combout\);

-- Location: FF_X17_Y4_N11
dff8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \or3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff8~q\);

-- Location: LCCOMB_X17_Y4_N28
or1 : cycloneive_lcell_comb
-- Equation(s):
-- \or1~combout\ = (!\dff8~q\ & !\dff7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dff8~q\,
	datad => \dff7~q\,
	combout => \or1~combout\);

-- Location: FF_X17_Y4_N29
dff4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \or1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff4~q\);

-- Location: LCCOMB_X17_Y4_N30
\dff5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dff5~0_combout\ = !\dff7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff7~q\,
	combout => \dff5~0_combout\);

-- Location: FF_X17_Y4_N31
dff5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dff5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff5~q\);

-- Location: LCCOMB_X17_Y4_N24
\dff6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dff6~0_combout\ = !\dff8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dff8~q\,
	combout => \dff6~0_combout\);

-- Location: FF_X17_Y4_N25
dff6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dff6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dff6~q\);

ww_OUT6 <= \OUT6~output_o\;

ww_OUT5 <= \OUT5~output_o\;

ww_OUT4 <= \OUT4~output_o\;

ww_OUT3 <= \OUT3~output_o\;

ww_OUT2 <= \OUT2~output_o\;

ww_OUT1 <= \OUT1~output_o\;

ww_OUT0 <= \OUT0~output_o\;
END structure;


