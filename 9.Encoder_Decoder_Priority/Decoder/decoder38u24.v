`include "decoder24.v"
module decoder38u24(i,y);
	input [2:0]i;
	output [7:0]y;
	
	decoder24 u1(.i(i[1:0]),.en(~i[2]),.y(y[3:0]));
	decoder24 u2(.i(i[1:0]),.en(i[2]),.y(y[7:4]));
endmodule
