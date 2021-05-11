module controladorVGA(input clk, output logic H_SYNC, V_SYNC, SYNC_B, SYNC_BLANK, output logic [9:0] cuentaX, cuentaY);

    //---------------------Iniciando el contador X y Y-------------------------------------------
								
    contadorXY CXY (clk, cuentaX,cuentaY);
    
    //---------------------Señales Activas en bajo-----------------------------------------------
    
                    //Parte    Porch              Parte     Porch        Sincronizacion
                    //Activa   Horizontal         Activa    Horizontal   Horizontal
    assign H_SYNC = ~(cuentaX > 10'd640 + 10'd16 & cuentaX < 10'd640 + 10'd16 +    10'd96);
    
    
                    //Parte    Porch              Parte     Porch     Sincronización
                    //Activa   Vertical           Activa    Vertical  Vertical
    assign V_SYNC = ~(cuentaY > 10'd480 + 10'd11 & cuentaY < 10'd480 + 10'd11 +  2);
    
    
    assign SYNC_B = H_SYNC & V_SYNC;
    
                        //Parte    						Parte	
                        //Activa H                 Activa V
    assign SYNC_BLANK = (cuentaX < 10'd640 ) & (cuentaY < 10'd480);

endmodule 