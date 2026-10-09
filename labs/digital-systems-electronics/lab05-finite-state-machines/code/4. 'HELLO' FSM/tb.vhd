LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY tb IS
END ENTITY;

ARCHITECTURE beh OF tb IS

	COMPONENT hello_fsm IS
		PORT(KEY: IN STD_LOGIC_VECTOR(0 DOWNTO 0); -- active-low reset
		     SW: IN STD_LOGIC_VECTOR(0 DOWNTO 0); --turned on when = 1
	        CLOCK_50: IN STD_LOGIC;
		     HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;
	
	
	SIGNAL clk: STD_LOGIC;
	SIGNAL rst, turnon: STD_LOGIC_VECTOR(0 DOWNTO 0);
	SIGNAL d0, d1, d2, d3, d4, d5: STD_LOGIC_VECTOR(6 DOWNTO 0);
	
	BEGIN
	
	clock: PROCESS
	BEGIN
	clk <= '1';
	WAIT FOR 5 ns;
	clk <= '0';
	WAIT FOR 5 ns;
	END PROCESS;
	
	PROCESS
	BEGIN
	rst(0) <= '1';
	WAIT FOR 20 ns;
	rst(0) <= '0';
	WAIT FOR 10 ns;
	rst(0) <= '1';
	WAIT;
	END PROCESS;
	
	PROCESS
	BEGIN
	turnon(0) <= '0';
	WAIT FOR 20 ns;
	turnon(0) <= '1';
	WAIT;
	END PROCESS;
	
	DUT: hello_fsm PORT MAP(rst, turnon, clk, d0, d1, d2, d3, d4, d5);
END ARCHITECTURE;
