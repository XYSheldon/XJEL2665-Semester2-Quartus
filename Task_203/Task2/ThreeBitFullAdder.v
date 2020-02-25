module ThreeBitFullAdder(
	input [2:0] a,
	input [2:0] b,
	input c_in,
	output [2:0] sum,
	output c_out
);

	wire [1:0] w1;
	OneBitFullAdder adder1(
		a[0],
		b[0],
		c_in,
		sum[0],
		w1[0]
	);
	OneBitFullAdder adder2(
		a[1],
		b[1],
		w1[0],
		sum[1],
		w1[1]
	);
	OneBitFullAdder adder3(
		a[2],
		b[2],
		w1[1],
		sum[2],
		c_out
	);
	
endmodule
