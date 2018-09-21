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
            saida   :    OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;
  

  -- registradores
  signal auxRegSaidaA : std_logic_vector(3 downto 0) :="0000"; 
  signal auxRegSaidaB : std_logic_vector(3 downto 0) :="0000";
  signal auxRegSaidaC : std_logic_vector(3 downto 0) :="0000";
  signal auxRegSaidaD : std_logic_vector(3 downto 0) :="0000";
  signal auxRegSaidaE : std_logic_vector(3 downto 0) :="0000";
  signal auxRegSaidaF : std_logic_vector(3 downto 0) :="0000";
    
  --enables
  signal auxeB,auxeC,auxeD,auxeE,auxeF : std_logic := '1';
  signal auxeA : std_logic := '1';
  
  -- clock control
  signal count : integer :=1;
  signal auxClock : std_logic := '0';
  signal auxResetA : std_logic := '0';
  signal auxResetB : std_logic := '0';
  signal auxResetC : std_logic := '0';
  signal auxResetD : std_logic := '0';
  signal auxResetE : std_logic := '0';
  signal auxResetF : std_logic := '0';

  
  -- ULA
  shared variable auxUlaB : std_logic_vector(3 downto 0) := "0000";
  signal auxSaida : std_logic_vector(3 downto 0) := (others => '0');
  signal auxFuncaoULA : std_logic_vector(2 downto 0) := (others => '0');

  
  --MUX
  signal auxsaidaMUX : std_logic_vector(3 downto 0) := (others => '0');
  signal auxFuncaoMUX : std_logic_vector(2 downto 0) := (others => '0');
  
  signal useg_out,dseg_out,umin_out,dmin_out,uhr_out,dhr_out 	: std_logic_vector (6 downto 0);
  
  signal state: std_logic_vector(3 downto 0);
  
  signal set: std_logic := '0';
  
  signal add1,auxReset_mq, auxBt1, auxBt2, auxBt3, auxBt1n : std_logic;
  
  signal compare_clk: integer :=25000000;

  signal blink: std_logic := '1';
  
  signal pressed: std_logic;
  
  

begin

maqEstados : SM
	port map (
		reset   => auxReset_mq, clock => CLOCK_50, bt1 => auxBt1, bt2 => auxBt2, bt3 => auxBt3,
		saida  => state
);
	
  -- Instancia o fluxo de dados mais simples:
  FD : entity work.fluxoDados
    Port map (
      UlaEntrada_B => auxUlaB,
		funcaoULA 	 => auxFuncaoULA, 
		funcaoMUX 	 => auxFuncaoMUX,
      clk	    	 => CLOCK_50, 
		rstA	    	 => auxResetA,
	   rstB	    	 => auxResetB,
		rstC	    	 => auxResetC,
		rstD	    	 => auxResetD,
		rstE	    	 => auxResetE,
		rstF	    	 => auxResetF,
      Resultado    => auxSaida, 
		eA			 	 => auxeA, 
		eB 			 => auxeB, 
		eC 			 => auxeC,
		eD 		 	 => auxeD,
		eE 			 => auxeE, 
		eF 			 => auxeF, 
		RegSaidaA 	 => auxRegSaidaA,
		RegSaidaB 	 => auxRegSaidaB, 
		RegSaidaC 	 => auxRegSaidaC, 
		RegSaidaD 	 => auxRegSaidaD,
		RegSaidaE 	 => auxRegSaidaE,
		RegSaidaF 	 => auxRegSaidaF, 
		saidaMUX  	 => auxsaidaMUX,
		useg_hex 	 => useg_out,
		dseg_hex 	 => dseg_out,
		umin_hex 	 => umin_out,
		dmin_hex 	 => dmin_out,
		uhr_hex 		 => uhr_out,
		dhr_hex 		 => dhr_out	
    );
	 
detectorSub0: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => auxReset_mq);
detectorSub1: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => auxBt1);
detectorSub2: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(2)), saida => auxBt2);
detectorSub3: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => auxBt3);

LEDG(0) <= not KEY(0);
LEDG(1) <= not KEY(1);
LEDG(2) <= not KEY(2);
LEDG(3) <= not KEY(3);


process(CLOCK_50, auxClock)
	begin
		if(CLOCK_50'event and CLOCK_50='1') then
			count <= count+1;
			
				
			if(count = compare_clk) then
				auxClock <= not auxClock;
				count <= 1;
			   if(auxClock='0') then
					auxUlaB := "0001";
				end if;
			else 
			auxUlaB := "0000";
			end if;			
		
		end if;	
end process;

process(auxClock)   --period of clk is 1 second.
	begin
	

		if(auxClock'event and auxClock='1') then
			
			auxResetA <= '0';
			auxResetB <= '0';
			auxResetC <= '0';
			auxResetD <= '0';
			auxResetE <= '0';
			auxResetF <= '0';
				
			auxeB <= '0';
			auxeC <= '0';
			auxeD <= '0';
			auxeE <= '0';
			auxeF <= '0';
			
	
			auxFuncaoMUX 	<= "000";
			
			auxFuncaoULA 	<= "001";   --soma
			
			
			if(auxRegSaidaA = "1001") then

				auxResetA <= '1';
				
				auxeB <= '1';
				auxFuncaoMUX <= "001";
				auxFuncaoULA <= "001";
			end if;

		
			if(auxRegSaidaB = "0101") then
				if(auxRegSaidaA = "1001") then
					
					auxResetB <= '1';
					
					auxeC <= '1';
					auxeA <= '0';
					auxFuncaoMUX <= "010";
					auxFuncaoULA <= "001";
				end if;
			end if;

			auxeA <= '1';
					
			if(auxRegSaidaC = "1001") then
				if(auxRegSaidaB = "0101") then
					if(auxRegSaidaA = "1001") then
						auxResetC <= '1';
						auxeA <= '0';
						auxeD <= '1';
						auxeB <= '0';
						auxeC <= '0';
						auxFuncaoMUX <= "011";
						auxFuncaoULA <= "001";
					end if;
				end if;
			end if;
			auxeA <= '1';			
						
			if(auxRegSaidaD = "0101") then
				if(auxRegSaidaC = "1001") then
					if(auxRegSaidaB = "0101") then
						if(auxRegSaidaA = "1001") then
							auxResetD <= '1';
							auxResetC <= '1';
							auxeE <= '1';
							auxeD <= '0';
							auxeC <= '0';
							auxeA <= '0';
							auxFuncaoMUX <= "100";
							auxFuncaoULA <= "001";
						end if;
					end if;
				end if;
			end if;
			auxeA <= '1';				
							
			if(auxRegSaidaE = "1001") then
				if(auxRegSaidaD = "0101") then
					if(auxRegSaidaC = "1001") then
						if(auxRegSaidaB = "0101") then
							if(auxRegSaidaA = "1001") then
					
								auxResetE <= '1';
								auxeE <= '0';
								auxeF <= '1';
								auxeA <= '0';
								auxFuncaoMUX <= "101";
								auxFuncaoULA <= "001";
						   end if;
						end if;	
					end if;
				end if;
			end if;		
			auxeA <= '1';	

								
			if (auxRegSaidaF = "0010") then			
				if (auxRegSaidaE = "0011") then
					if(auxRegSaidaD = "0101") then
						if(auxRegSaidaC = "1001") then
							if(auxRegSaidaB = "0101") then
								if(auxRegSaidaA = "1001") then

									auxResetE <= '1';
									auxResetF <= '1';

								end if;
						   end if;
						end if;	
					end if;
				end if;
			end if;	
		
		
		case state is
				when "0001" => compare_clk <= 25000000/96;
				when others => compare_clk <= 25000000;
		end case;
		
		case state is
				when "0010" => set <= '1'; 
				when others => set <= '0';
		end case;
	
--		case state is 
--				when others => blink <= '1';
--		end case;

		if(set = '1') then

			--blink <= not blink;
			
			LEDR(17) <= '1';
			LEDR(16) <= '1';
			LEDR(14) <= '1';
			LEDR(13) <= '1';
			
			if(KEY(3) = '0') then

				if(SW(13) = '1') then
					auxeC <= '1';
					auxFuncaoMUX 	<= "010";
					auxFuncaoULA 	<= "001";
				
				elsif(SW(14) = '1') then
					auxeD <= '1';
					auxFuncaoMUX 	<= "011";
					auxFuncaoULA 	<= "001";
				
				elsif(SW(16) = '1') then
					auxeE <= '1';
					auxFuncaoMUX 	<= "100";
					auxFuncaoULA 	<= "001";
		
				elsif(SW(17) = '1') then
					auxeF <= '1';
					auxFuncaoMUX 	<= "101";
					auxFuncaoULA 	<= "001";
				end if;

			end if;
		--	end if;
			else
				LEDR(17) <= '0';
				LEDR(16) <= '0';
				LEDR(14) <= '0';
				LEDR(13) <= '0';
		
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