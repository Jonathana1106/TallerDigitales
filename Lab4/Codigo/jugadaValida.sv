module jugadaValida(input logic [8:0] juego, jugador, output logic jvalida);

    assign jvalida = ((juego & jugador) != juego);

endmodule 