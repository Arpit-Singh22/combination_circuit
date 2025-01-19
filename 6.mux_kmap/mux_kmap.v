module mux_kmap(s1,s0,i0,i1,i2,i3,y);
	input s1,s0,i0,i1,i2,i3;
	output y;
	wire s1_not, s2_not,y1,y2,y3,y4;
	not g1(s1_not,s1);
	not g2(s0_not,s0);
	and g3(y1,s1_not,s0_not,i0);
	and g4(y2,s1_not,s0,i1);
	and g5(y3,s1,s0_not,i2);
	and g6(y4,s1,s0,i3);
	or g7(y,y1,y2,y3,y4);
endmodule

