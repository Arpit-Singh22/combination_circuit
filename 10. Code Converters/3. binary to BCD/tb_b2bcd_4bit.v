`include "b2bcd_4bit.v"
module tb;
	reg [3:0]b;
	wire [4:0]a;

	b2bcd_4bit dut(.b(b),.a(a));
	initial begin
		$monitor("binary=%b, BCD=%b",b,a);
		repeat(20) begin
			b=$random;
			#1;
		end
	end
endmodule
//binary=0100, BCD=00100
//binary=0001, BCD=00001
//binary=1001, BCD=01001
//binary=0011, BCD=00011
//binary=1101, BCD=10011
//binary=0101, BCD=00101
//binary=0010, BCD=00010
//binary=0001, BCD=00001
//binary=1101, BCD=10011
//binary=0110, BCD=00110
//binary=1101, BCD=10011
//binary=1100, BCD=10010
//binary=1001, BCD=01001
//binary=0110, BCD=00110
//binary=0101, BCD=00101
//binary=1010, BCD=10000
//binary=0101, BCD=00101
//binary=0111, BCD=00111
