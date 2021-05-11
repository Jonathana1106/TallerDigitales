/*

*/
module clock_divider #(parameter div_value = 0) (input logic clk, output logic divided_clk = 0);

	integer counter_value = 0;

	always @ (posedge clk)  begin
		if (counter_value == div_value) begin
            counter_value = 0;
			divided_clk = ~divided_clk;
		end
		else begin
			counter_value = counter_value + 1;
		end
	end
endmodule 

// module clock_divider #(parameter div_value = 49999999)( //make div_value global
// 	input logic clk, //100MHz
// 	output reg divided_clk=0//1Hz
// );

// //division_value = [100Mhz/(2*desired Frequency)] - 1
// //counter
// integer counter_value =0;//32 bits wide reg bus
// always@ (posedge clk)//sensitivity list //rising edge 0-1
// begin
// 	//kep counting until div_value
// 	if(counter_value==div_value)
// 		counter_value<=0;//reset value
// 	else
// 		counter_value<=counter_value+1; //count up
// end
// //divide clock
// always@ (posedge clk)
// begin
// 	if(counter_value==div_value)
// 		divided_clk<=~divided_clk;//Flip the signal
// 	else
// 		divided_clk<=divided_clk; //Store value
// end
// endmodule 