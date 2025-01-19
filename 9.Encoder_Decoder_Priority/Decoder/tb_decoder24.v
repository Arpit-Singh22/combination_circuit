`include "decoder24.v"
module tb_decoder24;
	reg [1:0]i;
	wire [3:0]y;

	decoder24 dut(.i(i),.y(y));
	initial begin
		$monitor("i=%b, y=%b",i,y);
		i = 2'b00;
		#1;
		i = 2'b01;
		#1;
		i = 2'b10;
		#1;
		i = 2'b11;
		#1;
	end
endmodule
//# i=00, y=0001
//# i=01, y=0010
//# i=10, y=0100
//# i=11, y=1000
