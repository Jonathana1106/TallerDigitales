module procesador(input logic clk, reset, sw1, sw2, sw3, sw4, sw5,
						output logic [31:0] WriteData, DataAdr,
						output logic MemWrite);
	
	logic [31:0] PC, Instr, ReadData;
	
	ARM arm(clk, reset, PC, Instr, MemWrite, DataAdr, WriteData, ReadData);
	memInstructions imem(PC, Instr);
	memData dmem(clk, sw1, sw2, sw3, sw4, sw5, DataAdr, ReadData);
endmodule 