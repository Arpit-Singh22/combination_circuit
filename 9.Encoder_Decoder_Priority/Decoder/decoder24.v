module decoder24(i,en,y);
	input [1:0]i;
	input en;
	output reg [3:0]y;
	always @(i) begin
		if(en==0) y = 4'b0000;
		else begin
			case(i)
				2'b00: y = 4'b0001;
				2'b01: y = 4'b0010;
				2'b10: y = 4'b0100;
				2'b11: y = 4'b1000;
			endcase
		end
	end
endmodule
