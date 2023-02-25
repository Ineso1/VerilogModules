module Multiplexor_tb();
reg [3:0] in; 
reg [1:0] sel;
wire out;


Multiplexor DUT(
	.in(in),
	.sel(sel),
	.out(out)
);

initial
	begin
		sel = 0;
		in[0] = 1;
		in[1] = 0;
		in[2] = 0;
		in[3] = 0;
		#100
		sel = 1;
		#100
		sel = 2;
		#100
		sel = 3;
		#100
		sel = 0;
		in[0] = 0;
		in[1] = 1;
		in[2] = 0;
		in[3] = 0;
		#100
		sel = 1;
		#100
		sel = 2;
		#100
		sel = 3;
		#100
		sel = 0;
		in[0] = 0;
		in[1] = 0;
		in[2] = 1;
		in[3] = 0;
		#100
		sel = 1;
		#100
		sel = 2;
		#100
		sel = 3;
		#100
		sel = 0;
		in[0] = 0;
		in[1] = 0;
		in[2] = 0;
		in[3] = 1;
		#100
		sel = 1;
		#100
		sel = 2;
		#100
		sel = 3;
		#100
		$stop;
	end

endmodule