module flagGeneratorTest();
    parameter M = 4;
    logic [M:0] ALUControl;
    logic [M-1:0] a, b, result;
    logic Cout, Z, N, V, C;

    flagGenerator DUT(a, b, result, ALUControl, Cout, Z, N, V, C);

endmodule 