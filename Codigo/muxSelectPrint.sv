module muxSelectPrint(input logic clk, input logic [9:0] posX, posY, cuentaX, cuentaY, input logic [1:0] contador_seleccionador, output logic visible, output logic [23:0] rgb);

    logic visibilidadSprite1, visibilidadSprite2;
	logic [23:0] rgb1, rgb2;


    spriteRick  Jugador1 (clk, cuentaX, cuentaY, posX, posY, rgb1, visibilidadSprite1);
			
	spriteMorty Jugador2 (clk, cuentaX, cuentaY, posX, posY, rgb2, visibilidadSprite2);

    always @( contador_seleccionador[0] or contador_seleccionador[1]) begin
        if (contador_seleccionador  == 2'b00) begin
		    visible <= 1'b0;	
		end
			
		if(contador_seleccionador  == 2'b01) begin
		    visible <= visibilidadSprite1;
			rgb <= rgb1;
        end
			
		if (contador_seleccionador  == 2'b10) begin
            visible <= visibilidadSprite2;
			rgb <= rgb2;
        end
    end

endmodule 