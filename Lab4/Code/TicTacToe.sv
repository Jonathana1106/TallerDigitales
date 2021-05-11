/*
Modulo que se encarga de conectar la logica del juego de la maquina de estados con las pulsasiones de los
botones de rst, seleccionar casilla y desplazamiento asi como la conexion con el controlador de video VGA.
*/
module TicTacToe(input CLOCK_50, input botonBuscarCasilla, botonSeleccionarCasilla, rst, output [7:0] VGA_R, VGA_G, VGA_B, output VGA_HS, VGA_VS, VGA_CLK, VGA_SYNC_N, VGA_BLANK_N);
	
    logic [1:0] pad0;
    logic [1:0] pad1;
    logic [1:0] pad2;
    logic [1:0] pad3;
    logic [1:0] pad4;
    logic [1:0] pad5;
    logic [1:0] pad6;
    logic [1:0] pad7;
    logic [1:0] pad8;
    logic [3:0] botonSeleccionarCasillaed;
    logic [3:0] outCont;
    wire [1:0] pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8;

    wire Px, Po;
    wire[1:0] who;

    contadorBotonPushB cont(botonBuscarCasilla, outCont);
    seleccionadorPAD sel (botonSeleccionarCasilla, ~rst, Px, Po);
    logicaTTT JUEGO (CLOCK_50, ~rst, Px, Po, outCont, outCont, pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, who);



    // Casilla 0
    assign pad0 = pos0;
    // Casilla 1
    assign pad1 = pos1;
    // Casilla 2
    assign pad2 = pos2;
    // Casilla 3
    assign pad3 = pos3;
    // Casilla 4
    assign pad4 = pos4;
    // Casilla 5
    assign pad5 = pos5;
    // Casilla 6
    assign pad6 = pos6;
    // Casilla 7
    assign pad7 = pos7;
    // Casilla 8
    assign pad8 = pos8;


    always @* begin
        if(who == 2'b00)
            botonSeleccionarCasillaed <= outCont;
        else
        botonSeleccionarCasillaed <= 4'b1111;
    end

    controladorVideoVGA VGA (CLOCK_50, pad0, pad1, pad2, pad3, pad4, pad5, pad6, pad7, pad8, botonSeleccionarCasillaed, VGA_HS, VGA_VS, VGA_R, VGA_G, VGA_B, VGA_CLK, VGA_SYNC_N, VGA_BLANK_N);
	
endmodule 