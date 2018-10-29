library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mips is

	 port(
	 
		 clk : IN STD_LOGIC; -- CLOCK_50 aqui
		 -- outputs da plca(HEX0, ETC)
		 
		 fio1,fio2,fio3 : out std_logic_vector(31 downto 0)
	);

end entity;

architecture comportamento of mips is

	signal opcode : std_logic_vector(5 downto 0);
	signal w      : std_logic_vector(9 downto 0);
	signal dmOUT,r1,r2 : std_logic_vector(31 downto 0);
  
begin
	
	UC : entity work.unidadeControle port map (opcode => opcode,cntrlWord => w);
	FD : entity work.fluxoDados port map 
	(
		clk => clk,
		MuxPc => w(0),
		MuxBR => w(1),
		EscritaBR => w(2),
		MuxALU => w(3),
		MuxMD => w(4),
		BEQ => w(5),
		LerMD => w(6),
		EscreverMD => w(7),
		ULAOp => w(9 downto 8),
		opcode => opcode,
		DM_out => dmOUT,
		REG1_OUT => r1,
		REG2_OUT => r2
	);
	
	fio1 <= dmOUT;
	fio2 <= r1;
	fio3 <= r2;
	 
end architecture;