module pattern_detection_one_oh_one(
    input datain,
    input clk,
    output reg pattern_detected,
    output reg [2:0]temp
);
initial begin
    temp=3'b000;
end
always @(negedge clk) begin
    temp=temp<<1;
    temp[0]<=datain;
end 
always @(posedge clk)begin
    if(temp==3'b101) begin
        pattern_detected<=1;
    end
    else begin
        pattern_detected<=0;
    end
end
endmodule