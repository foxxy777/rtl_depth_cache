module eq_xor_24 (
    input  [23:0] a, b,
    output hit
);
    assign hit = ~|(a ^ b);
endmodule
