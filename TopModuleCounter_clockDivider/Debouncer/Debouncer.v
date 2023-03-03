module Debouncer#(parameter c_max = 500000)(
input p_b,
clk,
rst_a,
output p_b_debouncer
);

wire flag_check_wire;

Counter Counter_Debouncer(
.clk(clk),
.rst_a(rst_a),
.flag_check(flag_check_wire)
);


FlipFlop FlipFlop_Debouncer(
.clk(flag_check_wire),
.rst_a(rst_a),
.d(p_b),
.q(p_b_debouncer)
);


endmodule