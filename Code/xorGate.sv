module xorGate #(parameter N = 4) (input logic[N-1:0] A, B, output logic [N-1:0] resultado, output bit V, C);
	
	assign C = 0;
	assign V = 0;
	reg [N:0] i;
	
	always_comb  begin
		for(i = 0; i < N; i = i + 1) begin
			resultado[i] = A[i] ^ B[i];
		end
	end

endmodule 