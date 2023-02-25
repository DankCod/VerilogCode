`include "sr_flip_flop.v"
module d_flip_flop(
    input D,
    input clk,
    output Q,
    output Qbar
);
sr_flip_flop flipflop(D,~D,clk,Q,Qbar);
endmodule