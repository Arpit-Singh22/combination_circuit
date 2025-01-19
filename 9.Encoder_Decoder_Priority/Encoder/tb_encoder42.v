`include "encoder42.v"
module tb_encoder42;
	reg [3:0] i;
	wire [1:0] y;

	encoder42 dut(.i(i),.y(y));
	initial begin 
	$display("4 to 2 Encoder");
		repeat(10) begin 
			i = $random;
			#1;
			$display("i=%b y=%b",i,y);
		end
	end
endmodule
//# 4 to 2 Encoder
//# i=0100 y=10
//# i=0001 y=00
//# i=1001 y=zz
//# i=0011 y=zz
//# i=1101 y=zz
//# i=1101 y=zz
//# i=0101 y=zz
//# i=0010 y=01
//# i=0001 y=00
//# i=1101 y=zz
