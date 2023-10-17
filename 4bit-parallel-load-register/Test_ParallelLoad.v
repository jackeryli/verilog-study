module Test_ParallelLoad();

    reg clk;
    reg reset;
    reg [3:0] din;
    wire [3:0] qout;

    // Instantiate the module to be tested
    ParallelLoad uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .qout(qout)
    );

    // Clock generation
    always begin
        #5 clk = ~clk; // Toggle the clock every 5 time units
    end

    initial begin
        // Initialize signals
        clk = 0;
        reset = 0;
        din = 4'b0;

        // Apply reset
        reset = 1;
        #10 reset = 0;

        // Test various inputs
        din = 4'b1010;
        #10 din = 4'b0011;
        #10 din = 4'b1111;
        #10 din = 4'b0101;

        // Finish simulation after some time
        #100;
        $finish;
    end

    // Display results
    initial begin
        $monitor("At time %t: din = %b, qout = %b", $time, din, qout);
    end
    

endmodule
