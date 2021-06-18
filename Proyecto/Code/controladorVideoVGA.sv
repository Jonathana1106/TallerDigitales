module controladorVideoVGA(input clk25, input rst, input [0:7] char [0:40],
							  output [7:0] R, G, B,
							  output hsync, vsync, n_blank);
	
	logic [0:9] pixelN;
	logic [0:9] rowN;
	logic nextRow;
	
	//logic [0:7] char [0:10]='{ 8'd48, 8'd49, 8'd50, 8'd0, 8'd52, 8'd53, 8'd65, 8'd66, 8'd67, 8'd68, 8'd0};
   
	generate
		horizontalCounter contadorH (clk25, rst, prixelN, nextRow);
		verticalCounter contadorV (nextRow, rst, rowN);
		sync sincronizador(pixelN, rowN, hsync, vsync, n_blank);
		printASCII ascii (clk25, pixelN, rowN, char, R, G, B);
	endgenerate
	
endmodule 