library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity instruction_memory is
	generic 
	(
		DATA_WIDTH : natural := 32;
		ADDR_WIDTH : natural := 6
	);

	port 
	(
		addr	: in natural range 0 to 2**ADDR_WIDTH - 1;
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);
end entity;


architecture bhv of instruction_memory is

	-- Build a 2-D array type for the ROM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	function init_rom
		return memory_t is 
		variable tmp : memory_t := (others => (others => '0'));
	begin 
		for addr_pos in 0 to 2**ADDR_WIDTH - 1 loop 
			-- Initialize each address with the address itself
			tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, DATA_WIDTH));
		end loop;
		return tmp;
	end init_rom;	 

	-- Declare the ROM signal and specify a default value.	Quartus Prime
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal rom : memory_t := init_rom;

begin
	q <= rom(addr/4);
	-- beq entre reg0 e reg1
	--rom(0) <= "00010000000000010011100000100010";
	-- soma reg0 + reg1 e bota em reg3
	--rom(0) <= "00000000000000010001100000100000";
	-- subtracao
	--rom(1) <= "00000000000000010001100000100010";
	--rom(2) <= "00000000000000010100000000100100";
	
	-- jump para primeira instrução
	rom(5) <= "00001000000000000000000000000000";
	rom(1) <= "00000000000000000000000000000010";
	rom(2) <= "00000000000000000000000000000010";
	rom(3) <= "00000000000000000000000000000010";
	rom(4) <= "00000000000000000000000000000010";
	-- sw : Guardar no 5 o valor de reg1 
	--rom(0) <= "10101100000000010000000000000000";
	
	-- lw : carregar conteudo de reg5
	--rom(1) <= "10001100101000000000000000000000";
	
	--slt : "comparar valores dos registradores (1 e 2)  e armazenar result. em reg6"
	--rom(0) <= "00000000000000010011000000101010";
	
	--beq : "ver se conteudo dos registradores  (1 e 2) sao iguais, armazenar em reg7"
	rom(0) <= "00000000001000100001100000100000";
	
	--AND : AND de reg0 e reg1, em reg8
	--rom(6) <= "00000000000000010100000000100100"; 
	
	-- jump para loop de soma
	--rom(7) <= "00001000000000000000000000000000";

	
end bhv;
