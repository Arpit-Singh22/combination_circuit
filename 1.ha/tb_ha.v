`include "ha.v"
module ha_tb;
	reg a,b;
	wire s,co;
	ha dut(.a(a), .b(b), .s(s), .co(co));

	 initial begin
        a = 0;
        b = 0;
        $display("Half Adder");
        $monitor("a=%b, b=%b, sum=%b, co=%b", a, b, s, co);
    end
	 always begin
        a = $random % 2; 
		b = $random % 2;
		#1;
	end
endmodule
