library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unidadeControle is
    Port ( 
	 
           opcode			  : in  std_logic_vector (5 downto 0);
		     
			  cntrlWord : out std_logic_vector(9 downto 0)--MuxPc,MuxBR,EscritaBR,MuxALU,MuxMD,BEQ,LerMD,EscreverMD,ULAOp

	 );
end entity;

architecture behaviour of unidadeControle is
begin

	cntrlWord   <= "0110000010" when opcode = "000000"  else	  -- tipo R
						"0011101000" when opcode = "100011"  else	  -- LW
						"0001000100" when opcode = "101011"  else   -- SW
						"0000010001" when opcode = "000100"  else   -- BEQ
						"1000000000" when opcode = "000010";   -- J
	
end architecture;