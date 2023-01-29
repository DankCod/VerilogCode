`timescale 1ns/1ns
`include "full_adder_rtl.v"

module full_adder_rtl_tb;

reg A,B,carry;
wire sum,carryout;

full_adder_rtl uut(A,B,carry,sum,carryout);

initial begin
    $dumpfile("full_adder_rtl_tb.vcd");
    $dumpvars(0,full_adder_rtl_tb);
    {A,B,carry}=3'd0; #20;
    {A,B,carry}=3'd1; #20;
    {A,B,carry}=3'd2; #20;
    {A,B,carry}=3'd3; #20;
    {A,B,carry}=3'd4; #20;
    {A,B,carry}=3'd5; #20;
    {A,B,carry}=3'd6; #20;
    {A,B,carry}=3'd7; #20;
    $display("Test is complete");
end
endmodule