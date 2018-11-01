library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity fluxoDados is
	port(
		clk:   in std_logic;
		MuxPc,MuxBR,EscritaBR,MuxALU,MuxMD,BEQ,LerMD,EscreverMD : in std_logic;
		ULAOp : in std_logic_vector(1 downto 0);
		opcode:   out std_logic_vector(5 downto 0);
		
		DM_out,REG1_OUT,REG2_OUT : out std_logic_vector(31 downto 0);
		instrCntrl : out std_logic_vector(3 downto 0);
		zero : out std_logic

	);
end entity;
 

architecture behaviour of fluxoDados is

	-- fios internos
	signal FioToPc,FioFromPc,FioPCMuxBConc,FioAdderPc,FioInstrMemory,FioDadoLido1,FioDadoLido2,FioAdderBEQ,FioExtendeSinal,FioMuxALU,FioMuxBEQ,FioALU,FioDadoLidoMemoria,FioDadoEscritoBR,FioPC : std_logic_vector(31 downto 0);
	signal FioShiftLeftExt : unsigned(31 downto 0);
	signal FioShiftLeftMI  : unsigned(25 downto 0);
	signal FioReg3BR : std_logic_vector(4 downto 0);
	signal FioImmediate16 : std_logic_vector(15 downto 0);
	signal FioULACntrl : std_logic_vector(3 downto 0);
	signal FioZeroALU,FioBEQAND : std_logic;
	
	signal MIAddr : natural;
	signal DMAddr : natural;
	
	-- constants
	constant pcSUM : std_logic_vector(31 downto 0) := "00000000000000000000000000000100"; -- 4

begin

	-- Pc
	PC : entity work.pc port map (clk=>clk, d=>FioToPc , q=>FioFromPc);
	-- Memory instr
	MIaddr <= to_integer(unsigned(FioFromPc));
	MI : entity work.instruction_memory port map(addr=>MIaddr,q=>FioInstrMemory);
	--MBR
	MBR : entity work.mux2way generic map(DATA_WIDTH=>5) port map(SEL=>MuxBR,A=>FioInstrMemory(20 downto 16),B=>FioInstrMemory(15 downto 11),X=>FioReg3BR);
	-- BR
	BR : entity work.bankregister port map
	(
	clk=>clk,
	EReg1=>FioInstrMemory(25 downto 21),
	EReg2=>FioInstrMemory(20 downto 16),
	EReg3=>FioReg3BR,
	DEReg3=>FioDadoEscritoBR,
	habilitaEscrita=>EscritaBR,
	Dado1=>FioDadoLido1,
	Dado2=>FioDadoLido2
	);
	--MALU com extensor para entrada B do MUX
	Ext  : entity work.extensor port map(s16=>FioInstrMemory(15 downto 0),s32=>FioExtendeSinal);
	MALU : entity work.mux2way port map(SEL=>MuxALU,A=>FioDadoLido2,B=>FioExtendeSinal,X=>FioMuxALU);
	-- UCALU
	UCALU : entity work.unidadeControleALU port map(funct=>FioInstrMemory(5 downto 0),ulaOP=>ULAop,instr=>FioULACntrl);
	-- ALU
	ALU  : entity work.fluxoDadosALU port map(entradaA=>FioDadoLido1,entradaB=>FioMuxALU,SEL_ULA=>FioULACntrl,resposta=>FioALU,Z=>FioZeroALU);
	-- dataMemory
	DMAddr <= to_integer(unsigned(FioALU));
	DM   : entity work.data_memory port map(clk=>clk,addr=>DMAddr,data=>FioDadoLido2,we=>LerMD,re=>EscreverMD,q=>FioDadoLidoMemoria);
	-- MDtaMemory
	MDM  : entity work.mux2way port map(SEL=>MuxMD,A=>FioALU,B=>FioDadoLidoMemoria,X=>FioDadoEscritoBR);
	-- Pc+4 Adder
	PCAdder : entity work.somador_simples port map(A=>pcSUM,B=>FioFromPc,C=>FioAdderPc);
	-- BEQ Adder
	FioShiftLeftExt <= shift_left(unsigned(FioExtendeSinal),2);
	BEQAdder : entity work.somador_simples port map(A=>FioAdderPc,B=>std_logic_vector(FioShiftLeftExt),C=>FioAdderBEQ);
	-- MUXBEQ
	MuxBEQ : entity work.mux2way port map(SEL=>FioZeroALU and BEQ,A=>FioAdderPc,B=>FioAdderBEQ,X=>FioMuxBEQ);
	--MuxProxPC
	FioShiftLeftMI <= shift_left(unsigned(FioInstrMemory(25 downto 0)),2);
	FioPCMuxBConc <= FioAdderPc(31 downto 28) & std_logic_vector(FioShiftLeftMI) & "00";
	MuxProxPC : entity work.mux2way port map(SEL=>MuxPc,A=>FioMuxBEQ,B=>FioPCMuxBConc,X=>FioToPc);
	-- opcode out
	opcode <= FioInstrMemory(31 downto 26);
	
	
	DM_out <= FioALU;
	instrCntrl <= FioULACntrl;
	REG1_OUT <= FioDadoLido1;
	REG2_OUT <= FioDadoLido2;
	zero <= FioZeroALU;
	end architecture;