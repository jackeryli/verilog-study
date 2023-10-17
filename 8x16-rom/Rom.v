// 8*16 ROM
module Rom(oeb,data,address);
    input oeb;
    input [2:0] address;
    output [15:0] data;
    reg [15:0] mem [0:7];

    assign data = (oeb == 1'b0)?mem[address]:1'bz;
endmodule