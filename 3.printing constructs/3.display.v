module disp;
	integer a = 10;
	real b = 23.45;
	initial begin
		$display("Hello World");
		$display("integer=%d, real=%f",a,b);
		$display("%t: integer=%d, real=%f",$time,a,b);
		$display("%0t: integer=%0d, real=%0f",$time,a,b);		
	end
endmodule
