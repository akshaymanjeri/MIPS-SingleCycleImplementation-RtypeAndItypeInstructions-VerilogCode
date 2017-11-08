/***** ALU MODULE *****/

module ALU(func,A,B,outp);

 input [2:0] func;
 input [3:0] A,B;
 output [3:0] outp;
 reg [3:0] outp;
 
 always@(*)
 
   case(func)
     //3'b000: //clear
     3'b001:outp=A+B;
     3'b010:outp=A-B;
     3'b011:outp=(A&B);
     3'b100:outp=(A|B);
     3'b101:outp=(A^B);
     3'b110:outp=B-A;
     //3'b111: //preset
   endcase
   
endmodule
