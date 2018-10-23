library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg is

    generic
    (
        DATA_WIDTH : natural := 2
        
    );
	 
	 port(
		 -- input
		 d   : IN STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0);
		 clk : IN STD_LOGIC;
		 -- output
		 q   : OUT STD_LOGIC_VECTOR(DATA_WIDTH-1 DOWNTO 0)
		 
	);

end reg;

architecture regArch of reg is

begin
    process(clk)
    begin
        if rising_edge(clk) then
				q <= d;          
        end if;
    end process;
end architecture;