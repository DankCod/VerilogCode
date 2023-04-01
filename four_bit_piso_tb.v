`timescale 1ns/1ns
module four_bit_piso_tb;
reg [3:0]datain;
reg clk;
reg load_shift;
initial clk=0;
always #5 clk=~clk;
wire dataout;
wire [3:0]temp;
four_bit_piso uut(datain,clk,load_shift,temp,dataout);
initial begin
    load_shift=1;
    datain=4'b1010;
    #20;
    load_shift=0;
    #20;
    load_shift=1;
    datain=4'b0011;
    #20;
    $finish;
end
endmodule