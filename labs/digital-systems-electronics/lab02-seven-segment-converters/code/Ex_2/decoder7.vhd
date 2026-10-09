LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decoder7 IS
	PORT(c: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	     h: OUT STD_LOGIC_VECTOR(0 TO 6));
END decoder7;

ARCHITECTURE behavior OF decoder7 IS 
	BEGIN
	
	PROCESS(c)
		BEGIN
			if c = "000" then 
				h <= "0001001"; --"1001000"
			elsif c = "001" then 
				h <= "0000110"; --"0110000"
			elsif c = "010" then 
				h <= "1000111"; --"110001"
			elsif c = "011" then 
				h <= "1000000";--"0000001"
			elsif c = "100" then -- we've assigned the selection 100
				h <= "0001100";--"0011000" this is the letter P
			elsif c = "101" then -- we've assigned the selection 100
				h <= "0001110";--"0111000" this is the letter F
			elsif c = "110" then
				h <= "1000110";--"0110001" this is letter c
			else 
				h <= "1111111";
			end if;
	END PROCESS;
	
END ARCHITECTURE;
