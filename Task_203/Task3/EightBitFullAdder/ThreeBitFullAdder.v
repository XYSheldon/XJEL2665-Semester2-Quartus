module ThreeBitFullAdder(
	input [2:0] a,
	input [2:0] b,
	input c_in,
	output [2:0] sum,
	output c_out
);

	wire [1:0] w;

	OneBitFullAdder add0(
		a[0],
		b[0],
		c_in,
		sum[0],
		w[0]
	);
	
	OneBitFullAdder add1(
		a[1],
		b[1],
		w[0],
		sum[1],
		w[1]
	);
	
	OneBitFullAdder add2(
		a[2],
		b[2],
		w[1],
		sum[2],
		c_out
	);
		


endmodule