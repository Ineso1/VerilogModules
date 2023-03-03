module Counter #(parameter c_max = 500000)(
	input clk, rst_a,
	output reg flag_check
);

reg [18:0] counter_reg_aux;

always @(posedge clk or negedge rst_a)
	begin
		if(!rst_a)
			begin
				counter_reg_aux <= 0;
				flag_check <= 0;
			end
		else
			begin
				if(counter_reg_aux >= c_max)
					begin
						counter_reg_aux <= 0;
						flag_check <=1;
					end
				else
					begin
						counter_reg_aux <= counter_reg_aux + 1;
						flag_check <= 0;
					end
			end
	end

endmodule