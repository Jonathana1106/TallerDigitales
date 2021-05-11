module estadoActual #(parameter N = 3) (input logic clk, rst, input logic [N-1:0] D, output logic [N-1:0] Q);

    always_ff @( posedge clk, posedge rst) begin

        if(rst)
            Q <= 'b0;
        else
            Q <= D;
    
    end

endmodule 