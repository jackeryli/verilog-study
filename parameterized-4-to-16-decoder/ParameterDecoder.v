module ParameterDecoder (in,out);

    parameter N = 2;
    parameter M = 4;

    input [N-1:0] in;
    output [M-1:0] out;

    assign out = 1'b1 << in;

endmodule