LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY bit_adjuster_in IS
	PORT(short: IN signed(7 downto 0);
			long: OUT signed(10 downto 0));
END ENTITY;

ARCHITECTURE behavior OF bit_adjuster_in IS
	
	BEGIN
		PROCESS(short)
		BEGIN
			IF short(7) = '0' THEN
				long <= "000" & short;
			ELSE
				long <= "111" & short;
			END IF;
		END PROCESS;
		
END ARCHITECTURE;