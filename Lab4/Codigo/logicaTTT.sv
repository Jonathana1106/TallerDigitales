module logicaTTT(input logic [2:0] estado , input logic [8:0] j1, j2, input logic D, rst, output logic x);

    logic ganaj1, ganaj2, validaj1, validaj2;
    logic [8:0] pad;

    verificarGane vgj1(j1, ganaj1);
    jugadaValida jvj1(pad, j1, validaj1);
    verificarGane vgj2(j2, ganaj2);
    jugadaValida jvj2(pad, j2, validaj2);

    always_comb begin

        case(estado)
            0: x = D;
            1: x = validaj1;
            2: x = ganaj1;
            3: x = D;
            4: x = validaj2;
            5: x = ganaj2;
            6: x = rst;
            7: x = rst;
            default: x = 0;
	    endcase
        
    end

    assign pad = j1 | j2;

endmodule 