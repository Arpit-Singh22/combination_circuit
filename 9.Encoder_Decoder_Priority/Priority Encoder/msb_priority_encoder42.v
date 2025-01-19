module msb_priority_encoder42(i,y);
	input [3:0]i;
	output reg [1:0]y;
	
	always @(i) begin
		casex(i)
			4'b0000: y = 2'bxx;
			4'b0001: y = 2'b00;
			4'b001?: y = 2'b01;
			4'b01?z: y = 2'b10;
			4'b1xz?: y = 2'b11;
			default: y = 2'bz;
		endcase
	end
endmodule
