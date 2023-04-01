module four_bit_pipo(
    input [3:0]datain,
    input clk,
    output reg [3:0]dataout,
    output reg [3:0]temp
);
initial begin
    temp=4'b0000;
end 
always @(negedge clk) begin
        temp<=datain;
        dataout=temp;   
    end
endmodule