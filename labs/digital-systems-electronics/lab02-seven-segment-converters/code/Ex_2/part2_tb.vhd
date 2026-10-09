LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY testbench IS
END ENTITY;

ARCHITECTURE behavior OF testbench IS
	
	COMPONENT part2
		PORT (SW: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				HEX0,HEX1,HEX2,HEX3,HEX4: OUT STD_LOGIC_VECTOR(6 downto 0));
	END COMPONENT;
	
	SIGNAL sel1: std_logic_vector(1 DOWNTO 0);
	SIGNAL sel2: std_logic_vector(2 DOWNTO 0);
	SIGNAL h0, h1, h2, h3, h4: std_logic_vector(6 downto 0);
	
	BEGIN
		uut: part2 PORT MAP(SW(1 DOWNTO 0) => sel1, SW(4 DOWNTO 2) => sel2, HEX0 => h0, HEX1 => h1,HEX2 => h2,HEX3 => h3,HEX4 => h4);
		PROCESS
			BEGIN
			sel1 <= "00";
			sel2 <= "000"; --HELLO
			WAIT FOR 20 ns;
			
			sel1 <= "00";
			sel2 <= "011"; --LOHEL
			WAIT FOR 20 ns;
			
			sel1 <= "01";
			sel2 <= "001";
			WAIT FOR 20 ns; --EPPOC
			
			WAIT;
			
		END PROCESS;
END ARCHITECTURE;
