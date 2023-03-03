module Decoder7seg_tb();

reg [3:0] in;
wire [6:0] out;

Decoder7seg DUT(
	.num(in),
	.segments(out)

);

initial
	begin
			in = 0;
		#100
			in = 1;
		#100
			in = 2;
		#100
			in = 3;
		#100
			in = 4;
		#100
			in = 5;
		#100
			in = 6;
		#100
			in = 7;
		#100
			in = 8;
		#100
			in = 9;
		#100
		$stop;
	end
endmodule