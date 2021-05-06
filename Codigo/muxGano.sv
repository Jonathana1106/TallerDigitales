module muxGano(input logic [1:0] gano, output logic juegoTerminado);

    always_ff @( gano[0] or gano[1] ) begin
        if(gano == 2'b10) begin
            juegoTerminado <= 1;
        end

        if(gano == 2'b01) begin
            juegoTerminado <= 0;
        end
    end

endmodule 