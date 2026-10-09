LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY part2 IS
	PORT(KEY: IN STD_LOGIC_VECTOR(0 DOWNTO 0); -- KEY(0): CLOCK
		  SW: IN STD_LOGIC_VECTOR(1 DOWNTO  0); -- SW(0): RESET, SW(1): w
		  LEDR: OUT STD_LOGIC_VECTOR(0 DOWNTO 0)); -- z
END part2;

ARCHITECTURE Behavior OF part2 IS

	SIGNAL w, rst, ck, z: STD_LOGIC;
	TYPE State_type IS (A, B, C, D, E, F, G, H, I);
	SIGNAL y_Q, Y_D : State_type; -- y_Q is present state, y_D is next state
	
	BEGIN
	w <= SW(1);
	rst <= SW(0);
	ck <= KEY(0);
	ledr(0) <= z;
	
	PROCESS (w, y_Q) -- state table (cc1)
	BEGIN
		CASE y_Q IS
			WHEN A => IF(W='1') THEN Y_D <= F;
			  ELSE Y_D<=B;
			  END IF;
			WHEN B => IF(W='1') THEN Y_D <= F;
			  ELSE Y_D<=C;
			  END IF;
			WHEN C => IF(W='1') THEN Y_D <= F;
			  ELSE Y_D<=D;
			  END IF;
			WHEN D => IF(W='1') THEN Y_D <= F;
			  ELSE Y_D<=E;
			  END IF;
			WHEN E => IF(W='1') THEN Y_D <= F;
			  ELSE Y_D<=E;
			  END IF;
			WHEN F => IF(W='1') THEN Y_D <= G;
			  ELSE Y_D<=B;
			  END IF;
			WHEN G => IF(W='1') THEN Y_D <= H;
			  ELSE Y_D<=B;
			  END IF;
			WHEN H => IF(W='1') THEN Y_D <= I;
			  ELSE Y_D<=B;
			  END IF;
			WHEN I => IF(W='1') THEN Y_D <= I;
			  ELSE Y_D<=B;
			  END IF;
			WHEN OTHERS => Y_D<=A;
		END CASE;
	END PROCESS;
	
	PROCESS (ck) -- state flip-flops
	BEGIN
		IF (rst = '1') THEN
			y_Q <= A;
		ELSE
			IF (ck = '1' AND ck'event) THEN
				y_Q <= Y_D;
			END IF;
		END IF;
	END PROCESS;
	
	PROCESS (y_Q) --output assignment (cc2)
	BEGIN
		CASE y_Q IS
			WHEN E => 
			  z <='1';
			WHEN I => 
			  z <='1';
			WHEN OTHERS => 
			  z <='0';
		END CASE;
	END PROCESS;
	
END Behavior;