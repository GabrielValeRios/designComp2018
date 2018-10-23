library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2way is

	generic(
	
	DATA_WIDTH : natural := 32
	
	);
		
    Port ( SEL : in  STD_LOGIC;
			  A   : in std_logic_vector(DATA_WIDTH-1 downto 0);
			  B   : in std_logic_vector(DATA_WIDTH-1 downto 0);
			  
			  X   : out STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0)
	 );
end entity;

architecture behavioral of mux2way is

shared variable result : std_logic;

begin

	 process(all) is
		 begin
			case SEL is
				
				when '0' => X <= A;
				when '1' => X <= B;
				
			end case;	
	end process;
		
end architecture;