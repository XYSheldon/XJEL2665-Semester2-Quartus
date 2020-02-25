module OneBitFullAdder(
	input a,
	input b,
	input c_in,
	output sum,
	output c_out
);

	wire [2:0] w;
	
	xor(w[0],a,b);
	xor(sum,w[0],c_in);
	and(w[1],c_in,w[0]);
	and(w[2],a,b);
	or(c_out,w[1],w[2]);



endmodule