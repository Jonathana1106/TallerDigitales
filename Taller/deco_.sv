module deco_(input a, input b,
             output F0, output F1, output F2, output F3);

logic [1:0] IN;
logic [3:0] OUT;

assign IN = {a, b};

always_comb begin
    case (IN)
    2'b00: OUT = 4'b0001;
     2'b01: OUT = 4'b0010;
     2'b10: OUT = 4'b0100;
     2'b11: OUT = 4'b1000;
     endcase
end
     
assign {F3, F2, F1, F0} = OUT;
                 
endmodule