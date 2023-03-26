`include "t_flip_flop.v"
module four_bit_down_asyn_counter(
    input trigger,
    input clk,
  output reg [3:0] count
);
wire x0,x1,x2,x3,x4,x5,x6,x7;
t_flip_flop first(trigger,clk,x0,x4);
t_flip_flop second(trigger,x0,x1,x5);
t_flip_flop third(trigger,x1,x2,x6);
t_flip_flop fourth(trigger,x2,x3,x7);
always@(negedge clk)begin
	count <={x7,x6,x5,x4};
end
endmodule