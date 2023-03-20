`timescale 1ns/1ns

module jk_flip_flop_tb;
reg J,K,clk;

initial clk=0;
jk_flip_flop uut(J,K,clk,Q,Qbar);
always #5 clk = ~clk; 

initial begin
    {J,K}=2'b00;#20;
    {J,K}=2'b01;#20;
    {J,K}=2'b10;#20;
    {J,K}=2'b11;#20;
    $display("Test is complete");
    #80 $finish;
end
endmodule