module PrimeNumbers_tb();
	reg [3:0] in;
	wire out;

PrimeNumbers DUT(
	.num(in),
	.res(out)

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
			in = 10;
		#100
			in = 11;
		#100
			in = 12;
		#100
			in = 13;
		#100
			in = 14;
		#100
			in = 15;
		#100
		$stop;
	end
endmodule