module equalComparator #(parameter M = 5)(input wire [M-1:0] a, input wire [M-1:0] b, output reg equals);

	always @* begin
		if (a == b) begin
        equals = 1;
      end
      else begin
        equals = 0;
      end
    end
	 
endmodule 