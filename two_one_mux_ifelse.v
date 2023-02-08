module two_one_mux_ifelse(
    input [0:1]I,
    input selector,
    output  reg op
);
always @(selector,I) begin
    if(selector==0)
    op=I[0];
    else
    op=I[1];
end
endmodule