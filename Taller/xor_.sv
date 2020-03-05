module xor_(input a, input b, output c);
				
logic w1, w2, w3, w4;

not_ N1(a, w1);
not_ N2(b, w2);

and_ A1(b, w1, w3);
and_ A2(a, w2, w4);

or_ O1(w3, w4, c);

				
endmodule