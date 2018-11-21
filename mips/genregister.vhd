library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity genregister is
	generic (
		size	: integer  :=	2
	);

	port (
		-- Input ports
		input : in  std_logic_vector (size - 1 DOWNTO 0);
		reset : in std_logic;
		clock : in std_logic;

		-- Output ports
		output : out  std_logic_vector (size - 1 DOWNTO 0)
	);
end entity;

architecture rtl of genregister is
begin

	process (clock, reset)
	begin
		if (reset = '1') then
			output <= (OTHERS => '0');
		elsif (rising_edge(clock)) then
				output <= input;
		end if;
end process;

end architecture;