module testFrequency #(parameter N = 5)
    (in, clock, reset, out);

	input logic[N-1:0] in; 
	input logic clock, reset;		
	output  logic [N-1:0] out; 

	// ourR1 es la salida del primer registro
	// outALU es la salida del ALU
	logic [N-1:0]  outR1, outALU; 
	
	// para 
	logic [N-1:0]  temp; // para medir el sumadorN, prueba
	
	// vector de seleccion del ALU
	logic [3:0] select; // Vector de seleccion de la Alu
	
	// valores para las 4 banderas del ALU
	logic flag_N, flag_Z, flag_C, flag_V; 
	
	
	assign select = 'b0001; //*****// Valor de seleccion para la Alu_Nbits
	
	register #(N) reg1 (in , clock, reset, outR1); // Definicicion del register_1
	
	//
	alu #(N) ALU(in, in, temp, outALU);// para medir el sumadorN, prueba
	//
	//Alu_Nbits #(N) alunbits (Ao, Bo, outalu, flag_N, flag_Z, flag_C, flag_V);	// Definicicion de la Alu_Nbits
	
	register #(N) reg2 (outALU, ~clock, reset, out); // Definicicion del register_2

endmodule // fin del modulo

//al compilar revisar tambien carpeta "Fitter" luego summary y tomar en cuenta "total registers" ya que se deden incluir.