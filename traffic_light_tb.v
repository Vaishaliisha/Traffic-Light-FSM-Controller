// File: traffic_light_tb.v
`timescale 1ns / 1ps

module traffic_light_tb;

    reg clk, rst;
    wire [2:0] lights;

    traffic_light uut (
        .clk(clk),
        .rst(rst),
        .lights(lights)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period
    end

    // Stimulus
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, traffic_light_tb);

        rst = 1;
        #20;
        rst = 0;

        #300;  // run simulation for a while
        $finish;
    end

endmodule
