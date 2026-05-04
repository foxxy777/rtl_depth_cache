module eq_xor_48 (
    input  [47:0] a, b,
    output hit
);
    assign hit = ~|(a ^ b);
endmodule
