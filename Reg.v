/***** 4-BIT REGISTER MODULE *****/

module Reg(clock,Input,Output);

 input [3:0]Input;
 input clock;
 output [3:0]Output;
 d_flip_flop d0(Input[0], clock, Output[0]),
 d1(Input[1], clock, Output[1]),
 d2(Input[2], clock, Output[2]),
 d3(Input[3], clock, Output[3]);
 
endmodule
