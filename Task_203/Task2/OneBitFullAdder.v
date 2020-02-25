module OneBitFullAdder(
	input a,
	input b,
	input c_in,
	output sum,
	output c_out
);

	wire axorb;
	xor(axorb,a,b);
	xor(sum,axorb,c_in);
	
	wire w1;
	and(w1,axorb,c_in);
	
	wire w2;
	and(w2,a,b);
	
	or(c_out,w1,w2);
	
endmodule
