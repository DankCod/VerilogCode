`include "4_bit_rip_adder_carry.v"
module eight_bit_adder(
    input [7:0]A,
    input [7:0]B,
    output [7:0]sum,
    output carry
);
reg init=0;
wire x1;
four_bit_rip_adder_carry test1(A[3:0],B[3:0],init,sum[3:0],x1);
four_bit_rip_adder_carry second(A[7:4],B[7:4],x1,sum[7:4],carry);
endmodule