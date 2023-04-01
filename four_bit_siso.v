module four_bit_siso(
    input data,
    input clk,
    input reset,
    output reg dataout,
    output reg [3:0]temp
);
initial begin
    temp=4'b0000;
end
always @(negedge clk) begin
    if(reset==0)
    temp<=4'b0000;
    else begin
        temp<=temp<<1;
        temp[0]<=data;
        dataout<=temp[3];
    end
end
endmodule