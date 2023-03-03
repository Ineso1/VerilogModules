module FlipFlop #(parameter Bits = 1)(
input clk,rst_a,
input [Bits - 1 : 0] d,
output reg [Bits - 1 : 0] q
);

always @(posedge clk or negedge rst_a)
	begin
		if(!rst_a)
			begin
				q <= 0;
			end
		else
			begin
				q <= d;
			end
	end

endmodule