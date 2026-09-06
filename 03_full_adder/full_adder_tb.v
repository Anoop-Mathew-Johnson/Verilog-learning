// Testbench for Full Adder
// Author: Anoop Johnson

`timescale 1ns/1ps

module full_adder_tb;

    reg a;
    reg b;
    reg carry_in;

    wire sum;
    wire carry_out;

    // Instantiate the Full Adder
    full_adder uut (
        .a(a),
        .b(b),
        .carry_in(carry_in),
        .sum(sum),
        .carry_out(carry_out)
    );

    // Test all possible input combinations
    initial begin

        $monitor(
            "Time=%0t | A=%b B=%b Cin=%b | Sum=%b Cout=%b",
            $time, a, b, carry_in, sum, carry_out
        );

        a = 0; b = 0; carry_in = 0;
        #10;

        a = 0; b = 0; carry_in = 1;
        #10;

        a = 0; b = 1; carry_in = 0;
        #10;

        a = 0; b = 1; carry_in = 1;
        #10;

        a = 1; b = 0; carry_in = 0;
        #10;

        a = 1; b = 0; carry_in = 1;
        #10;

        a = 1; b = 1; carry_in = 0;
        #10;

        a = 1; b = 1; carry_in = 1;
        #10;

        $finish;
    end

endmodule
