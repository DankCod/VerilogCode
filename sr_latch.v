module sr_latch(
    input S,
    input R,
    output Q,
    output Qbar
);
nand(Q,S,Qbar);
nand(Qbar,R,Q);
endmodule