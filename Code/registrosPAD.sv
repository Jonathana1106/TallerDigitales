module registrosPAD(input clk, rst, jugadaIlegal, input [8:0] jugador2Habilitado, input [8:0] jugador1Habilitado, output reg[1:0] pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8);
    // Position 1 
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pos0 <= 2'b00;
        end
        else begin
            if(jugadaIlegal==1'b1) begin
                pos0 <= pos0;
            end
            else if(jugador2Habilitado[0] == 1'b1) begin 
                pos0 <= 2'b10;
            end
            else if (jugador1Habilitado[0] == 1'b1) begin
                pos0 <= 2'b01;
            end
            else begin 
                pos0 <= pos0;
            end
        end 
    end 
    
    // Position 2 
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pos1 <= 2'b00;
        end
        else begin
            if(jugadaIlegal == 1'b1) begin
                pos1 <= pos1;
            end
            else if(jugador2Habilitado[1] == 1'b1) begin 
                pos1 <= 2'b10;
            end
            else if (jugador1Habilitado[1] == 1'b1) begin 
                pos1 <= 2'b01;
            end
            else begin 
                pos1 <= pos1;
            end
        end 
    end 
    
    // Position 3 
    always @(posedge clk or posedge rst) begin
        if(rst) begin 
            pos2 <= 2'b00;
        end
        else begin
            if(jugadaIlegal == 1'b1) begin 
                pos2 <= pos2;
            end
            else if(jugador2Habilitado[2] == 1'b1) begin 
                pos2 <= 2'b10;
            end
            else if (jugador1Habilitado[2] == 1'b1) begin 
                pos2 <= 2'b01;
            end
            else begin 
                pos2 <= pos2;
            end
        end 
    end 
    
    // Position 4 
    always @(posedge clk or posedge rst) begin
        if(rst) begin 
            pos3 <= 2'b00;
        end
        else begin
            if(jugadaIlegal == 1'b1) begin
                pos3 <= pos3;
            end
            else if(jugador2Habilitado[3] == 1'b1) begin
                pos3 <= 2'b10;
            end
            else if (jugador1Habilitado[3] == 1'b1) begin
                pos3 <= 2'b01;
            end
            else begin 
                pos3 <= pos3;
            end
        end 
    end 
    
    // Position 5 
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pos4 <= 2'b00;
        end
        else begin
            if(jugadaIlegal == 1'b1) begin
                pos4 <= pos4;
            end
            else if(jugador2Habilitado[4] == 1'b1) begin
                pos4 <= 2'b10;
            end
            else if (jugador1Habilitado[4] == 1'b1) begin
                pos4 <= 2'b01;
            end
            else begin
                pos4 <= pos4;
            end
        end 
    end 
    
    // Position 6 
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pos5 <= 2'b00;
        end
        else begin
            if(jugadaIlegal == 1'b1) begin
                pos5 <= pos5;
            end
            else if(jugador2Habilitado[5] == 1'b1) begin
                pos5 <= 2'b10;
            end
            else if (jugador1Habilitado[5] == 1'b1) begin
                pos5 <= 2'b01;
            end
            else begin
                pos5 <= pos5;
            end
        end 
    end 
    
    // Position 7 
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pos6 <= 2'b00;
        end
        else begin
            if(jugadaIlegal == 1'b1) begin
                pos6 <= pos6;
            end
            else if(jugador2Habilitado[6] == 1'b1) begin
                pos6 <= 2'b10;
            end
            else if (jugador1Habilitado[6] == 1'b1) begin
                pos6 <= 2'b01;
            end
            else begin
                pos6 <= pos6;
            end
        end 
    end 
    
    // Position 8 
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pos7 <= 2'b00;
        end
        else begin
            if(jugadaIlegal == 1'b1) begin
                pos7 <= pos7;
            end
            else if(jugador2Habilitado[7] == 1'b1) begin
                pos7 <= 2'b10;
            end
            else if (jugador1Habilitado[7] == 1'b1) begin
                pos7 <= 2'b01;
            end
            else begin
                pos7 <= pos7;
            end
        end 
    end 
    
    // Position 9 
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pos8 <= 2'b00;
        end
        else begin 
            if(jugadaIlegal == 1'b1) begin
                pos8 <= pos8;
            end
            else if(jugador2Habilitado[8] == 1'b1) begin
                pos8 <= 2'b10;
            end
            else if (jugador1Habilitado[8] == 1'b1) begin
                pos8 <= 2'b01;
            end
            else begin
                pos8 <= pos8;
            end
        end 
    end  
endmodule 