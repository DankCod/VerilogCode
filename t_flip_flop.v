module t_flip_flop(
    input t,
    input clk,
    output reg Q,
    output reg Qbar
);
initial begin
    Q=1;
    Qbar=0;
end
always@(posedge clk)begin
    case(t)
    1:begin
        Q<=~Q;
    Qbar<=~Qbar;
    end
    0:begin Q<=Q;
    Qbar<=Qbar;
    end
    endcase
end
endmodule