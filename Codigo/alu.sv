module alu #(parameter N = 4)(A, B, ALUControl, Q, F);
    input logic[N-1:0] A, B;
	input logic[4:0] ALUControl;
	output logic[N-1:0] Q;
	output logic[4:0] F;
	wire [N:0] I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, R;
	
    //reg Q;
	//Operadores
	
    adder4bits 			sumador			(A, B, I0);
	sub4bits 			restador		(A, B, I1);
	multiplicacion	#(N) mult			(A, B, I2);
	division 		#(N) div			(A, B, I3);
	modulo 			#(N) residuo		(A, B, I4);
	andN 			#(N) andGate		(A, B, I5);
	orN 			#(N) orGate			(A, B, I6);
	xorGate 		#(N) xorG			(A, B, I7);
	sll 			#(N) sll_module		(A, B, I8);
	srl 			#(N) srl_module		(A, B, I9);
	muxN 			#(N) muxGate		(I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, ALUControl, R);
	//assign 
	
    always @(Q, R) begin
		Q <= R[3:0];
	end
	
    //flag_generator #(N) flag_generator_module (a, b, R[4], ALUControl, cout, Z, N, V, C);
	
endmodule 