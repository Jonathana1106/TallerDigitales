module bigComparator #(parameter M = 5) (input wire [M-1:0] a, input wire [M-1:0] b, output reg bigger);

	always @* begin
		if (a > b) begin
        bigger = 1;
      end
      else begin
        bigger = 0;
      end
    end
endmodule 