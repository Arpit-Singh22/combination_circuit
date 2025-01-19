module mux_continous(s1,s2,y);
	input s1,s2;
	output wire [1:0] y;
	assign y = s2 ?(s1?3:2): (s1?1:0);
endmodule
