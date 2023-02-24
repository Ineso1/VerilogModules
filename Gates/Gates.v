/*
Ines Alejandro Garcia Mosqueda
Implementacion de compuertas logicas:

AND
OR
XOR
NOT
NAND
NOR
XNOR
YES

*/

module Gates(
	
	input [1:0] input_gate,
	output reg [7:0] output_gate
	
); 



always @(*)
	begin
		output_gate[0] = input_gate[1] & input_gate[0]; 	//AND
		output_gate[1] = input_gate[1] | input_gate[0];		//OR
		output_gate[2] = input_gate[1] ^ input_gate[0];		//XOR
		output_gate[3] = ~input_gate[1];							//NOT
		output_gate[4] = ~(input_gate[1] & input_gate[0]);	//NAND
		output_gate[5] = ~(input_gate[1] | input_gate[0]);	//NOR
		output_gate[6] = ~(input_gate[1] ^ input_gate[0]);	//XNOR
		output_gate[7] = input_gate[1];							//YES
	end
	
endmodule