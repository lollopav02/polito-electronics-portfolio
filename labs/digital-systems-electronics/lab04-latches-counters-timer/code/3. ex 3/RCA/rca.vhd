LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY rca IS
	GENERIC (N : integer:=16);
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
	FA4: full_adder PORT MAP (a(4), b(4), carry(3), sum(4), carry(4));
	FA5: full_adder PORT MAP (a(5), b(5), carry(4), sum(5), carry(5));
	FA6: full_adder PORT MAP (a(6), b(6), carry(5), sum(6), carry(6));
	FA7: full_adder PORT MAP (a(7), b(7), carry(6), sum(7), carry(7));
	FA8: full_adder PORT MAP (a(8), b(8), carry(7), sum(8), carry(8));
	FA9: full_adder PORT MAP (a(9), b(9), carry(8), sum(9), carry(9));
	FA10: full_adder PORT MAP (a(10), b(10), carry(9), sum(10), carry(10));
	FA11: full_adder PORT MAP (a(11), b(11), carry(10), sum(11), carry(11));
	FA12: full_adder PORT MAP (a(12), b(12), carry(11), sum(12), carry(12));
	FA13: full_adder PORT MAP (a(13), b(13), carry(12), sum(13), carry(13));
	FA14: full_adder PORT MAP (a(14), b(14), carry(13), sum(14), carry(14));
	FA15: full_adder PORT MAP (a(15), b(15), carry(14), sum(15), carry(15));
	
	ovf <= carry(15) XOR carry(14);
		
END ARCHITECTURE;