module Multiplexor(
input [3:0] in, 
input [1:0] sel,
output reg out
);

always @(*)
	begin
		case(sel)
			0:
			begin
				out = in[0];
			end
			1:
			begin
				out = in[1];
			end
			2:
			begin
				out = in[2];
			end
			3:
			begin
				out = in[3];
			end
			default:
				out = 0;
		endcase
	end
endmodule