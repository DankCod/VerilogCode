`timescale 1ns/1ns

module t_flip_flop_tb;
reg t,clk;
wire Q,Qbar;
initial clk=0;
always #5 clk=~clk;

t_flip_flop dut(t,clk,Q,Qbar);

initial begin
    t=0;#20;
    t=1;#40;
    t=0;#20;
    $display("Test is complete");
    #20;$finish;
end
endmodule