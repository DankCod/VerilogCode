module jk_flip_flop_case(
input J,
input K,
input clk,
output reg Q,
output reg Qbar
);
initial begin
    Q=1;
    Qbar=0;
end
always@(posedge clk)begin
    case ({J,K})
    2'b00:Q<=Q;
    2'b01:begin Q<=0;Qbar<=1;end
    2'b10:begin Q<=1;Qbar<=0;end
    2'b11:begin Q<=~Q;Qbar<=~Qbar;end
    endcase
end
endmodule