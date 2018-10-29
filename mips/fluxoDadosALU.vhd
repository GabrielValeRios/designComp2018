library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity fluxoDadosALU is
    Port ( 
			
		  -- in's
		  entradaA, entradaB 		 : in std_logic_vector(31 downto 0);
		  SEL_ULA            		 : in std_logic_vector(3 downto 0);	 

		  -- out's
		  resposta 						 : out std_logic_vector (31 downto 0);
		  Z								 : out std_logic
	 );
	
end entity;

architecture behaviour of fluxoDadosALU is
	
  -- Saida Mux's inversores
  signal SaidaMIA,SaidaMIB : std_logic_vector(31 downto 0);
  -- Saida Overflow ULA
  signal overflowOUT 		: std_logic;
  -- Saida da ULA
  signal saidaULA				: std_logic_vector(31 downto 0);
  -- Saida SLT
  signal saidaSLT				: std_logic_vector(31 downto 0);
  -- SaidaMuxULA
  signal saidaMuxULA			: std_logic_vector(31 downto 0);
  -- signal ZFLAG (resultado == 0)
  signal saida_Z				: std_logic;
  -- signal Cout
  signal saida_last_Cout   : std_logic;
  
begin


	MuxGenA     : entity work.muxIverteEntrada 		Port map(A => entradaA, B => not entradaA, SEL => SEL_ULA(0), X => SaidaMIA);
	MuxGenB     : entity work.muxIverteEntrada 		Port map(A => entradaB, B => not entradaB, SEL => SEL_ULA(1), X => SaidaMIB);	
	Fulladder32 : entity work.fullAdder32   			Port map(x => SaidaMIA, y => SaidaMIB, Cin => SEL_ULA(1), Cout => saida_last_Cout, soma => saidaULA, overflowCalculation => overflowOUT);
	
	saidaSLT 	<= "0000000000000000000000000000000" & (saidaULA(31) xor overflowOUT);
	
	MuxAlu	   : entity work.muxALU Port map(andIN => SaidaMIA and SaidaMIB, orIn => SaidaMIA or SaidaMIB, SumSubIn => saidaULA, sltIN => saidaSLT , SEL => SEL_ULA(1 downto 0) , X => saidaMuxULA, Z => saida_Z);  
	
	
   resposta  <= saidaMuxULA;
   Z         <= saida_Z;
	 
end architecture;