// Cache line byte select modules

module line032_bytesel (input [31:0] line, input [1:0] byte_off, output [7:0] byte_data);
  assign byte_data = line[byte_off*8 +: 8];
endmodule

module line064_bytesel (input [63:0] line, input [2:0] byte_off, output [7:0] byte_data);
  assign byte_data = line[byte_off*8 +: 8];
endmodule

module line128_bytesel (input [127:0] line, input [3:0] byte_off, output [7:0] byte_data);
  assign byte_data = line[byte_off*8 +: 8];
endmodule

