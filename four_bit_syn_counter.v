`include "t_flip_flop.v"
module four_bit_syn_counter(
    input trigger,
    input clk,
    output reg[3:0]count
);
wire x0,x1,x2,x3,x4,x5;
t_flip_flop first(trigger,clk,x0);
t_flip_flop second(x0,clk,x1);
and(x4,x0,x1);
t_flip_flop third(x4,clk,x2);
and(x5,x2,x1,x0);
t_flip_flop fourth(x5,clk,x3);
always@(negedge clk)begin
    count<={x3,x2,x1,x0};
end
endmodule