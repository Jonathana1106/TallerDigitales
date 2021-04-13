module subTest();

    logic [3:0] A, B; 
	logic [4:0] S;

    sub4bits DUT(A, B, S);

    initial begin
        #10 A = 4'b1101; B = 4'b0001;
        #1 
        $display("A = %b, B = %b, S = %b\n", A, B, S);
        assert (S === 'b11100) else $error ("11100 failed.");
		  
        #10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b\n",A, B, S);
        assert (S === 'b10110) else $error ("10110 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b\n", A,B,S);
        assert (S === 'b10110) else $error ("10110 failed.");
		  
        #10 A = 4'b0011; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b\n", A,B,S);
        assert (S === 'b01100) else $error ("01100 failed.");	  
    end
    
endmodule 