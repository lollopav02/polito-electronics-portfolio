LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY comparator IS 
	PORT(in2: IN unsigned(1 downto 0);
		 in10: IN unsigned(9 downto 0);
		  add: OUT unsigned(9 downto 0);
		sel_A: OUT std_logic);
END ENTITY;

ARCHITECTURE behavior OF comparator IS
	
	BEGIN
		
		add <= (in10 - ("00000000" & in2));
		
		PROCESS (in2, in10)
		BEGIN
			CASE in10 IS
				WHEN "0000000000" =>
					sel_A <= '1';
				WHEN "0000000001" =>
					IF in2 = "01" THEN 
						sel_A <= '0';
					ELSE 
						sel_A <= '1';
					END IF;
				WHEN "0000000010" => 
					IF in2 = "01" OR in2 = "10" THEN 
						sel_A <= '0';
					ELSE 
						sel_A <= '1';
					END IF;
				WHEN OTHERS =>
					IF in2 = "00" THEN 
						sel_A <= '1';
					ELSE 
						sel_A <= '0';
					END IF;
			END CASE;
		END PROCESS;

END ARCHITECTURE;