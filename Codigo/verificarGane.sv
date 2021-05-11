module verificarGane(input logic [8:0] jugador, output logic gane);

    assign gane = (
                jugador == 9'b111000000 |
                jugador == 9'b000111000 |
                jugador == 9'b000000111 |
				jugador == 9'b100100100 |
				jugador == 9'b010010010 |
				jugador == 9'b001001001 |
				jugador == 9'b100010001 |
				jugador == 9'b001010100
                );

endmodule 