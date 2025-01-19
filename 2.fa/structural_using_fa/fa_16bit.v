`include "fa.v"
module fa_16bit(a,b,cin,s,cout);
	parameter n_bit = 16;
	input [n_bit-1:0] a,b;
	input cin;
	output [n_bit-1:0] s;
	output cout;
	wire [n_bit:0] c;
	assign c[0] = cin;
	genvar i;
	for( i=0;i<n_bit;i=i+1) begin
		fa fa0(.a(a[i]), .b(b[i]), .cin(c[i]), .sum(s[i]), .cout(c[i+1]));
	end
	assign cout = c[n_bit];
endmodule

