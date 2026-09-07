// D Flip-Flop
// Author: Anoop Johnson
// Part of the Verilog Learning Journey

module d_flip_flop (
    input wire clk,
    input wire reset,
    input wire d,

    output reg q
);

    always @(posedge clk) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule
