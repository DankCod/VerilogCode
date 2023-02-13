`timescale 1ns/1ns
`include "demux_one_two.v"

module demux_one_two_tb;
reg I,selector;
wire [1:0]out;

demux_one_two uut(I,selector,out);
initial begin
    $dumpfile("demux_one_two_tb.vcd");
    $dumpvars(0,demux_one_two_tb);
    I=1;#20;
    selector=0;#20;
    selector=1;#20;
    selector=0;#20;
end
endmodule