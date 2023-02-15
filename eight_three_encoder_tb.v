`timescale 1ns/1ns
`include "eight_three_encoder.v"

module eight_three_encoder_tb;
reg [7:0]in;
wire [2:0]out;

eight_three_encoder uut(in,out);

initial begin
    $dumpfile("eight_three_encoder_tb.vcd");
    $dumpvars(0,eight_three_encoder_tb);
    in=8'b00000001;#20;
    in=8'b00000010;#20;
    in=8'b00000100;#20;
    in=8'b00001000;#20;
    in=8'b00010000;#20;
    in=8'b00100000;#20;
    in=8'b01000000;#20;
    in=8'b10000000;#20;
    $display("Test is complete");
end
endmodule