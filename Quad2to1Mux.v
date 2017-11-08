/***** 4 BIT 2TO1 MULTIPLEXER MODULE *****/

module Quad2to1(src,regread0,regread1,dataout);

 input src;
 input [3:0]regread0,regread1;
 output [3:0]dataout;
 assign dataout[0]=(((~src)&regread0[0])|(src&regread1[0]));
 assign dataout[1]=(((~src)&regread0[1])|(src&regread1[1]));
 assign dataout[2]=(((~src)&regread0[2])|(src&regread1[2]));
 assign dataout[3]=(((~src)&regread0[3])|(src&regread1[3]));
 
endmodule
