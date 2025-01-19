module mux(input s1,s2,output reg [1:0]y);
//	always @(s1,s2) begin
//			if(s1==0 & s2==0)
//				y = 2'd0;
//			else if(s1==0 & s2==1)
//				y = 2'd1;
//			else if(s1==1 & s2==0) 
//				y = 2'd2;
//			else 
//				y = 2'd3;
//	end
	always @(s1,s2) begin
		case({s1,s2})
			2'b00: y = 0;
			2'b01: y = 1;
			2'b10: y = 2;
			2'b11: y = 3;
			default: y = 0;
		endcase
	end
endmodule
