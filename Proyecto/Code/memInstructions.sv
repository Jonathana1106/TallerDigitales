module memInstructions(input logic [31:0] a, output logic [31:0] rd);

	logic [31:0] RAM[88:0];
	
	initial
		$readmemh("C:/intelFPGA_lite/18.1/ASCII/memfile.hex", RAM);
	assign rd = RAM[a[31:2]]; // word aligned
	
endmodule 