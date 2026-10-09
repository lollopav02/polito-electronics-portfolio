LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY rca IS
	GENERIC (N : integer:=4);
	PORT (a, b: IN SIGNED(N-1 DOWNTO 0);
			 sel: IN STD_LOGIC;
			 ovf: OUT STD_LOGIC;
			 sum: OUT SIGNED(N-1 DOWNTO 0));
END ENTITY;


ARCHITECTURE dataflow OF rca IS

	COMPONENT full_adder IS
		PORT(a, b, cin: IN STD_LOGIC;
				 s, cout: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL carry: STD_LOGIC_VECTOR(N-1 DOWNTO 0);
	SIGNAL sumsum: SIGNED(N-1 DOWNTO 0);
	SIGNAL b0d, b1d, b2d, b3d, sel_2: STD_LOGIC;
	
	BEGIN
	PROCESS (b)
	BEGIN
		IF (sel = '1') AND (b = "0000") THEN
			sel_2 <= '0';
		ELSIF sel ='1' THEN
			sel_2 <= '1';
		ELSE
			sel_2 <= '0';
		END IF;
	END PROCESS;
	
	b0d <= sel_2 XOR b(0);
	b1d <= sel_2 XOR b(1);
	b2d <= sel_2 XOR b(2);
	b3d <= sel_2 XOR b(3);
	
	FA0: full_adder PORT MAP (a(0), b0d, sel_2, sumsum(0), carry(0));
	FA1: full_adder PORT MAP (a(1), b1d, carry(0),  sumsum(1), carry(1));
	FA2: full_adder PORT MAP (a(2), b2d, carry(1), sumsum(2), carry(2));
	FA3: full_adder PORT MAP (a(3), b3d, carry(2), sumsum(3), carry(3));

	sum <= sumsum;
	ovf <= (a(3) XNOR b3d) AND (sumsum(3) XOR a(3));
END ARCHITECTURE;