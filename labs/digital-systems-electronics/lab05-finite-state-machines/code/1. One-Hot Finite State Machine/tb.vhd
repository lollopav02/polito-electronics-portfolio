LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY tb IS
END ENTITY;

ARCHITECTURE behavior OF tb IS
	COMPONENT onehot_fsm IS
	PORT(KEY: IN STD_LOGIC_VECTOR(0 DOWNTO 0); -- KEY(0): CLOCK
		  SW: IN STD_LOGIC_VECTOR(1 DOWNTO  0); -- SW(0): RESET, SW(1): w
		  LEDR: OUT STD_LOGIC_VECTOR(0 DOWNTO 0)); -- z
	END COMPONENT;
	
	SIGNAL clk, r, w, z: STD_LOGIC;
	
	BEGIN
	
	PROCESS
	BEGIN
	clk <= '0';
	WAIT FOR 5 ns;
	clk <= '1';
	WAIT FOR 5 ns;
	END PROCESS;
	
	PROCESS
	BEGIN
	r <= '0';
	WAIT FOR 10 ns;
	r <= '1';
	WAIT FOR 180 ns;
	r <= '0';
	WAIT FOR 12 ns;
	WAIT;
	END PROCESS;
	
	PROCESS
	BEGIN
	w <= '1';
	WAIT FOR 62 ns;
	w <= '0';
	WAIT FOR 10 ns;
	w <= '1';
	WAIT FOR 10 ns;
	w <= '0';
	WAIT FOR 50 ns;
	w <= '1';
	WAIT FOR 5 ns;
	WAIT;
	END PROCESS;
	
	dut: onehot_fsm PORT MAP (KEY(0) => clk, SW(0) => r, SW(1) => w, LEDR(0) => z);

END ARCHITECTURE;	