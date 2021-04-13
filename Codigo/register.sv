module register #(parameter N = 4)(in, clk, rst, out);

    input logic in[N-1:0];
	input logic clk;
	input logic rst;
	output logic out[N-1:0];
	
	always_ff @(posedge clk, posedge rst)
        if (rst)
			out <= 'b0;			
		else 
			out <= in;

endmodule 