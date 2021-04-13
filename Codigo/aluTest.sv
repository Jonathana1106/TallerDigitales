module aluTest();

    logic[3:0] A, B;//Entradas
	logic [3:0] Q;//Resultado
	logic[3:0] S; ///Selector de operadores
	wire [3:0] w1,w2; //Decenas y Unidades del rsultado
	logic[4:0] F; //Flags
	//logic[7:0] Disp1,Disp2; //Display de 7 segmentos
	//alu #(4) alu_module(A, B,S, Q, F);
	//multiplicacion #(4) mult_module(Q[3:0],4'b1010,w1);//Calcular Decenas
	//modulo #(4) mod_module(Q[3:0],4'b1010,w2);//Calcular unidades
	//decoderBCD decodificador1(w1,Disp1);// Decodificador para Decenas
	//decoderBCD decodificador2(w2,Disp2);// Decodificador para Unidades
    
    alu DUT(A, B,S, Q, F);

	initial begin
        #10 A = 4'b0100; B = 4'b0011; S=4'b0000;
        #1 
		$display("---------------SUMADOR---------------");
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0111) else $error ("0111 failed.");
		  
		#10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1010) else $error ("1010 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1100) else $error ("1100 failed.");
		  
        #10 A = 4'b1111; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0010) else $error ("Q0010 failed.");//vERIFICAR FLAG ACARREO
		  
		  
		#10 S=4'b0001; A = 4'b0100; B = 4'b0011;
        #1 
		$display("---------------RESTADOR---------------");
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0001) else $error ("0001 failed.");
		  
		#10 A = 4'b1000; B = 4'b0010;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b1001; B = 4'b0011;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b0110) else $error ("0110 failed.");
		  
        #10 A = 4'b0011; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1100) else $error ("1100 failed."); //VERIFICAR FLAG NEGATIVO
		  
		  
		#10 S=4'b0010;
        #1 
		$display("---------------MULTIPLICACION---------------");
        //$display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        //assert (Q === 'b0001) else $error ("0001 failed.");
		  
		#10 S=4'b0011;
        #1 
		$display("---------------DIVISION---------------");
        //$display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        //assert (Q === 'b0001) else $error ("0001 failed.");
		  
		#10 S=4'b0100;
        #1 
		$display("---------------MODULO---------------");
        //$display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        //assert (Q === 'b0001) else $error ("0001 failed.");
		  
		#10 S=4'b0101;
        #1 
		$display("---------------AND GATE---------------");
        //$display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        //assert (Q === 'b0001) else $error ("0001 failed.");
		  
		#10 S=4'b0110;A = 4'b1101; B = 4'b1010;
        #1 
		
        $display("---------------OR GATE---------------");
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b1010; B = 4'b1111;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1111) else $error ("1111 failed.");
        #10 A = 4'b0101; B = 4'b1101;
        #1 
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1101) else $error ("1101 failed.");
        #10 A = 4'b1000; B = 4'b1001;
        #1
        $display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        assert (Q === 'b1001) else $error ("1001 failed.");
		  
		  
		#10 S=4'b0111;
        #1 
		$display("---------------NOR GATE---------------");
        //$display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        //assert (Q === 'b0001) else $error ("0001 failed.");
		  
		#10 S=4'b1000;
        #1 
		$display("---------------SHIFT LEFT---------------");
        //$display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        //assert (Q === 'b0001) else $error ("0001 failed.");
		  
		#10 S=4'b1001;
        #1 
		$display("---------------SHIFT RIGHT---------------");
        //$display("A = %b, B = %b, S = %b, Q = %b\n", A, B, S,Q);
        //assert (Q === 'b0001) else $error ("0001 failed.");
	end

endmodule 