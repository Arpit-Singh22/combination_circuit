`include "binarytogrey.v"
module tb;
	reg [3:0]b;
	wire [3:0]g;

	b2g dut(.b(b),.g(g));
	initial begin
		$monitor("b=%b, g=%b",b,g);
		repeat(10) begin
			b = $random;
			#1;
		end
	end
endmodule

//# b=0100, g=0110
//# b=0001, g=0001
//# b=1001, g=1101
//# b=0011, g=0010
//# b=1101, g=1011
//# b=0101, g=0111
//# b=0010, g=0011
//# b=0001, g=0001
//# b=1101, g=1011
