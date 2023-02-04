`timescale 1ns/1ns
`include "four_bit_cla_adder.v"

module four_bit_cla_adder_tb;
reg [3:0]A,B;
reg carryin;
wire carryout;
wire [3:0]sum;
four_bit_cla_adder uut(A,B,carryin,sum,carry);
initial begin
    $dumpfile("four_bit_cla_adder_tb.vcd");
    $dumpvars(0,four_bit_cla_adder_tb);
    A=4'b0111;#20;
    B=4'b0111;#20;
    carryin=0;#20;
    $display("Test is complete");
end
endmodule