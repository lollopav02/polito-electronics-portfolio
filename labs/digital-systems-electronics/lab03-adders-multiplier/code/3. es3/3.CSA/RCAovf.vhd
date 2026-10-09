library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RCAovf is
	port (A, B: IN signed(3 downto 0);
			ci: in std_logic;
			ovf: out std_logic;
			S: OUT signed (3 downto 0));
end entity;

architecture struct of RCAovf is

component full_adder is
	PORT(a, b, cin: IN STD_LOGIC;
		  s, cout: OUT STD_LOGIC);
end component;

signal c1,c2,c3,c4: std_logic;

begin
FA1 : full_adder port map (A(0), B(0), ci, c1, S(0)); 
FA2 : full_adder port map (A(1), B(1), c1, c2, S(1)); 
FA3 : full_adder port map (A(2), B(2), c2, c3, S(2)); 
FA4 : full_adder port map (A(3), B(3), c3, c4, S(3)); 
ovf <= c3 xor c4;
end struct;