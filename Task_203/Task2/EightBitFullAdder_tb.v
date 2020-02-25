`timescale 1 ns/ 100 ps

module EightBitFullAdder_tb;

	reg [7:0] a;
	reg [7:0] b;
	reg c_in;
	
	wire [7:0] sum;
	wire c_out;
	
	EightBitFullAdder dut(
		a,
		b,
		c_in,
		sum,
		c_out
	);
	
	integer i;
	
	initial
	begin
		$display("C_in = 0");
		c_in = 0;
		for (i=0;i<=16'hFFFF;i=i+1)
		begin
		
			{b,a} = i;
			#10;
		end
		
		$display("C_in = 1");
		c_in = 1;
		for (i=0;i<=16'hFFFF;i=i+1)
		begin
		
			{b,a} = i;
			#10;
		end
		$stop;
	end
	
endmodule
