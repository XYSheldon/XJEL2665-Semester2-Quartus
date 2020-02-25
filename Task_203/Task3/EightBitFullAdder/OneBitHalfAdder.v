module OneBitHalfAdder(
	input a,
	input b,
	output sum,
	output c_out
);

	nor(sum,a,b);
	and(c_out,a,b);



endmodule