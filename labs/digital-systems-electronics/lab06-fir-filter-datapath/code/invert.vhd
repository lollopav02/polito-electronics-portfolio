LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY invert IS
	PORT(before: IN signed(10 downto 0);
			 dopo: OUT signed(10 downto 0));
END ENTITY;

ARCHITECTURE behavior OF invert IS 
	SIGNAL tmp: signed(10 downto 0);
	BEGIN
		PROCESS(before)
		BEGIN
	
		tmp(0) <= before(0) XOR '1';
		tmp(1) <= before(1) XOR '1';
		tmp(2) <= before(2) XOR '1';
		tmp(3) <= before(3) XOR '1';
		tmp(4) <= before(4) XOR '1';
		tmp(5) <= before(5) XOR '1';
		tmp(6) <= before(6) XOR '1';
		tmp(7) <= before(7) XOR '1';
		tmp(8) <= before(8) XOR '1';
		tmp(9) <= before(9) XOR '1';
		tmp(10) <= before(10) XOR '1';
				
		dopo <= tmp + 1;
				
		END PROCESS;		
END ARCHITECTURE;