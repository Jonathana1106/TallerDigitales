module tictactoeVGA(
    input logic  clk, botonRST, botonBuscarCasilla, botonSelecccionarCasilla,
    output logic clk25,
    output logic H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK,
    output logic jugador10, jugador11, jugador12, jugador13, jugador14, jugador15, jugador16, jugador17, jugador18, juegoTerminado,
    output logic [7:0] r, g, b);


    logic [9:0] cuentaX, cuentaY;

    //--------------Instancia del divisor de clock-------------------------//
	clockDivider dvclk (clk, clk25);

    //--------------Instancia del controlador VGA--------------------------//		
	controladorVGA cntVGA (clk25, H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK, cuentaX, cuentaY);
		

    //--------------Instancia del generador de Video----------------------//	
	controladorVideoVGA genVGA (clk25, botonRST, botonBuscarCasilla, botonSelecccionarCasilla, cuentaX, cuentaY, jugador10, jugador11, jugador12, jugador13, jugador14, jugador15, jugador16, jugador17, jugador18, juegoTerminado, r, g, b);


endmodule 