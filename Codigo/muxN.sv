module  muxN #(parameter N = 4)(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,ALUControl,Q);

    input logic [N:0] I0,I1,I2,I3,I4,I5,I6,I7,I8,I9;
	input logic [3:0] ALUControl;
	output logic [N:0] Q;
	
    always @(ALUControl)begin
		case(ALUControl)
			0:Q<=I0;
			1:Q<=I1;
			2:Q<=I2;
			3:Q<=I3;
			4:Q<=I4;
			5:Q<=I5;
			6:Q<=I6;
			7:Q<=I7;
			8:Q<=I8;
			9:Q<=I9;
			default:Q<=I0;
		endcase
	end
endmodule 