`timescale 1ns/1ps
module DFF_tb ();
 
 reg clk_tb;
 reg reset_tb;
 reg d_tb;
 wire q_tb;
 wire qsync_tb;
 wire qasync_tb;

 DFF u_flipflop(.clk(clk_tb),
                .reset(reset_tb),
                .d(d_tb),
                .q(q_tb),
                .qsync(qsync_tb),
                .qasync(qasync_tb));

    initial begin
        clk_tb=0;
        reset_tb=1;
        d_tb=0;
        #5;
        clk_tb=1;
        reset_tb=0;
        d_tb=1;
        #5;

    end
initial begin
    $dumpfile("day2dff.vcd");
    $dumpvars(0,DFF_tb);
end


    
endmodule