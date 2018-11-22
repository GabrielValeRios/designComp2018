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
		addrReg3 : out std_logic_vector(4 downto 0);
		functOut : out std_logic_vector(5 downto 0);
		pipeline1 : out std_logic_vector (63 downto 0);
		pipeline2 : out std_logic_vector (146 downto 0);
		pipeline3 : out std_logic_vector (106 downto 0);
		pipeline4 : out std_logic_vector (70 downto 0);
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
	--Output registrador 1 (Instruction Fetch para Instruction Decode)
	signal FioRegPipe1 : std_logic_vector(63 DOWnTO 0);
	--Output registrador 2 (Instruction Decode/Instruction EX)
	signal FioRegPipe2 : std_logic_vector(146 downto 0);
	--Output registrador 3 
	signal FioRegPipe3 : std_logic_vector(106 downto 0);
	--Output registrador 4
	signal FioRegPipe4 : std_logic_vector(70 downto 0);
	
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
	MBR : entity work.mux2way generic map(DATA_WIDTH=>5) port map(SEL=>FioRegPipe2(146),A=>FioRegPipe2(9 downto 5),B=>FioRegPipe2(4 downto 0),X=>FioReg3BR);
	-- BR
	BR : entity work.bankregister port map
	(
	clk=>clk,
	EReg1=>FioRegPipe1(25 downto 21),
	EReg2=>FioRegPipe1(20 downto 16),
	EReg3=>FioRegPipe4(4 downto 0),
	DEReg3=>FioDadoEscritoBR,
	habilitaEscrita=>FioRegPipe4(70),
	Dado1=>FioDadoLido1,
	Dado2=>FioDadoLido2
	);
	--MALU com extensor para entrada B do MUX
	Ext  : entity work.extensor port map(s16=>FioRegPipe1(15 downto 0),s32=>FioExtendeSinal);
	MALU : entity work.mux2way port map(SEL=>FioRegPipe2(143),A=>FioRegPipe2(73 downto 42),B=>FioRegPipe2(41 downto 10),X=>FioMuxALU);
	-- UCALU
	UCALU : entity work.unidadeControleALU port map(funct=>FioRegPipe2(15 downto 10),ulaOP=>FioRegPipe2(145 downto 144),instr=>FioULACntrl);
	-- ALU
	ALU  : entity work.fluxoDadosALU port map(entradaA=>FioRegPipe2(105 downto 74),entradaB=>FioMuxALU,SEL_ULA=>FioULACntrl,resposta=>FioALU,Z=>FioZeroALU);
	-- dataMemory
	DMAddr <= to_integer(unsigned(FioRegPipe3(68 downto 37)));
	DM   : entity work.data_memory port map(clk=>clk,addr=>DMAddr,data=>FioRegPipe3(36 downto 5),we=>FioRegPipe3(104),re=>FioRegPipe3(105),q=>FioDadoLidoMemoria);
	-- MDtaMemory
	MDM  : entity work.mux2way port map(SEL=>FioRegPipe4(69),A=>FioRegPipe4(68 downto 37),B=>FioRegPipe4(36 downto 5),X=>FioDadoEscritoBR);
	-- Pc+4 Adder
	PCAdder : entity work.somador_simples port map(A=>pcSUM,B=>FioFromPc,C=>FioAdderPc);
	-- BEQ Adder
	FioShiftLeftExt <= shift_left(unsigned(FioRegPipe2(41 downto 10)),2);
	BEQAdder : entity work.somador_simples port map(A=>FioRegPipe2(137 downto 106),B=>std_logic_vector(FioShiftLeftExt),C=>FioAdderBEQ);
	-- MUXBEQ
	MuxBEQ : entity work.mux2way port map(SEL=>FioRegPipe3(69) and FioRegPipe3(106),A=>FioAdderPc,B=>FioRegPipe3(101 downto 70),X=>FioMuxBEQ);
	--MuxProxPC
	FioShiftLeftMI <= shift_left(unsigned(FioInstrMemory(25 downto 0)),2);
	FioPCMuxBConc <= FioAdderPc(31 downto 28) & std_logic_vector(FioShiftLeftMI) & "00";
	MuxProxPC : entity work.mux2way port map(SEL=>MuxPc,A=>FioMuxBEQ,B=>FioPCMuxBConc,X=>FioToPc);
	-- opcode out
	opcode <= FioRegPipe1(31 downto 26);
	
	--reg1 pipeline (pc adder & instr memory)
	Reg1 : entity work.genregister generic map(size => 64) port map(
	input=>FioAdderPc & FioInstrMemory,
	reset=>'0',
	clock=>clk,
	output=>FioRegPipe1
	);
	--reg2 pipeline (EX & M & WB & Pc adder & Read data1 & Read data2 & signalExt & Instr(20-16) & Instr(15-11))
	Reg2 : entity work.genregister generic map(size => 147) port map(
	input=>MuxBR & ULAOp & MuxALU & BEQ & EscreverMD & LerMD & EscritaBR & MuxMD & FioRegPipe1(63 downto 32) & FioDadoLido1 & FioDadoLido2 & FioExtendeSinal & FioRegPipe1(20 downto 16) & FioRegPipe1(15 downto 11),
	reset=>'0',
	clock=>clk,
	output=>FioRegPipe2
	);
	--reg3 pipeline (M & WB & AluAdder & zeroALU & ALUResult & Addr2BR & MuxAddresses(BR))
	Reg3 : entity work.genregister generic map(size=>107) port map(
	input=> FioRegPipe2(142 downto 138) & FioAdderBEQ & FioZeroALU & FioALU	& FioRegPipe2(73 downto 42) & FioReg3BR,
	reset => '0',
	clock => clk,
	output=>FioRegPipe3
	);
	--reg4 pipeline (WB & data read DM & ALU)
	Reg4 : entity work.genregister generic map(size=>71) port map(
	input => FioRegPipe3(103 downto 102) & FioDadoLidoMemoria & FioRegPipe3(68 downto 37) & FioRegPipe3(4 downto 0),
	reset=>'0',
	clock => clk,
	output => FioRegPipe4
	);
	
	DM_out <= FioALU;
	instrCntrl <= FioULACntrl;
	REG1_OUT <= FioDadoLido1;
	REG2_OUT <= FioDadoLido2;
	zero <= FioZeroALU;
	addrReg3 <= FioRegPipe4(4 downto 0);
	pipeline1 <= FioRegPipe1;
	pipeline2 <= FioRegPipe2;
	pipeline3 <= FioRegPipe3;
	pipeline4 <= FioRegPipe4;
	functOut <= FioRegPipe2(15 downto 10);
	
	end architecture;