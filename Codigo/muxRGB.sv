module muxRGB(input logic [23:0] rgb0, rgb1, rgb2, rgb3, rgb4, rgb5, rgb6, rgb7, rgb8, lineas,
                input logic rectanguloVisibilidad, visible0, visible1, visible2, visible3, visible4, visible5, visible6, visible7, visible8, visibilidadLineas,
                output logic [7:0] r, g, b);

    logic [23:0] salidaMUX;


    always @(rectanguloVisibilidad or visible0 or visible1 or visible2 or visible3 or visible4 or visible5 or visible6 or visible7 or visible8 or visibilidadLineas) begin
        case({rectanguloVisibilidad,visible0,visible1,visible2,visible3,visible4,visible5,visible6,visible7,visible8,visibilidadLineas})
					
            10'b00000000000 : salidaMUX <= 24'b000000000000000000000000;
            10'b00000000001 : salidaMUX <= 24'b111111111111111111111111;
            10'b00000000010 : salidaMUX <= rgb8;
            10'b00000000100 : salidaMUX <= rgb7;
            10'b00000001000 : salidaMUX <= rgb6;
            10'b00000010000 : salidaMUX <= rgb5;
            10'b00000100000 : salidaMUX <= rgb4;
            10'b00001000000 : salidaMUX <= rgb3;
            10'b00010000000 : salidaMUX <= rgb2;
            10'b00100000000 : salidaMUX <= rgb1;
            10'b01000000000 : salidaMUX <= rgb0;
            11'b10000000000 : salidaMUX <= 24'b111111110000000011111111;
            default  : salidaMUX <= 24'b000000000000000000000000;
		endcase
	end

    assign r = salidaMUX[23:16];
		
	assign g = salidaMUX[15:8];
		
	assign b = salidaMUX[7:0];

endmodule 