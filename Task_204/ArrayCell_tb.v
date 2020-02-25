`timescale 1 ns/ 100 ps

module ArrayCell_tb;

	reg a;
	reg b;
	reg s_in;
	reg c_in;
	
	wire s;
	wire c_out;
	
	ArrayCell dut(
		a,
		b,
		s_in,
		c_in,
		s,
		c_out
	);
	
	integer i;
	
	initial
	begin
		$display("C_in = 0");
		c_in = 0;
		for (i=0;i<=3'h7;i=i+1)
		begin
		
			{s_in,b,a} = i;
			#10;
		end
		
		$display("C_in = 1");
		c_in = 1;
		for (i=0;i<=3'h7;i=i+1)
		begin
		
			{s_in,b,a} = i;
			#10;
		end
		$stop;
	end
	
endmodule
