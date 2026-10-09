LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY digital_filter IS
	PORT(CLK, START: IN STD_LOGIC;
		  DATA_INPUT: IN SIGNED(7 DOWNTO 0);
		  DONE: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE dataflow OF digital_filter IS
	COMPONENT memory IS
		PORT(data_in: IN SIGNED(7 DOWNTO 0);
		     address: IN UNSIGNED(9 DOWNTO 0);
		     CLK, RD, WR, CS: IN STD_LOGIC;
		     data_out: OUT SIGNED(7 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT datapath IS
		PORT(data_in: IN signed(7 downto 0);
		     ck, fill_a, fill_b: IN std_logic;	
		     address_a, address_b: OUT unsigned(9 downto 0);
		     filled_a, filled_b: OUT std_logic;
		     data_out: OUT signed(7 downto 0));
	END COMPONENT;
	
	COMPONENT control_unit IS
			PORT(START, FULL_A, FULL_B, CLK: IN std_logic;
		        DONE, CS_A, CS_B, WR_A, WR_B, RD_A, RD_B: OUT std_logic);
	END COMPONENT;
	
	SIGNAL data_rd_a, data_wr_b, data_rd_b:  SIGNED(7 DOWNTO 0);
	SIGNAL a_is_full, b_is_full, finished, CSA, CSB, WRA, WRB, RDA, RDB, WRA_neg, WRB_neg: STD_LOGIC;
	SIGNAL add_a, add_b:  UNSIGNED(9 DOWNTO 0);
	
	BEGIN
	WRA_neg <= NOT(WRA);
	WRB_neg <= NOT(WRB);
	
	mem_a: memory PORT MAP(DATA_INPUT, add_a, CLK, RDA, WRA_neg, CSA, data_rd_a);
	
	controlunit: control_unit  PORT MAP(START, a_is_full, b_is_full, CLK, DONE, CSA, CSB, WRA, WRB, RDA, RDB);
	
	datapath_algorithm: datapath PORT MAP(data_rd_a, CLK, WRA, WRB, add_a, add_b, a_is_full, b_is_full, data_wr_b); 
	
	mem_b: memory PORT MAP(data_wr_b, add_b, CLK, RDB, WRB_neg, CSB, data_rd_b);
	

END ARCHITECTURE;