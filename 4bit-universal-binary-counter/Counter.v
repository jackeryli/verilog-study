module Counter(clk, clear, count, load, din, c_out, a_count);

    input clk, clear, count, load;
    input [3:0] din;
    output reg[3:0] a_count;
    output reg c_out;

    always@(posedge clk or negedge clear) begin
        if(~clear)
            a_count <= 4'b0000;      // reset
        else begin
            case({load,count})
                2'b1x: a_count <= din;
                2'b01: a_count <= a_count + 1;
                default: a_count <= a_count;
            endcase
        end
    end

    assign c_out = (&a_count);

endmodule