module eq_xor_32 (
    input  [31:0] a, b,
    output hit
);
    assign hit = ~|(a ^ b);
endmodule
