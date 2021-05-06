module salida(input logic x, input logic [2:0] estado, output logic [1:0] Y);

    always_comb
	case(estado)
		0: Y = 2'b00; 
		2: Y = 2'b00;
		1: Y = 2'b00; 
		3: Y = 2'b00; 
		4: Y = 2'b00; 
		5: Y = 2'b00;
		6: Y = 2'b10; 
		7: Y = 2'b01; 
		
		default: Y = 2'b00;
	endcase

endmodule 