`include "fa_16bit.v"
module tb_fa_16bit;
	parameter msb = 15;
	reg [msb:0]a,b;
	reg cin;
	wire [msb:0]s;
	wire cout;
	fa_16bit dut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
	initial begin
		$display("16 bit Full Adder");
		repeat(10) begin 
			{a,b} = $random;
			{cin} = $random % 2;
			#5;
			$display("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,s,cout);
		end
	end
endmodule
//# 16 bit Full Adder
//# a=0001001000010101,b=0011010100100100,cin=1,sum=0100011100111010,cout=0
//# a=1000010010000100,b=1101011000001001,cin=1,sum=0101101010001110,cout=1
//# a=0000011010111001,b=0111101100001101,cin=1,sum=1000000111000111,cout=0
//# a=1011001011000010,b=1000010001100101,cin=0,sum=0011011100100111,cout=1
//# a=0000000011110011,b=1110001100000001,cin=1,sum=1110001111110101,cout=0
//# a=0011101100100011,b=1111000101110110,cin=1,sum=0010110010011010,cout=1
//# a=0111011011010100,b=0101011111101101,cin=0,sum=1100111011000001,cout=0
//# a=0111110011111101,b=1110100111111001,cin=0,sum=0110011011110110,cout=1
//# a=1110001011110111,b=1000010011000101,cin=0,sum=0110011110111100,cout=1
//# a=0111001010101111,b=1111011111100101,cin=1,sum=0110101010010101,cout=1
//

