module B2BCD(
	input [3:0] sw,
	output [4:0] out
);
	assign out[0]=sw[0];
	assign out[1]=(~sw[3]&&sw[1])||(sw[3]&&sw[2]&&~sw[1]);
	assign out[2]=(~sw[3]&&sw[2])||(sw[2]&&sw[1]);
	assign out[3]=sw[3]&&(~sw[2])&&(~sw[1]);
	assign out[4]=(sw[3]&&sw[2])||(sw[3]&&sw[1]);

endmodule