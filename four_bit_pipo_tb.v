`timescale 1ns/1ns
module four_bit_pipo_tb;
reg [3:0]datain;
reg clk;
wire [3:0]dataout;
wire [3:0]temp;
initial clk=0;
always #5 clk=~clk;
four_bit_pipo uut(datain,clk,dataout,temp);
initial begin
    datain=4'b0001;
    #10;
    datain=4'b0010;
    #10;
    datain=4'b1001;
    #10;
    datain=4'b0011;
    datain=4'b0001;
    #10;
    datain=4'b0000;
    #10;
    $finish;
end
endmodule