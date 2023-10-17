module Test_Zerodetector();
    reg [7:0] in;
    wire [3:0] out;

    Zerodetector zd(.in(in), .out(out));

    integer i;
    
    initial begin
        for(i = 0; i < 16; i = i+1) begin
            #100
            in = i;
        end
    end

    initial begin
        $monitor("in: %b, out: %b", in, out);
    end

endmodule