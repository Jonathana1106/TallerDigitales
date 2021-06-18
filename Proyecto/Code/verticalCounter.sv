module verticalCounter(input clk, input rst, output [0:9] rowN);
	
	logic nextRow;
	logic rstIn;
	logic [0:9] rowMax;
	logic endCol;
	
	generate 
		contadorN #(10) contador(clk, rstIn, rowN);
		equalComparator #(10) eComparador(rowMax, rowN, endCol);
		
		assign rowMax = 10'd523;
		assign rstIn = rst || endCol;
		
	endgenerate
	
endmodule 