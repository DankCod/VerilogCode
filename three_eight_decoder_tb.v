`timescale 1ns/1ns
`include "three_eight_decoder.v"

module three_eight_decoder_tb;
reg [2:0]in;
wire [7:0]out;

three_eight_decoder uut(in,out);

initial begin
    $dumpfile("three_eight_decoder_tb.vcd");
    $dumpvars(0,three_eight_decoder_tb);
    in=3'b000;#20;
    in=3'b001;#20;
    in=3'b010;#20;
    in=3'b011;#20;
    in=3'b100;#20;
    in=3'b101;#20;
    in=3'b110;#20;
    in=3'b111;#20;
end
endmodule