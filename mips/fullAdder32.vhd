library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


ENTITY fullAdder32 IS
PORT (    
	
	x, y :	in	STD_LOGIC_VECTOR  (31 downto 0);
	Cin  :   in std_logic;  
	soma :	out STD_LOGIC_VECTOR (31 downto 0); 
	Cout :   out std_logic;

	overflowCalculation : out std_logic
	
);

END fullAdder32;
ARCHITECTURE beh32 OF fullAdder32 IS

signal Saida32, Cout32 :  std_logic_vector (31 downto 0); 


BEGIN

	 fulladder0 : entity work.fullAdder Port map(x => x(0), y => y(0), Cin => Cin, soma => Saida32(0), Cout => Cout32(0));
	 fulladder1 : entity work.fullAdder Port map(x => x(1), y => y(1), Cin => Cout32(0), soma => Saida32(1), Cout => Cout32(1));
	 fulladder2 : entity work.fullAdder Port map(x => x(2), y => y(2), Cin => Cout32(1), soma => Saida32(2), Cout => Cout32(2));
	 fulladder3 : entity work.fullAdder Port map(x => x(3), y => y(3), Cin => Cout32(2), soma => Saida32(3), Cout => Cout32(3));
	 fulladder4 : entity work.fullAdder Port map(x => x(4), y => y(4), Cin => Cout32(3), soma => Saida32(4), Cout => Cout32(4));
	 fulladder5 : entity work.fullAdder Port map(x => x(5), y => y(5), Cin => Cout32(4), soma => Saida32(5), Cout => Cout32(5));
	 fulladder6 : entity work.fullAdder Port map(x => x(6), y => y(6), Cin => Cout32(5), soma => Saida32(6), Cout => Cout32(6));
	 fulladder7 : entity work.fullAdder Port map(x => x(7), y => y(7), Cin => Cout32(6), soma => Saida32(7), Cout => Cout32(7));
	 fulladder8 : entity work.fullAdder Port map(x => x(8), y => y(8), Cin => Cout32(7), soma => Saida32(8), Cout => Cout32(8));
	 fulladder9 : entity work.fullAdder Port map(x => x(9), y => y(9), Cin => Cout32(8), soma => Saida32(9), Cout => Cout32(9));
	 fulladder10: entity work.fullAdder Port map(x => x(10), y => y(10), Cin => Cout32(9), soma => Saida32(10), Cout => Cout32(10));
	 fulladder11: entity work.fullAdder Port map(x => x(11), y => y(11), Cin => Cout32(10), soma => Saida32(11), Cout => Cout32(11));
	 fulladder12: entity work.fullAdder Port map(x => x(12), y => y(12), Cin => Cout32(11), soma => Saida32(12), Cout => Cout32(12));
	 fulladder13: entity work.fullAdder Port map(x => x(13), y => y(13), Cin => Cout32(12), soma => Saida32(13), Cout => Cout32(13));
	 fulladder14: entity work.fullAdder Port map(x => x(14), y => y(14), Cin => Cout32(13), soma => Saida32(14), Cout => Cout32(14));
	 fulladder15: entity work.fullAdder Port map(x => x(15), y => y(15), Cin => Cout32(14), soma => Saida32(15), Cout => Cout32(15));
	 fulladder16: entity work.fullAdder Port map(x => x(16), y => y(16), Cin => Cout32(15), soma => Saida32(16), Cout => Cout32(16));
	 fulladder17: entity work.fullAdder Port map(x => x(17), y => y(17), Cin => Cout32(16), soma => Saida32(17), Cout => Cout32(17));
	 fulladder18: entity work.fullAdder Port map(x => x(18), y => y(18), Cin => Cout32(17), soma => Saida32(18), Cout => Cout32(18));
	 fulladder19: entity work.fullAdder Port map(x => x(19), y => y(19), Cin => Cout32(18), soma => Saida32(19), Cout => Cout32(19));
	 fulladder20: entity work.fullAdder Port map(x => x(20), y => y(20), Cin => Cout32(19), soma => Saida32(20), Cout => Cout32(20));
	 fulladder21: entity work.fullAdder Port map(x => x(21), y => y(21), Cin => Cout32(20), soma => Saida32(21), Cout => Cout32(21));
	 fulladder22: entity work.fullAdder Port map(x => x(22), y => y(22), Cin => Cout32(21), soma => Saida32(22), Cout => Cout32(22));
	 fulladder23: entity work.fullAdder Port map(x => x(23), y => y(23), Cin => Cout32(22), soma => Saida32(23), Cout => Cout32(23));
	 fulladder24: entity work.fullAdder Port map(x => x(24), y => y(24), Cin => Cout32(23), soma => Saida32(24), Cout => Cout32(24));
	 fulladder25: entity work.fullAdder Port map(x => x(25), y => y(25), Cin => Cout32(24), soma => Saida32(25), Cout => Cout32(25));
	 fulladder26: entity work.fullAdder Port map(x => x(26), y => y(26), Cin => Cout32(25), soma => Saida32(26), Cout => Cout32(26));
	 fulladder27: entity work.fullAdder Port map(x => x(27), y => y(27), Cin => Cout32(26), soma => Saida32(27), Cout => Cout32(27));
	 fulladder28: entity work.fullAdder Port map(x => x(28), y => y(28), Cin => Cout32(27), soma => Saida32(28), Cout => Cout32(28));
	 fulladder29: entity work.fullAdder Port map(x => x(29), y => y(29), Cin => Cout32(28), soma => Saida32(29), Cout => Cout32(29));
	 fulladder30: entity work.fullAdder Port map(x => x(30), y => y(30), Cin => Cout32(29), soma => Saida32(30), Cout => Cout32(30));
	 fulladder31: entity work.fullAdder Port map(x => x(31), y => y(31), Cin => Cout32(30), soma => Saida32(31), Cout => Cout32(31));
	 

	 soma <= Saida32;
	 Cout <= Cout32(31);
	 
	 overflowCalculation <= Cout32(30) xor Cout32(31);

END beh32;