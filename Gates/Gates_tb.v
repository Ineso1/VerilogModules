module Gates_tb();

reg [1:0] in;

wire [7:0] out;

Gates DUT(
	.input_gate(in),
	.output_gate(out)

);

initial
	begin
			in[0] = 1'b0;
			in[1] = 1'b0;
		#100
			in[0] = 1'b1;
		#100
			in[1] = 1'b1;
		#100
			in[0] = 1'b0;
		#100
		$stop;
	end
endmodule