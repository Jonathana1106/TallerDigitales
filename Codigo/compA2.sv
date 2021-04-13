module  compA2 (A,  S);
		input logic[3:0] A;
		logic [4:0] t;
		logic [3:0] B = 4'b0001;
	
    	output logic [3:0] S;
		
		adder4bits Bit0(~A, B, S);

endmodule 