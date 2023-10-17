// 8 * 16 RAM
module Ram(enable, rw, address, din, dout);

input enable;
input rw; // rw=1 read, rw=0 write
input [2:0] address;
input [15:0] din;
output reg [15:0] dout;

reg [15:0] mem[0:7];

always@(*) begin
    if(enable)
        if(rw)
            dout = mem[address]; // Read from address
        else
            mem[address] = din;  // Write to address
    else
        dout = 16'bz;
end

endmodule