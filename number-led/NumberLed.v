module NumberLed(in, out);
    input [15:0] in;
    output reg [6:0] out;

    always@(*) begin
        case(in)
            4'b0: out = 7'b0000001;
            4'b1: out = 7'b1001111;
            4'b2: out = 7'b0010010;
            4'b3: out = 7'b0000110;
            4'b4: out = 7'b1001100;
        endcase
    end
endmodule