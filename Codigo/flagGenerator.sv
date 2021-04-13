module flagGenerator #(parameter M = 4)
                    (input logic [M-1:0] A, B, Sum,
                    input logic [M:0] ALUControl,
                    input logic Cout,
                    output logic Z, N, V, C);

    logic resultZ, resultN, resultV, resultC;
    logic ALUControlNAND;

    always_comb begin
        ALUControlNAND = ~& Sum[M-1:1];
        resultZ = &(~Sum);
        resultN = Sum[M-1];
        resultC = ALUControlNAND & Cout;
        //resultC = Cout;
        resultV = (ALUControl[0] ^ A[M-1] ^ B[M-1] & (A[M-1] ^ Sum[M-1]) & ALUControlNAND);
    end

    assign Z = resultZ;
    assign N = resultN;
    assign V = resultV;
    assign C = resultC;

endmodule 