module visibleLogic(input x63, y63, input logic [2:0] color, output visible);

    logic background;
    
    assign background = (color == 3'd0); 
    
    assign visible = ~background && ~(x63 | y63);

endmodule 