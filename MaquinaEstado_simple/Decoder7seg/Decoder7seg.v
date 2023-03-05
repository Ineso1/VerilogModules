module Decoder7seg(input [3:0] num, output reg [6:0] segments);
always @(num)
begin
	case(num)
		0:
		segments = 7'b1000000;
		1:
		segments = 7'h79;
		2:
		segments = 7'h24;
		3:
		segments = 7'h30;
		4:
		segments = 7'h19;
		5:
		segments = 7'h12;
		6:
		segments = 7'h02;
		7:
		segments = 7'h78;
		8:
		segments = 7'h00;
		9:
		segments = 7'h18;
		default:
		segments = 7'b0111111;
	endcase
end
endmodule