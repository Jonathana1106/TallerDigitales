module detector3Fila(input [1:0] pos0, pos1, pos2, output wire ganador, output wire [1:0] who);
    
    wire [1:0] temp0, temp1, temp2;
    wire temp3;
    
    assign temp0[1] = !(pos0[1] ^ pos1[1]);
    assign temp0[0] = !(pos0[0] ^ pos1[0]);
    assign temp1[1] = !(pos2[1] ^ pos1[1]);
    assign temp1[0] = !(pos2[0] ^ pos1[0]);
    assign temp2[1] = temp0[1] & temp1[1];
    assign temp2[0] = temp0[0] & temp1[0];
    assign temp3 = pos0[1] | pos0[0];
    
    // ganador if 3 positions are similar and should be 01 or 10 
    assign ganador = temp3 & temp2[1] & temp2[0];
    
    // determine who the ganador is 
    assign who[1] = ganador & pos0[1];
    assign who[0] = ganador & pos0[0];

endmodule 