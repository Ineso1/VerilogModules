module TopPWM_tb();
reg clk, rst_a;
reg [1:0] in;
wire pwm;
wire [14:0] salidaCounter;

TopPWM u1(
	.clk(clk),
	.rst_a(rst_a),
	.dutyCycle(in),
	.pwm(pwm)
	.salidaCounter(salidaCounter);
);

initial 
	begin
		clk = 0;
		rst_a = 1;
		#5 
		rst_a = 0;
		#10 
		rst_a = 1;
		in = 2'b11;
	end
always
	begin
		#5
		clk = ~clk;
	end


endmodule