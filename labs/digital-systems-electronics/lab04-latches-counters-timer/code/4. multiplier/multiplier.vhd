LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY multiplier IS 
	PORT(A, B: IN UNSIGNED(3 DOWNTO 0);
		  RES: OUT UNSIGNED(7 DOWNTO 0));
END ENTITY;

ARCHITECTURE data_struct OF multiplier IS

	COMPONENT rca IS 
			GENERIC ( N : integer:=4);
			PORT (a, b: IN UNSIGNED(N-1 DOWNTO 0);
			      co: OUT STD_LOGIC;
			      sum: OUT UNSIGNED(N-1 DOWNTO 0));
	END COMPONENT;
	
	SIGNAL ROW1A, ROW1B, ROW2A, ROW2B, ROW3A, ROW3B: UNSIGNED(3 DOWNTO 0);
	SIGNAL sum1, sum2, sum3: UNSIGNED(3 DOWNTO 0);
	SIGNAL co1, co2, co3: STD_LOGIC; 
	
	BEGIN
	ROW1A(0) <= A(1) AND B(0);
	ROW1A(1) <= A(2) AND B(0);
	ROW1A(2) <= A(3) AND B(0);
	ROW1A(3) <= '0';

	ROW1B(0) <= A(0) AND B(1);
	ROW1B(1) <= A(1) AND B(1);
	ROW1B(2) <= A(2) AND B(1);
	ROW1B(3) <= A(3) AND B(1);

	ROW2A <= co1 & sum1(3 downto 1); 

	ROW2B(0) <= A(0) AND B(2);
	ROW2B(1) <= A(1) AND B(2);
	ROW2B(2) <= A(2) AND B(2);
	ROW2B(3) <= A(3) AND B(2);

	ROW3A <= co2 & sum2(3 downto 1);

	ROW3B(0) <= A(0) AND B(3);
	ROW3B(1) <= A(1) AND B(3);
	ROW3B(2) <= A(2) AND B(3);
	ROW3B(3) <= A(3) AND B(3);
	
	RES <= co3 & sum3 & sum2(0) & sum1(0) & (A(0) AND B(0));
	rca1 : rca port map (ROW1B, ROW1A, co1, sum1);
	rca2 : rca port map (ROW2B, ROW2A, co2, sum2);
	rca3 : rca port map (ROW3B, ROW3A, co3, sum3);
	
END ARCHITECTURE;