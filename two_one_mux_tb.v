`timescale 1ns/1ns
`include "two_one_mux.v"

module two_one_mux_tb;
reg A,B,E,selector;
wire selected;

two_one_mux uut(E,A,B,selector,selected);

initial begin
    $dumpfile("two_one_mux_tb.vcd");
    $dumpvars(0,two_one_mux_tb);
    A=1;#20;
    B=0;#20;
    selector=0;#20;
    E=1;#20;
    A=0;#20;
    selector=1;#20;
    
    E=0;#20;
    selector=0;#20;
    $display("Test is complete");
end
endmodule