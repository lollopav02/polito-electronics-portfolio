LIBRARY ieee;
USE ieee.std_LOGIC_1164.all;
USE ieee.numeric_std.all;

ENTITY comparator_tb IS
END ENTITY;

ARCHITECTURE behav OF comparator_tb IS
	COMPONENT comparator IS
	PORT(in2: IN unsigned(1 downto 0);
		 in10: IN unsigned(9 downto 0);
		  add: OUT unsigned(9 downto 0);
		sel_A: OUT std_logic);
	END COMPONENT;
	
	SIGNAL input10, address: unsigned (9 downto 0);
	SIGNAL input2: unsigned (1 downto 0);
	SIGNAL selection: std_logic;
	
	BEGIN
	PROCESS
	BEGIN
	input2<="00";
	WAIT FOR 5 ns;
	input2<="01";
	WAIT FOR 5 ns;
	input2<="10";
	WAIT FOR 5 ns;
	input2<="11";
	WAIT FOR 5 ns;
	END PROCESS;
	
	PROCESS
	BEGIN
	input10<="0000000000";
	WAIT FOR 20 ns;
	input10<="0000000001";
	WAIT FOR 20 ns;
	input10<="0000000010";
	WAIT FOR 20 ns;
	input10<="0000000011";
	WAIT FOR 20 ns;
	input10<="0000000100";
	WAIT FOR 20 ns;
	input10<="0000000101";
	WAIT FOR 20 ns;
	input10<="0000000110";
	WAIT FOR 20 ns;
	input10<="0000000111";
	WAIT;
	END PROCESS;
	
	
	dut: comparator PORT MAP(input2, input10, address, selection);
	END ARCHITECTURE;