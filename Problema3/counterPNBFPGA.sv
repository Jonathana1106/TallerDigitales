module counterPNBFPGA(input logic clk, reset, 
                      //output logic [5:0] q,
                      output logic [6:0] seg0, 
                      output logic [6:0] seg1, 
                      output logic [6:0] seg2, 
                      output logic [6:0] seg3, 
                      output logic [6:0] seg4, 
                      output logic [6:0] seg5);
							 
	assign seg5 = 7'b0000110;
	assign seg4 = 7'b1001100;
	assign seg3 = 7'b1001100;
	assign seg2 = 7'b1000000;
	assign seg1 = 7'b1001100;
	assign seg0 = 7'b0010100;
	

    /**
	 always_ff @( posedge clk, posedge reset )
        if(reset) begin
            q <= 'b000000; 
        end
        else begin
            q <= q + 'b000001;

            if (q[0] === 'b1) begin
                assign seg0 = 7'b100000;
            end
            else begin
                assign seg0 = 7'b000110;
            end
            
            if (q[1] === 'b1) begin
                assign seg1 = 7'b100000;
            end
            else begin
                assign seg1 = 7'b000110;
            end

            if (q[2] === 'b1) begin
                assign seg2 = 7'b100000;
            end
            else begin
                assign seg2 = 7'b000110;
            end

            if (q[3] === 'b1) begin
                assign seg3 = 7'b100000;
            end
            else begin
                assign seg3 = 7'b000110;
            end

            if (q[4] === 'b1) begin
                assign seg4 = 7'b100000;
            end
            else begin
                assign seg4 = 7'b000110;
            end

            if (q[5] === 'b1) begin
                assign seg5 = 7'b100000;
            end
            else begin
                assign seg5 = 7'b000110;
            end
            
    end **/

endmodule 