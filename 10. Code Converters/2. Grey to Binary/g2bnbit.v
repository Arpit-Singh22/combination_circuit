module g2bnbit(g,b);
	parameter N=10;
	input [N-1:0]g;
	output reg [N-1:0]b;

	//assign b = {g[N-1],b[N-1:1]^g[N-2:0]};
	integer i;
	always @(*) begin
		b[N-1]=g[N-1];
		for(i=N-2;i>=0;i=i-1) begin
			b[i]=b[i+1]^g[i];
		end
	end
endmodule
