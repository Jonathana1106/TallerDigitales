module clk25MH(input clk50, output logic clk25);

	logic [0:1] clkContador;
	
	generate
		contadorN #(2) divisorclk(clk50, 0, clkContador);
	endgenerate
	
	always_comb begin
		clk25 = clkContador[1];
	end

endmodule 