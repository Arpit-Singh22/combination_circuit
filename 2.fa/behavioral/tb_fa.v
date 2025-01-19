`include "fa.v"
module tb_fa;
	reg a,b,cin;
	wire sum,cout;
	fa dut(.a(a), .b(b), .cin(cin), .sum(sum),.cout(cout));
	initial begin
		$display("Full Adder");
		repeat(10) begin 
			{a,b,cin} = $random;
			#5;
			$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
		end
	end
endmodule
