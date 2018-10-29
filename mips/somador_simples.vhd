LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY somador_simples IS

	PORT (
		 
		 A : IN std_logic_vector (31 downto 0);
		 B : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		 C : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)

	);
END somador_simples;

ARCHITECTURE comportamento OF somador_simples IS
	BEGIN
		C <= A+B;
END comportamento;