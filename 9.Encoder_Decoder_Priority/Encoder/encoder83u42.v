`include "encoder42.v"
module encoder83u42(i,y);
	input [7:0]i;
	output [2:0]y;
	wire n1,n2;

	encoder42 u1(.i(i[3:0]),.y({y[1],n1}));
	encoder42 u2(.i(i[7:4]),.y({y[2],n2}));
	assign y[0] = n1 | n2 ;
endmodule
