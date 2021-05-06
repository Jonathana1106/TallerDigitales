module controladorVideoVGA(
    input logic clk, botonRST, botonBuscarCasilla, botonSelectCasilla, 
    input logic [9:0] cuentaX, cuentaY, 
    output logic jugador10, jugador11, jugador12, jugador13, jugador14, jugador15, jugador16, jugador17, jugador18, juegoTerminado, 
    output logic [7:0] r, g, b);

    logic inrect1, visible_sprite1, visible_sprite2, lineas1;
	logic [3:0] contador;

    controlTOP controlJuego (clk, botonRST, botonBuscarCasilla, botonSelectCasilla, cuentaX, cuentaY, jugador10, jugador11, jugador12, jugador13, jugador14, jugador15, jugador16, jugador17, jugador18, juegoTerminado, r, g, b);

endmodule 