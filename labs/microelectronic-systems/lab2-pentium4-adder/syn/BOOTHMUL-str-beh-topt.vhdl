
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL_N8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL_N8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity BOOTHMUL_N8_DW01_add_2 is

   port( A, B : in std_logic_vector (11 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (11 downto 0);  CO : out std_logic);

end BOOTHMUL_N8_DW01_add_2;

architecture SYN_rpl of BOOTHMUL_N8_DW01_add_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, 
      SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, carry_11_port, 
      carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, 
      carry_5_port, carry_4_port, n1, SUM_2_port, n_1004 : std_logic;

begin
   SUM <= ( SUM_11_port, SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, 
      SUM_6_port, SUM_5_port, SUM_4_port, SUM_3_port, SUM_2_port, A(1), A(0) );
   
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           n_1004, S => SUM_11_port);
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM_10_port);
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM_5_port);
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM_4_port);
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => n1, CO => carry_4_port, S
                           => SUM_3_port);
   U2 : XOR2_X1 port map( A => B(2), B => A(2), Z => SUM_2_port);
   U1 : AND2_X1 port map( A1 => B(2), A2 => A(2), ZN => n1);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity BOOTHMUL_N8_DW01_add_0 is

   port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (15 downto 0);  CO : out std_logic);

end BOOTHMUL_N8_DW01_add_0;

architecture SYN_rpl of BOOTHMUL_N8_DW01_add_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      carry_15_port, carry_14_port, carry_13_port, carry_12_port, carry_11_port
      , carry_10_port, carry_9_port, carry_8_port, carry_7_port, carry_6_port, 
      n1, SUM_4_port, n_1011 : std_logic;

begin
   SUM <= ( SUM_15_port, SUM_14_port, SUM_13_port, SUM_12_port, SUM_11_port, 
      SUM_10_port, SUM_9_port, SUM_8_port, SUM_7_port, SUM_6_port, SUM_5_port, 
      SUM_4_port, A(3), A(2), A(1), A(0) );
   
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           n_1011, S => SUM_15_port);
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM_14_port);
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM_13_port);
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM_12_port);
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM_11_port);
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM_10_port);
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM_9_port);
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM_8_port);
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM_7_port);
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM_6_port);
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => n1, CO => carry_6_port, S
                           => SUM_5_port);
   U2 : XOR2_X1 port map( A => B(4), B => A(4), Z => SUM_4_port);
   U1 : AND2_X1 port map( A1 => B(4), A2 => A(4), ZN => n1);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_N8.all;

entity BOOTHMUL_N8 is

   port( A, B : in std_logic_vector (7 downto 0);  P : out std_logic_vector (15
         downto 0));

end BOOTHMUL_N8;

architecture SYN_MIXED of BOOTHMUL_N8 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BOOTHMUL_N8_DW01_add_2
      port( A, B : in std_logic_vector (11 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (11 downto 0);  CO : out std_logic);
   end component;
   
   component BOOTHMUL_N8_DW01_add_0
      port( A, B : in std_logic_vector (15 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (15 downto 0);  CO : out std_logic);
   end component;
   
   signal tmp_pp_8_port, tmp_pp_7_port, tmp_pp_8_1, tmp_pp_7_1, tmp_pp_6_1, 
      tmp_pp_5_1, tmp_pp_4_1, tmp_pp_3_1, tmp_pp_2_1, tmp_pp_1_1, tmp_pp_1_2, 
      add_1_root_add_57_I4_SUM_6_port, add_1_root_add_57_I4_SUM_7_port, 
      add_1_root_add_57_I4_SUM_8_port, add_1_root_add_57_I4_SUM_9_port, 
      add_1_root_add_57_I4_SUM_10_port, add_1_root_add_57_I4_SUM_11_port, 
      add_1_root_add_57_I4_SUM_12_port, add_1_root_add_57_I4_SUM_13_port, 
      add_1_root_add_57_I4_SUM_14_port, add_1_root_add_57_I4_SUM_15_port, n202,
      n203, n204, n205, n206, n207, n208, N179, N178, N177, N176, N175, N174, 
      N173, N172, N171, N170, N169, N168, n210, n211, n212, n213, n360, n361, 
      n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, 
      n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, 
      n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, 
      n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, 
      n410, n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, 
      n422, n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, 
      n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, 
      n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, 
      n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, 
      n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, 
      n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493, 
      n494, n495, n496, n497, n498, n499, n500, n501, n_1012, n_1013 : 
      std_logic;

begin
   
   n210 <= '0';
   n211 <= '0';
   n212 <= '0';
   n213 <= '0';
   add_0_root_add_57_I4 : BOOTHMUL_N8_DW01_add_0 port map( A(15) => N179, A(14)
                           => N179, A(13) => N179, A(12) => N179, A(11) => N179
                           , A(10) => N178, A(9) => N177, A(8) => N176, A(7) =>
                           N175, A(6) => N174, A(5) => N173, A(4) => N172, A(3)
                           => N171, A(2) => N170, A(1) => N169, A(0) => N168, 
                           B(15) => add_1_root_add_57_I4_SUM_15_port, B(14) => 
                           add_1_root_add_57_I4_SUM_14_port, B(13) => 
                           add_1_root_add_57_I4_SUM_13_port, B(12) => 
                           add_1_root_add_57_I4_SUM_12_port, B(11) => 
                           add_1_root_add_57_I4_SUM_11_port, B(10) => 
                           add_1_root_add_57_I4_SUM_10_port, B(9) => 
                           add_1_root_add_57_I4_SUM_9_port, B(8) => 
                           add_1_root_add_57_I4_SUM_8_port, B(7) => 
                           add_1_root_add_57_I4_SUM_7_port, B(6) => 
                           add_1_root_add_57_I4_SUM_6_port, B(5) => tmp_pp_1_2,
                           B(4) => n361, B(3) => n210, B(2) => n210, B(1) => 
                           n210, B(0) => n210, CI => n212, SUM(15) => P(15), 
                           SUM(14) => P(14), SUM(13) => P(13), SUM(12) => P(12)
                           , SUM(11) => P(11), SUM(10) => P(10), SUM(9) => P(9)
                           , SUM(8) => P(8), SUM(7) => P(7), SUM(6) => P(6), 
                           SUM(5) => P(5), SUM(4) => P(4), SUM(3) => P(3), 
                           SUM(2) => P(2), SUM(1) => P(1), SUM(0) => P(0), CO 
                           => n_1012);
   add_2_root_add_57_I4 : BOOTHMUL_N8_DW01_add_2 port map( A(11) => 
                           tmp_pp_8_port, A(10) => tmp_pp_8_port, A(9) => 
                           tmp_pp_8_port, A(8) => tmp_pp_8_port, A(7) => 
                           tmp_pp_7_port, A(6) => n202, A(5) => n203, A(4) => 
                           n204, A(3) => n205, A(2) => n206, A(1) => n207, A(0)
                           => n208, B(11) => tmp_pp_8_1, B(10) => tmp_pp_8_1, 
                           B(9) => tmp_pp_7_1, B(8) => tmp_pp_6_1, B(7) => 
                           tmp_pp_5_1, B(6) => tmp_pp_4_1, B(5) => tmp_pp_3_1, 
                           B(4) => tmp_pp_2_1, B(3) => tmp_pp_1_1, B(2) => n360
                           , B(1) => n211, B(0) => n211, CI => n213, SUM(11) =>
                           N179, SUM(10) => N178, SUM(9) => N177, SUM(8) => 
                           N176, SUM(7) => N175, SUM(6) => N174, SUM(5) => N173
                           , SUM(4) => N172, SUM(3) => N171, SUM(2) => N170, 
                           SUM(1) => N169, SUM(0) => N168, CO => n_1013);
   U215 : OAI21_X1 port map( B1 => n362, B2 => n363, A => n364, ZN => 
                           tmp_pp_8_1);
   U216 : NAND3_X1 port map( A1 => n365, A2 => n366, A3 => B(3), ZN => n364);
   U217 : AOI21_X1 port map( B1 => B(2), B2 => n367, A => n368, ZN => n362);
   U218 : OAI21_X1 port map( B1 => n369, B2 => n370, A => n371, ZN => 
                           tmp_pp_8_port);
   U219 : INV_X1 port map( A => n372, ZN => tmp_pp_7_1);
   U220 : AOI222_X1 port map( A1 => n373, A2 => n374, B1 => n368, B2 => n375, 
                           C1 => A(6), C2 => n376, ZN => n372);
   U221 : INV_X1 port map( A => n363, ZN => n375);
   U222 : MUX2_X1 port map( A => n377, B => n369, S => B(3), Z => n363);
   U223 : OAI21_X1 port map( B1 => n370, B2 => n378, A => n371, ZN => 
                           tmp_pp_7_port);
   U224 : INV_X1 port map( A => n379, ZN => n371);
   U225 : OAI22_X1 port map( A1 => n369, A2 => n380, B1 => n377, B2 => n381, ZN
                           => n379);
   U226 : OAI221_X1 port map( B1 => n378, B2 => n382, C1 => n383, C2 => n384, A
                           => n385, ZN => tmp_pp_6_1);
   U227 : AOI22_X1 port map( A1 => n386, A2 => n374, B1 => A(5), B2 => n376, ZN
                           => n385);
   U228 : OAI221_X1 port map( B1 => n387, B2 => n382, C1 => n388, C2 => n384, A
                           => n389, ZN => tmp_pp_5_1);
   U229 : AOI22_X1 port map( A1 => n390, A2 => n374, B1 => A(4), B2 => n376, ZN
                           => n389);
   U230 : INV_X1 port map( A => n391, ZN => n390);
   U231 : OAI221_X1 port map( B1 => n382, B2 => n391, C1 => n384, C2 => n392, A
                           => n393, ZN => tmp_pp_4_1);
   U232 : AOI22_X1 port map( A1 => n394, A2 => n374, B1 => A(3), B2 => n376, ZN
                           => n393);
   U233 : OAI221_X1 port map( B1 => n382, B2 => n395, C1 => n384, C2 => n396, A
                           => n397, ZN => tmp_pp_3_1);
   U234 : AOI22_X1 port map( A1 => n398, A2 => n374, B1 => A(2), B2 => n376, ZN
                           => n397);
   U235 : OAI221_X1 port map( B1 => n382, B2 => n399, C1 => n384, C2 => n400, A
                           => n401, ZN => tmp_pp_2_1);
   U236 : AOI22_X1 port map( A1 => n374, A2 => n402, B1 => A(1), B2 => n376, ZN
                           => n401);
   U237 : OAI221_X1 port map( B1 => n403, B2 => n404, C1 => n405, C2 => n406, A
                           => n407, ZN => tmp_pp_1_2);
   U238 : OAI21_X1 port map( B1 => n408, B2 => n409, A => A(0), ZN => n407);
   U239 : OAI221_X1 port map( B1 => n403, B2 => n382, C1 => n384, C2 => n405, A
                           => n410, ZN => tmp_pp_1_1);
   U240 : OAI21_X1 port map( B1 => n374, B2 => n376, A => A(0), ZN => n410);
   U241 : NOR3_X1 port map( A1 => n366, A2 => B(3), A3 => n368, ZN => n376);
   U242 : NOR3_X1 port map( A1 => n367, A2 => B(2), A3 => n368, ZN => n374);
   U243 : AOI21_X1 port map( B1 => n404, B2 => n406, A => n411, ZN => n361);
   U244 : AOI21_X1 port map( B1 => n384, B2 => n382, A => n411, ZN => n360);
   U245 : NAND2_X1 port map( A1 => B(3), A2 => n368, ZN => n382);
   U246 : NAND2_X1 port map( A1 => n368, A2 => n367, ZN => n384);
   U247 : INV_X1 port map( A => B(3), ZN => n367);
   U248 : XNOR2_X1 port map( A => B(1), B => n366, ZN => n368);
   U249 : INV_X1 port map( A => B(2), ZN => n366);
   U250 : AOI21_X1 port map( B1 => n380, B2 => n381, A => n411, ZN => n208);
   U251 : OAI222_X1 port map( A1 => n403, A2 => n380, B1 => n381, B2 => n405, 
                           C1 => n370, C2 => n411, ZN => n207);
   U252 : OAI222_X1 port map( A1 => n380, A2 => n399, B1 => n381, B2 => n400, 
                           C1 => n403, C2 => n370, ZN => n206);
   U253 : OAI222_X1 port map( A1 => n380, A2 => n395, B1 => n381, B2 => n396, 
                           C1 => n370, C2 => n399, ZN => n205);
   U254 : OAI222_X1 port map( A1 => n380, A2 => n391, B1 => n381, B2 => n392, 
                           C1 => n370, C2 => n395, ZN => n204);
   U255 : OAI222_X1 port map( A1 => n380, A2 => n387, B1 => n381, B2 => n388, 
                           C1 => n370, C2 => n391, ZN => n203);
   U256 : OAI222_X1 port map( A1 => n380, A2 => n378, B1 => n381, B2 => n383, 
                           C1 => n370, C2 => n387, ZN => n202);
   U257 : OR2_X1 port map( A1 => n412, A2 => B(0), ZN => n370);
   U258 : NAND2_X1 port map( A1 => B(0), A2 => n412, ZN => n381);
   U259 : INV_X1 port map( A => B(1), ZN => n412);
   U260 : NAND2_X1 port map( A1 => B(0), A2 => B(1), ZN => n380);
   U261 : XOR2_X1 port map( A => n413, B => n414, Z => 
                           add_1_root_add_57_I4_SUM_9_port);
   U262 : XNOR2_X1 port map( A => n415, B => n416, ZN => n413);
   U263 : XNOR2_X1 port map( A => n417, B => n418, ZN => 
                           add_1_root_add_57_I4_SUM_8_port);
   U264 : XNOR2_X1 port map( A => n419, B => n420, ZN => n418);
   U265 : XOR2_X1 port map( A => n421, B => n422, Z => 
                           add_1_root_add_57_I4_SUM_7_port);
   U266 : XOR2_X1 port map( A => n423, B => n424, Z => n422);
   U267 : XOR2_X1 port map( A => n425, B => n426, Z => 
                           add_1_root_add_57_I4_SUM_6_port);
   U268 : XNOR2_X1 port map( A => n427, B => n428, ZN => 
                           add_1_root_add_57_I4_SUM_15_port);
   U269 : OAI21_X1 port map( B1 => n429, B2 => n430, A => n431, ZN => n427);
   U270 : XOR2_X1 port map( A => n429, B => n428, Z => 
                           add_1_root_add_57_I4_SUM_14_port);
   U271 : XOR2_X1 port map( A => n430, B => n431, Z => n428);
   U272 : NAND2_X1 port map( A1 => n432, A2 => n433, ZN => n430);
   U273 : MUX2_X1 port map( A => n434, B => n435, S => n436, Z => n432);
   U274 : NAND2_X1 port map( A1 => B(7), A2 => n365, ZN => n435);
   U275 : NAND2_X1 port map( A1 => A(7), A2 => n437, ZN => n434);
   U276 : AOI21_X1 port map( B1 => n438, B2 => n439, A => n440, ZN => n429);
   U277 : XNOR2_X1 port map( A => n439, B => n441, ZN => 
                           add_1_root_add_57_I4_SUM_13_port);
   U278 : XNOR2_X1 port map( A => n438, B => n431, ZN => n441);
   U279 : OAI21_X1 port map( B1 => n442, B2 => n431, A => n443, ZN => n438);
   U280 : OAI21_X1 port map( B1 => n444, B2 => n440, A => n445, ZN => n443);
   U281 : INV_X1 port map( A => n446, ZN => n439);
   U282 : OAI221_X1 port map( B1 => n378, B2 => n447, C1 => n383, C2 => n448, A
                           => n433, ZN => n446);
   U283 : AOI22_X1 port map( A1 => A(7), A2 => n449, B1 => n365, B2 => n450, ZN
                           => n433);
   U284 : XOR2_X1 port map( A => n451, B => n444, Z => 
                           add_1_root_add_57_I4_SUM_12_port);
   U285 : INV_X1 port map( A => n442, ZN => n444);
   U286 : OAI21_X1 port map( B1 => n452, B2 => n453, A => n454, ZN => n442);
   U287 : INV_X1 port map( A => n455, ZN => n454);
   U288 : AOI21_X1 port map( B1 => n453, B2 => n452, A => n456, ZN => n455);
   U289 : XNOR2_X1 port map( A => n440, B => n445, ZN => n451);
   U290 : AOI221_X1 port map( B1 => n386, B2 => n457, C1 => n373, C2 => n450, A
                           => n458, ZN => n445);
   U291 : OAI22_X1 port map( A1 => n459, A2 => n383, B1 => n448, B2 => n388, ZN
                           => n458);
   U292 : INV_X1 port map( A => A(6), ZN => n383);
   U293 : INV_X1 port map( A => n431, ZN => n440);
   U294 : OAI21_X1 port map( B1 => n460, B2 => n461, A => n462, ZN => n431);
   U295 : NAND3_X1 port map( A1 => n365, A2 => n463, A3 => B(5), ZN => n462);
   U296 : INV_X1 port map( A => n369, ZN => n365);
   U297 : AOI21_X1 port map( B1 => B(4), B2 => n464, A => n465, ZN => n460);
   U298 : XNOR2_X1 port map( A => n452, B => n466, ZN => 
                           add_1_root_add_57_I4_SUM_11_port);
   U299 : XOR2_X1 port map( A => n453, B => n456, Z => n466);
   U300 : AOI221_X1 port map( B1 => n386, B2 => n450, C1 => A(5), C2 => n449, A
                           => n467, ZN => n456);
   U301 : OAI22_X1 port map( A1 => n448, A2 => n392, B1 => n447, B2 => n391, ZN
                           => n467);
   U302 : INV_X1 port map( A => n468, ZN => n448);
   U303 : INV_X1 port map( A => n387, ZN => n386);
   U304 : OAI22_X1 port map( A1 => n469, A2 => n470, B1 => n471, B2 => n472, ZN
                           => n453);
   U305 : AND2_X1 port map( A1 => n470, A2 => n469, ZN => n471);
   U306 : AOI222_X1 port map( A1 => A(6), A2 => n408, B1 => n465, B2 => n473, 
                           C1 => n373, C2 => n409, ZN => n452);
   U307 : INV_X1 port map( A => n461, ZN => n473);
   U308 : MUX2_X1 port map( A => n377, B => n369, S => B(5), Z => n461);
   U309 : XOR2_X1 port map( A => A(7), B => n474, Z => n369);
   U310 : NOR2_X1 port map( A1 => A(6), A2 => n475, ZN => n474);
   U311 : INV_X1 port map( A => A(7), ZN => n377);
   U312 : XNOR2_X1 port map( A => n469, B => n476, ZN => 
                           add_1_root_add_57_I4_SUM_10_port);
   U313 : XNOR2_X1 port map( A => n470, B => n472, ZN => n476);
   U314 : OAI221_X1 port map( B1 => n395, B2 => n447, C1 => n391, C2 => n477, A
                           => n478, ZN => n472);
   U315 : AOI22_X1 port map( A1 => n449, A2 => A(4), B1 => n468, B2 => A(3), ZN
                           => n478);
   U316 : OAI221_X1 port map( B1 => n387, B2 => n479, C1 => n378, C2 => n404, A
                           => n480, ZN => n470);
   U317 : AOI22_X1 port map( A1 => n408, A2 => A(5), B1 => n481, B2 => A(6), ZN
                           => n480);
   U318 : INV_X1 port map( A => n373, ZN => n378);
   U319 : XOR2_X1 port map( A => n475, B => A(6), Z => n373);
   U320 : AOI21_X1 port map( B1 => n415, B2 => n414, A => n482, ZN => n469);
   U321 : INV_X1 port map( A => n483, ZN => n482);
   U322 : OAI21_X1 port map( B1 => n414, B2 => n415, A => n416, ZN => n483);
   U323 : AOI221_X1 port map( B1 => A(2), B2 => n468, C1 => n394, C2 => n450, A
                           => n484, ZN => n416);
   U324 : OAI22_X1 port map( A1 => n447, A2 => n399, B1 => n459, B2 => n396, ZN
                           => n484);
   U325 : INV_X1 port map( A => n457, ZN => n447);
   U326 : INV_X1 port map( A => n395, ZN => n394);
   U327 : AOI21_X1 port map( B1 => n485, B2 => n417, A => n486, ZN => n414);
   U328 : AOI21_X1 port map( B1 => n487, B2 => n419, A => n420, ZN => n486);
   U329 : AOI221_X1 port map( B1 => A(1), B2 => n468, C1 => n402, C2 => n457, A
                           => n488, ZN => n420);
   U330 : OAI22_X1 port map( A1 => n477, A2 => n399, B1 => n459, B2 => n400, ZN
                           => n488);
   U331 : INV_X1 port map( A => n485, ZN => n419);
   U332 : INV_X1 port map( A => n487, ZN => n417);
   U333 : OAI22_X1 port map( A1 => n421, A2 => n424, B1 => n489, B2 => n423, ZN
                           => n487);
   U334 : OAI221_X1 port map( B1 => n396, B2 => n406, C1 => n395, C2 => n404, A
                           => n490, ZN => n423);
   U335 : AOI22_X1 port map( A1 => n409, A2 => n398, B1 => n408, B2 => A(2), ZN
                           => n490);
   U336 : INV_X1 port map( A => n399, ZN => n398);
   U337 : AND2_X1 port map( A1 => n424, A2 => n421, ZN => n489);
   U338 : OAI221_X1 port map( B1 => n403, B2 => n477, C1 => n405, C2 => n459, A
                           => n491, ZN => n424);
   U339 : OAI21_X1 port map( B1 => n468, B2 => n457, A => A(0), ZN => n491);
   U340 : NOR3_X1 port map( A1 => n437, A2 => B(6), A3 => n492, ZN => n457);
   U341 : NOR3_X1 port map( A1 => n436, A2 => B(7), A3 => n492, ZN => n468);
   U342 : INV_X1 port map( A => B(6), ZN => n436);
   U343 : INV_X1 port map( A => A(1), ZN => n405);
   U344 : AND2_X1 port map( A1 => n426, A2 => n425, ZN => n421);
   U345 : OAI221_X1 port map( B1 => n403, B2 => n479, C1 => n399, C2 => n404, A
                           => n493, ZN => n425);
   U346 : AOI22_X1 port map( A1 => n408, A2 => A(1), B1 => n481, B2 => A(2), ZN
                           => n493);
   U347 : XOR2_X1 port map( A => A(2), B => n494, Z => n399);
   U348 : INV_X1 port map( A => n402, ZN => n403);
   U349 : XNOR2_X1 port map( A => A(1), B => n411, ZN => n402);
   U350 : AOI21_X1 port map( B1 => n459, B2 => n477, A => n411, ZN => n426);
   U351 : INV_X1 port map( A => A(0), ZN => n411);
   U352 : INV_X1 port map( A => n450, ZN => n477);
   U353 : NOR2_X1 port map( A1 => n437, A2 => n495, ZN => n450);
   U354 : INV_X1 port map( A => B(7), ZN => n437);
   U355 : INV_X1 port map( A => n449, ZN => n459);
   U356 : NOR2_X1 port map( A1 => n495, A2 => B(7), ZN => n449);
   U357 : INV_X1 port map( A => n492, ZN => n495);
   U358 : XNOR2_X1 port map( A => B(6), B => n464, ZN => n492);
   U359 : OAI221_X1 port map( B1 => n395, B2 => n479, C1 => n391, C2 => n404, A
                           => n496, ZN => n485);
   U360 : AOI22_X1 port map( A1 => n408, A2 => A(3), B1 => n481, B2 => A(4), ZN
                           => n496);
   U361 : OAI21_X1 port map( B1 => n497, B2 => n396, A => n498, ZN => n395);
   U362 : INV_X1 port map( A => n499, ZN => n415);
   U363 : OAI221_X1 port map( B1 => n391, B2 => n479, C1 => n387, C2 => n404, A
                           => n500, ZN => n499);
   U364 : AOI22_X1 port map( A1 => n408, A2 => A(4), B1 => n481, B2 => A(5), ZN
                           => n500);
   U365 : INV_X1 port map( A => n406, ZN => n481);
   U366 : NAND2_X1 port map( A1 => n465, A2 => n464, ZN => n406);
   U367 : NOR3_X1 port map( A1 => n463, A2 => B(5), A3 => n465, ZN => n408);
   U368 : INV_X1 port map( A => B(4), ZN => n463);
   U369 : NAND2_X1 port map( A1 => B(5), A2 => n465, ZN => n404);
   U370 : OAI21_X1 port map( B1 => n501, B2 => n388, A => n475, ZN => n387);
   U371 : OR3_X1 port map( A1 => A(4), A2 => A(5), A3 => n498, ZN => n475);
   U372 : INV_X1 port map( A => A(5), ZN => n388);
   U373 : NOR2_X1 port map( A1 => A(4), A2 => n498, ZN => n501);
   U374 : INV_X1 port map( A => n409, ZN => n479);
   U375 : NOR3_X1 port map( A1 => n465, A2 => B(4), A3 => n464, ZN => n409);
   U376 : INV_X1 port map( A => B(5), ZN => n464);
   U377 : XOR2_X1 port map( A => B(4), B => B(3), Z => n465);
   U378 : XOR2_X1 port map( A => n498, B => n392, Z => n391);
   U379 : INV_X1 port map( A => A(4), ZN => n392);
   U380 : NAND2_X1 port map( A1 => n497, A2 => n396, ZN => n498);
   U381 : INV_X1 port map( A => A(3), ZN => n396);
   U382 : AND2_X1 port map( A1 => n494, A2 => n400, ZN => n497);
   U383 : INV_X1 port map( A => A(2), ZN => n400);
   U384 : NOR2_X1 port map( A1 => A(0), A2 => A(1), ZN => n494);

end SYN_MIXED;
