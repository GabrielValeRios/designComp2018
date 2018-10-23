library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bankregister is
	 
	 port(
		 -- input
		 clk : in std_logic;
		 EReg1,EReg2,EReg3   : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 DEReg3 : IN std_logic_vector(31 downto 0);
		 habilitaEscrita   : IN STD_LOGIC;
		 
		 -- output
		 Dado1,Dado2   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		 
	);

end bankregister;

architecture arch of bankregister is

type registerBank is array(0 to 31) of std_logic_vector(31 downto 0);
signal registers : registerBank;


begin
	process(clk)
	begin
	  if rising_edge(clk) then 
			if(habilitaEscrita = '1') then
				 registers(to_integer(unsigned(EReg3))) <= DEReg3;
			end if;
			Dado1 <= registers(to_integer(unsigned(EReg1)));
			Dado2 <= registers(to_integer(unsigned(EReg2)));
		end if;
	end process;
		
end architecture;