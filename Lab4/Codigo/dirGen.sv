module dirGen(input [9:0] pixelx, pixely, posx, posy, output x63, y63, output logic [11:0] direccion);


    logic [9:0] idx, idy;
	
    assign idx = pixelx - posx;
	
    assign idy = pixely - posy;
	
    assign direccion = {idy[5:0], idx[5:0]}; 
	
    assign x63 = (idx > 10'd63);
	
    assign y63 = (idy > 10'd63);

endmodule 