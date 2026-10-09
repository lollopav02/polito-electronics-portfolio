LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY full_adder IS 
	PORT(a, b, cin: IN STD_LOGIC;
			 s, cout: OUT STD_LOGIC);
END ENTITY;

architecture structural of full_adder is
begin
s <= a XOR b XOR cin;
cout <= (a AND b) OR (b AND cin) OR (cin AND a);
end architecture;