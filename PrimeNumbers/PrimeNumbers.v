module PrimeNumbers #(parameter N = 4)(
	input [N-1:0] num, 
	output reg res
);
	
	always @(*)
		begin
			case(num)
				1:
					res = 1;
				2:
					res = 1;
				3:
					res = 1;
				5:
					res = 1;
				7:
					res = 1;
				11:
					res = 1;
				13:
					res = 1;
				default:
					res = 0;
			endcase
	end
endmodule