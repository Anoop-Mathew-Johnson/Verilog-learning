// Half Adder
// Author: Anoop Johnson
// Part of the Verilog Learning Journey

module half_adder (
    input wire a,
    input wire b,

    output wire sum,
    output wire carry
);

    assign sum   = a ^ b;
    assign carry = a & b;

endmodule
