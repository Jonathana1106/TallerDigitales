module controlTOP (input logic clk, botonRST, botonContCasilla, botonSelect, input logic [9:0] cuentaX, cuentaY,
                    output logic jugador10, jugador11, jugador12, jugador13, jugador14, jugador15, jugador16, jugador17, jugador18, juegoTerminado,
					output logic [7:0] r, g, b);
			
	logic [3:0] contador;
	
	logic [1:0] contSelect, contadorWrite;

	logic [23:0] rgb0, rgb1, rgb2, rgb3, rgb4, rgb5, rgb6, rgb7, rgb8;
			
	logic visible0, visible1, visible2, visible3, visible4, visible5, visible6, visible7, visible8, visibilidadLineas, rectanguloVisibilidad;

	logic [1:0] rdData0, rdData1, rdData2, rdData3, rdData4, rdData5, rdData6, rdData7, rdData8;

	logic posX0, posY0, posX1, posY1, posX2, posY2, posX3, posY3, posX4, posY4, posX5, posY5, posX6, posY6, posX7, posY7, posX8, posY8;

	//------------------------------Instancia de los componentes del juego--------------------//
	contadorBotonPush botonContador (clk, botonRST, botonContCasilla, contador);

	seleccionadorPAD botonSel (clk, botonRST, botonSelect, contSelect);

	pos_edge_det write (botonSelect, clk, level_out);

	decodificadorPB decodificador (contador, level_out, cero, uno, dos, tres, cuatro, cinco, seis, siete, ocho);

	rectanguloGen seleccionador (clk, botonContCasilla, botonRST, contador, cuentaX, cuentaY, 0, 130, 180, 140, rectanguloVisibilidad);
			
			 
	//------------------------------Casilla 0 --------------------------------------------//
	regCasillaPad memoriaPad0(clk, botonRST, cero, contSelect, rdData0, jugador10, jugador20); // Se guarda en memoria cual sprite va en esa casilla.
	muxSelectPrint casilla0 (clk, 106, 80, cuentaX, cuentaY, rdData0, visible0, rgb0); // Selecciona cual sprite se usará en dicha casilla
	//------------------------------Casilla 1 --------------------------------------------//
	regCasillaPad memoriaPad1(clk, botonRST, uno, contSelect, rdData1, jugador11, jugador21);
	muxSelectPrint casilla1 (clk, 106, 80, cuentaX, cuentaY, rdData0, visible1, rgb1);
	//------------------------------Casilla 2 --------------------------------------------//
	regCasillaPad memoriaPad2(clk, botonRST, dos, contSelect, rdData2, jugador12, jugador22);
	muxSelectPrint casilla2 (clk, 106, 80, cuentaX, cuentaY, rdData0, visible2, rgb2);
	//------------------------------Casilla 3 --------------------------------------------//
	regCasillaPad memoriaPad3(clk, botonRST, tres, contSelect, rdData3, jugador13, jugador23);
	muxSelectPrint casilla3 (clk, 106, 80, cuentaX, cuentaY, rdData0, visible3, rgb3);
	//------------------------------Casilla 4 --------------------------------------------//
	regCasillaPad memoriaPad4(clk, botonRST, cuatro, contSelect, rdData4, jugador14, jugador24);
	muxSelectPrint casilla4 (clk, 106, 80, cuentaX, cuentaY, rdData0, visible4, rgb4);
	//------------------------------Casilla 5 --------------------------------------------//
	regCasillaPad memoriaPad5(clk, botonRST, cinco, contSelect, rdData5, jugador15, jugador25);
	muxSelectPrint casilla5 (clk, 106, 80, cuentaX, cuentaY, rdData0, visible5, rgb5);
	//------------------------------Casilla 6 --------------------------------------------//
	regCasillaPad memoriaPad6(clk, botonRST, seis, contSelect, rdData6, jugador16, jugador26);
	muxSelectPrint casilla6 (clk, 106, 80, cuentaX, cuentaY, rdData0, visible6, rgb6);
	//------------------------------Casilla 7 --------------------------------------------//
	regCasillaPad memoriaPad7(clk, botonRST, siete, contSelect, rdData7, jugador17, jugador27);
	muxSelectPrint casilla7 (clk, 106, 80, cuentaX, cuentaY, rdData0, visible7, rgb7);
	//------------------------------Casilla 8 --------------------------------------------//
	regCasillaPad memoriaPad8(clk, botonRST, ocho, contSelect, rdData8, jugador18, jugador28);
	muxSelectPrint casilla8 (clk, 106, 80, cuentaX, cuentaY, rdData0, visible8, rgb8);

	//------------------------------Lineas--------------------------------------------//
	padGato cuatroLineas (cuentaX, cuentaY, visibilidadLineas);

	//------------------------------Salida RGB MUX--------------------------------------------//
	muxRGB RGBTV (rgb0, rgb1, rgb2, rgb3, rgb4, rgb5, rgb6, rgb7, rgb8, padGato, rectanguloVisibilidad,visible0, visible1, visible2, visible3, visible4, visible5, visible6, visible7, visible8, visibilidadLineas, r, g, b);
			 	
	//------------------------------Instancia de la lógica del juego--------------------//
	maquinaEstadosTTT logicaJuego (clk, botonRST, level_out, {jugador10, jugador11, jugador12, jugador13, jugador14, jugador15, jugador16, jugador17, jugador18}, {jugador20, jugador21, jugador22, jugador23, jugador24, jugador25, jugador26, jugador27, jugador28}, gano);												
	muxGano ganoJugador (gano, juegoTerminado);
																																	 
endmodule
