module deco(input logic [3:0] IN,
            output logic [6:0] OUT);

always begin
	case(IN)
      4'b0000: OUT = 7'b1111110;
		4'b0001: OUT = 7'b0110000;
		4'b0010: OUT = 7'b1101101;
		4'b0011: OUT = 7'b1111001;
		4'b0100: OUT = 7'b0110011;
		4'b0101: OUT = 7'b1011011;
		4'b0110: OUT = 7'b1011111;
		4'b0111: OUT = 7'b1110000;
		4'b1000: OUT = 7'b1111111;
		4'b1001: OUT = 7'b1110011;
		4'b1010: OUT = 7'b1110111;
		4'b1011: OUT = 7'b0011111;
		4'b1100: OUT = 7'b1001110;
		4'b1101: OUT = 7'b0111101;
		4'b1110: OUT = 7'b1001111;
		4'b1111: OUT = 7'b1000111;
	endcase
end

endmodule 