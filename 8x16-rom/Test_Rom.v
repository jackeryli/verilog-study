// 8*16 ROM
module Test_Rom();

reg oeb;
reg [2:0] address;
wire [15:0] data;

Rom rom(.oeb(oeb),.address(address),.data(data));

integer i;

initial begin
    $readmemh("rom_data.txt", rom.mem);

    #100
    oeb = 0;
    address = 3'b000;
    
    for(i = 0; i < 8; i = i + 1) begin
	    #1
        $display("Address: %h, Data: %h", address, data);
        address = address + 1;
    end

    $finish;
end

endmodule