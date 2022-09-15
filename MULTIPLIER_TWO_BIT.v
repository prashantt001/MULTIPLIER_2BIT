// HALF ADDER 

module HA (S,C,A,B);
input A,B;
output S,C;

assign S=A^B;
assign C=A&B;

endmodule



// 2 BIT MULTIPLIER

module MULTIPLIER_TWO_BIT(P,A,B);


input [1:0] A,B;
output [3:0] P;

wire w1,w2,w3,C1;
	   

and t1(P[0],A[0],B[0]);
and t2(w1,A[1],B[0]);
and t3(w2,A[0],B[1]);

HA t4(P[1],C1,w1,w2);

and t5(w3,A[1],B[1]);

HA t6(P[2],P[3],C1,w3);
endmodule
