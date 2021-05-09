/*
Modulo que se encarga de determinar una jugada gnadora si tienen similar (x) (o) y quien es el ganador.
*/
module determinaGanador(input [1:0] pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, output wire ganador, output wire [1:0] who);
    
    wire win1, win2, win3, win4, win5, win6, win7, win8;
    wire [1:0] who1, who2, who3, who4, who5, who6, who7, who8;

    // Posibilidades de jugadas ganadoras
    detector3Fila jugadaGanadora1(pos0, pos1, pos2, win1, who1);// (1,2,3);
    detector3Fila jugadaGanadora2(pos3, pos4, pos5, win2, who2);// (4,5,6);
    detector3Fila jugadaGanadora3(pos6, pos7, pos8, win3, who3);// (7,8,9);
    detector3Fila jugadaGanadora4(pos0, pos3, pos6, win4, who4);// (1,4,7);
    detector3Fila jugadaGanadora5(pos1, pos4, pos7, win5, who5);// (2,5,8);
    detector3Fila jugadaGanadora6(pos2, pos5, pos8, win6, who6);// (3,6,9);
    detector3Fila jugadaGanadora7(pos0, pos4, pos8, win7, who7);// (1,5,9);
    detector3Fila jugadaGanadora8(pos2, pos4, pos5, win8, who8);// (3,5,7);
    
    assign ganador = (((((((win1 | win2) | win3) | win4) | win5) | win6) | win7) | win8);
    assign who = (((((((who1 | who2) | who3) | who4) | who5) | who6) | who7) | who8);

endmodule 