module multiplyTest();
    logic [3:0] a, b; 
    logic [7:0]c;

    multiplicacion DUT(a, b, c);

    initial begin
        #10 a = 4'b1101; b = 4'b1010;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b10000010) else $error ("10000010 failed.");
		  
        #10 a = 4'b1000; b = 4'b0010;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b00010000) else $error ("00010000 failed.");
		  
        #10 a = 4'b1001; b = 4'b0011;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b00011011) else $error ("00011011 failed.");
		  
        #10 a = 4'b1111; b = 4'b0011;
        #1 
        $display("a = %b, b = %b, c = %b\n", a, b, c);
        assert (c === 'b00101101) else $error ("00101101 failed.");	  
    end

endmodule 