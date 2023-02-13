module demux_one_two_cond(
    input I,
    input selector,
    output reg [1:0]out
);
always @(I,selector) begin
    if(selector==0) begin
    out[0]=I;
    out[1]=0;
    end
    else begin
    out[0]=0;
    out[1]=I;
    end
end
endmodule