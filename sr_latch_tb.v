`timescale 1ns/1ns
`include "sr_latch.v"

module sr_latch_tb;
reg S,R;
wire Q,Qbar;

sr_latch uut(S,R,Q,Qbar);

initial begin
    {S,R}=2'b00;#20;
    {S,R}=2'b01;#20;
    {S,R}=2'b10;#20;
    {S,R}=2'b11;#20;
end
endmodule