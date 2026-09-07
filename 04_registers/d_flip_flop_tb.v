// Testbench for D Flip-Flop
// Author: Anoop Johnson

`timescale 1ns/1ps

module d_flip_flop_tb;

    reg clk;
    reg reset;
    reg d;

    wire q;

    // Instantiate the D Flip-Flop
    d_flip_flop uut (
        .clk(clk),
        .reset(reset),
        .d(d),
        .q(q)
    );

    // Generate clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Apply test inputs
    initial begin

        $monitor(
            "Time=%0t | Reset=%b | D=%b | Q=%b",
            $time, reset, d, q
        );

        // Initial reset
        reset = 1;
        d = 0;
        #10;

        // Release reset and store 1
        reset = 0;
        d = 1;
        #10;

        // Store 0
        d = 0;
        #10;

        // Store 1
        d = 1;
        #10;

        // Test reset
        reset = 1;
        d = 1;
        #10;

        // Release reset
        reset = 0;
        d = 0;
        #10;

        $finish;
    end

endmodule
