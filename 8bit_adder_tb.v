`timescale 1ns/1ns
`include "8bit_adder.v"

module eight_bit_adder_tb;
reg [7:0] A,B;
wire [7:0] sum;
wire carry;

eight_bit_adder uut(A,B,sum,carry);

initial begin
    $dumpfile("eight_bit_adder_tb.vcd");
    $dumpvars(0,eight_bit_adder_tb);
    A=8'b10101001;
    #20;
    B=8'b00001111;
    #20;
    $display("Test is complete");
end
endmodule