module PartA(
	input A,
	input B,
	input C,
	output S
);

	wire [2:0] w1;
	and(w1[0],A,B);
	not(w1[1],C);
	and(w1[2],B,w1[1]);
	nor(S,w1[0],w1[2]);

endmodule
