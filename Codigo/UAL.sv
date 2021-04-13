module UAL #(parameter M = 4)
            (input logic [M-1:0] A, B, 
            input logic [M:0] ALUControl, 
            output logic [M-1:0] Q,
            //output logic Z, N, C, V);	

    logic [M-1:0] I0, I1, I2, I3, I4, I5, I6, I7, I8, I9;
	
   adder4bits 			sumador			(A, B, I0);
	sub4bits 			restador			(A, B, I1);
	multiplicacion	#(M) mult			(A, B, I2);
	division 		#(M) div				(A, B, I3);
	modulo 			#(M) residuo		(A, B, I4);
	andN 				#(M) andGate		(A, B, I5);
	orN 				#(M) orGate			(A, B, I6);
	xorGate 			#(M) xorG			(A, B, I7);
	sll 				#(M) sll_module	(A, B, I8);
	srl 				#(M) srl_module	(A, B, I9);
	muxN 				#(M) muxGate		(I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, ALUControl, R);
	
	
endmodule 