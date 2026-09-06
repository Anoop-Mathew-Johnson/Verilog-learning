// Full Adder
// Author: Anoop Johnson
// Part of the Verilog Learning Journey

module full_adder (
    input wire a,
    input wire b,
    input wire carry_in,

    output wire sum,
    output wire carry_out
);

    assign sum = a ^ b ^ carry_in;

    assign carry_out = (a & b) |
                       (b & carry_in) |
                       (a & carry_in);

endmodule
