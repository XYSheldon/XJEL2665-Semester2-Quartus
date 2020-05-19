`timescale 1 ns/ 100 ps

module B2BCD_tb;

	reg [3:0] sw;
	wire [4:0] out;
	
	B2BCD dut(
		sw,
		out
	);
	
	integer i;

	initial
	begin
		for (i=0;i<16;i=i+1)
		begin
			sw=i;
			#10;
		
		
			if (!((out[3:0])==i%10))
			begin
				$display("Incorrect result at %d",i);
			end
			
			if (!((out[4])==i/10))
			begin
				$display("Incorrect result at %d",i);
			end
		end
		$stop;
	end
	
endmodule
