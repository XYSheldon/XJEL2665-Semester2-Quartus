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

`timescale 1 ns/ 100 ps

module Task2_tb;

	reg a,b,c,d;
	wire x,y;
	
	Task2 dut(
		a,
		b,
		c,
		d,
		x,
		y
	);
	
	integer i;
	integer x_expected,y_expected;

	initial
	begin
		for (i=0;i<16;i=i+1)
		begin
		
			x_expected = (16'b1100111100000000 >> i)%2;
			y_expected = (16'b0000111101010100 >> i)%2;
			
			d = i%2;
			c = (i>>1)%2;
			b = (i>>2)%2;
			a = (i>>3)%2;
			#10;
			
			if (!((x_expected)==x))
			begin
				$display("Incorrect X result at %d",i);
			end
			if (!((y_expected)==y))
			begin
				$display("Incorrect Y result at %d",i);
			end
		end
		
		$stop;
	end
	
endmodule
