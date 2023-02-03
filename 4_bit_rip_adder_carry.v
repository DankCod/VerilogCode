`include "half_adder.v"
`include "full_adder.v"

module four_bit_rip_adder_carry(
    input [3:0]A,
    input [3:0]B,
    input carryin,
    output [3:0]sum,
    output carry
);
wire x1;
wire x2;
wire x3;
full_adder d0(A[0],B[0],carryin,sum[0],x1);
full_adder d1(A[1],B[1],x1,sum[1],x2);
full_adder d2(A[2],B[2],x2,sum[2],x3);
full_adder d3(A[3],B[3],x3,sum[3],carry);
endmodule
