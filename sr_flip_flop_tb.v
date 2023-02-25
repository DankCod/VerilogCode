`timescale 1ns/1ns
`include "sr_flip_flop.v"

module sr_flip_flop_tb;
reg S,R,clk;
initial clk=0;
sr_flip_flop uut(S,R,clk,Q,Qbar);
always #5 clk = ~clk; 

initial begin 
    $dumpfile("sr_flip_flop_tb.vcd");
    $dumpvars(0,sr_flip_flop_tb);
    {S,R}=2'b01;#20;
    {S,R}=2'b10;#20;
    {S,R}=2'b11;#20;
    {S,R}=2'b00;#20;
    $display("Test is complete");
    #20 $finish;
end
endmodule