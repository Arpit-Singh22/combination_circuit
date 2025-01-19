`include "mux8x1_vector.v"
module tb_mux8x1_vector;
	reg [7:0]i;
	reg [2:0]s;
	wire y;

	mux8x1 dut(.i(i), .s(s), .y(y));
	initial begin
		$display("8x1 Mux");
		repeat(10) begin 
			{ i,s } = $random;
			#1;
			$display("i=%b | s=%b | y=%b",i,s,y);
			end
	end
endmodule
//# 8x1 Mux
//# i=10100100 | s=100 | y=0
//# i=11010000 | s=001 | y=0
//# i=11000001 | s=001 | y=0
//# i=11001100 | s=011 | y=1
//# i=01100001 | s=101 | y=1
//# i=00110001 | s=101 | y=1
//# i=10001100 | s=101 | y=0
//# i=01000010 | s=010 | y=0
//# i=01100000 | s=001 | y=0
//# i=10100001 | s=101 | y=1

