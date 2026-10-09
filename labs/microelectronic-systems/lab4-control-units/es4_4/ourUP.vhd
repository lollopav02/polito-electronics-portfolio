library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes_uP.all;

entity our_up is
    port (
        -- control signals for STAGE 1
        EN1    : out std_logic;
        RF1    : out std_logic;
        RF2    : out std_logic;
        WF1    : out std_logic;
        
        -- control signals for STAGE 2
        EN2    : out std_logic;
        S1     : out std_logic;
        S2     : out std_logic;
        ALU1   : out std_logic;
        ALU2   : out std_logic;
        
        -- control signals for STAGE 3
        EN3    : out std_logic;
        RM     : out std_logic;
        WM     : out std_logic;
        S3     : out std_logic;
        
        -- inputs from datapath
        OPCODE : in  std_logic_vector(6 - 1 downto 0);
        FUNC   : in  std_logic_vector(11 - 1 downto 0);              
        Clk    : in  std_logic;
        Rst    : in  std_logic
    );
end entity;

architecture behaviour of our_up is

  -- array type definition for the microcode ROM (64 rows, 13 bits per row)
  type mem_array is array (0 to 63) of std_logic_vector(12 downto 0); 

  -- microcode ROM initialization
  -- Format: "EN1 RF1 RF2 WF1 | EN2 S1 S2 ALU1 ALU2 | EN3 RM WM S3"
    signal microcode : mem_array := (
        
        -- reg to reg operations (R-TYPE)
        -- ADD RA,RB,RC
        0 => "1110000000000", -- STAGE 1: Read RA, Read RB
        1 => "0000100000000", -- STAGE 2: ALU ADD operation
        2 => "0001000001000", -- STAGE 3: Write ALU result in RC
        
        -- SUB RA,RB,RC
        3 => "1110000000000", -- STAGE 1: Read RA, Read RB
        4 => "0000100010000", -- STAGE 2: ALU SUB operation
        5 => "0001000001000", -- STAGE 3: Write ALU result in RC
        
        -- AND RA,RB,RC
        6 => "1110000000000", -- STAGE 1: Read RA, Read RB
        7 => "0000100100000", -- STAGE 2: ALU AND operation
        8 => "0001000001000", -- STAGE 3: Write ALU result in RC
        
        -- OR RA,RB,RC
        9 => "1110000000000", -- STAGE 1: Read RA, Read RB
        10=> "0000100110000", -- STAGE 2: ALU OR operation
        11=> "0001000001000", -- STAGE 3: Write ALU result in RC

        -- I-TYPE operations using INP1 (Mux1)
        -- R[RA] = R[RB] + INP1
        12=> "1010000000000", -- STAGE 1: Read RB
        13=> "0000110000000", -- STAGE 2: Mux1=INP1, ALU ADD operation
        14=> "0001000001000", -- STAGE 3: Write ALU result in RA
        
        -- R[RA] = R[RB] - INP1
        15=> "1010000000000", -- STAGE 1: Read RB
        16=> "0000110010000", -- STAGE 2: Mux1=INP1, ALU SUB operation
        17=> "0001000001000", -- STAGE 3: Write ALU result in RA
        
        -- R[RA] = R[RB] AND INP1
        18=> "1010000000000", -- STAGE 1: Read RB
        19=> "0000110100000", -- STAGE 2: Mux1=INP1, ALU AND operation
        20=> "0001000001000", -- STAGE 3: Write ALU result in RA
        
        -- R[RA] = R[RB] OR INP1
        21=> "1010000000000", -- STAGE 1: Read RB
        22=> "0000110110000", -- STAGE 2: Mux1=INP1, ALU OR operation
        23=> "0001000001000", -- STAGE 3: Write ALU result in RA

        -- I-TYPE operations using INP2 (Mux2)
        -- R[RB] = R[RA] + INP2
        24=> "1100000000000", -- STAGE 1: Read RA
        25=> "0000101000000", -- STAGE 2: Mux2=INP2, ALU ADD operation
        26=> "0001000001000", -- STAGE 3: Write ALU result in RB
        
        -- R[RB] = R[RA] - INP2
        27=> "1100000000000", -- STAGE 1: Read RA
        28=> "0000101010000", -- STAGE 2: Mux2=INP2, ALU SUB operation
        29=> "0001000001000", -- STAGE 3: Write ALU result in RB
        
        -- R[RB] = R[RA] AND INP2
        30=> "1100000000000", -- STAGE 1: Read RA
        31=> "0000101100000", -- STAGE 2: Mux2=INP2, ALU AND operation
        32=> "0001000001000", -- STAGE 3: Write ALU result in RB
        
        -- R[RB] = R[RA] OR INP2
        33=> "1100000000000", -- STAGE 1: Read RA
        34=> "0000101110000", -- STAGE 2: Mux2=INP2, ALU OR operation
        35=> "0001000001000", -- STAGE 3: Write ALU result in RB

        -- Special register operations
        -- R[RB] = R[RA]
        36=> "1100000000000", -- STAGE 1: Read RA
        37=> "0000101000000", -- STAGE 2: Mux2=INP2(0), ALU ADD operation
        38=> "0001000001000", -- STAGE 3: Write ALU result in RB
        
        -- R[RB] = INP1
        39=> "1000000000000", -- STAGE 1: No Read
        40=> "0000110000000", -- STAGE 2: Mux1=INP1, ALU ADD operation
        41=> "0001000001000", -- STAGE 3: Write ALU result in RB
        
        -- R[RA] = INP2
        42=> "1000000000000", -- STAGE 1: No Read
        43=> "0000101000000", -- STAGE 2: Mux2=INP2, ALU ADD operation
        44=> "0001000001000", -- STAGE 3: Write ALU result in RA

        -- Memory operations
        -- MEM[R[RA]+INP2] = R[RB]
        45=> "1110000000000", -- STAGE 1: Read RA(Base), Read RB(Data)
        46=> "0000101000000", -- STAGE 2: Mux2=INP2, ADD operation
        47=> "0000000001010", -- STAGE 3: Enable Memory Write
        
        -- R[RA] = MEM[R[RB]+INP1]
        48=> "1010000000000", -- STAGE 1: Read RB(Base)
        49=> "0000110000000", -- STAGE 2: Mux1=INP1, ADD operation
        50=> "0001000001101", -- STAGE 3: Enable Memory Read, Mux3=MEM, Write RA
        
        -- R[RB] = MEM[R[RA]+INP2]
        51=> "1100000000000", -- STAGE 1: Read RA(Base)
        52=> "0000101000000", -- STAGE 2: Mux2=INP2, ADD operation
        53=> "0001000001101", -- STAGE 3: Enable Memory Read, Mux3=MEM, Write RB

        -- unused addresses and reset line
        others => "0000000000000"
    );

  -- internal signals for ROM read and uPC management
  signal cw : std_logic_vector(12 downto 0);
  signal uPC : integer range 0 to 63;
  signal count : integer range 0 to 3;


  begin
  
  -- combinational read from the microcode ROM
  cw <= microcode(uPC);

    -- OUTPUT ASSIGNMENTS
    -- mapping the 13-bit control word to the physical ports
    
    EN1  <= cw(12);
    RF1  <= cw(11);
    RF2  <= cw(10);
    WF1  <= cw(9);
    
    EN2  <= cw(8);
    S1   <= cw(7);
    S2   <= cw(6);
    ALU1 <= cw(5);
    ALU2 <= cw(4);
    
    EN3  <= cw(3);
    RM   <= cw(2);
    WM   <= cw(1);
    S3   <= cw(0);

  -- PROCESS 1: uPC generation and increment logic
  -- manages the sequential execution of the 3 stages of an instruction
  uPC_proc: process(Clk, Rst)
  begin
    if Rst = '0' then                   
      uPC <= 63;  -- points to an empty line during reset
      count <= 0; -- synchronization start state
    elsif Clk'event and Clk = '1' then  
      
      -- initial synchronization after reset
      if count = 0 then
          count <= 1;
          
      -- CYCLE 1: load the base address of the instruction
      elsif count = 1 then
          if OPCODE = RTYPE then 
              uPC <= conv_integer(unsigned(FUNC)); 
          else
              uPC <= conv_integer(unsigned(OPCODE)); 
          end if;
          count <= 2;
          
      -- CYCLE 2: increment uPC to point to the STAGE 2 control word
      elsif count = 2 then
          uPC   <= uPC + 1;
          count <= 3;
          
      -- CYCLE 3: increment uPC to point to the STAGE 3 control word, then restart
      elsif count = 3 then
          uPC   <= uPC + 1;
          count <= 1; 
      end if;
    end if;
  end process;

end architecture;
