module deco_tb();

logic [3:0] _input;

logic [6:0] _output;

deco d(_input, _output);

initial begin

_input[0] = 0;
_input[1] = 0;
_input[2] = 0;
_input[3] = 0;

#10

_input[0] = 1;
_input[1] = 1;
_input[2] = 1;
_input[3] = 1;

#10

_input[0] = 1;
_input[1] = 0;
_input[2] = 0;
_input[3] = 0;

#10

_input[0] = 0;
_input[1] = 0;
_input[2] = 0;
_input[3] = 1;

end

endmodule
