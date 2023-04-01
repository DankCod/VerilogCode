module four_bit_ring_counter(
    input trigger,
    input clk,
    output reg [3:0]count
);
always@(negedge trigger) begin
    count=4'b1000;   
end

always @(negedge clk) begin
    if(count==0)
    count=4'b1000;
    else begin
    count=count/2;
    end
end
endmodule