module two_one_mux(
    input enable,
    input i0,
    input i1,
    input selector,
    output selected
);
wire x1;
wire x2;wire x3;
and(x1,!selector,i0);
and(x2,selector,i1);
or(x3,x1,x2);
and(selected,x3,enable);
endmodule