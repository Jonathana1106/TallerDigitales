module contadorBotonPush(input clk, n_reset, button_in, output logic [3:0] counter);

    reg DB_out;
    reg [6:0] segData;
    reg [3:0] contReg;

    parameter N = 11 ;      
  
    reg  [N-1 : 0]  delaycount_reg;                     
    reg  [N-1 : 0]  delaycount_next;
      
    reg DFF1, DFF2;                                 
    wire q_add;                                     
    wire q_reset;

    reg  delay_reg ; // Registers for detecting level change of DB_out
    wire level_out;

    always @ ( posedge clk or negedge n_reset )
        begin
            if(n_reset ==  0) // At reset initialize FF and counter 
                begin
                    DFF1 <= 1'b0;
                    DFF2 <= 1'b0;
                    // For level change detection
                    delay_reg  <=  1'b0;
                    delaycount_reg <= { N {1'b0} };
                end
            else
                begin
                    DFF1 <= button_in;
                    DFF2 <= DFF1;
                    delaycount_reg <= delaycount_next;          
                    delay_reg  <=  DB_out;// to detect level change
                end
        end
    
    assign q_reset = (DFF1  ^ DFF2); // Ex OR button_in on conecutive clocks
                                     // to detect level change
                                       
    assign  q_add = ~(delaycount_reg[N-1]); // Check count using MSB of counter


    always @ ( q_reset, q_add, delaycount_reg)
        begin
            case( {q_reset , q_add})
                2'b00 :
                        delaycount_next <= delaycount_reg;
                2'b01 :
                        delaycount_next <= delaycount_reg + 1;
                default :
                // In this case q_reset = 1 => change in level. Reset the counter 
                        delaycount_next <= { N {1'b0} };
            endcase   
        end

    always @ ( posedge clk )
        begin
            if(delaycount_reg[N-1] == 1'b1)
                    DB_out <= DFF2;
            else
                    DB_out <= DB_out;
        end

    
    assign  level_out  =  (delay_reg)  &  (~DB_out);


    always @(posedge  clk )
        if ( n_reset == 0)
            counter <= 0;
 
        else if ( level_out == 1'b1)
            begin
                if (counter  < 9)
                    counter <= counter +1;
                else counter <= 0;
            end

endmodule 