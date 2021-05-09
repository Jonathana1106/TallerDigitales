module topReg(input logic clk, rst, input logic [9:0] data, output logic[6:0] Disp1, Disp2, output logic [3:0] z);

	logic [9:0] y;
	logic[3:0] w1, w2;

	mainFPGA mainr(~clk, rst, data, 4'b0111, y);
	division #(4) div_module(y[3:0], 4'b1010, w1);//Calcular Decenas
	modulo #(4) mod_module(y[3:0], 4'b1010, w2);//Calcular unidades
	decoderBCD decodificador1(w1, Disp1);// Decodificador para Decenas
	decoderBCD decodificador2(w2, Disp2);// Decodificador para Unidades
    
	assign z = y[3:0];

endmodule 