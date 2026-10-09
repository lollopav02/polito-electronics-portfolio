LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY seven_segment IS
	PORT (m: IN STD_LOGIC_VECTOR(3 downto 0);
			HEX0: OUT STD_LOGIC_VECTOR(6 downto 0));
END seven_segment;

ARCHITECTURE pier OF seven_segment IS

	BEGIN
		PROCESS (m)
		BEGIN
		IF m = "0000" THEN
		HEX0 <= "1000000";
		ELSIF m = "0001" THEN
		HEX0 <= "1111001";
		ELSIF m = "0010" THEN
		HEX0 <= "0100100";
		ELSIF m = "0011" THEN
		HEX0 <= "0110000";
		ELSIF m = "0100" THEN
		HEX0 <= "0011001";
		ELSIF m = "0101" THEN
		HEX0 <= "0010010";
		ELSIF m = "0110" THEN
		HEX0 <= "0000010";
		ELSIF m = "0111" THEN
		HEX0 <= "1111000";
		ELSIF m = "1000" THEN
		HEX0 <= "0000000";
		ELSE
		HEX0 <= "0010000";
		
	END IF;
	END PROCESS;
		
END pier;