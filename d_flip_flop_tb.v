`timescale 1ns/1ns
`include "d_flip_flop.v"

module d_flip_flop_tb;
reg D;
reg clk;
initial clk=0;
d_flip_flop uut(D,clk,Q,Qbar);

always #5 clk=~clk;

initial begin
    D=1'b1;#20;
    D=0'b0;#20;
    D=0'b0;#20;
    D=0'b0;#20;
    D=1'b1;#20;
    $display("Test is complete");
    #20; $finish;
end
endmodule