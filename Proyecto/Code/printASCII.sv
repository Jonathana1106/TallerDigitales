module printASCII(input clk, input [0:9] x, y, input [0:7] char [0:40],
						output logic [7:0] red, green, blue);
						
	parameter img_bytes = 20'd15049;	
	parameter img_cols = 10'd14;	
	parameter img_rows = 10'd25;
	parameter character_bytes = 350;
	logic x0 = 10'd12;
	parameter y0 = (10'd480 - img_rows)/2;
	reg [7:0] fonts [0:img_bytes];
	
	logic [31:0] pixelN;
	logic [10:0] i;
	
	initial begin
		$readmemh ("C:/intelFPGA_lite/18.1/ASCII/fonts.txt", fonts);
	end
	
	always@(clk) begin
		pixelN = 0;
		for(i = 0; i < 40; i++) begin
			if(img_cols + x0 + img_cols*i > x && img_rows + y0 > y && x>x0 + img_cols*i && y>y0 &&
				char[{i}]>8'd0) begin 
				pixelN = character_bytes*(char[{i}]-8'd48) + (y-i-y0)*img_cols + (x-x0);
			end
		end
		
		red <= fonts[{pixelN}];
		green <= fonts[{pixelN}];
		blue <= fonts[{pixelN}];
	end
endmodule 

