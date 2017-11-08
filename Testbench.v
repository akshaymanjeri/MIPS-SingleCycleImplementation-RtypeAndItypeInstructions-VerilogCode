/***** TESTBENCH FOR MIPS CODE *****/

module testbench;

 reg clock;
 wire[11:0] IR;
 wire[3:0] Output;
 MIPS cpu(clock,IR,Output);
 
 always #1 clock=~clock;
 
 initial begin
   $display ("WELCOME TO MIPS SINGLE CYCLE IMPLEMENTATION FOR R-TYPE AND I-TYPE INSTRUCTIONS\n");
   $display ("time clock\t\tIR\t\tWD");
   $monitor ("%2d %b\t\t%b\t\t%b", $time,clock,IR,Output);
   clock = 1;
   #31 $finish;
 end
 
endmodule
