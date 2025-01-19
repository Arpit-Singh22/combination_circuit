`include "lsb_priority_encoder42.v"
module tb_lsb_priority_encoder42;
	reg [3:0] i;
	wire [1:0] y;

	lsb_priority_encoder42 dut(.i(i),.y(y));
	initial begin
		$monitor("i=%b, y=%b",i,y);
		repeat(15) begin
			i = $random;
			#1;
		end
	end
endmodule
// i=0100, y=10
//# i=0001, y=00
//# i=1001, y=00
//# i=0011, y=00
//# i=1101, y=00
//# i=0101, y=00
//# i=0010, y=01
//# i=0001, y=00
//# i=1101, y=00
//# i=0110, y=01
//# i=1101, y=00
//# i=1100, y=10
//# i=1001, y=00
