LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY comp IS
	PORT ( bin : IN UNSIGNED(5 DOWNTO 0);
		order10 : OUT UNSIGNED(5 DOWNTO 0);
		  order : OUT UNSIGNED(3 DOWNTO 0));
END ENTITY;


ARCHITECTURE behavior OF comp IS
BEGIN
	PROCESS (bin)
	BEGIN
		IF ((bin(5) AND bin(4) AND bin(3) AND bin(2)) = '1') THEN
			order <= "0110";
			order10 <= "111100";
		ELSIF ((bin(5) AND bin(4) AND (bin(3) OR bin(2) OR bin(1))) = '1') THEN
			order <= "0101";
			order10 <= "110010";
		ELSIF ((bin(5) AND (bin(4) OR bin(3))) = '1') THEN
			order <= "0100";
			order10 <= "101000";
		ELSIF ((bin(5) OR (bin(4) AND bin(3) AND bin(2) AND bin(1))) = '1') THEN
			order <= "0011";
			order10 <= "011110";
		ELSIF ((bin(4) AND (bin(3) OR bin(2))) = '1') THEN
			order <= "0010";
			order10 <= "010100";
		ELSIF ((bin(4) OR (bin(3) AND (bin(2) OR bin(1)))) = '1') THEN
			order <= "0001";
			order10 <= "001010";
		ELSE 
			order <= "0000";
			order10 <= "000000";
		END IF;
	END PROCESS;
END ARCHITECTURE;