`timescale 1ns/1ns
module four_bit_siso_tb;
reg data,clk,reset;
wire dataout;
wire [3:0]temp;
initial clk=0;
always #5 clk=~clk;
four_bit_siso uut(data,clk,reset,dataout,temp);
initial begin
    reset=1;
    data=1;
    #10;
    data=0;
    #10;
    data=1;
    #10;
    reset=0;
    #5;
    reset=1;
    data=0;
    #10;
    data=1;
    #10;
    data=0;
    #10;
    $finish;
end
endmodule