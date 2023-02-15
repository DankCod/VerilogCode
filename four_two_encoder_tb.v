`timescale 1ns/1ns
`include "four_two_encoder.v"

module four_two_encoder_tb;
reg [3:0]in;
wire [1:0]out;

four_two_encoder uut(in,out);

initial begin
    $dumpfile("four_two_encoder_tb.vcd");
    $dumpvars(0,four_two_encoder_tb);
    in=4'b0001;#20;
    in=4'b0010;#20;
    in=4'b0100;#20;
    in=4'b1000;#20;
    $display("Test is complete");
end
endmodule