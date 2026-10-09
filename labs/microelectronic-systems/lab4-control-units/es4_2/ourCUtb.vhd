library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;

entity cu_test is
end cu_test; -- empty entity for testbench

architecture TEST of cu_test is

    -- component declaration of the Device Under Test
    component our_cu
       port (
              EN1    : out std_logic;
              RF1    : out std_logic;
              RF2    : out std_logic;
              WF1    : out std_logic;
              EN2    : out std_logic;
              S1     : out std_logic;
              S2     : out std_logic;
              ALU1   : out std_logic;
              ALU2   : out std_logic;
              EN3    : out std_logic;
              RM     : out std_logic;
              WM     : out std_logic;
              S3     : out std_logic;
              OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
              FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);              
              Clk    : in std_logic;
              Rst    : in std_logic
            );
    end component;

    -- clock and reset init
    signal Clock: std_logic := '0';
    signal Reset: std_logic := '1';

    -- internal signals to drive and observe the DUT
    signal cu_opcode_i: std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '0');
    signal cu_func_i: std_logic_vector(FUNC_SIZE - 1 downto 0) := (others => '0');
    signal EN1_i, RF1_i, RF2_i, WF1_i, EN2_i, S1_i, S2_i, ALU1_i, ALU2_i, EN3_i, RM_i, WM_i, S3_i: std_logic := '0';

begin

       -- instantiation and port mapping of the hardwired CU
       dut: our_cu
       port map (
                 EN1    => EN1_i,
                 RF1    => RF1_i,
                 RF2    => RF2_i,
                 WF1    => WF1_i,
                 EN2    => EN2_i,
                 S1     => S1_i,
                 S2     => S2_i,
                 ALU1   => ALU1_i,
                 ALU2   => ALU2_i,
                 EN3    => EN3_i,
                 RM     => RM_i,
                 WM     => WM_i,
                 S3     => S3_i,
                 OPCODE => cu_opcode_i,
                 FUNC   => cu_func_i,            
                 Clk    => Clock,
                 Rst    => Reset
               );

    -- clock generation: period = 2 ns (toggles every 1 ns)
    Clock <= not Clock after 1 ns;
    
    -- reset generation: active low for the first 6 ns, then released
    Reset <= '0', '1' after 6 ns;

    -- stimulus process: new instruction every clock cycle (2 ns) to test the pipeline
    CONTROL: process
    begin

        wait for 6 ns;                          -- wait for the reset to end

        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_ADD;
        wait for 2 ns;                          -- test ADD instruction

        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_SUB;
        wait for 2 ns;                          -- test SUB instruction

        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_AND;
        wait for 2 ns;                          -- test AND instruction

        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_OR;
        wait for 2 ns;                          -- test OR instruction

        cu_opcode_i <= ITYPE_ADDI1;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test ADDI1 (INP1)
        
        cu_opcode_i <= ITYPE_SUBI1;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test SUBI1 (INP1)
        
        cu_opcode_i <= ITYPE_ANDI1;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test ANDI1 (INP1)
        
        cu_opcode_i <= ITYPE_ORI1;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test ORI1 (INP1)

        cu_opcode_i <= ITYPE_ADDI2;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test ADDI2 (INP2)
        
        cu_opcode_i <= ITYPE_SUBI2;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test SUBI2 (INP2)
        
        cu_opcode_i <= ITYPE_ANDI2;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test ANDI2 (INP2)
        
        cu_opcode_i <= ITYPE_ORI2;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test ORI2 (INP2)

        cu_opcode_i <= ITYPE_MOV;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test MOV (INP2=0)

        cu_opcode_i <= ITYPE_S_REG1;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test S_REG1 (Store INP1)

        cu_opcode_i <= ITYPE_S_REG2;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test S_REG2 (Store INP2)

        cu_opcode_i <= ITYPE_S_MEM;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test S_MEM (Store in Memory)

        cu_opcode_i <= ITYPE_L_MEM1;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test L_MEM1 (Load from Mem, INP1)

        cu_opcode_i <= ITYPE_L_MEM2;
        cu_func_i <= NOP;
        wait for 2 ns;                          -- test L_MEM2 (Load from Mem, INP2)

        cu_opcode_i <= RTYPE;
        cu_func_i <= NOP;
        wait for 6 ns;                          -- empty instructions to flush the pipeline

        wait;                                   -- end of simulation
    end process;

end architecture TEST;
