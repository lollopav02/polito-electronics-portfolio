library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all; 

entity ACC is
  port (
    A          : in  std_logic_vector(NumBit - 1 downto 0);
    B          : in  std_logic_vector(NumBit - 1 downto 0);
    CLK        : in  std_logic;
    RST_n      : in  std_logic; 
    ACCUMULATE : in  std_logic;
    Y          : out std_logic_vector(NumBit - 1 downto 0)
  );
end ACC;


architecture STRUCTURAL of ACC is

  component REG is
    generic(NBIT: integer);
    port (
        D     : in  std_logic_vector(NBIT-1 downto 0);
        CK    : in  std_logic;
        RESET : in  std_logic; 
        Q     : out std_logic_vector(NBIT-1 downto 0)
    );
  end component;

  component MUX21_GENERIC is
    generic (NBIT: positive);
    port (
        A, B : in  std_logic_vector(NBIT-1 downto 0);
        SEL  : in  std_logic;
        Y    : out std_logic_vector(NBIT-1 downto 0)
    );
  end component;

  signal mux_out         : std_logic_vector(NumBit - 1 downto 0);
  signal sum_res         : std_logic_vector(NumBit - 1 downto 0);
  signal feed_back       : std_logic_vector(NumBit - 1 downto 0);
  signal rst_active_high : std_logic;

begin

  rst_active_high <= not RST_n;

  
  UMUX: MUX21_GENERIC
    generic map (NBIT => NumBit)
    port map (A => feed_back, B => B, SEL => ACCUMULATE, Y => mux_out);

  -- sum with operator (Dataflow instead of RCA)
  sum_res <= A + mux_out;


  UREG: REG
    generic map (NBIT => NumBit)
    port map (D => sum_res, CK => CLK, RESET => rst_active_high, Q => feed_back);

  Y <= feed_back;

end STRUCTURAL;

--behavioral architecture (no component included)

architecture BEHAVIORAL of ACC is
  signal mux_out   : std_logic_vector(NumBit - 1 downto 0);
  signal sum_res   : std_logic_vector(NumBit - 1 downto 0);
  signal reg_out   : std_logic_vector(NumBit - 1 downto 0);
begin

  mux_out <= reg_out when (ACCUMULATE = '1') else B;
  sum_res <= A + mux_out;

  PROCESS_REG: process(CLK, RST_n)
  begin
    if (RST_n = '0') then
      reg_out <= (others => '0');
    elsif rising_edge(CLK) then
      reg_out <= sum_res;
    end if;
  end process PROCESS_REG;

  Y <= reg_out;
end BEHAVIORAL;


configuration CFG_ACC_STRUCTURAL of ACC is
  for STRUCTURAL
    for UMUX : MUX21_GENERIC
      use configuration WORK.CFG_MUX21_STRUCTURAL;
    end for;
    for UREG : REG
      use configuration WORK.CFG_REG_2; 
    end for;
  end for;
end CFG_ACC_STRUCTURAL;

configuration CFG_ACC_BEHAVIORAL of ACC is
  for BEHAVIORAL
  end for;
end CFG_ACC_BEHAVIORAL;

