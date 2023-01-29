module full_adder_rtl(
    input A,
    input B,
    input carry,
    output sum,
    output carryout
);
assign {carryout,sum}=A+B+carry;
endmodule