module ResolutionCounter_tb();
reg clk, rst_a;
wire [4:0]counter;

ResolutionCounter DUT(
.clk(clk),
.rst_a(rst_a),
.counter(counter)
);

always
	begin
		#5
		clk = ~clk;
	end
initial
	begin
		clk = 0;
		rst_a = 1;
		#5 
		rst_a = 0;
		#10 
		rst_a = 1;
	end

endmodule