`include "fs_3bit.v"
module tb_fs_3bit;
	reg [2:0] a,b;
	reg bin;
	wire reg [2:0] diff;
	wire brr;
	
	fs_3bit dut(.a(a), .b(b), .bin(bin), .diff(diff), .brr(brr));
	initial begin
		repeat(10) begin
			{a,b,bin} = $random;
			#1;
			$display("a=%b, b=%b, bin=%b | diff=%b,borrow=%b",a,b,bin,diff,brr);
			end
	end
endmodule
//# a=1,b=0,bin=0,diff=1,borrow=0
//# a=0,b=0,bin=1,diff=1,borrow=1
//# a=0,b=0,bin=1,diff=1,borrow=1
//# a=0,b=1,bin=1,diff=0,borrow=1
//# a=1,b=0,bin=1,diff=0,borrow=0
//# a=1,b=0,bin=1,diff=0,borrow=0
//# a=1,b=0,bin=1,diff=0,borrow=0
//# a=0,b=1,bin=0,diff=1,borrow=1
//# a=0,b=0,bin=1,diff=1,borrow=1
//# a=1,b=0,bin=1,diff=0,borrow=0
