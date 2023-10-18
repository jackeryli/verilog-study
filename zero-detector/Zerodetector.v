module Zerodetector(in, out);
    input [7:0] in;
    output reg [3:0] out;

    integer i;
    
    always@(*) begin
        i = 0;
        out = 0;
        while(i <= 7) begin
            if(in[i] == 0) out = out + 1;
            i = i + 1;
        end
    end
endmodule