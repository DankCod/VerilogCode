module demux_one_two(
    input I,
    input selector,
    output [1:0]out
);
and(out[0],~selector,I);
and(out[1],selector,I);
endmodule