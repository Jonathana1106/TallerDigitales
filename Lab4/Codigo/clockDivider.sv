module clockDivider(input logic clk, output logic clock_25);

    reg[15:0] cont;

    always @(posedge clk) begin
        // El clock de la DE1-SoC es de 50MHz, para llegar a 25MHz se debe dividir por 2-> (2^(16))/2 = 32768 -> Hex = 8000;
        {clock_25, cont} <= cont + 16'h8000;
        
    end

endmodule 