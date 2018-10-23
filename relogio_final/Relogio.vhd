library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity Relogio is
port (

		CLOCK_50 : in std_logic;


		-- Saidas da placa (nomenclatura definida no arquivo ¨.qsf¨)
      LEDR : out STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');
      LEDG : out STD_LOGIC_VECTOR(8 DOWNTO 0)  := (others => '0');
      HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7: OUT STD_LOGIC_VECTOR(6 downto 0);
		KEY: in STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW: in STD_LOGIC_VECTOR(17 DOWNTO 0)
     
  );
end entity;


architecture comportamento of Relogio is

	COMPONENT SM is
        PORT (
            reset       :    IN STD_LOGIC;
            clock       :    IN STD_LOGIC;
            bt1     :    IN STD_LOGIC;
            bt2     :    IN STD_LOGIC;
            bt3     :    IN STD_LOGIC;
            saida   :    OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
        );
    END COMPONENT;
  

  -- registradores
  
  --enables
  signal auxA,auxeB,auxeC,auxeD,auxeE,auxeF : std_logic;
  -- resets
  signal auxResetA : std_logic := '0';
  signal auxResetB : std_logic := '0';
  signal auxResetC : std_logic := '0';
  signal auxResetD : std_logic := '0';
  signal auxResetE : std_logic := '0';
  signal auxResetF : std_logic := '0';
  
  -- clock control
  signal count : integer :=1;
  signal auxClock : std_logic := '0';

  -- ULA
  shared variable auxUlaB : std_logic_vector(3 downto 0);
  signal ZFLag : std_logic;
  signal auxFuncaoULA : std_logic_vector(2 downto 0);

  --MUX
  signal auxFuncaoMUX : std_logic_vector(2 downto 0);
  
  --signal para maquina de estados
  signal auxReset : std_logic_vector(5 downto 0) := (others => '0');
  signal auxEnable : std_logic_vector(5 downto 0);
  signal number : std_logic_vector(3 downto 0);
  
  --Placa
  
  signal useg_out,dseg_out,umin_out,dmin_out,uhr_out,dhr_out 	: std_logic_vector (6 downto 0);
  
  signal state: std_logic_vector(1 downto 0);
  
  signal set: std_logic := '0';
  
  signal add1,auxReset_mq, auxBt1, auxBt2, auxBt3, rising_1s : std_logic;
  
  constant compare_clk: integer :=25000000;

  signal blink: std_logic := '1';
  
begin

maqEstados : SM
	port map (
		reset   => auxReset_mq, clock => CLOCK_50, bt1 => auxBt1, bt2 => auxBt2, bt3 => auxBt3,
		saida  => state
);
	
  -- Instancia o fluxo de dados:
  FD : entity work.fluxoDados
    Port map (
      UlaEntrada_B => auxUlaB,
		funcaoULA 	 => auxFuncaoULA,
		outULA       => ZFLag,
		funcaoMUX 	 => auxFuncaoMUX,
      clk	    	 => CLOCK_50, 
		rstA	    	 => auxReset(0),
	   rstB	    	 => auxReset(1),
		rstC	    	 => auxReset(2),
		rstD	    	 => auxReset(3),
		rstE	    	 => auxReset(4),
		rstF	    	 => auxReset(5),
		eA			 	 => auxEnable(0), 
		eB 			 => auxEnable(1), 
		eC 			 => auxEnable(2),
		eD 		 	 => auxEnable(3),
		eE 			 => auxEnable(4), 
		eF 			 => auxEnable(5), 
		useg_hex 	 => useg_out,
		dseg_hex 	 => dseg_out,
		umin_hex 	 => umin_out,
		dmin_hex 	 => dmin_out,
		uhr_hex 		 => uhr_out,
		dhr_hex 		 => dhr_out	
    );
	 
	--instancia maquina de estados
	SMUC1 : entity work.SMUC
		Port map (
		  reset => '0',
        clock => CLOCK_50,
		  iniciaMaquina => rising_1s,
        Z => ZFLag,
        ft => '1',
        resets => auxReset,
        enables => auxEnable,
        SelULA => auxFuncaoULA,
        SelMUX => auxFuncaoMUX,
		  number => auxUlaB
		);
	 
detectorSub0: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => auxReset_mq);
detectorSub1: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => auxBt1);
detectorSub2: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(2)), saida => auxBt2);
detectorSub3: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => auxBt3);

detectorSub4: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => auxClock, saida => rising_1s);

LEDG(0) <= not KEY(0);
LEDG(1) <= not KEY(1);
LEDG(2) <= not KEY(2);
LEDG(3) <= not KEY(3);


process(CLOCK_50)
	begin
		if(CLOCK_50'event and CLOCK_50='1') then
			count <= count+1;
			
				
			if(count = compare_clk) then
				auxClock <= not auxClock;
				count <= 1;
			end if;			
		
		end if;	
end process;
	

HEX0 <= useg_out;
HEX1 <= dseg_out;
HEX4 <= umin_out;
HEX5 <= dmin_out;
HEX6 <= uhr_out;
HEX7 <= dhr_out;

--HEX4 <= umin_out when blink='1' else"1111111";
--HEX5 <= dmin_out when blink='1' else "1111111";
--HEX6 <= uhr_out when blink='1' else "1111111";
--HEX7 <= dhr_out when blink='1' else "1111111";


HEX2 <= "1111111";
HEX3 <= "1111111";

end architecture;