module half_adder_rtl(
    input A,
    input B,
    output sum,
    output carry
);
assign {carry,sum}=A+B;
endmodule