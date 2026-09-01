// Basic Logic Gates
// Author: Anoop Johnson
// Part of the Verilog Learning Journey

module logic_gates (
    input wire a,
    input wire b,

    output wire and_out,
    output wire or_out,
    output wire not_a,
    output wire xor_out,
    output wire nand_out,
    output wire nor_out,
    output wire xnor_out
);

    assign and_out  = a & b;
    assign or_out   = a | b;
    assign not_a    = ~a;
    assign xor_out  = a ^ b;
    assign nand_out = ~(a & b);
    assign nor_out  = ~(a | b);
    assign xnor_out = ~(a ^ b);

endmodule
