// dflip flop
module DFF(clk,reset,d,q,qsync,qasync);

input wire clk;
input wire reset;
input d;
output reg q;
output reg qsync;
output reg qasync;

always @(posedge clk) begin
  q<= d;

end
always @(posedge clk)
begin
    if (reset)begin
        qsync<= 0;
    end
    else begin
        qsync<=1;

    end
end
always @(posedge clk or negedge reset)
begin
    if (reset)begin
        qasync<=0;
    end
    else begin
        qasync<= d;
    end

end


    
endmodule