library ieee;
use ieee.std_logic_1164.all;
use work.myTypes.all;

entity our_fsm is
	    port (
		-- FIRST STAGE OUTPUTS
		EN1    : out std_logic;
		RF1    : out std_logic;
		RF2    : out std_logic;
		WF1    : out std_logic;
		-- SECOND STAGE OUTPUTS
		EN2    : out std_logic;
		S1     : out std_logic;
		S2     : out std_logic;
		ALU1   : out std_logic;
		ALU2   : out std_logic;
		-- THIRD STAGE OUTPUTS
		EN3    : out std_logic;
		RM     : out std_logic;
		WM     : out std_logic;
		S3     : out std_logic;
		-- INPUTS
		OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
		FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);              
		Clk    : in  std_logic;
		Rst    : in  std_logic
    		);
end entity our_fsm;

architecture Behavioral of our_fsm is
 
    -- FSM states definition (Idle + 3 stages)
    type type_state is (st0, st1, st2, st3); 
    signal curr_state, nxt_state : type_state;
    
    -- instruction registers
    signal op_reg   : std_logic_vector(OP_CODE_SIZE - 1 downto 0);
    signal func_reg : std_logic_vector(FUNC_SIZE - 1 downto 0);

begin

    -- PROCESS 1: synchronous process for state and instruction registers
    SYNC_PROC: process(Clk, Rst)
    begin
        if Rst = '0' then
            curr_state <= st0;                   -- go to idle state on reset
            op_reg     <= (others => '0');       -- clear instruction registers
            func_reg   <= (others => '0');
        elsif rising_edge(Clk) then
            curr_state <= nxt_state;             -- next state
            
            -- Save OPCODE and FUNC at the beginning of a new instruction (in case they change during intermediate states)
            if curr_state = st0 or curr_state = st3 then
                op_reg   <= OPCODE;
                func_reg <= FUNC;
            end if;
        end if;
    end process;

    -- PROCESS 2: next state logic (combinational)
    NEXT_STATE_PROC: process(curr_state)
    begin
        nxt_state <= curr_state;                 -- default assignment
        case curr_state is
            when st0 => nxt_state <= st1;        -- idle to STAGE 1
            when st1 => nxt_state <= st2;        -- STAGE 1 to STAGE 2
            when st2 => nxt_state <= st3;        -- STAGE 2 to STAGE 3
            when st3 => nxt_state <= st1;        -- restart the cycle for the next instruction
        end case;
    end process;


---we used AI here in order to semplify our output process,since we ended up to a large amount of line code
---of case state,using OR statement we reduced code size.

    -- PROCESS 3: outputs logic (combinational)
    -- generates signals based on the current state
    OUTPUT_PROC: process(curr_state, op_reg, func_reg)
    begin
        -- default values set to 0
        EN1 <= '0'; RF1 <= '0'; RF2 <= '0'; WF1 <= '0';
        EN2 <= '0'; S1  <= '0'; S2  <= '0'; ALU1 <= '0'; ALU2 <= '0';
        EN3 <= '0'; RM  <= '0'; WM  <= '0'; S3  <= '0';

        case curr_state is 
            	when st0 =>
		        -- nothing to activate in IDLE state

            	when st1 => 
		        EN1 <= '1';                                                                          -- STAGE 1 is active
		        case op_reg is
		            when RTYPE | ITYPE_S_MEM =>        
		                RF1 <= '1'; RF2 <= '1';                                                      -- Read RA and RB
		            when ITYPE_ADDI1 | ITYPE_SUBI1 | ITYPE_ANDI1 | ITYPE_ORI1 | ITYPE_L_MEM1 =>  
		                RF1 <= '0'; RF2 <= '1';                                                      -- Read only RB
		            when ITYPE_ADDI2 | ITYPE_SUBI2 | ITYPE_ANDI2 | ITYPE_ORI2 | ITYPE_MOV | ITYPE_L_MEM2 =>  
		                RF1 <= '1'; RF2 <= '0';                                                      -- Read only RA
		            when ITYPE_S_REG1 | ITYPE_S_REG2 => 
		                RF1 <= '0'; RF2 <= '0';                                                      -- No register reading
		            when others => null;
		        end case;

		when st2 =>
		        EN2 <= '1';                                                                          -- STAGE 2 is active
		        case op_reg is
		            when RTYPE =>
		                S1 <= '0'; S2 <= '0';                                                        -- Select RA and RB
		                if    func_reg = RTYPE_ADD then ALU1 <= '0'; ALU2 <= '0';                    -- ADD operation
		                elsif func_reg = RTYPE_SUB then ALU1 <= '0'; ALU2 <= '1';                    -- SUB operation
		                elsif func_reg = RTYPE_AND then ALU1 <= '1'; ALU2 <= '0';                    -- AND operation
		                elsif func_reg = RTYPE_OR  then ALU1 <= '1'; ALU2 <= '1';                    -- OR operation
		                end if;
		     
		            when ITYPE_ADDI1 | ITYPE_S_REG1 | ITYPE_L_MEM1 =>  
		                S1 <= '1'; S2 <= '0'; ALU1 <= '0'; ALU2 <= '0';                              -- Select INP1, ADD operation
		            when ITYPE_SUBI1 =>  
		                S1 <= '1'; S2 <= '0'; ALU1 <= '0'; ALU2 <= '1';                              -- Select INP1, SUB operation
		            when ITYPE_ANDI1 =>  
		                S1 <= '1'; S2 <= '0'; ALU1 <= '1'; ALU2 <= '0';                              -- Select INP1, AND operation
		            when ITYPE_ORI1  =>  
		                S1 <= '1'; S2 <= '0'; ALU1 <= '1'; ALU2 <= '1';                              -- Select INP1, OR operation
		                
		            when ITYPE_ADDI2 | ITYPE_S_REG2 | ITYPE_S_MEM | ITYPE_MOV | ITYPE_L_MEM2 =>  
		                S1 <= '0'; S2 <= '1'; ALU1 <= '0'; ALU2 <= '0';                              -- Select INP2, ADD operation
		            when ITYPE_SUBI2 =>  
		                S1 <= '0'; S2 <= '1'; ALU1 <= '0'; ALU2 <= '1';                              -- Select INP2, SUB operation
		            when ITYPE_ANDI2 =>  
		                S1 <= '0'; S2 <= '1'; ALU1 <= '1'; ALU2 <= '0';                              -- Select INP2, AND operation
		            when ITYPE_ORI2  =>  
		                S1 <= '0'; S2 <= '1'; ALU1 <= '1'; ALU2 <= '1';                              -- Select INP2, OR operation
		                
		            when others => null;
		        end case;

		    when st3 =>
		        EN3 <= '1';                                                                          -- STAGE 3 is active
		        case op_reg is
		            when RTYPE | ITYPE_ADDI1 | ITYPE_SUBI1 | ITYPE_ANDI1 | ITYPE_ORI1 | 
		                 ITYPE_ADDI2 | ITYPE_SUBI2 | ITYPE_ANDI2 | ITYPE_ORI2 | 
		                 ITYPE_MOV   | ITYPE_S_REG1| ITYPE_S_REG2 =>        
		                RM <= '0'; WM <= '0'; S3 <= '0'; WF1 <= '1';                                 -- Write ALU result in RF (no Memory)

		            when ITYPE_S_MEM =>  
		                RM <= '0'; WM <= '1'; S3 <= '0'; WF1 <= '0';                                 -- Write data in Memory (no RF write)

		            when ITYPE_L_MEM1 | ITYPE_L_MEM2 => 
		                RM <= '1'; WM <= '0'; S3 <= '1'; WF1 <= '1';                                 -- Read from Memory and write in RF

		            when others => null;
		        end case;
                
        	end case;
    end process;

end architecture;