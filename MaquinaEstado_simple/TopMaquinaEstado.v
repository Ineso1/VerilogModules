module TopMaquinaEstado(
input clk, rst_a,
output [6:0] disp_0,disp_1,disp_2,disp_3
);
wire clk_div_out; 
wire [3:0] led_out;

ClockDivider clk_divider(
	.clk(clk),
	.rst_a(rst_a),
	.clk_div(clk_div_out)
);
MaquinaEstadoSimple u1(
	.clk(clk_div_out),
	.rst_a(rst_a),
	.led(led_out)
);
Decoder7seg d0(led_out[0], disp_0);
Decoder7seg d1(led_out[1], disp_1);
Decoder7seg d2(led_out[2], disp_2);
Decoder7seg d3(led_out[3], disp_3);


endmodule