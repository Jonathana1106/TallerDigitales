module spriteRick(input clk, input [9:0] posx, posy, pixelx, pixely, output [23:0] RGB, output visible);

    //ROM
    logic [0:11] direccion;
    logic [2:0] color;
    rick_rom ROMR (direccion, clk, color);	
    //DECO
    decoRick DECOR (color, RGB);
    logic x63, y63;
    //GENERACION DE DIRECCION
    dirGen direccionesR (pixelx, pixely, posx, posy, x63, y63, direccion);	
    //VISIBLE LOGIC			
    visibleLogic visibilidadR (x63, y63,color, visible);

endmodule 