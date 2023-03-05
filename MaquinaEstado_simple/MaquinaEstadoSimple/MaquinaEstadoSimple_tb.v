module MaquinaEstadoSimple_tb();
reg 	clk;	
reg	rst_a;
wire 	[3:0] led;

MaquinaEstadoSimple m(
.clk(clk),
.rst_a(rst_a),
.led(led)
);

always
	begin
		forever #10 clk = ~clk;
	end
	
initial
	begin
		clk = 0;
		rst_a = 1;
		#10 rst_a = 0;
		#10 rst_a = 1;
		
	end
	
endmodule