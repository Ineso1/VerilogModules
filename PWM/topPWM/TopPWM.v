module TopPWM(
input clk, rst_a,
input [1:0] dutyCycle,
output pwm,
output salidaCounter
);

wire clk_div_out, counter_out;

ClockDivider u1(
.clk(clk),
.rst_a(rst_a),
.clk_div(clk_div_out)
);
ResolutionCounter u2(
.clk(clk_div_out),
.rst_a(rst_a),
.counter(counter_out)
);
Comparator u3(
.clk(clk_div_out),
.rst_a(rst_a),
.in(dutyCycle),
.counter(counter_out),
.pwm(pwm)
.salidaCounter(salidaCounter);
);

endmodule