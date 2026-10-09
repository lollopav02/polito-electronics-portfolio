
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA_P_SY_NBIT16_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA_P_SY_NBIT16_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA_P_SY_NBIT16_1.all;

entity RCA_P_SY_NBIT16_1 is

   port( A, B : in std_logic_vector (15 downto 0);  Ci : in std_logic;  S : out
         std_logic_vector (15 downto 0);  Co : out std_logic);

end RCA_P_SY_NBIT16_1;

architecture SYN_BEHAVIORAL of RCA_P_SY_NBIT16_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
      n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99
      , n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140 : std_logic;

begin
   
   U88 : XOR2_X1 port map( A => n71, B => n72, Z => S(9));
   U89 : XOR2_X1 port map( A => B(9), B => A(9), Z => n72);
   U90 : XNOR2_X1 port map( A => n73, B => n74, ZN => S(8));
   U91 : XNOR2_X1 port map( A => A(8), B => B(8), ZN => n74);
   U92 : XNOR2_X1 port map( A => n75, B => n76, ZN => S(7));
   U93 : XOR2_X1 port map( A => B(7), B => A(7), Z => n76);
   U94 : XNOR2_X1 port map( A => n77, B => n78, ZN => S(6));
   U95 : XNOR2_X1 port map( A => A(6), B => B(6), ZN => n78);
   U96 : XNOR2_X1 port map( A => n79, B => n80, ZN => S(5));
   U97 : XNOR2_X1 port map( A => B(5), B => n81, ZN => n80);
   U98 : XNOR2_X1 port map( A => n82, B => n83, ZN => S(4));
   U99 : XNOR2_X1 port map( A => A(4), B => B(4), ZN => n83);
   U100 : XOR2_X1 port map( A => n84, B => n85, Z => S(3));
   U101 : XOR2_X1 port map( A => B(3), B => A(3), Z => n85);
   U102 : XOR2_X1 port map( A => n86, B => n87, Z => S(2));
   U103 : XOR2_X1 port map( A => B(2), B => A(2), Z => n87);
   U104 : XOR2_X1 port map( A => n88, B => n89, Z => S(1));
   U105 : XOR2_X1 port map( A => B(1), B => A(1), Z => n89);
   U106 : XNOR2_X1 port map( A => n90, B => n91, ZN => S(15));
   U107 : XNOR2_X1 port map( A => B(15), B => n92, ZN => n91);
   U108 : XOR2_X1 port map( A => n93, B => n94, Z => S(14));
   U109 : XOR2_X1 port map( A => B(14), B => A(14), Z => n94);
   U110 : XOR2_X1 port map( A => n95, B => n96, Z => S(13));
   U111 : XOR2_X1 port map( A => B(13), B => A(13), Z => n96);
   U112 : XOR2_X1 port map( A => n97, B => n98, Z => S(12));
   U113 : XOR2_X1 port map( A => n99, B => B(12), Z => n98);
   U114 : XOR2_X1 port map( A => n100, B => n101, Z => S(11));
   U115 : XOR2_X1 port map( A => B(11), B => A(11), Z => n101);
   U116 : XOR2_X1 port map( A => n102, B => n103, Z => S(10));
   U117 : XOR2_X1 port map( A => n104, B => B(10), Z => n103);
   U118 : XOR2_X1 port map( A => A(0), B => n105, Z => S(0));
   U119 : XOR2_X1 port map( A => Ci, B => B(0), Z => n105);
   U120 : OAI21_X1 port map( B1 => n92, B2 => n90, A => n106, ZN => Co);
   U121 : OAI21_X1 port map( B1 => n107, B2 => A(15), A => B(15), ZN => n106);
   U122 : INV_X1 port map( A => n107, ZN => n90);
   U123 : AOI21_X1 port map( B1 => n108, B2 => n109, A => n110, ZN => n107);
   U124 : AOI21_X1 port map( B1 => n93, B2 => A(14), A => B(14), ZN => n110);
   U125 : INV_X1 port map( A => n109, ZN => n93);
   U126 : AOI22_X1 port map( A1 => n95, A2 => A(13), B1 => n111, B2 => B(13), 
                           ZN => n109);
   U127 : OR2_X1 port map( A1 => A(13), A2 => n95, ZN => n111);
   U128 : OAI21_X1 port map( B1 => n97, B2 => n99, A => n112, ZN => n95);
   U129 : OAI21_X1 port map( B1 => n113, B2 => A(12), A => B(12), ZN => n112);
   U130 : INV_X1 port map( A => n97, ZN => n113);
   U131 : INV_X1 port map( A => A(12), ZN => n99);
   U132 : OAI21_X1 port map( B1 => A(11), B2 => n100, A => n114, ZN => n97);
   U133 : INV_X1 port map( A => n115, ZN => n114);
   U134 : AOI21_X1 port map( B1 => n100, B2 => A(11), A => B(11), ZN => n115);
   U135 : OAI21_X1 port map( B1 => n102, B2 => n104, A => n116, ZN => n100);
   U136 : OAI21_X1 port map( B1 => n117, B2 => A(10), A => B(10), ZN => n116);
   U137 : INV_X1 port map( A => n102, ZN => n117);
   U138 : INV_X1 port map( A => A(10), ZN => n104);
   U139 : OAI21_X1 port map( B1 => A(9), B2 => n71, A => n118, ZN => n102);
   U140 : INV_X1 port map( A => n119, ZN => n118);
   U141 : AOI21_X1 port map( B1 => n71, B2 => A(9), A => B(9), ZN => n119);
   U142 : OAI21_X1 port map( B1 => n120, B2 => n121, A => n122, ZN => n71);
   U143 : OAI21_X1 port map( B1 => n73, B2 => A(8), A => B(8), ZN => n122);
   U144 : INV_X1 port map( A => n120, ZN => n73);
   U145 : INV_X1 port map( A => A(8), ZN => n121);
   U146 : OAI21_X1 port map( B1 => A(7), B2 => n123, A => n124, ZN => n120);
   U147 : INV_X1 port map( A => n125, ZN => n124);
   U148 : AOI21_X1 port map( B1 => n123, B2 => A(7), A => B(7), ZN => n125);
   U149 : INV_X1 port map( A => n75, ZN => n123);
   U150 : AOI21_X1 port map( B1 => n77, B2 => A(6), A => n126, ZN => n75);
   U151 : INV_X1 port map( A => n127, ZN => n126);
   U152 : OAI21_X1 port map( B1 => n77, B2 => A(6), A => B(6), ZN => n127);
   U153 : AOI21_X1 port map( B1 => n81, B2 => n79, A => n128, ZN => n77);
   U154 : AOI21_X1 port map( B1 => n129, B2 => A(5), A => B(5), ZN => n128);
   U155 : INV_X1 port map( A => n79, ZN => n129);
   U156 : AOI21_X1 port map( B1 => n82, B2 => A(4), A => n130, ZN => n79);
   U157 : INV_X1 port map( A => n131, ZN => n130);
   U158 : OAI21_X1 port map( B1 => n82, B2 => A(4), A => B(4), ZN => n131);
   U159 : AOI21_X1 port map( B1 => n132, B2 => n133, A => n134, ZN => n82);
   U160 : AOI21_X1 port map( B1 => n84, B2 => A(3), A => B(3), ZN => n134);
   U161 : INV_X1 port map( A => n133, ZN => n84);
   U162 : OAI22_X1 port map( A1 => A(2), A2 => n86, B1 => B(2), B2 => n135, ZN 
                           => n133);
   U163 : AND2_X1 port map( A1 => n86, A2 => A(2), ZN => n135);
   U164 : INV_X1 port map( A => n136, ZN => n86);
   U165 : OAI22_X1 port map( A1 => A(1), A2 => n88, B1 => B(1), B2 => n137, ZN 
                           => n136);
   U166 : AND2_X1 port map( A1 => n88, A2 => A(1), ZN => n137);
   U167 : AOI21_X1 port map( B1 => n138, B2 => n139, A => n140, ZN => n88);
   U168 : AOI21_X1 port map( B1 => A(0), B2 => B(0), A => Ci, ZN => n140);
   U169 : INV_X1 port map( A => A(0), ZN => n139);
   U170 : INV_X1 port map( A => B(0), ZN => n138);
   U171 : INV_X1 port map( A => A(3), ZN => n132);
   U172 : INV_X1 port map( A => A(5), ZN => n81);
   U173 : INV_X1 port map( A => A(14), ZN => n108);
   U174 : INV_X1 port map( A => A(15), ZN => n92);

end SYN_BEHAVIORAL;
