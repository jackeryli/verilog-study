module tb_counter();
    reg clk, clear, count, load;
    reg [3:0] din;
    wire [3:0] a_count;
    wire c_out;

    Counter counter(.clk(clk),
                    .clear(clear),
                    .count(count),
                    .load(load),
                    .din(din),
                    .a_count(a_count),
                    .c_out(c_out));

    always begin
        #5 clk = ~clk;
    end

    initial begin

        // Initialize signals
        clk = 0; clear = 0; count = 0; din = 1; din = 4'b0000; 

        #5
        clear = 1; count = 1; load = 0;
        #200
        load = 1; din = 4'b0011;
        #10
        clear = 0;

        $finish;
end

initial begin
    $monitor("a_count=%b, c_out=%b", a_count, c_out);
end

endmodule