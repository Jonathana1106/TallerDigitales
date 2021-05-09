module seleccionadorPAD(input botonSeleccionarCasilla, rst, output Xp, Op);

    logic X = 1'b1;
    logic O = 1'b0;

    assign Xp = X;
    assign Op = O;

    always @(posedge botonSeleccionarCasilla, posedge rst) begin
        if(rst) begin
            X = 1'b1;
            O = 1'b0;
        end
        else  begin
            X <= ~X;
            O <= ~ O;
        end
    end

endmodule 