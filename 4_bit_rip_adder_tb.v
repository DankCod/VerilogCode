`timescale 1ns/1ns
`include "4_bit_rip_adder.v"

module four_bit_rip_adder_tb;
reg [3:0] A,B;
wire [3:0] sum;
wire carry;

four_bit_rip_adder uut(A,B,sum,carry);

initial begin
    $dumpfile("four_bit_rip_adder_tb.vcd");
    $dumpvars(0,four_bit_rip_adder_tb);
    A=4'b0010;#20;
    B=4'b1110;#20;
    $display("Test is complete");
end
endmodule