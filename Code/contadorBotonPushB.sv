module contadorBotonPushB(input botonBuscarCasilla, output logic [3:0] dato);

    logic [3:0] temp = 4'b0000;

    always @(posedge botonBuscarCasilla) begin
        if(temp == 4'b1000) begin
           temp <= 4'b0000; 
        end
        else begin 
            temp <= temp + 1;
        end
    end

    assign dato = temp;

endmodule 