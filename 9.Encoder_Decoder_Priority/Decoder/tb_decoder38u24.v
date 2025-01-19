`include "decoder38u24.v"
module tb_decoder38u24;
	reg [2:0]i;
	wire [7:0]y;

	decoder38u24 dut(.i(i),.y(y));
	initial begin
		$monitor("i=%b, y=%b",i,y);
			i=3'b000;
			#1;
			i=3'b001;
			#1;
  			i=3'b010;
			#1;
			i=3'b011;
			#1;
			i=3'b100;
			#1;
			i=3'b101;
			#1;
			i=3'b110;
			#1;
			i=3'b111;
			#1;

			end
endmodule
//# i=000, y=00000001
//# i=001, y=00000010
//# i=010, y=00000100
//# i=011, y=00001000
//# i=100, y=00010000
//# i=101, y=00100000
//# i=110, y=01000000
//# i=111, y=10000000
