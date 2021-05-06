module spriteMorty(input clk, input [9:0] posx, posy, pixelx, pixely, output [23:0] RGB, output visible);

    //ROM
    logic [0:11] address;
    logic [2:0] color;
    morty_rom ROMM (address, clk, color);	
    //DECO
    decoMorty DECOM (color, RGB);
    logic x63, y63;
    //ADDRESS GENERATION
    dirGen direccionesM (pixelx, pixely, posx, posy, x63, y63, address);	
    //VISIBLE LOGIC			
    visibleLogic visibilidadM (xm63, ym63,color, visible);

endmodule 