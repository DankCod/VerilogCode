`timescale 1ns/1ns
`include "16_bit_rip_adder.v"

module sixteen_bit_rip_adder_tb;
reg [15:0]A,B;
wire [15:0]sum;
wire carryout;
sixteen_bit_rip_adder uut(A,B,sum,carryout);

initial begin
    $dumpfile("sixteen_bit_adder_tb.vcd");
    $dumpvars(0,sixteen_bit_rip_adder_tb);
    A=16'd21;#20;
    B=16'd22;#20;
    $display("Test is complete");
end
endmodule