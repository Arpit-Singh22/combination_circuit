`include "mux_kmap.v"
module tb_mux_kmap;
	reg  s1,s0;
	reg  i0,i1,i2,i3;
	wire y;

	mux_kmap dut(.s1(s1), .s0(s0), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .y(y));
	initial begin
	    s1 =1'b0;
        s0 =1'b0;
        i0 =1'b0;
        i1 =1'b0;
        i2 =1'b0;
        i3 =1'b0;
		$display("4x1 mux using k-maps");
		$monitor("%0t: i0=%b,i1=%b,i2=%b,i3=%b| s1=%0b s0=%0b | y=%b",$time,i0,i1,i2,i3,s1,s0,y);
		repeat(20) begin
			{s1,s0,i0,i1,i2,i3} = $random % 2;
			#1;
		end
	end
endmodule
