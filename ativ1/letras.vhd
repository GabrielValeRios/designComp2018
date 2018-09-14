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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"
-- CREATED		"Mon Sep 03 19:13:31 2018"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY letras IS 
	PORT
	(	
		--Aqui, temos o clok de entrada do circuito;
		--BIT3 ao BIT6 sao os bits que representam as letras, e que são constantes;
		--Entrada, para permanecer ou alterar o estado;
		-- os 7 outputs, que representam a letra a partir do codigo ASCii.
		CLK :  IN  STD_LOGIC;
		BIT3 :  IN  STD_LOGIC;
		BIT4 :  IN  STD_LOGIC;
		BIT5 :  IN  STD_LOGIC;
		BIT6 :  IN  STD_LOGIC;
		Entrada :  IN  STD_LOGIC;
		OUT6 :  OUT  STD_LOGIC;
		OUT5 :  OUT  STD_LOGIC;
		OUT4 :  OUT  STD_LOGIC;
		OUT3 :  OUT  STD_LOGIC;
		OUT2 :  OUT  STD_LOGIC;
		OUT1 :  OUT  STD_LOGIC;
		OUT0 :  OUT  STD_LOGIC
	);
END letras;

ARCHITECTURE bdf_type OF letras IS 
--fios utilizados para a lógica do circuito.
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;


BEGIN 

-- aqui sao resolvidos os sinais de entrada, pre-clock.

SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1 AND Entrada;


SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_17 AND SYNTHESIZED_WIRE_2 AND SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_17 AND SYNTHESIZED_WIRE_4 AND Entrada;


SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_5 AND SYNTHESIZED_WIRE_18 AND SYNTHESIZED_WIRE_6;

-- A partir daqui, esta a logica do circuito. Aqui serao atribuidos os valores binarios,
-- tanto para as saidas(OUT6 ao OUT0), e a logica do proximo estado.
PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	OUT6 <= BIT6;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	OUT5 <= BIT5;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	OUT4 <= BIT4;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	OUT3 <= BIT3;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	OUT2 <= SYNTHESIZED_WIRE_7;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	OUT1 <= SYNTHESIZED_WIRE_8;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	OUT0 <= SYNTHESIZED_WIRE_9;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_17 <= SYNTHESIZED_WIRE_10;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_11;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_7 <= NOT(SYNTHESIZED_WIRE_12);



SYNTHESIZED_WIRE_6 <= NOT(Entrada);



SYNTHESIZED_WIRE_8 <= NOT(SYNTHESIZED_WIRE_17);



SYNTHESIZED_WIRE_9 <= NOT(SYNTHESIZED_WIRE_18);



SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_17);



SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_18);



SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_18);



SYNTHESIZED_WIRE_3 <= NOT(Entrada);



SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_18);



SYNTHESIZED_WIRE_5 <= NOT(SYNTHESIZED_WIRE_17);



SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_18 OR SYNTHESIZED_WIRE_17;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_13 OR SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_15 OR SYNTHESIZED_WIRE_16;

-- aqui sao resolvidos os sinais de entrada, pos-clock.

END bdf_type;