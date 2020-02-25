module PartB(
	input A,
	input B,
	input C,
	input D,
	output S
);

	wire A_n,C_n;
	not(A_n,A);
	not(C_n,C);
	
	wire w1,w2;
	
	and(w1,A,C);
	and(w2,A_n,B,D);
	nor(S,w1,C_n,w2);
	
endmodule
