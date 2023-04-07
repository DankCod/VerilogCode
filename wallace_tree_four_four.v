module wallace_tree_four_four(
    input [3:0]multiplicand,
    input [3:0]multiplier,
    output [7:0]product
);
wire [3:0]pp0;
wire [3:0]pp1;
wire [3:0]pp2;
wire [3:0]pp3;
wire sum1,sum2,sum3,sum4,sum5,sum6,sum7,sum8;
wire carry1,carry2,carry3,carry4,carry5,carry6,carry7,carry8;
wire [3:0]A;
wire [3:0]B;

assign pp0=multiplicand*multiplier[0];
assign pp1=multiplicand*multiplier[1];
assign pp2=multiplicand*multiplier[2];
assign pp3=multiplicand*multiplier[3];
assign product[0]=pp0[0];
half_adder ha1(pp0[1],pp1[0],sum1,carry1);
full_adder fa1(pp0[2],pp1[1],pp2[0],sum2,carry2);
full_adder fa2(pp0[3],pp1[2],pp2[1],sum3,carry3);
half_adder ha2(pp1[3],pp2[2],sum4,carry4);

half_adder ha3(carry1,sum2,sum5,carry5);
full_adder fa3(carry2,sum3,pp3[0],sum6,carry6);
full_adder fa4(carry3,sum4,pp3[1],sum7,carry7);
full_adder fa5(carry4,pp2[3],pp3[2],sum8,carry8);

assign A={carry8,carry7,carry6,carry5};
assign B={pp3[3],sum8,sum7,sum6};
four_bit_cla_adder fastadder(A,B,0,product[6:3],product[7]);
assign product[2:0]={sum5,sum1,pp0[0]};
endmodule