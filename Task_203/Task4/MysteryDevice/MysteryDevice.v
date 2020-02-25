module MysteryDevice(
	input a,
	input b,
	input c,
	input d,
	input e,
	input f,
	output x
);


	wire [3:0] w;
	
	and(w[0], a, b);
	xor(w[1], w[0], c, d);
	nand(w[2], c, !d);
	nor(w[3], e, f);
	and(x, !w[1], w[2], w[3]);
	
	
endmodule