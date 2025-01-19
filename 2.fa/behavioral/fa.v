module fa(a,b,cin,sum,cout);
	input a,b,cin;
	output reg sum,cout;
	wire n1,n2,n3;
	
	always @(a,b,cin) begin
		sum = a ^ b ^ cin;
		n1 = a ^ b;
		n2 = n1 & cin;
 		n3 = a & b;
		cout = n2 | n3;
	end
endmodule

