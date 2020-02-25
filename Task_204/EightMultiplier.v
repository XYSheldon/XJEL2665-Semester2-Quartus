//Eight bit unsigned interger multiplier
module EightMultiplier(
	input [7:0] a,
	input [7:0] b,
	output [15:0] p
);

	wire [7:0] w [0:6];
	and(p[0],a[0],b[0]);
   and(w[0][0],a[1],b[0]);
   and(w[0][1],a[2],b[0]);
   and(w[0][2],a[3],b[0]);
   and(w[0][3],a[4],b[0]);
   and(w[0][4],a[5],b[0]);
   and(w[0][5],a[6],b[0]);
   and(w[0][6],a[7],b[0]);
	assign w[0][7]=0;
	ArrayRow r0(a,b[1],w[0],{w[1][6:0],p[1]},w[1][7]);
	ArrayRow r1(a,b[2],w[1],{w[2][6:0],p[2]},w[2][7]);
   ArrayRow r2(a,b[3],w[2],{w[3][6:0],p[3]},w[3][7]);
   ArrayRow r3(a,b[4],w[3],{w[4][6:0],p[4]},w[4][7]);
   ArrayRow r4(a,b[5],w[4],{w[5][6:0],p[5]},w[5][7]);
   ArrayRow r5(a,b[6],w[5],{w[6][6:0],p[6]},w[6][7]);
   ArrayRow r6(a,b[7],w[6],p[14:7],p[15]);
endmodule