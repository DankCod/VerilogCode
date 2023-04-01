module four_bit_piso(
    input [3:0]datain,
    input clk,
    input load_shift,
    output reg [3:0]temp,
    output reg dataout
);
always@(negedge clk)begin
    case(load_shift)
    1:begin
        temp<=datain;
    end
    0:begin
        temp<=temp<<1;
        dataout<=temp[3];
    end
    endcase
end
endmodule