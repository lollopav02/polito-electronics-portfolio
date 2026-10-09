LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY shifter IS
	PORT(data_in: IN signed(10 downto 0);
				sel: IN unsigned(1 downto 0);
			data_out: OUT signed(10 downto 0));
END ENTITY;

ARCHITECTURE behavior OF shifter IS

	
	SIGNAL num: signed(10 downto 0);
	
	BEGIN
	
	PROCESS(data_in, sel, num)
	BEGIN
		CASE sel IS
			WHEN "00" => -- times -0.5
				IF data_in < 0 THEN
					num <= '1' & data_in(10 downto 1);
				ELSE
					num <= '0' & data_in(10 downto 1);
				END IF;
				data_out <= -num;
					
			WHEN "01" => -- times -2
				num <= data_in(9 downto 0) & '0';
				data_out <= -num;
				
			WHEN "10" => --times 4
				num <= data_in(8 downto 0) & "00";
				data_out <= num;
				
			WHEN "11" => --times 0.25
				IF data_in < 0 THEN
					num <= "11" & data_in(10 downto 2);
				ELSE
					num <= "00" & data_in(10 downto 2);
				END IF;
				data_out <= num;
				
			WHEN OTHERS => 
				num <= ("00000000000");
		END CASE;
	END PROCESS;

END ARCHITECTURE;