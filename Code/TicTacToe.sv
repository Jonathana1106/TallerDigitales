module TicTacToe(input CLOCK_50, input botonBuscarCasilla, botonSeleccionarCasilla, rst, output [7:0] VGA_R, VGA_G, VGA_B, output VGA_HS, VGA_VS, VGA_CLK, VGA_SYNC_N, VGA_BLANK_N);
	
    // Based on game logic
    // Will indicate video_controller what to show
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
    wire [1:0] pos0,pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8;

    wire Px,Po;
    wire[1:0]who;

    contadorBotonPushB cont(botonBuscarCasilla, outCont);
    seleccionadorPAD sel (botonSeleccionarCasilla, ~rst, Px, Po);
    logicaTTT JUEGO (CLOCK_50, ~rst, Px, Po, outCont, outCont, pos0,pos1,pos2, pos3,pos4,pos5,pos6,pos7,pos8,who);


    // ****************** PLEASE MODIFY THIS VALUES BASED ON THE GAME LOGIC :) *******************
    // Sprite botonSeleccionarCasillaors: 00 or 11 = no sprite, 01 = sprite 1, 10 = sprite 2
    // Block 00
    assign pad0 = pos0;
    // Block 01
    assign pad1 = pos1;
    // Block 02
    assign pad2 = pos2;
    // Block 10
    assign pad3 = pos3;
    // Block 11
    assign pad4 = pos4;
    // Block 12
    assign pad5 = pos5;
    // Block 20
    assign pad6 = pos6;
    // Block 21
    assign pad7 = pos7;
    // Block 22
    assign pad8 = pos8;


    always @* begin
        if(who==2'b00)
            botonSeleccionarCasillaed <= outCont;
        else
        botonSeleccionarCasillaed <= 4'b1111;
    end

    controladorVideoVGA VGA (CLOCK_50, pad0, pad1, pad2, pad3, pad4, pad5, pad6, pad7, pad8, botonSeleccionarCasillaed, VGA_HS, VGA_VS, VGA_R, VGA_G, VGA_B, VGA_CLK, VGA_SYNC_N, VGA_BLANK_N);
	
endmodule
