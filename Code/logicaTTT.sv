/*
Modulo que se encarga de inicializar los modulos que contienen la logica del juego.
*/
module logicaTTT(input clk, rst, j1, j2, input[3:0] posj2, posj1, output wire[1:0] pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, output wire[1:0] who);
    
    wire [15:0] jugador2Habilitado;
    wire [15:0] jugador1Habilitado;
    wire jugadaIlegal;
    
    wire gane;
    wire j2h;
    wire j1h;
    wire juegoFinalizado;
    
    // Registro de posiciones
    registrosPAD registroCasillas(clk, rst, jugadaIlegal, jugador2Habilitado[8:0], jugador1Habilitado[8:0], pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8);

    determinaGanador detectarGanador(pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, gane, who);
    
    // Decodificador de posiciones para el jugador 1
    decodificadorPos decoPJ1(posj1, j1h, jugador1Habilitado);

    // Decodificador de posiciones para el jugador 2
    decodificadorPos decoPJ2(posj2, j2h, jugador2Habilitado); 
    
    // Detector de jugadas ilegales
    detectorJugadasIlegales jugadasIlegales(pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, jugador2Habilitado[8:0], jugador1Habilitado[8:0], jugadaIlegal);
    
    // Detector de finalizacion del juego
    juegoTerminado finalizacionJuego(pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, juegoFinalizado); 
    
    // Maquina de estados del Tic Tac Toe
    FSMTTT FSMTicTacToe(clk, rst, j1, j2, jugadaIlegal, juegoFinalizado, gane, j2h, j1h);

endmodule 