/***** MIPS SINGLE CYCLE PROCCESSOR FOR R-TYPE AND I-TYPE INSTRUCTIONS *****/

module MIPS(clock,IR,writedata);

 input clock;
 output[11:0] IR;
 output[3:0] writedata;
 reg[11:0] PC;
 reg[11:0] InstructionMemory[0:15];
 wire[3:0] A,B,temp,writedata;
 wire[11:0] IR;
 
 initial begin
   InstructionMemory[0]=12'b1_001_01_00_0011; //addi $1,$0,3
   InstructionMemory[1]=12'b1_001_10_00_0010; //addi $2,$0,2
   InstructionMemory[2]=12'b1_001_11_00_0101; //addi $3,$0,5
   InstructionMemory[3]=12'b0_010_01_01_1011; //sub $1,$1,$2
   InstructionMemory[4]=12'b0_100_11_11_0100; //or $3,$3,$1
   InstructionMemory[5]=12'b0_010_11_11_0100; //sub $3,$3,$1
 end
 
 initial PC=0;
 assign IR=InstructionMemory[PC];
 RegFile regf1(IR[5:4],IR[3:2],IR[7:6],writedata,A,temp,clock);
 Quad2to1 q1(IR[11],temp,IR[3:0],B);
 ALU alu1(IR[10:8],A,B,writedata);
 
 always@(negedge clock)
   begin
     PC<=PC+1;
   end
   
endmodule
