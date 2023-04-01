`timescale 1ns/1ns
module pattern_detection_one_oh_one_tb;
reg datain;
reg clk;
wire [2:0]temp;
initial clk=0;
always #5 clk=~clk;
wire pattern_detected;
pattern_detection_one_oh_one uut(datain,clk,pattern_detected,temp);
initial begin
    datain=1;
    #11;
    datain=0;
    #11;
    datain=1;
    #11;
    datain=0;
    #11;
    datain=1;
    #11;
    datain=0;
    #11;
    datain=1;
    #11;
    datain=0;
    #11;
    datain=1;
    #11;
    datain=0;
    #40;
    $finish;
end
endmodule