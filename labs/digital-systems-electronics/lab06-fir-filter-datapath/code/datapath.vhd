LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY datapath IS
	PORT(data_in: IN signed(7 downto 0);
		  ck, fill_a, fill_b: IN std_logic;	
		  address_a, address_b: OUT unsigned(9 downto 0);
		  filled_a, filled_b: OUT std_logic;
		  data_out: OUT signed(7 downto 0));
END ENTITY;

ARCHITECTURE behavior OF datapath IS
	COMPONENT count2 IS
		PORT(EN, CLK, CL: IN std_logic;
				enable_c10, en_rs: OUT std_logic;
							Q: OUT unsigned(1 downto 0));
	END COMPONENT;
	
	COMPONENT count10 IS
		PORT(EN2, WRA, CLK, CL: IN std_logic;
			  Q: OUT unsigned(9 downto 0);
			  FILLEDA,FILLEDB: OUT STD_LOGIC);
	END COMPONENT;
	
	COMPONENT bit_adjuster_in IS
			PORT(short: IN signed(7 downto 0);
					long: OUT signed(10 downto 0));
	END COMPONENT;
	
	COMPONENT shifter IS
		PORT(data_in: IN signed(10 downto 0);
					sel: IN unsigned(1 downto 0);
			 data_out: OUT signed(10 downto 0));
	END COMPONENT;
	
	COMPONENT comparator IS
		PORT(in2: IN unsigned(1 downto 0);
			 in10: IN unsigned(9 downto 0);
			  add: OUT unsigned(9 downto 0);
			sel_A: OUT std_logic);
	END COMPONENT;
	
	COMPONENT mux IS
		PORT (sel: IN STD_LOGIC;
			input0: IN signed(10 DOWNTO 0);
			input1: IN signed(10 DOWNTO 0);
			output: OUT signed(10 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT rca IS
		PORT (a, b: IN SIGNED(10 DOWNTO 0);
				 sum: OUT SIGNED(10 DOWNTO 0));
	END COMPONENT;
	
	COMPONENT registerAB IS
		 PORT (D: IN signed(10 downto 0);
				 Clock, Resetn : IN STD_LOGIC;         
				 Q : OUT signed(10 downto 0));
	END COMPONENT;
	
	COMPONENT bit_adjuster_out IS
		PORT(long: IN signed(10 downto 0);
			 short: OUT signed(7 downto 0));
	END COMPONENT;
	
	COMPONENT registerS IS
		PORT (D: IN signed(10 downto 0);
				EN, Clock, Resetn : IN STD_LOGIC;         
				Q : OUT signed(10 downto 0));
	END COMPONENT;
	
	COMPONENT registerADDR IS
		PORT (D: IN unsigned(9 downto 0);
			   EN, Clock, Resetn : IN STD_LOGIC;         
			   Q : OUT unsigned(9 downto 0));
	END COMPONENT;
	
	SIGNAL adj, product, A, B, As, Bs, outrca, sums: signed(10 downto 0);
	SIGNAL outc2: unsigned(1 downto 0);
	SIGNAL addressa,  addressb: unsigned(9 downto 0);
	SIGNAL selmuxa, selmuxb, en_c10, enrs, clear10: std_logic;
	
	
	BEGIN
	
		PROCESS(addressa, addressb)
		BEGIN
			IF(fill_a  = '1') THEN
				address_a <= addressb;
			ELSE
				address_a <= addressa;
			END IF;
		END PROCESS;
	
	
	
	clear10 <= fill_b XOR fill_a; 
	counter0to3: count2 PORT MAP (fill_b, ck, fill_b, en_c10, enrs, outc2);
	counter0to1023: count10 PORT MAP (en_c10, fill_a, ck, clear10, addressb, filled_a, filled_b);
	address_b <= addressb-1;
	
	
	adj_in: bit_adjuster_in PORT MAP (data_in, adj);
	multiply: shifter PORT MAP (adj, outc2, product);
	
	selection: comparator PORT MAP (outc2, addressb, addressa, selmuxa);
	selmuxb <= outc2(1) OR outc2(0);
	
	muxA: mux PORT MAP (selmuxa, product, "00000000000", A);
	muxB: mux PORT MAP (selmuxb, product, outrca, B);
	
	save_A: registerAB PORT MAP (A, ck, fill_b, As);
	save_B: registerAB PORT MAP (B, ck, fill_b, Bs);
	
	adder: rca PORT MAP (As, Bs, outrca);
	
	save_sum: registerS PORT MAP (outrca, enrs, ck, fill_b, sums);
	adj_out: bit_adjuster_out PORT MAP (sums, data_out);

END ARCHITECTURE;