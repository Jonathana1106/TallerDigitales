module controladorVideoVGA (
                            input logic clk,
                            input logic [1:0] pad0,
                            input logic [1:0] pad1,
                            input logic [1:0] pad2,
                            input logic [1:0] pad3,
                            input logic [1:0] pad4,
                            input logic [1:0] pad5,
                            input logic [1:0] pad6,
                            input logic [1:0] pad7,
                            input logic [1:0] pad8,
                            input logic [3:0] selected,
                            output logic H_SYNC,
                            output logic V_SYNC,
                            output logic [7:0] R,
                            output logic [7:0] G,
                            output logic [7:0] B,
                            output logic clk25MHz,
                            output logic SYNC_B,
                            output logic SYNC_BLANK
                            );
	
	// VGA Control ariables
	logic enable_v_counter;
	logic [15:0] h_count_value;
	logic [15:0] v_count_value;
	
	// Sprite variables
	logic [7:0] spriteOR;
	logic [7:0] spriteOG;
	logic [7:0] spriteOB;
	logic [7:0] spriteXR;
	logic [7:0] spriteXG;
	logic [7:0] spriteXB;
	logic [7:0] white;
	logic [7:0] black;
	logic [15:0] address;
	
	// Clock divider
	clock_divider vga_clock_gen (clk, clk25MHz);
	
	// Counters
	horizontal_counter vga_horizontal (clk25MHz, enable_v_counter, h_count_value);
	vertical_counter vga_Vertical (clk25MHz, enable_v_counter, v_count_value);
	
	// Based on VGA standards
	assign H_SYNC = (h_count_value < 96) ? 1'b1:1'b0;
	assign V_SYNC = (v_count_value < 2) ? 1'b1:1'b0;
	
	// Sprite "o" memories
    RAMimg #(16, 8, 40320, "C:/intelFPGA_lite/18.1/TicTacToe/Image processing/spriteOR.mem")
	o_r(clk, address, 0, 16'b0, spriteOR);
	RAMimg #(16, 8, 40320, "C:/intelFPGA_lite/18.1/TicTacToe/Image processing/spriteOG.mem")
	o_g(clk, address, 0, 16'b0, spriteOG);
	RAMimg #(16, 8, 40320, "C:/intelFPGA_lite/18.1/TicTacToe/Image processing/spriteOB.mem")
	o_b(clk, address, 0, 16'b0, spriteOB);
	
	// Sprite "x" memories
	RAMimg #(16, 8, 40320, "C:/intelFPGA_lite/18.1/TicTacToe/Image processing/spriteXR.mem")
	x_r(clk, address, 0, 16'b0, spriteXR);
	RAMimg #(16, 8, 40320, "C:/intelFPGA_lite/18.1/TicTacToe/Image processing/spriteXG.mem")
	x_g(clk, address, 0, 16'b0, spriteXG);
	RAMimg #(16, 8, 40320, "C:/intelFPGA_lite/18.1/TicTacToe/Image processing/spriteXB.mem")
	x_b(clk, address, 0, 16'b0, spriteXBb);
	
	// White
	assign white = 8'hFF;
	assign black = 8'h0;
	

	always @*
	begin		
		// Block 00
		if(h_count_value < 357 && h_count_value > 143 && v_count_value < 195 && v_count_value > 34)
		begin
			if(h_count_value <= 300 && h_count_value >= 200 && v_count_value <= 164 && v_count_value >= 64)
			begin
				address = (h_count_value - 200) + (v_count_value - 64 - 1)*100;
				case (pad0)
					2'b01 :
					begin
						R = spriteOR;
						G = spriteOG;
						B = spriteOB;
					end
					2'b10 :
					begin
						R = spriteXR;
						G = spriteXG;
						B = spriteXBb;
					end
					default :
					begin
						if (selected == 4'b0000)
						begin
							R = 8'h0;
							G = 8'hFF;
							B = 8'hFF;
						end else
						begin
							R = white;
							G = white;
							B = white;
						end
					end
				endcase
			end else
			begin
				if (selected == 4'b0000)
				begin
					R = 8'h0;
					G = 8'hFF;
					B = 8'hFF;
				end else
				begin
					R = white;
					G = white;
					B = white;
				end
			end
		// Block 01
		end else if(h_count_value < 570 && h_count_value > 357 && v_count_value < 195 && v_count_value > 34)
		begin
			if(h_count_value <= 514 && h_count_value >= 414 && v_count_value <= 164 && v_count_value >= 64)
			begin
				address = (h_count_value - 414) + (v_count_value - 64 - 1)*100;
				case (pad1)
					2'b01 :
					begin
						R = spriteOR;
						G = spriteOG;
						B = spriteOB;
					end
					2'b10 :
					begin
						R = spriteXR;
						G = spriteXG;
						B = spriteXBb;
					end
					default :
					begin
						if (selected == 4'b0001)
						begin
							R = 8'h0;
							G = 8'hFF;
							B = 8'hFF;
						end else
						begin
							R = white;
							G = white;
							B = white;
						end
					end
				endcase
			end else
			begin
				if (selected == 4'b0001)
				begin
					R = 8'h0;
					G = 8'hFF;
					B = 8'hFF;
				end else
				begin
					R = 8'hFF;
					G = 8'hFF;
					B = 8'hFF;
				end
			end
		// Block 02
		end else if(h_count_value < 784 && h_count_value > 570 && v_count_value < 195 && v_count_value > 34)
		begin
			if(h_count_value <= 727 && h_count_value >= 627 && v_count_value <= 164 && v_count_value >= 64)
			begin
				address = (h_count_value - 627) + (v_count_value - 64 - 1)*100;
				case (pad2)
					2'b01 :
					begin
						R = spriteOR;
						G = spriteOG;
						B = spriteOB;
					end
					2'b10 :
					begin
						R = spriteXR;
						G = spriteXG;
						B = spriteXBb;
					end
					default :
					begin
						if (selected == 4'b0010)
						begin
							R = 8'h0;
							G = 8'hFF;
							B = 8'hFF;
						end else
						begin
							R = white;
							G = white;
							B = white;
						end
					end
				endcase
			end else
			begin
				if (selected == 4'b0010)
				begin
					R = 8'h0;
					G = 8'hFF;
					B = 8'hFF;
				end else
				begin
					R = 8'hFF;
					G = 8'hFF;
					B = 8'hFF;
				end
			end
		// Block 10
		end else if(h_count_value < 357 && h_count_value > 143 && v_count_value < 355 && v_count_value > 195)
		begin
			if(h_count_value <= 300 && h_count_value >= 200 && v_count_value <= 325 && v_count_value >= 225)
			begin
				address = (h_count_value - 200) + (v_count_value - 225 - 1)*100;
				case (pad3)
					2'b01 :
					begin
						R = spriteOR;
						G = spriteOG;
						B = spriteOB;
					end
					2'b10 :
					begin
						R = spriteXR;
						G = spriteXG;
						B = spriteXBb;
					end
					default :
					begin
						if (selected == 4'b0011)
						begin
							R = 8'h0;
							G = 8'hFF;
							B = 8'hFF;
						end else
						begin
							R = white;
							G = white;
							B = white;
						end
					end
				endcase
			end else
			begin
				if (selected == 4'b0011)
				begin
					R = 8'h0;
					G = 8'hFF;
					B = 8'hFF;
				end else
				begin
					R = 8'hFF;
					G = 8'hFF;
					B = 8'hFF;
				end
			end
		// Block 11
		end else if(h_count_value < 570 && h_count_value > 357 && v_count_value < 355 && v_count_value > 195)
		begin
			if(h_count_value <= 514 && h_count_value >= 414 && v_count_value <= 325 && v_count_value >= 225)
			begin
				address = (h_count_value - 414) + (v_count_value - 225 - 1)*100;
				case (pad4)
					2'b01 :
					begin
						R = spriteOR;
						G = spriteOG;
						B = spriteOB;
					end
					2'b10 :
					begin
						R = spriteXR;
						G = spriteXG;
						B = spriteXBb;
					end
					default :
					begin
						if (selected == 4'b0100)
						begin
							R = 8'h0;
							G = 8'hFF;
							B = 8'hFF;
						end else
						begin
							R = white;
							G = white;
							B = white;
						end
					end
				endcase
			end else
			begin
				if (selected == 4'b0100)
				begin
					R = 8'h0;
					G = 8'hFF;
					B = 8'hFF;
				end else
				begin
					R = 8'hFF;
					G = 8'hFF;
					B = 8'hFF;
				end
			end
		// Block 12
		end else if(h_count_value < 784 && h_count_value > 570 && v_count_value < 355 && v_count_value > 195)
		begin
			if(h_count_value <= 727 && h_count_value >= 627 && v_count_value <= 325 && v_count_value >= 225)
			begin
				address = (h_count_value - 627) + (v_count_value - 225 - 1)*100;
				case (pad5)
					2'b01 :
					begin
						R = spriteOR;
						G = spriteOG;
						B = spriteOB;
					end
					2'b10 :
					begin
						R = spriteXR;
						G = spriteXG;
						B = spriteXBb;
					end
					default :
					begin
						if (selected == 4'b0101)
						begin
							R = 8'h0;
							G = 8'hFF;
							B = 8'hFF;
						end else
						begin
							R = white;
							G = white;
							B = white;
						end
					end
				endcase
			end else
			begin
				if (selected == 4'b0101)
				begin
					R = 8'h0;
					G = 8'hFF;
					B = 8'hFF;
				end else
				begin
					R = 8'hFF;
					G = 8'hFF;
					B = 8'hFF;
				end
			end
		// Block 20
		end else if(h_count_value < 357 && h_count_value > 143 && v_count_value < 515 && v_count_value > 355)
		begin
			if(h_count_value <= 300 && h_count_value >= 200 && v_count_value <= 485 && v_count_value >= 385)
			begin
				address = (h_count_value - 200) + (v_count_value - 385 - 1)*100;
				case (pad6)
					2'b01 :
					begin
						R = spriteOR;
						G = spriteOG;
						B = spriteOB;
					end
					2'b10 :
					begin
						R = spriteXR;
						G = spriteXG;
						B = spriteXBb;
					end
					default :
					begin
						if (selected == 4'b0110)
						begin
							R = 8'h0;
							G = 8'hFF;
							B = 8'hFF;
						end else
						begin
							R = white;
							G = white;
							B = white;
						end
					end
				endcase
			end else
			begin
				if (selected == 4'b0110)
				begin
					R = 8'h0;
					G = 8'hFF;
					B = 8'hFF;
				end else
				begin
					R = 8'hFF;
					G = 8'hFF;
					B = 8'hFF;
				end
			end
		// Block 21
		end else if(h_count_value < 570 && h_count_value > 357 && v_count_value < 515 && v_count_value > 355)
		begin
			if(h_count_value <= 514 && h_count_value >= 414 && v_count_value <= 485 && v_count_value >= 385)
			begin
				address = (h_count_value - 414) + (v_count_value - 385 - 1)*100;
				case (pad7)
					2'b01 :
					begin
						R = spriteOR;
						G = spriteOG;
						B = spriteOB;
					end
					2'b10 :
					begin
						R = spriteXR;
						G = spriteXG;
						B = spriteXBb;
					end
					default :
					begin
						if (selected == 4'b0111)
						begin
							R = 8'h0;
							G = 8'hFF;
							B = 8'hFF;
						end else
						begin
							R = white;
							G = white;
							B = white;
						end
					end
				endcase
			end else
			begin
				if (selected == 4'b0111)
				begin
					R = 8'h0;
					G = 8'hFF;
					B = 8'hFF;
				end else
				begin
					R = 8'hFF;
					G = 8'hFF;
					B = 8'hFF;
				end
			end
		// Block 22
		end else if(h_count_value < 784 && h_count_value > 570 && v_count_value < 515 && v_count_value > 355)
		begin
			if(h_count_value <= 727 && h_count_value >= 627 && v_count_value <= 485 && v_count_value >= 385)
			begin
				address = (h_count_value - 627) + (v_count_value - 385 - 1)*100;
				case (pad8)
					2'b01 :
					begin
						R = spriteOR;
						G = spriteOG;
						B = spriteOB;
					end
					2'b10 :
					begin
						R = spriteXR;
						G = spriteXG;
						B = spriteXBb;
					end
					default :
					begin
						if (selected == 4'b1000)
						begin
							R = 8'h0;
							G = 8'hFF;
							B = 8'hFF;
						end else
						begin
							R = white;
							G = white;
							B = white;
						end
					end
				endcase
			end else
			begin
				if (selected == 4'b1000)
				begin
					R = 8'h0;
					G = 8'hFF;
					B = 8'hFF;
				end else
				begin
					R = 8'hFF;
					G = 8'hFF;
					B = 8'hFF;
				end
			end
		// Any other case
		end else
		begin
			R = black;
			G = black;
			B = black;
		end
	end


	assign SYNC_B = 1'b0;
	assign SYNC_BLANK = 1'b1;
	
endmodule