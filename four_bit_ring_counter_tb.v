`timescale 1ns/1ns
module four_bit_ring_counter_tb;
reg trigger;
wire [3:0]count;
reg clk;
initial clk=0;
always #5 clk=~clk;
four_bit_ring_counter uut(trigger,clk,count);
initial begin
    trigger=1;
    #50;
    trigger=0;
    #200;
    $display("Test is complete");
    $finish;
end
endmodule