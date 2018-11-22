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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/22/2018 15:17:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mips
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mips_vhd_vec_tst IS
END mips_vhd_vec_tst;
ARCHITECTURE mips_arch OF mips_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL fio1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL fio2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL fio3 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL fio4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL fio5 : STD_LOGIC;
SIGNAL fio6 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL fio7 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL fio8 : STD_LOGIC_VECTOR(63 DOWNTO 0);
SIGNAL fio9 : STD_LOGIC_VECTOR(146 DOWNTO 0);
SIGNAL fio10 : STD_LOGIC_VECTOR(106 DOWNTO 0);
SIGNAL fio11 : STD_LOGIC_VECTOR(70 DOWNTO 0);
COMPONENT mips
	PORT (
	clk : IN STD_LOGIC;
	fio1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	fio2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	fio3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	fio4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	fio5 : OUT STD_LOGIC;
	fio6 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	fio7 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	fio8 : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
	fio9 : OUT STD_LOGIC_VECTOR(146 DOWNTO 0);
	fio10 : OUT STD_LOGIC_VECTOR(106 DOWNTO 0);
	fio11 : OUT STD_LOGIC_VECTOR(70 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mips
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	fio1 => fio1,
	fio2 => fio2,
	fio3 => fio3,
	fio4 => fio4,
	fio5 => fio5,
	fio6 => fio6,
	fio7 => fio7,
	fio8 => fio8,
	fio9 => fio9,
	fio10 => fio10,
	fio11 => fio11
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 125000 ps;
	clk <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END mips_arch;
