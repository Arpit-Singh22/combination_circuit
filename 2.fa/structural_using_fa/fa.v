module fa(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	wire n1,n2,n3;

	assign sum = a ^ b ^ cin;
	assign n1 = a ^ b;
	assign n2 = n1 & cin;
	assign n3 = a & b;
	assign cout = n2 | n3;
endmodule

