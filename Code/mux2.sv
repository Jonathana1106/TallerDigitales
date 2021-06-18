module mux2 #(parameter M = 8) (input logic [M-1:0] d0, d1, input logic s, output logic [M-1:0] q);
	
	assign q = s ? d1 : d0;	
	
endmodule 