LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity csa is
port ( A, B: IN signed(15 downto 0);
		  ovf : out std_logic;
			 S : OUT signed (15 downto 0));
end csa;


architecture struct of csa is

	component full_adder is
		PORT(a, b, cin: IN STD_LOGIC;
			  s, cout: OUT STD_LOGIC);
	end component;
	
	component mux is
		PORT(s1, s0: IN SIGNED(3 DOWNTO 0);
		     c1, c0, sel: IN STD_LOGIC; 
		     sum: OUT SIGNED(3 DOWNTO 0);
		     c: OUT STD_LOGIC);
	end component;
	
	component RCA is
		port (A, B: IN signed(3 downto 0);
				ci: in std_logic;
				co: out std_logic;
				S: OUT signed (3 downto 0));
	end component;
	
	component RCAovf is
		port (A, B: IN signed(3 downto 0);
				ci: in std_logic;
				ovf: out std_logic;
				S: OUT signed (3 downto 0));
	end component;


	SIGNAL c4, c8, c12, c8c0, c8c1, c12c0, c12c1, ovfc0, ovfc1: STD_LOGIC;
	SIGNAL s1c0, s1c1, s2c0, s2c1, s3c0, s3c1: SIGNED(3 DOWNTO 0);
	


	begin

	RCA0:   RCA port map (A(3 downto 0), B(3 downto 0), '0', c4, S(3 downto 0));
	
	RCA1c0: RCA port map (A(7 downto 4), B(7 downto 4), '0', c8c0, s1c0);
	RCA1c1: RCA port map (A(7 downto 4), B(7 downto 4), '1', c8c1, s1c1);
	
	RCA2c0: RCA port map (A(11 downto 8), B(11 downto 8), '0', c12c0, s2c0);
	RCA2c1: RCA port map (A(11 downto 8), B(11 downto 8), '1', c12c1, s2c1);
	
	RCA3c0: RCAovf port map (A(15 downto 12), B(15 downto 12), '0', ovfc0, s3c0);
	RCA3c1: RCAovf port map (A(15 downto 12), B(15 downto 12), '1', ovfc1, s3c1);
	
	mux1: MUX port map(s1c1, s1c0, c8c1, c8c0, c4, S(7 DOWNTO 4), c8);
	mux2: MUX port map(s2c1, s2c0, c12c1, c12c0, c8, S(11 DOWNTO 8), c12);
	mux3: MUX port map(s3c1, s3c0, c12c1, c12c0, c12, S(15 DOWNTO 12), ovf);


end struct;