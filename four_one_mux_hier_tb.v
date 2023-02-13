`timescale 1ns/1ns
`include "four_one_mux_hier.v"

module four_one_mux_hier_tb;
reg [3:0]I;
reg [1:0]selector;
wire Y;
four_one_mux_hier uut(I,selector,Y);
initial begin
    $dumpfile("four_one_mux_hier_tb.vcd");
    $dumpvars(0,four_one_mux_hier_tb);
    I=4'b0101;#20;
    selector=2'b00;#20;selector=2'b01;#20;selector=2'b10;#20;selector=2'b11;#20;
end

endmodule