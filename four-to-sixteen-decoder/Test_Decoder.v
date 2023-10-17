module Test_Decoder();

  // Declare signals
  reg [3:0] in;
  wire [15:0] out;

  // Instantiate the 4-to-16 decoder
  Decoder4to16 DUT (
    .in(in),
    .out(out)
  );

  integer i;

  initial begin
    for(i=0; i < 16; i = i+1) begin
      #100
      in = i;
    end
  end

  initial begin
    $monitor("in: %b, out: %b", in, out);
  end

endmodule
