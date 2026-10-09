LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity cba is
port ( A, B: IN signed(15 downto 0);
		  ovf : out std_logic;
			 S : OUT signed (15 downto 0));
end cba;


architecture dataflow of cba is

component full_adder is
PORT(a, b, cin: IN STD_LOGIC;
		 s, cout: OUT STD_LOGIC);
end component;

component mux is
port ( z, u : IN STD_LOGIC; 
				s : IN STD_LOGIC; 
				m : OUT STD_LOGIC);
end component;

signal c: std_logic_vector(16 downto 0);
signal p: std_logic_vector(15 downto 0);
signal sel: std_logic_vector(3 downto 0);
signal c_in2,c_in3,c_in4, c_out: std_logic;

begin
c(0)<='0';
p(0)<= A(0) XOR B(0);
p(1)<= A(1) XOR B(1);
p(2)<= A(2) XOR B(2);
p(3)<= A(3) XOR B(3);
p(4)<= A(4) XOR B(4);
p(5)<= A(5) XOR B(5);
p(6)<= A(6) XOR B(6);
p(7)<= A(7) XOR B(7);
p(8)<= A(8) XOR B(8);
p(9)<= A(9) XOR B(9);
p(10)<= A(10) XOR B(10);
p(11)<= A(11) XOR B(11);
p(12)<= A(12) XOR B(12);
p(13)<= A(13) XOR B(13);
p(14)<= A(14) XOR B(14);
p(15)<= A(15) XOR B(15);
sel(0)<= p(0) AND p(1) AND p(2) AND p(3);
sel(1)<= p(4) AND p(5) AND p(6) AND p(7);
sel(2)<= p(8) AND p(9) AND p(10) AND p(11);
sel(3)<= p(12) AND p(13) AND p(14) AND p(15);

FA1 : full_adder port map (A(0), B(0), c(0), S(0), c(1)); 
FA2 : full_adder port map (A(1), B(1), c(1), S(1), c(2)); 
FA3 : full_adder port map (A(2), B(2), c(2), S(2), c(3));
FA4 : full_adder port map (A(3), B(3), c(3), S(3), c(4));

FA5 : full_adder port map ( A(4), B(4), c_in2, S(4), c(5));
FA6 : full_adder port map ( A(5), B(5), c(5), S(5), c(6));
FA7 : full_adder port map ( A(6), B(6), c(6), S(6), c(7));
FA8 : full_adder port map ( A(7), B(7), c(7), S(7), c(8));

FA9 : full_adder port map ( A(8), B(8), c_in3, S(8), c(9));
FA10 : full_adder port map ( A(9), B(9), c(9), S(9), c(10));
FA11 : full_adder port map ( A(10), B(10), c(10), S(10), c(11));
FA12 : full_adder port map ( A(11), B(11), c(11), S(11), c(12));

FA13 : full_adder port map ( A(12), B(12), c_in4, S(12), c(13));
FA14 : full_adder port map ( A(13), B(13), c(13), S(13), c(14));
FA15 : full_adder port map ( A(14), B(14), c(14), S(14), c(15));
FA16 : full_adder port map ( A(15), B(15), c(15), S(15), c(16)); 

MUX1: MUX port map(c(4), c(0), sel(0), c_in2);
MUX2: MUX port map(c(8), c_in2, sel(1), c_in3);
MUX3: MUX port map(c(12), c_in3, sel(2), c_in4);
MUX4: MUX port map(c(16), c_in4, sel(3), c_out);

ovf <= c(15) XOR c(16);

end dataflow;