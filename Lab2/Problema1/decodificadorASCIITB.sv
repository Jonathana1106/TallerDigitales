module decodificadorASCIITB();

    reg[4:0] line;
    reg[6:0] seg;

    initial begin
        line = 5'b00000;
        #10;

        line = 5'b00001;
        #10;

        line = 5'b10000;
        #10;

        line = 5'b01110;
        #10;

    end

endmodule 