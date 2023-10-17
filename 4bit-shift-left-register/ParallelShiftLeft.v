module ParallelShiftLeft(clk, reset, din, qout);
    input clk, reset;
    input [3:0] din;
    output reg [3:0] qout;

    always@(posedge clk) begin
        if(!reset) qout <= 4'b0;
        else qout <= {qout<<1, din};
    end





endmodule