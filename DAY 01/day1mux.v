module mux ( a,b,sel,out);


input wire a;
input wire  b;
input wire  sel;
output wire  out;
assign out  = sel ? a : b;
 
    
endmodule