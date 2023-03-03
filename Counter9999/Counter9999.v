module Counter9999 #(parameter c_max = 9999)(
	input clk, rst_a,
	output reg [13:0] counter
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