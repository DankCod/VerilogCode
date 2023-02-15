`timescale 1ns/1ns
`include "two_four_decoder.v"

module two_four_decoder_tb;
reg [1:0]in;
wire [3:0]out;

two_four_decoder uut(in,out);

initial begin
    $dumpfile("two_four_decoder_tb.vcd");
    $dumpvars(0,two_four_decoder_tb);
    in=2'b00;#20;
    in=2'b01;#20;
    in=2'b10;#20;
    in=2'b11;#20;
end
endmodule