module ClockDivider(
input clk,rst_a,
output reg clk_div
);
localparam constantNumber = 1;
reg [31:0] count;
always @(posedge clk or negedge rst_a)
	begin
		if(!rst_a)
			count <= 32'b0;
		else if(count == constantNumber-1)
			count <= 32'b0;
		else
			count <= count +1;
	end

always @(posedge clk or negedge rst_a)
	begin
		if(!rst_a)
			clk_div <= 1'b0;
		else if(count == constantNumber-1)
			clk_div <= ~clk_div;
		else
			clk_div <= clk_div;
	end

endmodule