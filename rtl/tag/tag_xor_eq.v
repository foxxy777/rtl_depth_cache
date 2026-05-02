module tag08_xor_eq (input [7:0] tag, req_tag, output hit);
  assign hit = ~|(tag ^ req_tag);
endmodule

module tag16_xor_eq (input [15:0] tag, req_tag, output hit);
  assign hit = ~|(tag ^ req_tag);
endmodule

module tag20_xor_eq (input [19:0] tag, req_tag, output hit);
  assign hit = ~|(tag ^ req_tag);
endmodule

module tag24_xor_eq (input [23:0] tag, req_tag, output hit);
  assign hit = ~|(tag ^ req_tag);
endmodule

module tag32_xor_eq (input [31:0] tag, req_tag, output hit);
  assign hit = ~|(tag ^ req_tag);
endmodule

module tag48_xor_eq (input [47:0] tag, req_tag, output hit);
  assign hit = ~|(tag ^ req_tag);
endmodule

module tag64_xor_eq (input [63:0] tag, req_tag, output hit);
  assign hit = ~|(tag ^ req_tag);
endmodule
