LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY onehot_fsm2 IS
	PORT(KEY: IN STD_LOGIC_VECTOR(0 DOWNTO 0); -- KEY(0): CLOCK
		  SW: IN STD_LOGIC_VECTOR(1 DOWNTO  0); -- SW(0): RESET, SW(1): w
		  LEDR: OUT STD_LOGIC_VECTOR(0 DOWNTO 0)); -- z
END ENTITY;

ARCHITECTURE dataflow OF onehot_fsm2 IS
	
	COMPONENT toggle_ff IS
		PORT(data, clock, clear: IN STD_LOGIC;
			  q: OUT STD_LOGIC);
	END COMPONENT; 
	
	COMPONENT registerA IS
		PORT (en, outA: IN STD_LOGIC;
					  inA: OUT STD_LOGIC);
	END COMPONENT;
	
	SIGNAL Y: STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL w: STD_LOGIC;
	SIGNAL in_A, in_B, in_C, in_D, in_E, in_F, in_G, in_H, in_I: STD_LOGIC;
	SIGNAL enable: STD_LOGIC;
	
--	SIGNAL out_A, out_B, out_C, out_D, out_E, out_F, out_G, out_H, out_I: STD_LOGIC;
	
	BEGIN
	w <= SW(1);
	enable <= (NOT(SW(0)));
	start: registerA PORT MAP (enable, Y(0), in_A);
--	in_A <= (NOT SW(0));
	tA: toggle_ff PORT MAP (in_A, KEY(0), SW(0), Y(0));
	in_B <= ((Y(5) OR Y(6) OR Y(7) OR Y(8) OR (NOT Y(0))) AND (NOT w));
	tB: toggle_ff PORT MAP (in_B, KEY(0), SW(0), Y(1));
	in_C <= (Y(1) AND (NOT w));
	tC: toggle_ff PORT MAP (in_C, KEY(0), SW(0), Y(2));
	in_D <= (Y(2) AND (NOT w));
	tD: toggle_ff PORT MAP (in_D, KEY(0), SW(0), Y(3));
	in_E <= ((Y(3) OR Y(4)) AND (NOT w));
	tE: toggle_ff PORT MAP (in_E, KEY(0), SW(0), Y(4));
	in_F <= (((NOT Y(0)) OR Y(1) OR Y(2) OR Y(3) or Y(4)) AND w);
	tF: toggle_ff PORT MAP (in_F, KEY(0), SW(0), Y(5));
	in_G <= (Y(5) AND w);
	tG: toggle_ff PORT MAP (in_G, KEY(0), SW(0), Y(6));
	in_H <= (Y(6) AND w);
	tH: toggle_ff PORT MAP (in_H, KEY(0), SW(0), Y(7));
	in_I <= ((Y(7) OR Y(8)) AND w);
	tI: toggle_ff PORT MAP (in_I, KEY(0), SW(0), Y(8));
	
	LEDR(0) <= (Y(4) OR Y(8));

END ARCHITECTURE; 