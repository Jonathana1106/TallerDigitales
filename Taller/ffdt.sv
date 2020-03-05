module ffdt(input clk, input rst, input D,
				output Q);
				
logic out;
// va a reaccionar a un flanco positivo
// un reset asincronico, investigar bien diferencia

always_ff @(posedge clk, posedge rst) begin
// siempre reset a un sistema secuencial porque no sabemos que habia antes
	if (rst) out <= 1'b0;
					//<= asignacion no bloqueante, deberian usarse para logica combinacional
					//= asignacion bloqueante
	else out <= D;

end
	
assign Q = out;

endmodule