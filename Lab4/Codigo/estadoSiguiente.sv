module estadoSiguiente(input logic x, input logic [2:0] estado, output logic [2:0] D);

    assign D[2] = (~x & estado[2] & estado[1]) | (x & ~estado[2] & estado[1]) | (x & estado[2] & ~estado[1]);
	assign D[1] = (~x &estado[1]) | (~estado[2] & estado[1] & ~estado[0]) | (~x & estado[2] & ~estado[0]) | (x & ~estado[1] & estado[0]);
	assign D[0] = (~x & ~estado[2] & estado[1]) | (~x & estado[1] & estado[0]) | (estado[2] & ~estado[1] & ~estado[0]) | (x & ~estado[1] & ~estado[0]) | (x & estado[2] & ~estado[1]);

endmodule 