LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY rca IS
	GENERIC (N : integer:=4);
	PORT (a, b: IN SIGNED(N-1 DOWNTO 0);
			 ovf: OUT STD_LOGIC;
			 sum: OUT SIGNED(N-1 DOWNTO 0));
END ENTITY;


ARCHITECTURE dataflow OF rca IS

	COMPONENT full_adder IS
		PORT(a, b, cin: IN STD_LOGIC;
				 s, cout: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL carry: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	
	BEGIN
	
	FA0: full_adder PORT MAP (a(0), b(0), '0', sum(0), carry(0));
	FA1: full_adder PORT MAP (a(1), b(1), carry(0), sum(1), carry(1));
	FA2: full_adder PORT MAP (a(2), b(2), carry(1), sum(2), carry(2));
	FA3: full_adder PORT MAP (a(3), b(3), carry(2), sum(3), carry(3));
	
	ovf <= carry(3) XOR carry(2);
		
END ARCHITECTURE;