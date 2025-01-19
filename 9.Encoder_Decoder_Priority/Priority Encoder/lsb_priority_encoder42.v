module lsb_priority_encoder42(i,y);
	input [3:0]i;
	output reg [1:0]y;
	
	always @(i) begin
		casex(i)
			4'bxxx1: y = 2'b00;
			4'bxx10: y = 2'b01;
			4'b?100: y = 2'b10;
			4'b1000: y = 2'b11;
			default: y = 2'bz;
		endcase
	end
endmodule
