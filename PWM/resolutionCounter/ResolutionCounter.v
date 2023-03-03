module ResolutionCounter #(parameter c_max = 20)(
	input clk, rst_a,
	output reg [14:0] counter
);

always @(posedge clk or negedge rst_a)
	begin
		if(!rst_a)
			begin
				counter <= 0;
			end
		else
			begin
				if(counter >= c_max)
					begin
						counter <= 0;
					end
				else
					begin
						counter <= counter + 1;
					end
			end
	end 
endmodule