module logicaTTT(input clk, rst, j1, j2, input[3:0] posj2, posj1, output wire[1:0] pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, output wire[1:0] who);
    
    wire [15:0] jugador2Habilitado;
    wire [15:0] jugador1Habilitado;
    wire jugadaIlegal;
    
    wire gane;
    wire j2h;
    wire j1h;
    wire juegoFinalizado;
    
    // position registers    
    registrosPAD position_reg_unit(clk, rst, jugadaIlegal, jugador2Habilitado[8:0], jugador1Habilitado[8:0], pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8);

    determinaGanador gane_detect_unit(pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, gane, who);
    
    // position decoder for computer 
    decodificadorPos pd1(posj2, j2h, jugador2Habilitado);
    
    // position decoder for j1er  
    decodificadorPos pd2(posj1, j1h, jugador1Habilitado); 
    
    // illegal move detector
    detectorJugadasIlegales imd_unit(pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, jugador2Habilitado[8:0], jugador1Habilitado[8:0], jugadaIlegal);
    
    // no space detector 
    juegoTerminado nsd_unit(pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, juegoFinalizado); 
    
    
    FSMTTT tic_tac_toe_controller(clk, rst, j1, j2, jugadaIlegal, juegoFinalizado, gane, j2h, j1h);

endmodule 