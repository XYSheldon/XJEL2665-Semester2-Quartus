module PartC(
	input A,
	input B,
	input C,
	output S
);
	wire [2:0] in_n;
	not(in_n[0],A);
	not(in_n[1],B);
	not(in_n[2],C);

	wire [3:0] w1;
	nand(w1[0],in_n[0],in_n[1]);
	and(w1[1],A,B,C);
	and(w1[2],A,w1[0],in_n[2]);
	or(S,w1[2],w1[1]);
	

endmodule
