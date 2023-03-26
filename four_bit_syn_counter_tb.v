`timescale 1ns/1ns
module four_bit_asyn_counter_tb;
reg trigger;
reg clk;
initial clk=0;
always #5 clk=~clk;
wire [3:0]count;
four_bit_syn_counter uut(trigger,clk,count);
initial begin 
    trigger=1;
    #2000;
    $display("Test is complete");
    $finish;
end
endmodule