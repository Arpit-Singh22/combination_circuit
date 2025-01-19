module b2bcd_4bit(b,a);
	input [3:0]b;
	output [4:0]a;
	assign a[0] = b[0];
	assign a[1] = (~b[3]&(b[1]) | b[3]&b[2]&(~b[1]));
	assign a[2] = ((~b[3]&b[2]) | b[2]&b[1]);
	assign a[3] = (b[3]&~b[2]&~b[1]);
	assign a[4] = b[3]&b[2] | b[3]&b[1];
endmodule
