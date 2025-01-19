`include "fa_8bit.v"
module tb_fa_8bit;
	reg [7:0]a,b;
	reg cin;
	wire [7:0]sum;
	wire cout;
	fa_8bit dut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
	initial begin
		$display("Full Adder");
		repeat(10) begin 
			{a,b,cin} = $random;
			#5;
			$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
		end
	end
endmodule
