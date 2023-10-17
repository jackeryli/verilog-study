module Test_Encoder();
    reg [3:0] in;
    wire [1:0] out;

    Encoder EUT(.in(in), .out(out));

    integer i;

    initial begin
        for(i = 1; i < 16; i = i<<1) begin
            #100
            in = i;
        end
    end

    initial begin
        $monitor("in: %b, out: %b", in, out);
    end
endmodule