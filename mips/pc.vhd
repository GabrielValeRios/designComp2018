library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
	 
	 port(
		 -- input
		 clk : IN STD_LOGIC;
		 d   : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 -- output
		 q   : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
		 
	);

end pc;

architecture arch of pc is

begin
    process(clk)
    begin
        if rising_edge(clk) then
				q <= d;          
        end if;
    end process;
end architecture;