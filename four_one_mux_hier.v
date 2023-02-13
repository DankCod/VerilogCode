`include "two_one_mux_ifelse.v"

module four_one_mux_hier(
    input [3:0]I,
    input [1:0]selector,
    output Y
);
wire x1,x2;
two_one_mux_ifelse mux1(I[1:0],selector[0],x1);
two_one_mux_ifelse mux2(I[3:2],selector[0],x2);
two_one_mux_ifelse mux3({x2,x1},selector[1],Y);
endmodule