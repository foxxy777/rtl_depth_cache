// Set index address decode modules

module addr_set04 (input [31:0] addr, output [3:0] set_idx);
  assign set_idx = addr[6:3];
endmodule

module addr_set06 (input [31:0] addr, output [5:0] set_idx);
  assign set_idx = addr[8:3];
endmodule

module addr_set08 (input [31:0] addr, output [7:0] set_idx);
  assign set_idx = addr[10:3];
endmodule

module addr_set10 (input [31:0] addr, output [9:0] set_idx);
  assign set_idx = addr[12:3];
endmodule

