`include "sr_latch.v"
module jk_flip_flop(
    input J,
    input K,
    input clk,
    output reg Q,
    output reg Qbar
);
reg Jstar;
reg Kstar;

sr_latch uut(Jstar,Kstar,Q,Qbar);
always@(posedge clk) begin
    Jstar<=~J+~clk+~Qbar;
    Kstar<=~K+~clk+~Q;
    end
endmodule