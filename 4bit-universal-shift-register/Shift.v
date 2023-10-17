// 4-bit universal shift register with synchronous reset
module Shift(clk, reset, din, mode, lin, rin, dout);

input [3:0] din;
input [1:0] mode;   // 0: no change, 1: right shift, 2: left shift, 3: load data
input lin;
input rin;
input clk;
input reset;
output reg [3:0] dout;

always@(posedge clk) begin
    if(~reset)
        dout <= 4'b0000;
    else begin
        case(mode)
            2'b01: dout <= {rin, dout[3:1]};
            2'b10: dout <= {dout[2:0], lin};
            2'b11: dout <= din;
            default: dout <= dout;

        endcase
    end




end

endmodule