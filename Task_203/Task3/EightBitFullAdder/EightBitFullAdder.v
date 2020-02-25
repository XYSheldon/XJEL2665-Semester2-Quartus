module EightBitFullAdder(
	input [7:0] a,
	input [7:0] b,
	input c_in,
	output [7:0] sum,
	output c_out
);

	wire [3:0] w;

	OneBitFullAdder addbit1(
		a[0],
		b[0],
		c_in,
		sum[0],
		w[0]
	);
	
	ThreeBitFullAdder add0(
		a[3:1],
		b[3:1],
		w[0],
		sum[3:1],
		w[1]
	);
	
	FourBitFullAdder add1(
		a[7:4],
		b[7:4],
		w[1],
		sum[7:4],
		c_out
	);
		


endmodule