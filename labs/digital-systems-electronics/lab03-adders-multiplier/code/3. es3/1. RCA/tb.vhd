LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity tb2 is
end;

architecture behavior of tb2 is
COMPONENT rca_16bit is 
port ( a, b : IN signed(15 DOWNTO 0);
  KEY : in std_logic_vector(1 downto 0);
  HEX0, HEX1, HEX2, HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
  LEDR : OUT STD_LOGIC
  );
END COMPONENT;

signal CLK, RESET : std_logic;
signal atb, btb : signed(15 downto 0);
signal ovf : std_logic;
SIGNAL D0, D1, D2, D3 :STD_LOGIC_VECTOR( 6 DOWNTO 0);
SIGNAL KEYS : STD_LOGIC_VECTOR( 1 DOWNTO 0);
begin

clock : process
begin
CLK <= '1';
wait for 5 ns;
CLK <= '0';
wait for 5 ns;
end process;

rst : process
begin
RESET <= '1';
wait for 250 ns;
RESET <= '0';
wait;
end process;


process
begin
--A <= "0001100110011001"; S = 0111111111111111
--B <= "0110011001100110"; OVF = 0
atb <= "0001100110011001";
wait for 10 ns;

btb <= "0110011001100110";
wait for 30 ns;
--A <= "0111111111111111"; S = 1111111111111110
--B <= "0111111111111111"; OVF = 1
atb <= "0111111111111111";
wait for 10 ns;

btb <= "0111111111111111";
wait for 30 ns;
--A <= "1011101110111011"; S = 1000100010000111
--B <= "1100110011001100"; OVF = 0
atb <= "1011101110111011";
wait for 10 ns;

btb <= "1100110011001100";
wait for 30 ns;
--A<=  "1001001011011011"; S = 1110111001111111
--B<=  "0101101110100100"; OVF = ?
atb <= "1001001011011011";
wait for 10 ns;

btb <= "0101101110100100";
wait for 30 ns;
wait;
end process;
KEYS <= CLK & RESET;
DUT: rca_16bit port map (atb, btb, KEYS, D0, D1, D2, D3, OVF);
end behavior;