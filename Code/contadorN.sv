module contadorN #(parameter M = 4)(input clk, input rst, output reg [M-1:0] clk25);  
						
	reg     [M-1:0] contador = 0;
	
	always @ (posedge clk) begin
		 if (rst)
			  contador <= 0;
		 else
			  contador <= contador + 1;
	end 
	
	assign clk25 = contador;

endmodule 