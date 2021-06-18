`timescale 1ns/1ns
module TOP(input clock_50, input switch1, switch2, switch3, switch4, switch5,
				output [7:0] R, G, B,
				output hsync, vsync, n_blank, vgaclock);
	
	logic [0:7] char [0:40];
	logic clock_25;
	logic reset;
	logic [31:0] WriteData, DataAdr;
	logic MemWrite;
	
	generate 
		procesador arm(clock_50, reset, switch1,  switch2, switch3, switch4, switch5, WriteData, DataAdr, MemWrite);	
		vgaRAM vgaram(reset, WriteData, clock_25, DataAdr, clock_50, MemWrite, char);
		clk25MH clock(clock_50, clock_25);				
		controladorVideoVGA vga(clock_25, 0, char, R, G, B, hsync, vsync, n_blank);
		
		assign vgaclock = clock_25;
	
	endgenerate
	
	initial begin
		reset <= 1; # 10; reset <= 0;
	end
endmodule 