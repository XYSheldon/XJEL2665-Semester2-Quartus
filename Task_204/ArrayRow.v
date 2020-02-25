//Array Row
module ArrayRow(
	input [7:0] a,
	input b,
	input [7:0] s_in,
	output [7:0] s_out,
	output c_out
	
);

	wire [6:0] w1;
	
	ArrayCell c0(a[0],b,s_in[0],0,s_out[0],w1[0]);
	ArrayCell c1(a[1],b,s_in[1],w1[0],s_out[1],w1[1]);
	ArrayCell c2(a[2],b,s_in[2],w1[1],s_out[2],w1[2]);
	ArrayCell c3(a[3],b,s_in[3],w1[2],s_out[3],w1[3]);
	ArrayCell c4(a[4],b,s_in[4],w1[3],s_out[4],w1[4]);
	ArrayCell c5(a[5],b,s_in[5],w1[4],s_out[5],w1[5]);
	ArrayCell c6(a[6],b,s_in[6],w1[5],s_out[6],w1[6]);
	ArrayCell c7(a[7],b,s_in[7],w1[6],s_out[7],c_out);

endmodule