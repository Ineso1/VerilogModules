module ClockDivider_tb();
reg clk, rst_a;
wire clk_div;

ClockDivider DUT(
.clk(clk),
.rst_a(rst_a),
.clk_div(clk_div)
);

initial 
	begin
		clk = 0;
		rst_a = 1;
		#5 
		rst_a = 0;
		#10 
		rst_a = 1;
	end
always
	begin
		#5
		clk = ~clk;
	end
endmodule