module rectanguloGen(input logic clk, bottonContCasilla, bottonRST, input logic [3:0] contador, input logic [9:0] cuentaX, cuentaY, izq, top, der, bott, output logic salRect);

    logic temp;

//----------------------------------------------------------------------------------------------------//		
// Disposicion de las casillas del tic-tac toe:	
//__________		
//|0_ |1_ |2_ |
//|3_ |4_ |5_ |
//|6_ |7_ |8_ |
//----------------------------------------------------------------------------------------------------//

    always @ (contador) begin
        //Casilla 0
        if (contador == 4'b0000 ) begin
            temp <= ((cuentaX > izq) & (cuentaX < der) & (cuentaY > top)  & (cuentaY < bott)) ? 1 : 0;
        end

        //Casilla 1
        if (contador == 4'b0001 ) begin
            temp <= ((cuentaX > izq + 233) & (cuentaX < der + 233) & (cuentaY > top) & (cuentaY < bott)) ? 1 : 0;			
        end

        //Casilla 2
        if (contador == 4'b0010 ) begin
            temp <= ((cuentaX > izq + 456) & (cuentaX < der + 456) & (cuentaY > top) & (cuentaY < bott)) ? 1 : 0;
        end

        //Casilla 3
        if (contador == 4'b0011 ) begin
            temp <= ((cuentaX > izq ) & (cuentaX < der) & (cuentaY > top + 175) & (cuentaY < bott + 175)) ? 1 : 0;
        end

        //Casilla 4
        if (contador == 4'b0100 ) begin
            temp <= ((cuentaX > izq + 233) & (cuentaX < der + 233) & (cuentaY > top + 175) & (cuentaY < bott + 175)) ? 1 : 0;
        end

        //Casilla 5
        if (contador == 4'b0101 ) begin
            temp <= ((cuentaX > izq + 456) & (cuentaX < der + 456) & (cuentaY > top + 175) & (cuentaY < bott + 175)) ? 1 : 0;
        end

        //Casilla 6
        if (contador == 4'b0110 ) begin
            temp <= ((cuentaX > izq) & (cuentaX < der) & (cuentaY > top + 340) & (cuentaY < bott + 340)) ? 1 : 0;
        end

        //Casilla 7
        if (contador == 4'b0111 ) begin
            temp <= ((cuentaX > izq + 233) & (cuentaX < der + 233) & (cuentaY > top + 340) & (cuentaY < bott + 340)) ? 1 : 0;
        end

        //Casilla 8
        if (contador == 4'b1000 ) begin
            temp <= ((cuentaX > izq + 456) & (cuentaX < der + 456) & (cuentaY > top + 340) & (cuentaY < bott + 340)) ? 1 : 0;
        end

    end

    assign salRect = temp;

endmodule 