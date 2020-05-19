module display(
	input [3:0] sw,
	output [7:0] HEX0,
	output [7:0] HEX1
);

	wire [4:0] w1;
	B2BCD a(sw,w1);
	BCD2Seg b1(w1[3:0],HEX0);
	BCD2Seg b2({1'b0,1'b0,1'b0,w1[4]},HEX1);

endmodule