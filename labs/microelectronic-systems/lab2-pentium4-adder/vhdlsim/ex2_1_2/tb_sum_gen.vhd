library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TBSUM_GENERATOR is 
end TBSUM_GENERATOR; 

architecture TEST of TBSUM_GENERATOR is

    component SUM_GENERATOR is							-- Component declaration
        generic (
            NBIT_PER_BLOCK: integer := 4;
            NBLOCKS:    integer := 8
        );
        port (
            A:  in  std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0);
            B:  in  std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0);
            Ci: in  std_logic_vector(NBLOCKS - 1 downto 0);
            S:  out std_logic_vector(NBIT_PER_BLOCK * NBLOCKS - 1 downto 0)
        );
    end component;

    										-- Constants
    constant NBIT_BLK : integer := 4;
    constant NBLK     : integer := 8;
    constant TOT_BITS : integer := NBIT_BLK * NBLK; -- 32 bit

    										-- Test Signals
    signal A_tb  : std_logic_vector(TOT_BITS - 1 downto 0) := (others => '0');
    signal B_tb  : std_logic_vector(TOT_BITS - 1 downto 0) := (others => '0');
    signal Ci_tb : std_logic_vector(NBLK - 1 downto 0)     := (others => '0');
    signal S_tb  : std_logic_vector(TOT_BITS - 1 downto 0);

begin
    										-- Creation of the UUT
    UUT: SUM_GENERATOR
        generic map (
            NBIT_PER_BLOCK => NBIT_BLK,
            NBLOCKS        => NBLK
        )
        port map (
            A  => A_tb,
            B  => B_tb,
            Ci => Ci_tb,
            S  => S_tb
        );

    										-- Stimulus Process
    STIMULUS: process
    begin
        									-- Test 1: All 0
        A_tb  <= x"00000000";
        B_tb  <= x"00000000";
        Ci_tb <= x"00";
        wait for 10 ns;

        									-- Test 2: No Carry Sum
        A_tb  <= x"11111111";
        B_tb  <= x"22222222";
        Ci_tb <= x"00";
        wait for 10 ns; 							-- Expected Result: 33333333

        									-- Test 3: All Carry In
        									-- A and B are 0, all blocks will sum 0+0+1 = 1
        A_tb  <= x"00000000";
        B_tb  <= x"00000000";
        Ci_tb <= x"FF"; 							-- 8 bit at '1' (11111111)
        wait for 10 ns; 							-- Expected Result: 11111111

        									-- Test 4: Alternated Carry (0xAA = 10101010)
        									-- (carry at 1 at odd index 7,5,3,1)
        A_tb  <= x"44444444";
        B_tb  <= x"44444444";
        Ci_tb <= x"AA";
        wait for 10 ns; 							-- Expected Result: 98989898

        									-- Test 5: Overflow of single block
        A_tb  <= x"FFFFFFFF";
        B_tb  <= x"00000000";
        Ci_tb <= x"FF";
        wait for 10 ns; 							-- Expected Result: 00000000 (F + 0 + 1 fa 16, che su 4 bit è 0)

        wait;
    end process STIMULUS;

end TEST;

configuration SUM_GENERATORTEST of TBSUM_GENERATOR is
  for TEST
    for all: SUM_GENERATOR
      use configuration WORK.CFG_SG_STRUCTURAL;
    end for;
  end for;
end SUM_GENERATORTEST;