`timescale 1 ns/ 100 ps

module MysteryDevice_tb;
	
	reg a,b,c,d,e,f;
	wire x;

	integer i;
	
	MysteryDevice dut(
		a,
		b,
		c,
		d,
		e,
		f,
		x
	);
	
	initial
	begin
	
		for(i=0;i<=6'b111111;i=i+1)
		begin
			{f,e,d,c,b,a}=i;
			#10;
		end
		$stop;
	end
endmodule
