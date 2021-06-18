module shiftL #(parameter N = 4) (input logic[N-1:0] a, output logic [N-1:0] resultado, output bit V, output bit C);
	
	assign C = 0;
	assign V = 0;
	
	always_comb  begin
		resultado = a << 1;
	end
	
endmodule 