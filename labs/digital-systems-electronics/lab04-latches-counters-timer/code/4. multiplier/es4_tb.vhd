LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY es4_tb IS
END ENTITY;

ARCHITECTURE behavior OF es4_tb IS

	COMPONENT es4 IS
		PORT(SW: IN UNSIGNED(7 DOWNTO 0);
		  HEX0, HEX1, HEX2, HEX3: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL a, b: UNSIGNED(3 DOWNTO 0);
	SIGNAL h0, h1, h2, h3: STD_LOGIC_VECTOR(6 DOWNTO 0);
	
	BEGIN
	DUT: es4 PORT MAP(Sw(3 DOWNTO 0) => a, SW(7 DOWNTO 4) => b, HEX0 => h0, HEX1 => h1, HEX2 => h2, HEX3 => h3);
	
	PROCESS
	BEGIN 
	
	a <= "1100";  --12*11=132 hex C*B = 84
	b <= "1011";
	WAIT FOR 20ns;
	a <= "0000";  --0+10 =0 hex 0*A = 00
	b <= "1010";
	WAIT FOR 20ns;
	a <= "0001";  --1*10 = 10 hex 1*A = 0A
	b <= "1010";
	WAIT FOR 20ns;
	a <= "1111";  --15*15 = 150 hex F*F = E1
	b <= "1111";
	WAIT FOR 20ns;
	WAIT;
	
	END PROCESS;
	

END ARCHITECTURE;
