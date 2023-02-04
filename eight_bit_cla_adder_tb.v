`timescale 1ns/1ns
`include "eight_bit_cla_adder.v"

module eight_bit_cla_adder_tb;
reg [7:0]A,B;
reg carryin;
wire [7:0]sum;
wire carry;

eight_bit_cla_adder uut(A,B,carryin,sum,carry);
initial begin
    $dumpfile("eight_bit_cla_adder_tb.vcd");
    $dumpvars(0,eight_bit_cla_adder_tb);
    A=8'd128;#20;
    B=8'd200;#20;
    carryin=0;#20;
    $display("Test is complete");
end
endmodule