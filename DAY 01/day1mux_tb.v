`timescale 1ns/1ps
module mux_tb ();
reg [7:0] a_tb;
reg [7:0] b_tb;
reg sel_tb;
wire [7:0]out_tb;

mux u_plexer(.a(a_tb),
             .b(b_tb),
             .sel(sel_tb),
             .out(out_tb));

initial begin
    a_tb=$random %256;
    b_tb=$random %256;
    sel_tb=0;
    #5;


end
initial begin
    $dumpfile("day1mux.vcd");
    $dumpvars(0,mux_tb);
end

    
endmodule