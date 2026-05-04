module eq_xor_20 (
    input  [19:0] a, b,
    output hit
);
    assign hit = ~|(a ^ b);
endmodule
