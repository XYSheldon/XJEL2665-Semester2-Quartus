/*
a b c d | x y
0 0 0 0 | 0 0
0 0 0 1 | 0 0
0 0 1 0 | 0 1
0 0 1 1 | 0 0
0 1 0 0 | 0 1
0 1 0 1 | 0 0
0 1 1 0 | 0 1
0 1 1 1 | 0 0
1 0 0 0 | 1 1
1 0 0 1 | 1 1
1 0 1 0 | 1 1
1 0 1 1 | 1 1
1 1 0 0 | 0 0
1 1 0 1 | 0 0
1 1 1 0 | 1 0
1 1 1 1 | 1 0
*/



module Task2(
	input a,b,c,d,
	output x,y
);
	
	wire w1,w2;
	assign w1=a&&(c||~b);
	assign w2=(~b&&w1)||(~a&&~d&&(b||c));

	assign x=w1;
	assign y=w2;
	

endmodule