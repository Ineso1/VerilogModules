module Comparator (
input rst_a, clk,
input [1:0] in,
input [14:0] counter,
output reg pwm,
output reg [14:0]salidaCounter
);

reg [14:0] dc;
reg state;


always @(posedge clk or negedge rst_a)
	begin
		if(!rst_a)
			begin
				pwm <= 0;
			end
		else
			pwm <= state;
	end

always @(*)
begin
	case(in)
		2'b00:
			begin
			dc = 10;
			end
		2'b01:
			begin
			dc = 14;
			end
		2'b10:
			begin
			dc=15;
			end
		2'b11:
			begin
			dc=4;
			end
		default:
			begin
			dc = 0;
			end
	endcase
	if(counter >= dc)
		begin
			state = 1;
		end
	else
		begin
			state = 0;
		end
end

endmodule