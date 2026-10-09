LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY toggle_ff IS
	PORT (data, clock, clear: IN std_logic;
			q: OUT std_logic);
END ENTITY;

ARCHITECTURE behavior OF toggle_ff IS
	SIGNAL t_tmp: std_logic;
	
	BEGIN
		PROCESS (clear, clock)
		BEGIN
			IF (clock'EVENT AND clock='1') THEN
				IF (clear = '0') THEN
					t_tmp <= '0';
				ELSE
					t_tmp <= data;
				END IF;
			END IF;
		END PROCESS;
	
	q <= t_tmp;

END ARCHITECTURE;