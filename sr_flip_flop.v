`include "sr_latch.v"
module sr_flip_flop(
    input S,
    input R,
    input clk,
    output Q,
    output Qbar
);
reg Sstar;
reg Rstar;
sr_latch uut(Sstar,Rstar,Q,Qbar);
always@(posedge clk) begin
    Sstar<=~S+~clk;
    Rstar<=~R+~clk;
end


endmodule