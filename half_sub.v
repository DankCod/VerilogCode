module half_sub(
    input A,
    input B,
    output diff,
    output borr
);
xor(diff,A,B);
and(borr,~A,B);
endmodule