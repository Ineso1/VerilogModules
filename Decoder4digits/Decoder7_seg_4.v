module Decoder7_seg_4(
input [13:0] num,
output [6:0] 	disp_1, 
				disp_2, 
				disp_3, 
				disp_4
);

wire [3:0] unidad = num % 10;
wire [3:0] decena = (num / 10) % 10;
wire [3:0] centena = (num / 100) % 10;
wire [3:0] millar = num / 1000;

Decoder7seg Decoder_1(unidad, disp_1);
Decoder7seg Decoder_2(decena, disp_2);
Decoder7seg Decoder_3(centena, disp_3);
Decoder7seg Decoder_4(millar, disp_4);


endmodule