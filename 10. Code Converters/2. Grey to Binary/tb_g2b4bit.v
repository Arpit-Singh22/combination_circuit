`include "g2b4bit.v"
module tb;
	reg [3:0]g;
	wire [3:0]b;
	g2b4bit dut(.g(g),.b(b));
	initial begin
		$display("4 bit grey to binary conversion");
		$monitor("g=%b, b=%b",g,b);
		repeat(10) begin
			g = $random;
			#1;
		end
	end
endmodule
//# 4 bit grey to binary conversion
//# g=0100, b=0111
//# g=0001, b=0001
//# g=1001, b=1110
//# g=0011, b=0010
//# g=1101, b=1001
//# g=0101, b=0110
//# g=0010, b=0011
//# g=0001, b=0001
//# g=1101, b=1001
