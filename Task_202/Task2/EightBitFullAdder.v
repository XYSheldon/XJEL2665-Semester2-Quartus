module EightBitFullAdder(
	input [7:0] a,
	input [7:0] b,
	input c_in,
	output [7:0] sum,
	output c_out
);
	wire w1,w2;
	FourBitFullAdder adder1(
		a[3:0],
		b[3:0],
		c_in,
		sum[3:0],
		w1
	);
	ThreeBitFullAdder adder2(
		a[6:4],
		b[6:4],
		w1,
		sum[6:4],
		w2
	);
	OneBitFullAdder adder3(
		a[7],
		b[7],
		w2,
		sum[7],
		c_out
	);
endmodule
