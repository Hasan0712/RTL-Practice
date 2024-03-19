module alu (a,b,op,out);

input wire [7:0] a;
input wire [7:0] b;
input wire [2:0] op;

output wire [7:0] out;


always @(*) begin

    if (op==8'd0)begin
        out = a+b;
    end
    else if(op==8'd1)begin
        out =a-b;
    end
    else if(op==)
end




    
endmodule