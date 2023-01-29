`timescale 1ns/1ns
`include "half_adder.v"

module half_adder_tb;

reg A,B;
wire sum,carry;

half_adder uut(A,B,sum,carry);

initial begin
    $dumpfile("half_adder_tb.vcd");
    $dumpvars(0,half_adder_tb);
    {A,B}=2'd0; #20;
    {A,B}=2'd1; #20;
    {A,B}=2'd2; #20;
    {A,B}=2'd3; #20;
    $display("Test is complete");
end
endmodule


