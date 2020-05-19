`timescale 1 ns/ 100 ps

module EightMultiplier_tb;

	reg [7:0] a;
	reg [7:0] b;
	wire [15:0] p;
	
	EightMultiplier dut(
		a,
		b,
		p
	);
	
	integer i;
	integer expected_result;
	integer actual_result;
	
	initial
	begin
		for (i=0;i<=100;i=i+1)
		begin
			a = $random()%255;
			b = $random()%255;
			
			#10;
			
			expected_result = a*b;
			actual_result = p;
			
			if (!(expected_result==actual_result))
			begin
				$display("Incorrect result at %d and %d.",a,b);
			end
		end

		$stop;
	end
	
endmodule
