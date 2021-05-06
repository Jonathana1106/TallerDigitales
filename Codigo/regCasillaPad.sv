module regCasillaPad(input logic clk, rst, write, input [1:0] wrData, output [1:0] rdData, output logic jugador1, jugador2);

    logic true;

    logic [15:0] regfile [0:1];

    assign rdData = regfile[0];
    
    initial begin

        regfile[0] <= 2'b10;
        rdData <= 2'b10;

    end


    always @(posedge clk) begin
        
        if (rst) begin
            
            regfile[0] <= 2'b00;

        end
	   
       if (write) begin
           
           regfile[0] <= wrData;

	   end 
       
       else begin
           
           regfile[0] <= regfile[0];

        end
		
		if (regfile[0] == 2'b00) begin
			
			jugador1 = 1'b0;
			jugador2 = 1'b0;
		
		end 
        
        else if (regfile[0] == 2'b01) begin
			
            jugador1 = 1'b1;
			jugador2 = 2'b0;

		end
        
        else begin
			
            jugador1 = 1'b0;
			jugador2 = 1'b1;

		end
	
   end

endmodule 