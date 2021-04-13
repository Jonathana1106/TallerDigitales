module sub4bits (A, B, S);

    wire [4:1] C;
	logic [3:0] Q;
	input logic[3:0] A,B;
	output logic [4:0] S;
	logic [4:0] Temp;
	
    adder1bit Bit0(A[0], ~B[0], 1'b1, C[1], Temp[0]);
	adder1bit Bit1(A[1], ~B[1], C[1], C[2], Temp[1]);
	adder1bit Bit2(A[2], ~B[2], C[2], C[3], Temp[2]);
	adder1bit Bit3(A[3], ~B[3], C[3], Temp[4], Temp[3]);
	
    compA2 compl(Temp[3:0], Q);
	
    always @(S, Q) begin
		if(Temp[4]==0)
		begin
			S[3:0] <= Q;
			S[4] <= Temp[4];
		end
		else
			S <= Temp;
	end
endmodule 