`timescale 1ns/1ns
`include "two_one_mux_ifelse.v"

module two_one_mux_ifelse_tb;
reg [1:0]I;
reg selector;
wire op;
two_one_mux_ifelse uut(I,selector,op);
initial begin
    $dumpfile("two_one_mux_ifelse_tb.vcd");
    $dumpvars(0,two_one_mux_ifelse_tb);
    I=2'b10;#20;
    selector=0;#20;
    selector=1;#20;
    I=2'b01;#20;
    selector=0;#20;
    $display("Test is complete");
end
endmodule