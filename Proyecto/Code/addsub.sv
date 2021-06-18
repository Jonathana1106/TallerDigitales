module addsub #(parameter M = 4)(input [M-1:0] a, b, input sub, output [M-1:0] resultado, output V, C);

	genvar i;
	genvar j;
	
	logic [M:0] auxC;
	logic [M-1:0] auxB, auxZ;
	
	
	generate
	
	complemento #(.M(M)) fComplemento(b, sub, auxB);
	
	for(i = 0; i < M; i++) begin: generate_addsub
		if(i == 0) begin
			fullAdder fa(a[i], auxB[i], sub, resultado[i], auxC[i]);
			or (auxZ[i], resultado[i], 0);
		end
		else begin
			fullAdder fa(a[i], auxB[i], auxC[i-1], resultado[i], auxC[i]);
			or (auxZ[i], resultado[i], auxZ[i-1]);
		end
	end
	
	assign C = auxC[M-1];
	assign V = ~(a[M-1] ^ b[M-1] ^ sub) && (a[M-1] ^ resultado[M-1]);

	endgenerate
endmodule 