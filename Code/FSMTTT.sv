module FSMTTT(input clk, rst, j1, j2, movimientoIlegal, noEspacio, gane, output reg jugador2Juega, jugador1Juega);
    
    parameter INICIO=2'b00;
    parameter JUGADOR1=2'b01;
    parameter JUGADOR2=2'b10;
    parameter JUEGOFINALIZADO=2'b11;

    reg[1:0] estadoActual, siguienteEstado;
    
    always @(posedge clk or posedge rst) begin 
        if(rst) begin 
            estadoActual <= INICIO;
        end
        else begin
           estadoActual <= siguienteEstado; 
        end
    end 

    always @(*) begin
        case(estadoActual)
            INICIO : begin 
                if(rst==1'b0 && j1 == 1'b1) begin 
                    siguienteEstado <= JUGADOR1;
                end
                else begin 
                    siguienteEstado <= INICIO;
                    jugador1Juega <= 1'b0;
                    jugador2Juega <= 1'b0;
                end
            end 
            JUGADOR1 : begin 
                jugador1Juega <= 1'b1;
                jugador2Juega <= 1'b0;
                if(movimientoIlegal==1'b0) begin
                    siguienteEstado <= JUGADOR2;
                end
                else begin 
                    siguienteEstado <= INICIO;
                end
            end 
            JUGADOR2 : begin 
                jugador1Juega <= 1'b0;
                if(j2==1'b0) begin 
                    siguienteEstado <= JUGADOR2;
                    jugador2Juega <= 1'b0;
                end
                else if(gane == 1'b0 && noEspacio == 1'b0) begin 
                    siguienteEstado <= INICIO;
                    jugador2Juega <= 1'b1;
                end 
                else if(noEspacio == 1 || gane == 1'b1) begin 
                    siguienteEstado <= JUEGOFINALIZADO;
                    jugador2Juega <= 1'b1;
                end  
            end 
            JUEGOFINALIZADO : begin 
                jugador1Juega <= 1'b0;
                jugador2Juega <= 1'b0; 
                if(rst==1'b1) begin 
                    siguienteEstado <= INICIO;
                end
                else begin 
                    siguienteEstado <= JUEGOFINALIZADO;  
                end 
            end
            default: siguienteEstado <= INICIO; 
        endcase
    end
endmodule 