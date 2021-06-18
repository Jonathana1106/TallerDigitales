module complemento #(parameter M = 4)(input [M-1:0] a, input sub, output [M-1:0] r);

	genvar i;
	
	generate
		for(i = 0; i < M; i++) begin: calcComplemento
			xor valSub (r[i], sub, a[i]);
		end
	endgenerate

endmodule 