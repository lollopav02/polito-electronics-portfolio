LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY control_unit_tb IS
END ENTITY;

ARCHITECTURE behaviour OF control_unit_tb IS
	
	COMPONENT control_unit IS
		PORT(START,  FULL_A, FULL_B, CLK: IN std_logic;
		     DONE, CS_A, CS_B, WR_A, WR_B, RD_A, RD_B: OUT std_logic);
	END COMPONENT;

	SIGNAL GO, FULLA, FULLB, CK, ENDED, CSA, CSB, WRA, WRB, RDA, RDB: STD_LOGIC;
	
	BEGIN
	
	clock: PROCESS
	BEGIN
	CK <='0';
	WAIT FOR 5 ns;
	CK<='1';
	WAIT FOR 5 ns;
	END PROCESS;
	
	inputs: PROCESS
	BEGIN
	GO <= '0';
	FULLA <= '0';
	FULLB <= '0';
	WAIT FOR 6 NS;
	GO <= '1';
	WAIT FOR 100 NS;
	FULLA <= '1';
	WAIT FOR 100 NS;
	FULLB <= '1';
	WAIT FOR 100 NS;
	GO <= '0';
	WAIT;
	END PROCESS;
	
	DUT: control_unit PORT MAP(GO, FULLA, FULLB, CK, ENDED, CSA, CSB, WRA, WRB, RDA, RDB);
	
END ARCHITECTURE;