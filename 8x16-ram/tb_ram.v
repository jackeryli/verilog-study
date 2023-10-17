// 8*16 ram
module tb_ram();

reg enable;
reg rw;
reg [2:0] address;
reg [15:0] din;
wire [15:0] dout;

Ram ram(.enable(enable), .rw(rw), .address(address), .din(din), .dout(dout));

initial begin
    #5 enable=1; rw=0; address=3'd0; din=16'hAAA0;
    #5 enable=1; rw=0; address=3'd1; din=16'hAAA1;
    #5 enable=1; rw=0; address=3'd2; din=16'hAAA2;
    #5 enable=1; rw=0; address=3'd3; din=16'hAAA3;
    #5 enable=1; rw=0; address=3'd4; din=16'hAAA4;
    #5 enable=1; rw=0; address=3'd5; din=16'hAAA5;
    #5 enable=1; rw=0; address=3'd6; din=16'hAAA6;
    #5 enable=1; rw=0; address=3'd7; din=16'hAAA7;
    #5

    $writememh("ram_data.txt", ram.mem);
end





endmodule