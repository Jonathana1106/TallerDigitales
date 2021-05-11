module maquinaEstadosTTT(input logic clk, rst, d, input logic [8:0] j1, j2, output logic [1:0] gano);

    logic [2:0] salidaES, salidaEA; //D, Q
    logic x;

    estadoActual #(3) esAc (clk, rst, salidaES, salidaEA);
    estadoSiguiente esSig (x, salidaEA, salidaES);
    salida respuesta (x, salidaES, gano);
    logicaTTT tictactoe (salidaES, j1, j2, d, rst, x);

endmodule 