library IEEE;
use IEEE.std_logic_1164.all; --  libreria IEEE con definizione tipi standard logic

ENTITY MUX21_4BIT IS 
	generic (N : positive := 4);
	port (
		A:	in	std_logic_vector(N - 1 downto 0);
		B:	in	std_logic_vector(N - 1 downto 0);
		S:	in	std_logic;
		Y:	out	std_logic_vector(N - 1 downto 0));
end MUX21_4BIT;


architecture BEHAVIORAL of MUX21_4BIT is
begin
	Y <= A when S='1' else B;
end BEHAVIORAL;
