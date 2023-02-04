module four_bit_cla_adder(
    input [3:0]A,
    input [3:0]B,
    input carryin,
    output[3:0]sum,
    output carry
);
wire g3;wire g2;wire g1;wire g0;
wire p3;wire p2;wire p1;wire p0;
wire c2;wire c1;wire c0;
and(g0,A[0],B[0]);
and(g1,A[1],B[1]);
and(g2,A[2],B[2]);
and(g3,A[3],B[3]);
xor(p0,A[0],B[0]);
xor(p1,A[1],B[1]);
xor(p2,A[2],B[2]);
xor(p3,A[3],B[3]);
assign c0=g0+carryin*p0;
assign c1=g1+p1*g0+p0*p1*carryin;
assign c2=g2+p2*g1+p1*p2*g0+p0*p1*p2*carryin;
assign carry=g3+p3*g2+p3*p2*g1+p1*p2*p3*g0+p0*p1*p2*p3*carryin;
xor(sum[0],p0,carryin);
xor(sum[1],p1,c0);
xor(sum[2],p2,c1);
xor(sum[3],p3,c2);
endmodule