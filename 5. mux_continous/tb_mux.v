`include "mux_cont.v"
module tb_mux;
	reg s1,s2;
	wire [1:0] y;
	mux dut(.s1(s1), .s2(s2), .y(y));

	initial begin
		$display("4x1 Mux");
		repeat(10) begin
			{s1,s2} = $random % 2;
			#5;
			$display("s1=%b s2=%b | y=%d",s1,s2,y);
		end
	end
endmodule
