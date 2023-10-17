module tb_shift();

reg [3:0] din;
reg [1:0] mode;   // 0: no change, 1: right shift, 2: left shift, 3: load data
reg lin;
reg rin;
reg clk;
reg reset;
wire [3:0] dout;

Shift shift(.din(din),
            .mode(mode),
            .lin(lin),
            .rin(rin),
            .clk(clk),
            .reset(reset),
            .dout(dout));

always begin
    #5
    clk = ~clk;
end

initial begin
    // Initialize signals
    din = 4'b0000;
    mode = 2'b00;
    lin = 0;
    rin = 0;
    clk = 0;
    reset = 0;

    #50
    reset = 1;
    mode = 2'b11; din = 4'b0001;
    #50
    mode = 2'b10;
    #50
    lin = 1;
    #50
    mode = 2'b01;
    #50
    rin = 1;

    $finish;
end

initial begin
    $monitor("time=%t dout=%b", $time, dout);
end

endmodule