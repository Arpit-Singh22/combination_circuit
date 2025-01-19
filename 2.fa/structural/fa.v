module fa(a,b,cin,sum,cout);
	input a,b,cin;
	output sum,cout;
	wire n1,n2,n3;
	xor g1(n1,a,b);
	xor g2(sum,n1,cin);
	and g3(n2,a,b);
	and g4(n3,b,cin);
	and g5(n4,a,cin);
	or g6(cout,n2,n3,n4);
endmodule

