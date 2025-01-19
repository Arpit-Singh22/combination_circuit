`include "nbitb2g.v"
module tb;
	parameter N=8;
	reg [N-1:0]b;
	wire [N-1:0]g;
	nbitb2g dut(.b(b),.g(g));
	initial begin
		$display("%0d bit binary to grey code converter",N);
		$monitor("b=%b, g=%b",b,g);
		repeat(10) begin
			b = $random;
			#1;
		end
	end
endmodule
//#           8 bit binary to grey code converter
//# b=00100100, g=00110110
//# b=10000001, g=11000001
//# b=00001001, g=00001101
//# b=01100011, g=01010010
//# b=00001101, g=00001011
//# b=10001101, g=11001011
//# b=01100101, g=01010111
//# b=00010010, g=00011011
//# b=00000001, g=00000001
//# b=00001101, g=00001011
