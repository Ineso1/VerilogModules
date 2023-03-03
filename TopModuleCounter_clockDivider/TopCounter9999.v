module TopCounter9999(
input clk,rst_a,
output [6:0] disp_1, disp_2, disp_3, disp_4
);

wire clk_div_out;
wire [13:0] counter_decoder_wire;

ClockDivider divider(
.clk(clk),
.rst_a(rst_a),
.clk_div(clk_div_out)
);

Counter9999 counter(
.clk(clk_div_out),
.rst_a(rst_a),
.counter(counter_decoder_wire)
);

Decoder7_seg_4 decoder4(
.num(counter_decoder_wire),
.disp_1(disp_1),
.disp_2(disp_2),
.disp_3(disp_3),
.disp_4(disp_4)
);

endmodule