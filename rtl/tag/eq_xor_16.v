module eq_xor_16 (
    input  [15:0] a, b,
    output hit
);
    assign hit = ~|(a ^ b);
endmodule
