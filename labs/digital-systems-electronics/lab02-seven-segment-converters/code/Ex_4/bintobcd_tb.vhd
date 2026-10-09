LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


ENTITY bintobcd_tb IS
END ENTITY;


ARCHITECTURE behavior OF bintobcd_tb IS
	COMPONENT bintobcd IS
		PORT (SW: IN UNSIGNED(5 DOWNTO 0);
			   HEX1, HEX0: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL input: UNSIGNED(5 DOWNTO 0);
	SIGNAL h0, h1: STD_LOGIC_VECTOR(6 DOWNTO 0);

BEGIN

	dut: bintobcd PORT MAP (input, h1, h0);
	PROCESS
	BEGIN
		input <= "111111";
		WAIT FOR 5 ns;
		input <= "000010";
		WAIT FOR 5 ns;
		input <= "110010";
		WAIT FOR 5 ns;
		input <= "000000";
		WAIT FOR 5 ns;
		input <= "100000";
		WAIT FOR 5 ns;
		input <= "101000";
		WAIT FOR 5 ns;
		input <= "001001";
		WAIT FOR 5 ns;
		WAIT;
	END PROCESS;
END ARCHITECTURE;