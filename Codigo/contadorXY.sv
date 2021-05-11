module contadorXY(input logic clk25, output [9:0] cuentaX, cuentaY);

    always @(posedge clk25) begin
				
        if (cuentaX == 10'd800) begin //cuando el contador X llega al maximo entonces cuentaX se vuelve 0 y le suma uno al contador y.
            cuentaX <= 0; 
            cuentaY++;

        if (cuentaY == 10'd525) // cuando el contador Y llega a su maximo entonces cuentaY se hace 0.
                cuentaY <= 0;
        end
        
        else
            cuentaX++;
        end

endmodule 