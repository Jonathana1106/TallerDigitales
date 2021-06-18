module horizontalCounter(input clk, rst, output [0:9] pixelN, output nextRow);
	
	logic rstIn;
	logic [0:9] columMax;
	
	generate 
		contadorN #(10) contador(clk, rstIn, pixelN);
		equalComparator #(10) eComparador(columMax, pixelN, nextRow);
		
		assign columMax = 10'd799;
		assign rstIn = rst || nextRow;
	
	endgenerate
	
endmodule 