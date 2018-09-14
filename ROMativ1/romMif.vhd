library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity romMif is

    generic
    (
        DATA_WIDTH : natural := 9;
        ADDR_WIDTH : natural := 3
    );

    port (
        addr: in natural range 0 to 2**ADDR_WIDTH-1;
        q: out std_logic_vector (DATA_WIDTH-1 downto 0) 
    );
end entity;

architecture inLineInitROM of romMif is

type memory_t is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);

    function init_rom
        return memory_t is
        variable tmp : memory_t := (others => (others => '0'));
        begin
			  tmp(0) := "01"&"1000111"; --g, proximo stado 000, A=0
			  tmp(1) := "10"&"1000001"; --a, proximo estado 010, A=0
			  tmp(2) := "00"&"1000010"; --b, proximo estado 001, A=0
			  tmp(3) := "00"&"0000000"; --nada
			  tmp(4) := "01"&"1000010"; --b, proximo estado 101, A=1
			  tmp(5) := "10"&"1000001"; --a, proximo estado 110, A=1
			  tmp(6) := "00"&"1000111"; --g, proximo estado 100, A=1
			  tmp(7) := "00"&"0000000"; --nada
			  
        return tmp;
    end init_rom;

signal content: memory_t := init_rom;

begin

	q <= content(addr);


end architecture;