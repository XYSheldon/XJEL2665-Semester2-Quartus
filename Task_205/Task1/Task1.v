//Task1 of 206
module Task1(
	input [7:0] a,
	output [3:0] led
);
	
	and(led[0],a[0],a[1]);
	or(led[1],a[2],a[3]);
	xor(led[2],a[4],a[5]);
	nand(led[3],a[6],a[7]);
endmodule