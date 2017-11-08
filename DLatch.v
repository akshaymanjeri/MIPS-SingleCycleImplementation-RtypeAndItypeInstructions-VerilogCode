/***** D LATCH MODULE *****/

module d_latch(D,C,Q);

 input D,C;
 output Q;
 wire x,y,D1,Q1;
 nand nand1 (x,D, C),
 nand2 (y,D1,C),
 nand3 (Q,x,Q1),
 nand4 (Q1,y,Q);
 not not1 (D1,D);
 
endmodule
