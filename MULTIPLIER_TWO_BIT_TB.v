//  TWO BIT MULTIPLIER TEST BENCH

module MULTIPLIER_TWO_BIT_TB;

//INPUT

reg [1:0] A ;
reg [1:0] B ;

//OUTPUT

wire [3:0] P;

//INSTANTIATE THE UNIT UNDER TEST (UUT)

MULTIPLIER_TWO_BIT uut
(
 .A(A),
 .B(B),
 .P(P)
 
);

initial begin

   // INITIALISE INPUTS
	
	A = 2'b10;
	B = 2'b01;
	#100;
   A = 2'b11;
	B = 2'b10;
	#100;
	
end

endmodule

	
	
	