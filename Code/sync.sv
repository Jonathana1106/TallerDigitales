module sync(input [0:9] pixelN, rowN, output hsync, output vsync, output n_blank);
	
	logic hback_porch;
	logic hfront_porch;
	logic hsync_aux;
	logic vback_porch;
	logic vfront_porch;
	logic vsync_aux;
	
	generate 
		bigComparator #(10) comparador_hfront_porch(pixelN, 10'd639, hfront_porch);
		bigComparator #(10) comparador_hsync(pixelN, 10'd655, hsync_aux);
		bigComparator #(10) comparador_hback_porch(pixelN, 10'd751, hback_porch);
		bigComparator #(10) comparador_vfront_porch(rowN, 10'd479, vfront_porch);
		bigComparator #(10) comparador_vsync(rowN, 10'd490, vsync_aux);
		bigComparator #(10) comparador_vback_porch(rowN, 10'd492, vback_porch);
		
		assign vsync = ~(vsync_aux ^ vback_porch);
		assign hsync = ~(hsync_aux ^ hback_porch);
		assign n_blank = ~(hfront_porch || vfront_porch);
		
	endgenerate
endmodule 