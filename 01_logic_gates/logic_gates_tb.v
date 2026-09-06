// Testbench for Basic Logic Gates
// Author: Anoop Johnson

`timescale 1ns/1ps

module logic_gates_tb;

    reg a;
    reg b;

    wire and_out;
    wire or_out;
    wire not_a;
    wire xor_out;
    wire nand_out;
    wire nor_out;
    wire xnor_out;

    // Instantiate the logic gates module
    logic_gates uut (
        .a(a),
        .b(b),
        .and_out(and_out),
        .or_out(or_out),
        .not_a(not_a),
        .xor_out(xor_out),
        .nand_out(nand_out),
        .nor_out(nor_out),
        .xnor_out(xnor_out)
    );

    // Apply all possible input combinations
    initial begin

        $monitor(
            "Time=%0t | A=%b B=%b | AND=%b OR=%b NOT_A=%b XOR=%b NAND=%b NOR=%b XNOR=%b",
            $time, a, b,
            and_out, or_out, not_a, xor_out,
            nand_out, nor_out, xnor_out
        );

        a = 0; b = 0;
        #10;

        a = 0; b = 1;
        #10;

        a = 1; b = 0;
        #10;

        a = 1; b = 1;
        #10;

        $finish;
    end

endmodule
