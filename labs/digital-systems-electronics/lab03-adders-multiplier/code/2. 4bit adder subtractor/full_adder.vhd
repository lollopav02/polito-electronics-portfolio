LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY full_adder IS 
	PORT(a, b, cin: IN STD_LOGIC;
			      s, cout: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE dataflow OF full_adder IS

	SIGNAL d: STD_LOGIC;
		
	
	BEGIN
		d <= a XOR b;
		s <= cin XOR d;
	
		cout <= (a AND b) OR (b AND cin) OR (cin AND a);
		
END ARCHITECTURE;