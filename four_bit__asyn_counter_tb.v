`timescale 1ns/1ns
module four_bit_asyn_counter_tb;
wire [3:0]out;
reg trigger;
reg clk;
initial clk=0;
four_bit_asyn_counter uut(trigger,clk,out);
always #5 clk=~clk;
initial begin
    trigger=1;
    #2000;
    $display("Test is complete");
    $finish;
end
endmodule