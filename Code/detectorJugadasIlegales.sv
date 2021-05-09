module detectorJugadasIlegales(input[1:0] pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, input[8:0] jugador2Habilitado, jugador1Habilitado, output wire jugadaIlegal);
    wire temp1, temp2, temp3, temp4, temp5, temp6, temp7, temp8, temp9;
    wire temp11, temp12, temp13, temp14, temp15, temp16, temp17, temp18, temp19;
    wire temp21, temp22;
    // player : illegal moving    
    assign temp1 = (pos0[1] | pos0[0]) & jugador1Habilitado[0];
    assign temp2 = (pos1[1] | pos1[0]) & jugador1Habilitado[1];
    assign temp3 = (pos2[1] | pos2[0]) & jugador1Habilitado[2];
    assign temp4 = (pos3[1] | pos3[0]) & jugador1Habilitado[3];
    assign temp5 = (pos4[1] | pos4[0]) & jugador1Habilitado[4];
    assign temp6 = (pos5[1] | pos5[0]) & jugador1Habilitado[5];
    assign temp7 = (pos6[1] | pos6[0]) & jugador1Habilitado[6];
    assign temp8 = (pos7[1] | pos7[0]) & jugador1Habilitado[7];
    assign temp9 = (pos8[1] | pos8[0]) & jugador1Habilitado[8];
    // computer : illegal moving  
    assign temp11 = (pos0[1] | pos0[0]) & jugador2Habilitado[0];
    assign temp12 = (pos1[1] | pos1[0]) & jugador2Habilitado[1];
    assign temp13 = (pos2[1] | pos2[0]) & jugador2Habilitado[2];
    assign temp14 = (pos3[1] | pos3[0]) & jugador2Habilitado[3];
    assign temp15 = (pos4[1] | pos4[0]) & jugador2Habilitado[4];
    assign temp16 = (pos5[1] | pos5[0]) & jugador2Habilitado[5];
    assign temp17 = (pos6[1] | pos6[0]) & jugador2Habilitado[6];
    assign temp18 = (pos7[1] | pos7[0]) & jugador2Habilitado[7];
    assign temp19 = (pos8[1] | pos8[0]) & jugador2Habilitado[8];
    // intermediate signals 
    assign temp21 =((((((((temp1 | temp2) | temp3) | temp4) | temp5) | temp6) | temp7) | temp8) | temp9);
    assign temp22 =((((((((temp11 | temp12) | temp13) | temp14) | temp15) | temp16) | temp17) | temp18) | temp19);
    // output illegal move 
    assign jugadaIlegal = temp21 | temp22 ;
endmodule 