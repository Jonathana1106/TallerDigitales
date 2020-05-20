module counter #(parameter N = 4)
	(input logic clk, input logic reset,
	output logic [N-1:0] q);
	
	logic rst;
	
	assign rst = ~reset;
	
	always_ff @(posedge clk, posedge rst) begin
	
	if(rst) q <= 0;
	else q <= q + 1;
	end
	
endmodule 