module eq_xor_8 (
    input  [7:0] a, b,
    output hit
);
    assign hit = ~|(a ^ b);
endmodule
