module decodificadorPB(input logic [3:0] posicionInput, input logic boton, output logic cero, uno, dos, tres, cuatro, cinco, seis, siete, ocho);

    initial begin
        cero <= 1'b0;
		uno <= 1'b0;
		dos <= 1'b0;
		tres <= 1'b0;
		cuatro <= 1'b0;
		cinco <= 1'b0;
		seis <= 1'b0;
		siete <= 1'b0;
		ocho <= 1'b0;
    end


    always @(posicionInput[0] or posicionInput[1] or posicionInput[2] or posicionInput[3] or boton ) begin
        if(posicionInput == 4'b0000 && boton == 1 ) begin // para casilla 0
            
            cero <= 1'b1;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
		
        end else if (posicionInput == 4'b0000 ) begin // para casilla 0
			
            cero <= 1'b0;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
				
			
			
		end else if(posicionInput == 4'b0001 && boton == 1) begin //Casilla 1
			
            cero <= 1'b0;
				uno <= 1'b1;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
				
		end else if(posicionInput == 4'b0001) begin // Casilla 1
			
            cero <= 1'b0;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;

        end else if(posicionInput == 4'b0010 && boton == 1) begin //Casilla 2
        
            uno <= 1'b0;
            cero <= 1'b0;         
            dos <= 1'b1;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
            
        end else if(posicionInput == 4'b0010) begin // Casilla 2
        
            cero <= 1'b0;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
        
        end else if(posicionInput == 4'b0011 && boton == 1) begin //Casilla 3
        
            uno <= 1'b0;
            cero <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b1;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
				
        end else if(posicionInput == 4'b0011) begin // Casilla 3
        
            cero <= 1'b0;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
        
        end else if(posicionInput == 4'b0100 && boton == 1) begin //Casilla 4
        
            uno <= 1'b0;
            cero <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b1;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
            
        end else if(posicionInput == 4'b0100) begin // Casilla 4
        
            cero <= 1'b0;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
        
        end else if(posicionInput == 4'b0101 && boton == 1)begin //Casilla 5
        
            uno <= 1'b0;
            cero <= 1'b0;         
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b1;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
            
        end else if(posicionInput == 4'b0101) begin // Casilla 5
        
            cero <= 1'b0;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
			
        end else if(posicionInput == 4'b0110 && boton == 1) begin //Casilla 6
        
            uno <= 1'b0;
            cero <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b1;
            siete <= 1'b0;
            ocho <= 1'b0;
            
        end else if(posicionInput == 4'b0110) begin // Casilla 6
        
            cero <= 1'b0;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
				
        end else if(posicionInput == 4'b0111 && boton == 1)begin //Casilla 7
        
            uno <= 1'b0;
            cero <= 1'b0;         
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b1;
            ocho <= 1'b0;
            
        end else if(posicionInput == 4'b0111) begin // Casilla 7
        
            cero <= 1'b0;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
			
        end else if(posicionInput == 4'b1000 && boton == 1) begin //Casilla 8
        
            uno <= 1'b0;
            cero <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b1;
            
        end else if(posicionInput == 4'b1000) begin // Casilla 8
        
            cero <= 1'b0;
            uno <= 1'b0;
            dos <= 1'b0;
            tres <= 1'b0;
            cuatro <= 1'b0;
            cinco <= 1'b0;
            seis <= 1'b0;
            siete <= 1'b0;
            ocho <= 1'b0;
			
			
		end else begin

            cero <= 1'b0;
			uno <= 1'b0;
			dos <= 1'b0;
		    tres <= 1'b0;
			cuatro <= 1'b0;
			cinco <= 1'b0;
			seis <= 1'b0;
			siete <= 1'b0;
			ocho <= 1'b0;
				
		end
			
	end

endmodule 