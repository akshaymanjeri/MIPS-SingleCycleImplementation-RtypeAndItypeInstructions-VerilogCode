/***** 4 BIT REGISTER FILE *****/

module RegFile(rs,rt,rd,writedata,A,temp,clock);

 input[1:0] rs,rt,rd;
 input[3:0] writedata;
 input clock;
 output[3:0] A,temp;
 wire[3:0] Q1,Q2,Q3,regno;
 Decoder2to4 d1(rd,regno);
 Reg r1(c1,writedata,Q1);
 Reg r2(c2,writedata,Q2);
 Reg r3(c3,writedata,Q3);
 Quad4to1 q1(rs,4'h0,Q1,Q2,Q3,A);
 Quad4to1 q2(rt,4'h0,Q1,Q2,Q3,temp);
 
 always@(*)
   begin
     $display("Register1=%b, Register2=%b, Register3=%b",Q1,Q2,Q3);
   end
 and a1(c1,clock,regno[1]);
 and a2(c2,clock,regno[2]);
 and a3(c3,clock,regno[3]);
 
endmodule
