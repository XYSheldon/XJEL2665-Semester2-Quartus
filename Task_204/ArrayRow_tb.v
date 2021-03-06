`timescale 1 ns/ 100 ps

module ArrayRow_tb;

	reg [7:0] a;
	reg b;
	reg [7:0] s_in;
	
	wire [7:0] s_out;
	wire c_out;
	
	ArrayRow dut(
		a,
		b,
		s_in,
		s_out,
		c_out
	);
	
	integer i;
	
	initial
	begin
		$display("b = 0");
		b = 0;
		for (i=0;i<=16'hFFFF;i=i+1)
		begin
		
			{s_in,a} = i;
			#10;
		end
		
		$display("b = 1");
		b = 1;
		for (i=0;i<=16'hFFFF;i=i+1)
		begin
		
			{s_in,a} = i;
			#10;
		end
		$stop;
	end
	
endmodule
