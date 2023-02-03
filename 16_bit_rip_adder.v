`include "4_bit_rip_adder_carry.v"

module sixteen_bit_rip_adder(
    input [15:0]A,
    input [15:0]B,
    output [15:0]sum,
    output carry
);
reg init=0;
wire x1;
wire x2;
wire x3;
four_bit_rip_adder_carry add1(A[3:0],B[3:0],init,sum[3:0],x1);
four_bit_rip_adder_carry add2(A[7:4],B[7:4],x1,sum[7:4],x2);
four_bit_rip_adder_carry add3(A[11:8],B[11:8],x2,sum[11:8],x3);
four_bit_rip_adder_carry add4(A[15:12],B[15:12],x3,sum[15:12],carry);
endmodule