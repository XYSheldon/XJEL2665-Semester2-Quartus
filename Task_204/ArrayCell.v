//Array Cell
module ArrayCell(
	input a,
	input b,
	input s_in,
	input c_in,
	output s,
	output c_out
);

	wire w1;
	and(w1,a,b);

	OneBitFullAdder adder(w1,s_in,c_in,s,c_out);


endmodule