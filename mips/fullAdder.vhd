library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY fullAdder IS
PORT (    
	
	Cin, x, y  :	in      std_logic;
	soma, Cout :	out     std_logic 
	
);

END fulladder;

ARCHITECTURE behaviour OF fulladder IS
BEGIN

	soma <= (x XOR (y XOR Cin));
	Cout <= ((x AND y) OR (Cin AND x) OR (Cin AND y));

END behaviour;