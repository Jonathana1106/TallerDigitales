module counterTB();

    parameter N = 2;
    logic clk, reset;
    logic [N-1:0] q;

    counterPNB #(N) counter(clk, reset, q);
	 
    always begin
      clk = 0;
      #5;
      clk = 1;
      #5;
    end
	 
	 initial begin
      reset = 1; #5; // 5
      assert (q === 'b00) else   $error ("00 failed.");
		reset = 1; #5; // 10
      assert (q === 'b00) else   $error ("00 failed.");
		reset = 0; #5; // 15
      assert (q === 'b00) else   $error ("00 failed.");
      reset = 0; #5; // 20
      assert (q === 'b01) else   $error ("01 failed.");
		reset = 0; #5; // 25
      assert (q === 'b01) else   $error ("01 failed.");
		reset = 0; #5; // 30
      assert (q === 'b10) else   $error ("10 failed.");
      reset = 0; #5; // 35
      assert (q === 'b10) else   $error ("10 failed.");
		reset = 0; #5; // 40
      assert (q === 'b11) else   $error ("11 failed.");
      reset = 0; #5; // 45
      assert (q === 'b11) else   $error ("11 failed.");
		reset = 1; #5; //50 
      assert (q === 'b00) else   $error ("00 failed.");
      reset = 1; #5; // 55
      assert (q === 'b00) else   $error ("00 failed.");
		reset = 0; #5; // 60
      assert (q === 'b01) else   $error ("01 failed.");
      reset = 0; #5; // 65
      assert (q === 'b01) else   $error ("01 failed.");
		reset = 0; #5; // 70
      assert (q === 'b10) else   $error ("10 failed.");
		reset = 1; #5; // 75
      assert (q === 'b00) else   $error ("00 failed.");
		reset = 1; #5; // 80
      assert (q === 'b00) else   $error ("00 failed.");
      reset = 0; #5; // 85
      assert (q === 'b00) else   $error ("00 failed.");
      reset = 1; #5; // 90
      assert (q === 'b00) else   $error ("00 failed.");
      #5; // 95

    end 
    
endmodule 