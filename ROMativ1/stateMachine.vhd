library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stateMachine is

	 port(
		 -- input
		 A   : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 -- output
		 saida : OUT STD_LOGIC_VECTOR(6 downto 0)
	);

end entity;

architecture comportamento of stateMachine is
  
  signal saidaSignal : std_logic_vector(6 downto 0);
  signal regSignalIn : std_logic_vector(1 downto 0);
  signal regSignalOut : std_logic_vector(1 downto 0);
  signal romOutput : std_logic_vector(8 downto 0);
  signal addrSignal : natural;


begin
	
	reg : entity work.reg port map (d => romOutput(8 downto 7), clk => clk, q => regSignalOut);
	addrSignal <= to_integer(unsigned(A & regSignalOut)); 
	rom : entity work.romMif port map (addr => addrSignal,q => romOutput);
	 
	saida <= romOutput(6 downto 0);

end architecture;