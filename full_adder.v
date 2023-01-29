module full_adder(
    input A,
    input B,
    input carry,
    output sum,
    output carryout
);
wire x1;
wire x2;
wire x3;
xor(x1,A,B);
and(x2,A,B);
and(x3,x1,carry);
xor(sum,x1,carry);
or(carryout,x3,x2);

endmodule