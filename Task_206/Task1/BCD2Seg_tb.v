`timescale 1 ns/ 100 ps

module BCD2Seg_tb;

	reg [3:0] bcd;
	wire [6:0] out;
	
	BCD2Seg dut(
		bcd,
		out
	);
	
	integer i;
	
	initial
	begin
		for (i=0;i<16;i=i+1)
		begin
			bcd = i;
			#10;
		end
	end
endmodule