library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity fluxoDados is
	port(
		clk:   in std_logic
		MuxPc,MuxBR,EscritaBR,MuxALU,ULAOp,MuxMD,LerMD,EscreverMD : in std_logic;
		opcode:   out std_logic_vector(5 downto 0);

	);
end entity;
 

architecture behaviour of fluxoGeral is

	-- fios internos
	signal FioToPc,FioFromPc,FioInstrMemory,FioDadoLido1,FioDadoLido2,FioMuxALU,FioALU,FioDadoLidoMemoria,FioDadoEscritoBR,FioPC : std_logic_vector(31 downto 0);
	signal FioReg1BR,FioReg2BR,FioReg3BR : std_logic_vector(4 downto 0);
	signal FioImmediate16 : std_logic_vector(15 downto 0);
	signal FioULACntrl : std_logic_vector(3 downto 0);

begin

		
	
end architecture;