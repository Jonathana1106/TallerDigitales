module muxt_2a1(input A, B,
					 input S,
					 output F);
					 

logic out;					 

					 
//Siempre bloque always hay que decirle si es combinacional o secuencial

always_comb begin

// #numero ' base que lo quiero
if(S== 1'b1)
	out = A;
else 
	out = B;

end

assign F = out;

endmodule

// Logica secuencial, un flip flop no puede escribirse a nivel de estrutura, si no de comportamiento