library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxIverteEntrada is
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (31 downto 0);
           B   : in  STD_LOGIC_VECTOR (31 downto 0); -- notA

			  X   : out STD_LOGIC_VECTOR (31 downto 0)

	 );
end entity;

architecture behavioral of muxIverteEntrada is
begin

	 process(all) is
		 begin
			case SEL is
				
				when '0' => X <= A;
				when '1' => X <= B;

			end case;
	end process;
	
end architecture;