`include "four_bit_cla_adder.v"

module eight_bit_cla_adder(
    input [7:0]A,
    input [7:0]B,
    input carryin,
    output [7:0]sum,
    output carry
);
wire x1;
four_bit_cla_adder add1(A[3:0],B[3:0],carryin,sum[3:0],x1);
four_bit_cla_adder add2(A[7:4],B[7:4],carryin,sum[7:4],carry);
endmodule