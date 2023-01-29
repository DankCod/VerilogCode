`timescale 1ns/1ns
`include "half_sub.v"

module half_sub_tb;
reg A,B;
wire diff,borr;

half_sub uut(A,B,diff,borr);

initial begin
    $dumpfile("half_sub_tb.vcd");
    $dumpvars(0,half_sub_tb);
    {A,B}=2'd0; #20;
    {A,B}=2'd1; #20;
    {A,B}=2'd2; #20;
    {A,B}=2'd3; #20;
    $display("Test is completed");
end
endmodule
