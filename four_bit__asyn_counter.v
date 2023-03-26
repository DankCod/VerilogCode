`include "t_flip_flop.v"
module four_bit_asyn_counter(
    input trigger,
    input clk,
  output reg [3:0] count
);
wire x0,x1,x2,x3;
t_flip_flop first(trigger,clk,x0);
t_flip_flop second(trigger,x0,x1);
t_flip_flop third(trigger,x1,x2);
t_flip_flop fourth(trigger,x2,x3);
always@(negedge clk)begin
	count <={x3,x2,x1,x0};
end
endmodule