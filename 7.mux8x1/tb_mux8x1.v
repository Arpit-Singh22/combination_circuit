`include "mux8x1.v"
module tb_mux8x1;
	reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
	wire y;
	integer seed = 567;

	mux8x1 dut(.i0(i0), .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .i7(i7), .s0(s0), .s1(s1), .s2(s2), .y(y));
	
	initial begin 
		$display("8x1 Mux using 4x1 mux only");
	
		repeat(10) begin 
		{i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2} = $random(seed);
		#1;
			$display("i0=%b,i1=%b,i2=%b,i3=%b,i4=%b,i5=%b,i6=%b,i7=%b||s2=%b,s1=%b,s0=%b|y=%b",i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);

			end
		end
endmodule
