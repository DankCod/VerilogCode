`timescale 1ns/1ns
module wallace_tree_four_four_tb;
reg [3:0]multiplicand;
reg [3:0]multiplier;
wire [7:0]product;

wallace_tree_four_four uut(multiplicand,multiplier,product);
initial begin
    multiplicand=4'b1001;
    multiplier=4'b1010;
    #30;
    multiplicand=4'b1001;
    multiplier=4'b1011;
    #30;
    multiplicand=4'b1001;
    multiplier=4'b0001;
    #100;
    $finish;
end
endmodule