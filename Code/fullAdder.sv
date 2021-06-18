module fullAdder (input a, b, cin, output resultado, cout);

	logic w1, w2, w3;
	
	xor axorb (w1, a, b);
	xor w1xorcin (resultado, w1, cin);
	and w1andcin (w2, w1, cin);
	and aandb (w3, a, b);
	or	w1orw2 (cout, w2, w3);

endmodule 