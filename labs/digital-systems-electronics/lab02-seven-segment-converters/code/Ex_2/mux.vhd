LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux IS
	PORT (sel: IN STD_LOGIC_VECTOR(1 downto 0);
			output : OUT STD_LOGIC_VECTOR(14 downto 0));
END mux;

ARCHITECTURE Behavior OF mux IS
	
	BEGIN 
		PROCESS(sel)
		VARIABLE H_var, E_var, L_var, O_var, P_var, F_var, C_var: std_logic_vector(2 DOWNTO 0);
		BEGIN
			H_var := "000";
			E_var := "001";
			L_var := "010";
			O_var := "011";
			P_var := "100";
			F_var := "101";
			C_var := "110";
			
			if sel="00" then
				output <= H_var & E_var & L_var & L_var & O_var;
			elsif sel="01" then
				output <= C_var & E_var & P_var & P_var & O_var;
			elsif sel="10" then
				output <= C_var & E_var & L_var & L_var & O_var;
			elsif sel="11" then
				output <= F_var & E_var & L_var & L_var & O_var;
			end if;
		END PROCESS;
END Behavior;