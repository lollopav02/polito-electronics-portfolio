LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY bit_adjuster_out IS 
	PORT(long: IN signed(10 downto 0);
		 short: OUT signed(7 downto 0));
END ENTITY;

ARCHITECTURE behavior OF bit_adjuster_out IS
	BEGIN
		PROCESS(long)
		BEGIN
			IF (long(10) = '0') THEN
				IF long(9 downto 7) = "000" THEN
					short <= long(7 downto 0);
				ELSE
					short <= "01111111";
				END IF;
			ELSE
				IF long(9 downto 7) = "111" THEN
					short <= long(7 downto 0);
				ELSE
					short <= "10000000";
				END IF;
			END IF;
		END PROCESS;

END ARCHITECTURE;