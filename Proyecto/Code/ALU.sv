module ALU #(parameter M = 32)(input [M-1:0] A, B, input logic [3:0] ALUOp, output logic [M-1:0] resultado, output logic [3:0] flags);

	 logic N;
	 logic Z;
	 logic V;
	 logic C;

	logic [M-1:0] OutSumador;
	logic CSumador,VSumador;
	addsub #(.M(M)) Sumador(A, B, OutSumador, 0, CSumador, VSumador);
	
	logic [M-1:0] OutAND;
	logic CAND,VAND;
	andGate #(M) AND(A, B, OutAND, VAND, CAND);
	
	
	logic [M-1:0] OutOR;
	logic COR,VOR;
	orGate #(M) OR(A, B, OutOR, VOR, COR);
	
	
	logic [M-1:0] OutXOR;
	logic CXOR,VXOR;
	xorGate #(M) XOR(A, B, OutXOR, VXOR, CXOR);
	

	always_comb begin  
      case (ALUOp)
			4'b0000, 4'b0001 : begin
				resultado = OutSumador;
				C <= CSumador;
				V <= VSumador;
			end
			
			4'b0010 : begin
				resultado = OutAND;
				C <= CAND;
				V <= VAND;	
			end
			
			4'b0011 :begin
				resultado = OutOR;
				C <= COR;
				V <= VOR;
			end
			
			4'b0100 :begin
				resultado = OutXOR;
				C <= CXOR;
				V <= VXOR;
			end
			
			4'b0101 :begin
				resultado = ~A;
				C <= 0;
				V <= 0;
			end
			
			default: begin
				resultado = OutAND;
				C <= CAND;
				V <= VAND;
			end
      endcase 
	
		N <= resultado[M-1];
		Z <= ~|resultado;
		
   end
	
	assign flags = {N, Z, C, V};
	
endmodule 