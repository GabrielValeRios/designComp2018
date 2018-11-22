library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity muxALU is
    Port ( SEL : in  STD_LOGIC_VECTOR (1  downto 0);
           andIN   : in  STD_LOGIC_VECTOR (31 downto 0);
           orIn   : in  STD_LOGIC_VECTOR (31 downto 0);
           SumSubIn   : in  STD_LOGIC_VECTOR (31 downto 0);
           sltIN   : in  STD_LOGIC_VECTOR (31 downto 0);
			  

			  X   : out STD_LOGIC_VECTOR (31 downto 0);
			  Z   : out STD_LOGIC
	 );
end entity;

architecture behavioral of muxALU is

shared variable result : std_logic;

begin

	 process(all) is
		 begin
			case SEL is
				
				when "00" => X <= andIN;
				when "01" => X <= orIn;
				when "10" => X <= SumSubIn;
				when "11" => X <= sltIN;
				
			end case;
			
			for i in 0 to (X'length-2) loop
				result := X(i);
				result := result nor x(i+1);
			end loop;		
	end process;
	
	Z <= not(result);
	
end architecture;