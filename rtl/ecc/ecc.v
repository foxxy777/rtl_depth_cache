module parity8 (input [7:0] d, output p);
  assign p = ^d;
endmodule
module parity16 (input [15:0] d, output p);
  assign p = ^d;
endmodule
module parity32 (input [31:0] d, output p);
  assign p = ^d;
endmodule
module parity64 (input [63:0] d, output p);
  assign p = ^d;
endmodule
module parity64_byte (input [63:0] d, output [7:0] p);
  assign p[0] = ^d[7:0];
  assign p[1] = ^d[15:8];
  assign p[2] = ^d[23:16];
  assign p[3] = ^d[31:24];
  assign p[4] = ^d[39:32];
  assign p[5] = ^d[47:40];
  assign p[6] = ^d[55:48];
  assign p[7] = ^d[63:56];
endmodule
module hamming8_encode (input [7:0] d, output [3:0] ck, output op);
  assign ck[0] = d[0] ^ d[1] ^ d[3] ^ d[4] ^ d[6];
  assign ck[1] = d[0] ^ d[2] ^ d[3] ^ d[5] ^ d[6];
  assign ck[2] = d[1] ^ d[2] ^ d[3] ^ d[7];
  assign ck[3] = d[4] ^ d[5] ^ d[6] ^ d[7];
  assign op = d[0] ^ d[1] ^ d[2] ^ d[3] ^ d[4] ^ d[5] ^ d[6] ^ d[7] ^ ck[0] ^ ck[1] ^ ck[2] ^ ck[3];
endmodule
module hamming8_decode (
  input [12:0] code,
  output [7:0] dout,
  output se, de);
  wire syn0 = code[1] ^ code[3] ^ code[5] ^ code[7] ^ code[9] ^ code[11];
  wire syn1 = code[2] ^ code[3] ^ code[6] ^ code[7] ^ code[10] ^ code[11];
  wire syn2 = code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[12];
  wire syn3 = code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12];
  wire [3:0] syndrome = {syn3, syn2, syn1, syn0};
  wire perr = code[0] ^ (code[1] ^ code[2] ^ code[3] ^ code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12]);
  wire snz = |syndrome;
  assign se = snz & perr;
  assign de = snz & ~perr;
  assign dout[0] = (se & (syndrome == 4'd3)) ? ~code[3] : code[3];
  assign dout[1] = (se & (syndrome == 4'd5)) ? ~code[5] : code[5];
  assign dout[2] = (se & (syndrome == 4'd6)) ? ~code[6] : code[6];
  assign dout[3] = (se & (syndrome == 4'd7)) ? ~code[7] : code[7];
  assign dout[4] = (se & (syndrome == 4'd9)) ? ~code[9] : code[9];
  assign dout[5] = (se & (syndrome == 4'd10)) ? ~code[10] : code[10];
  assign dout[6] = (se & (syndrome == 4'd11)) ? ~code[11] : code[11];
  assign dout[7] = (se & (syndrome == 4'd12)) ? ~code[12] : code[12];
endmodule
module hamming8_syndrome (input [12:0] code, output [3:0] syn, output perr);
  wire s0 = code[1] ^ code[3] ^ code[5] ^ code[7] ^ code[9] ^ code[11];
  wire s1 = code[2] ^ code[3] ^ code[6] ^ code[7] ^ code[10] ^ code[11];
  wire s2 = code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[12];
  wire s3 = code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12];
  assign syn = {s3, s2, s1, s0};
  assign perr = code[0] ^ (code[1] ^ code[2] ^ code[3] ^ code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12]);
endmodule
module hamming16_encode (input [15:0] d, output [4:0] ck, output op);
  assign ck[0] = d[0] ^ d[1] ^ d[3] ^ d[4] ^ d[6] ^ d[8] ^ d[10] ^ d[11] ^ d[13] ^ d[15];
  assign ck[1] = d[0] ^ d[2] ^ d[3] ^ d[5] ^ d[6] ^ d[9] ^ d[10] ^ d[12] ^ d[13];
  assign ck[2] = d[1] ^ d[2] ^ d[3] ^ d[7] ^ d[8] ^ d[9] ^ d[10] ^ d[14] ^ d[15];
  assign ck[3] = d[4] ^ d[5] ^ d[6] ^ d[7] ^ d[8] ^ d[9] ^ d[10];
  assign ck[4] = d[11] ^ d[12] ^ d[13] ^ d[14] ^ d[15];
  assign op = d[0] ^ d[1] ^ d[2] ^ d[3] ^ d[4] ^ d[5] ^ d[6] ^ d[7] ^ d[8] ^ d[9] ^ d[10] ^ d[11] ^ d[12] ^ d[13] ^ d[14] ^ d[15] ^ ck[0] ^ ck[1] ^ ck[2] ^ ck[3] ^ ck[4];
endmodule
module hamming16_decode (
  input [21:0] code,
  output [15:0] dout,
  output se, de);
  wire syn0 = code[1] ^ code[3] ^ code[5] ^ code[7] ^ code[9] ^ code[11] ^ code[13] ^ code[15] ^ code[17] ^ code[19] ^ code[21];
  wire syn1 = code[2] ^ code[3] ^ code[6] ^ code[7] ^ code[10] ^ code[11] ^ code[14] ^ code[15] ^ code[18] ^ code[19];
  wire syn2 = code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[20] ^ code[21];
  wire syn3 = code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15];
  wire syn4 = code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21];
  wire [4:0] syndrome = {syn4, syn3, syn2, syn1, syn0};
  wire perr = code[0] ^ (code[1] ^ code[2] ^ code[3] ^ code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21]);
  wire snz = |syndrome;
  assign se = snz & perr;
  assign de = snz & ~perr;
  assign dout[0] = (se & (syndrome == 5'd3)) ? ~code[3] : code[3];
  assign dout[1] = (se & (syndrome == 5'd5)) ? ~code[5] : code[5];
  assign dout[2] = (se & (syndrome == 5'd6)) ? ~code[6] : code[6];
  assign dout[3] = (se & (syndrome == 5'd7)) ? ~code[7] : code[7];
  assign dout[4] = (se & (syndrome == 5'd9)) ? ~code[9] : code[9];
  assign dout[5] = (se & (syndrome == 5'd10)) ? ~code[10] : code[10];
  assign dout[6] = (se & (syndrome == 5'd11)) ? ~code[11] : code[11];
  assign dout[7] = (se & (syndrome == 5'd12)) ? ~code[12] : code[12];
  assign dout[8] = (se & (syndrome == 5'd13)) ? ~code[13] : code[13];
  assign dout[9] = (se & (syndrome == 5'd14)) ? ~code[14] : code[14];
  assign dout[10] = (se & (syndrome == 5'd15)) ? ~code[15] : code[15];
  assign dout[11] = (se & (syndrome == 5'd17)) ? ~code[17] : code[17];
  assign dout[12] = (se & (syndrome == 5'd18)) ? ~code[18] : code[18];
  assign dout[13] = (se & (syndrome == 5'd19)) ? ~code[19] : code[19];
  assign dout[14] = (se & (syndrome == 5'd20)) ? ~code[20] : code[20];
  assign dout[15] = (se & (syndrome == 5'd21)) ? ~code[21] : code[21];
endmodule
module hamming16_syndrome (input [21:0] code, output [4:0] syn, output perr);
  wire s0 = code[1] ^ code[3] ^ code[5] ^ code[7] ^ code[9] ^ code[11] ^ code[13] ^ code[15] ^ code[17] ^ code[19] ^ code[21];
  wire s1 = code[2] ^ code[3] ^ code[6] ^ code[7] ^ code[10] ^ code[11] ^ code[14] ^ code[15] ^ code[18] ^ code[19];
  wire s2 = code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[20] ^ code[21];
  wire s3 = code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15];
  wire s4 = code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21];
  assign syn = {s4, s3, s2, s1, s0};
  assign perr = code[0] ^ (code[1] ^ code[2] ^ code[3] ^ code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21]);
endmodule
module hamming32_encode (input [31:0] d, output [5:0] ck, output op);
  assign ck[0] = d[0] ^ d[1] ^ d[3] ^ d[4] ^ d[6] ^ d[8] ^ d[10] ^ d[11] ^ d[13] ^ d[15] ^ d[17] ^ d[19] ^ d[21] ^ d[23] ^ d[25] ^ d[26] ^ d[28] ^ d[30];
  assign ck[1] = d[0] ^ d[2] ^ d[3] ^ d[5] ^ d[6] ^ d[9] ^ d[10] ^ d[12] ^ d[13] ^ d[16] ^ d[17] ^ d[20] ^ d[21] ^ d[24] ^ d[25] ^ d[27] ^ d[28] ^ d[31];
  assign ck[2] = d[1] ^ d[2] ^ d[3] ^ d[7] ^ d[8] ^ d[9] ^ d[10] ^ d[14] ^ d[15] ^ d[16] ^ d[17] ^ d[22] ^ d[23] ^ d[24] ^ d[25] ^ d[29] ^ d[30] ^ d[31];
  assign ck[3] = d[4] ^ d[5] ^ d[6] ^ d[7] ^ d[8] ^ d[9] ^ d[10] ^ d[18] ^ d[19] ^ d[20] ^ d[21] ^ d[22] ^ d[23] ^ d[24] ^ d[25];
  assign ck[4] = d[11] ^ d[12] ^ d[13] ^ d[14] ^ d[15] ^ d[16] ^ d[17] ^ d[18] ^ d[19] ^ d[20] ^ d[21] ^ d[22] ^ d[23] ^ d[24] ^ d[25];
  assign ck[5] = d[26] ^ d[27] ^ d[28] ^ d[29] ^ d[30] ^ d[31];
  assign op = d[0] ^ d[1] ^ d[2] ^ d[3] ^ d[4] ^ d[5] ^ d[6] ^ d[7] ^ d[8] ^ d[9] ^ d[10] ^ d[11] ^ d[12] ^ d[13] ^ d[14] ^ d[15] ^ d[16] ^ d[17] ^ d[18] ^ d[19] ^ d[20] ^ d[21] ^ d[22] ^ d[23] ^ d[24] ^ d[25] ^ d[26] ^ d[27] ^ d[28] ^ d[29] ^ d[30] ^ d[31] ^ ck[0] ^ ck[1] ^ ck[2] ^ ck[3] ^ ck[4] ^ ck[5];
endmodule
module hamming32_decode (
  input [38:0] code,
  output [31:0] dout,
  output se, de);
  wire syn0 = code[1] ^ code[3] ^ code[5] ^ code[7] ^ code[9] ^ code[11] ^ code[13] ^ code[15] ^ code[17] ^ code[19] ^ code[21] ^ code[23] ^ code[25] ^ code[27] ^ code[29] ^ code[31] ^ code[33] ^ code[35] ^ code[37];
  wire syn1 = code[2] ^ code[3] ^ code[6] ^ code[7] ^ code[10] ^ code[11] ^ code[14] ^ code[15] ^ code[18] ^ code[19] ^ code[22] ^ code[23] ^ code[26] ^ code[27] ^ code[30] ^ code[31] ^ code[34] ^ code[35] ^ code[38];
  wire syn2 = code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[36] ^ code[37] ^ code[38];
  wire syn3 = code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31];
  wire syn4 = code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31];
  wire syn5 = code[32] ^ code[33] ^ code[34] ^ code[35] ^ code[36] ^ code[37] ^ code[38];
  wire [5:0] syndrome = {syn5, syn4, syn3, syn2, syn1, syn0};
  wire perr = code[0] ^ (code[1] ^ code[2] ^ code[3] ^ code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[32] ^ code[33] ^ code[34] ^ code[35] ^ code[36] ^ code[37] ^ code[38]);
  wire snz = |syndrome;
  assign se = snz & perr;
  assign de = snz & ~perr;
  assign dout[0] = (se & (syndrome == 6'd3)) ? ~code[3] : code[3];
  assign dout[1] = (se & (syndrome == 6'd5)) ? ~code[5] : code[5];
  assign dout[2] = (se & (syndrome == 6'd6)) ? ~code[6] : code[6];
  assign dout[3] = (se & (syndrome == 6'd7)) ? ~code[7] : code[7];
  assign dout[4] = (se & (syndrome == 6'd9)) ? ~code[9] : code[9];
  assign dout[5] = (se & (syndrome == 6'd10)) ? ~code[10] : code[10];
  assign dout[6] = (se & (syndrome == 6'd11)) ? ~code[11] : code[11];
  assign dout[7] = (se & (syndrome == 6'd12)) ? ~code[12] : code[12];
  assign dout[8] = (se & (syndrome == 6'd13)) ? ~code[13] : code[13];
  assign dout[9] = (se & (syndrome == 6'd14)) ? ~code[14] : code[14];
  assign dout[10] = (se & (syndrome == 6'd15)) ? ~code[15] : code[15];
  assign dout[11] = (se & (syndrome == 6'd17)) ? ~code[17] : code[17];
  assign dout[12] = (se & (syndrome == 6'd18)) ? ~code[18] : code[18];
  assign dout[13] = (se & (syndrome == 6'd19)) ? ~code[19] : code[19];
  assign dout[14] = (se & (syndrome == 6'd20)) ? ~code[20] : code[20];
  assign dout[15] = (se & (syndrome == 6'd21)) ? ~code[21] : code[21];
  assign dout[16] = (se & (syndrome == 6'd22)) ? ~code[22] : code[22];
  assign dout[17] = (se & (syndrome == 6'd23)) ? ~code[23] : code[23];
  assign dout[18] = (se & (syndrome == 6'd24)) ? ~code[24] : code[24];
  assign dout[19] = (se & (syndrome == 6'd25)) ? ~code[25] : code[25];
  assign dout[20] = (se & (syndrome == 6'd26)) ? ~code[26] : code[26];
  assign dout[21] = (se & (syndrome == 6'd27)) ? ~code[27] : code[27];
  assign dout[22] = (se & (syndrome == 6'd28)) ? ~code[28] : code[28];
  assign dout[23] = (se & (syndrome == 6'd29)) ? ~code[29] : code[29];
  assign dout[24] = (se & (syndrome == 6'd30)) ? ~code[30] : code[30];
  assign dout[25] = (se & (syndrome == 6'd31)) ? ~code[31] : code[31];
  assign dout[26] = (se & (syndrome == 6'd33)) ? ~code[33] : code[33];
  assign dout[27] = (se & (syndrome == 6'd34)) ? ~code[34] : code[34];
  assign dout[28] = (se & (syndrome == 6'd35)) ? ~code[35] : code[35];
  assign dout[29] = (se & (syndrome == 6'd36)) ? ~code[36] : code[36];
  assign dout[30] = (se & (syndrome == 6'd37)) ? ~code[37] : code[37];
  assign dout[31] = (se & (syndrome == 6'd38)) ? ~code[38] : code[38];
endmodule
module hamming32_syndrome (input [38:0] code, output [5:0] syn, output perr);
  wire s0 = code[1] ^ code[3] ^ code[5] ^ code[7] ^ code[9] ^ code[11] ^ code[13] ^ code[15] ^ code[17] ^ code[19] ^ code[21] ^ code[23] ^ code[25] ^ code[27] ^ code[29] ^ code[31] ^ code[33] ^ code[35] ^ code[37];
  wire s1 = code[2] ^ code[3] ^ code[6] ^ code[7] ^ code[10] ^ code[11] ^ code[14] ^ code[15] ^ code[18] ^ code[19] ^ code[22] ^ code[23] ^ code[26] ^ code[27] ^ code[30] ^ code[31] ^ code[34] ^ code[35] ^ code[38];
  wire s2 = code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[36] ^ code[37] ^ code[38];
  wire s3 = code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31];
  wire s4 = code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31];
  wire s5 = code[32] ^ code[33] ^ code[34] ^ code[35] ^ code[36] ^ code[37] ^ code[38];
  assign syn = {s5, s4, s3, s2, s1, s0};
  assign perr = code[0] ^ (code[1] ^ code[2] ^ code[3] ^ code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[32] ^ code[33] ^ code[34] ^ code[35] ^ code[36] ^ code[37] ^ code[38]);
endmodule
module hamming64_encode (input [63:0] d, output [6:0] ck, output op);
  assign ck[0] = d[0] ^ d[1] ^ d[3] ^ d[4] ^ d[6] ^ d[8] ^ d[10] ^ d[11] ^ d[13] ^ d[15] ^ d[17] ^ d[19] ^ d[21] ^ d[23] ^ d[25] ^ d[26] ^ d[28] ^ d[30] ^ d[32] ^ d[34] ^ d[36] ^ d[38] ^ d[40] ^ d[42] ^ d[44] ^ d[46] ^ d[48] ^ d[50] ^ d[52] ^ d[54] ^ d[56] ^ d[57] ^ d[59] ^ d[61] ^ d[63];
  assign ck[1] = d[0] ^ d[2] ^ d[3] ^ d[5] ^ d[6] ^ d[9] ^ d[10] ^ d[12] ^ d[13] ^ d[16] ^ d[17] ^ d[20] ^ d[21] ^ d[24] ^ d[25] ^ d[27] ^ d[28] ^ d[31] ^ d[32] ^ d[35] ^ d[36] ^ d[39] ^ d[40] ^ d[43] ^ d[44] ^ d[47] ^ d[48] ^ d[51] ^ d[52] ^ d[55] ^ d[56] ^ d[58] ^ d[59] ^ d[62] ^ d[63];
  assign ck[2] = d[1] ^ d[2] ^ d[3] ^ d[7] ^ d[8] ^ d[9] ^ d[10] ^ d[14] ^ d[15] ^ d[16] ^ d[17] ^ d[22] ^ d[23] ^ d[24] ^ d[25] ^ d[29] ^ d[30] ^ d[31] ^ d[32] ^ d[37] ^ d[38] ^ d[39] ^ d[40] ^ d[45] ^ d[46] ^ d[47] ^ d[48] ^ d[53] ^ d[54] ^ d[55] ^ d[56] ^ d[60] ^ d[61] ^ d[62] ^ d[63];
  assign ck[3] = d[4] ^ d[5] ^ d[6] ^ d[7] ^ d[8] ^ d[9] ^ d[10] ^ d[18] ^ d[19] ^ d[20] ^ d[21] ^ d[22] ^ d[23] ^ d[24] ^ d[25] ^ d[33] ^ d[34] ^ d[35] ^ d[36] ^ d[37] ^ d[38] ^ d[39] ^ d[40] ^ d[49] ^ d[50] ^ d[51] ^ d[52] ^ d[53] ^ d[54] ^ d[55] ^ d[56];
  assign ck[4] = d[11] ^ d[12] ^ d[13] ^ d[14] ^ d[15] ^ d[16] ^ d[17] ^ d[18] ^ d[19] ^ d[20] ^ d[21] ^ d[22] ^ d[23] ^ d[24] ^ d[25] ^ d[41] ^ d[42] ^ d[43] ^ d[44] ^ d[45] ^ d[46] ^ d[47] ^ d[48] ^ d[49] ^ d[50] ^ d[51] ^ d[52] ^ d[53] ^ d[54] ^ d[55] ^ d[56];
  assign ck[5] = d[26] ^ d[27] ^ d[28] ^ d[29] ^ d[30] ^ d[31] ^ d[32] ^ d[33] ^ d[34] ^ d[35] ^ d[36] ^ d[37] ^ d[38] ^ d[39] ^ d[40] ^ d[41] ^ d[42] ^ d[43] ^ d[44] ^ d[45] ^ d[46] ^ d[47] ^ d[48] ^ d[49] ^ d[50] ^ d[51] ^ d[52] ^ d[53] ^ d[54] ^ d[55] ^ d[56];
  assign ck[6] = d[57] ^ d[58] ^ d[59] ^ d[60] ^ d[61] ^ d[62] ^ d[63];
  assign op = d[0] ^ d[1] ^ d[2] ^ d[3] ^ d[4] ^ d[5] ^ d[6] ^ d[7] ^ d[8] ^ d[9] ^ d[10] ^ d[11] ^ d[12] ^ d[13] ^ d[14] ^ d[15] ^ d[16] ^ d[17] ^ d[18] ^ d[19] ^ d[20] ^ d[21] ^ d[22] ^ d[23] ^ d[24] ^ d[25] ^ d[26] ^ d[27] ^ d[28] ^ d[29] ^ d[30] ^ d[31] ^ d[32] ^ d[33] ^ d[34] ^ d[35] ^ d[36] ^ d[37] ^ d[38] ^ d[39] ^ d[40] ^ d[41] ^ d[42] ^ d[43] ^ d[44] ^ d[45] ^ d[46] ^ d[47] ^ d[48] ^ d[49] ^ d[50] ^ d[51] ^ d[52] ^ d[53] ^ d[54] ^ d[55] ^ d[56] ^ d[57] ^ d[58] ^ d[59] ^ d[60] ^ d[61] ^ d[62] ^ d[63] ^ ck[0] ^ ck[1] ^ ck[2] ^ ck[3] ^ ck[4] ^ ck[5] ^ ck[6];
endmodule
module hamming64_decode (
  input [71:0] code,
  output [63:0] dout,
  output se, de);
  wire syn0 = code[1] ^ code[3] ^ code[5] ^ code[7] ^ code[9] ^ code[11] ^ code[13] ^ code[15] ^ code[17] ^ code[19] ^ code[21] ^ code[23] ^ code[25] ^ code[27] ^ code[29] ^ code[31] ^ code[33] ^ code[35] ^ code[37] ^ code[39] ^ code[41] ^ code[43] ^ code[45] ^ code[47] ^ code[49] ^ code[51] ^ code[53] ^ code[55] ^ code[57] ^ code[59] ^ code[61] ^ code[63] ^ code[65] ^ code[67] ^ code[69] ^ code[71];
  wire syn1 = code[2] ^ code[3] ^ code[6] ^ code[7] ^ code[10] ^ code[11] ^ code[14] ^ code[15] ^ code[18] ^ code[19] ^ code[22] ^ code[23] ^ code[26] ^ code[27] ^ code[30] ^ code[31] ^ code[34] ^ code[35] ^ code[38] ^ code[39] ^ code[42] ^ code[43] ^ code[46] ^ code[47] ^ code[50] ^ code[51] ^ code[54] ^ code[55] ^ code[58] ^ code[59] ^ code[62] ^ code[63] ^ code[66] ^ code[67] ^ code[70] ^ code[71];
  wire syn2 = code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[36] ^ code[37] ^ code[38] ^ code[39] ^ code[44] ^ code[45] ^ code[46] ^ code[47] ^ code[52] ^ code[53] ^ code[54] ^ code[55] ^ code[60] ^ code[61] ^ code[62] ^ code[63] ^ code[68] ^ code[69] ^ code[70] ^ code[71];
  wire syn3 = code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[40] ^ code[41] ^ code[42] ^ code[43] ^ code[44] ^ code[45] ^ code[46] ^ code[47] ^ code[56] ^ code[57] ^ code[58] ^ code[59] ^ code[60] ^ code[61] ^ code[62] ^ code[63];
  wire syn4 = code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[48] ^ code[49] ^ code[50] ^ code[51] ^ code[52] ^ code[53] ^ code[54] ^ code[55] ^ code[56] ^ code[57] ^ code[58] ^ code[59] ^ code[60] ^ code[61] ^ code[62] ^ code[63];
  wire syn5 = code[32] ^ code[33] ^ code[34] ^ code[35] ^ code[36] ^ code[37] ^ code[38] ^ code[39] ^ code[40] ^ code[41] ^ code[42] ^ code[43] ^ code[44] ^ code[45] ^ code[46] ^ code[47] ^ code[48] ^ code[49] ^ code[50] ^ code[51] ^ code[52] ^ code[53] ^ code[54] ^ code[55] ^ code[56] ^ code[57] ^ code[58] ^ code[59] ^ code[60] ^ code[61] ^ code[62] ^ code[63];
  wire syn6 = code[64] ^ code[65] ^ code[66] ^ code[67] ^ code[68] ^ code[69] ^ code[70] ^ code[71];
  wire [6:0] syndrome = {syn6, syn5, syn4, syn3, syn2, syn1, syn0};
  wire perr = code[0] ^ (code[1] ^ code[2] ^ code[3] ^ code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[32] ^ code[33] ^ code[34] ^ code[35] ^ code[36] ^ code[37] ^ code[38] ^ code[39] ^ code[40] ^ code[41] ^ code[42] ^ code[43] ^ code[44] ^ code[45] ^ code[46] ^ code[47] ^ code[48] ^ code[49] ^ code[50] ^ code[51] ^ code[52] ^ code[53] ^ code[54] ^ code[55] ^ code[56] ^ code[57] ^ code[58] ^ code[59] ^ code[60] ^ code[61] ^ code[62] ^ code[63] ^ code[64] ^ code[65] ^ code[66] ^ code[67] ^ code[68] ^ code[69] ^ code[70] ^ code[71]);
  wire snz = |syndrome;
  assign se = snz & perr;
  assign de = snz & ~perr;
  assign dout[0] = (se & (syndrome == 7'd3)) ? ~code[3] : code[3];
  assign dout[1] = (se & (syndrome == 7'd5)) ? ~code[5] : code[5];
  assign dout[2] = (se & (syndrome == 7'd6)) ? ~code[6] : code[6];
  assign dout[3] = (se & (syndrome == 7'd7)) ? ~code[7] : code[7];
  assign dout[4] = (se & (syndrome == 7'd9)) ? ~code[9] : code[9];
  assign dout[5] = (se & (syndrome == 7'd10)) ? ~code[10] : code[10];
  assign dout[6] = (se & (syndrome == 7'd11)) ? ~code[11] : code[11];
  assign dout[7] = (se & (syndrome == 7'd12)) ? ~code[12] : code[12];
  assign dout[8] = (se & (syndrome == 7'd13)) ? ~code[13] : code[13];
  assign dout[9] = (se & (syndrome == 7'd14)) ? ~code[14] : code[14];
  assign dout[10] = (se & (syndrome == 7'd15)) ? ~code[15] : code[15];
  assign dout[11] = (se & (syndrome == 7'd17)) ? ~code[17] : code[17];
  assign dout[12] = (se & (syndrome == 7'd18)) ? ~code[18] : code[18];
  assign dout[13] = (se & (syndrome == 7'd19)) ? ~code[19] : code[19];
  assign dout[14] = (se & (syndrome == 7'd20)) ? ~code[20] : code[20];
  assign dout[15] = (se & (syndrome == 7'd21)) ? ~code[21] : code[21];
  assign dout[16] = (se & (syndrome == 7'd22)) ? ~code[22] : code[22];
  assign dout[17] = (se & (syndrome == 7'd23)) ? ~code[23] : code[23];
  assign dout[18] = (se & (syndrome == 7'd24)) ? ~code[24] : code[24];
  assign dout[19] = (se & (syndrome == 7'd25)) ? ~code[25] : code[25];
  assign dout[20] = (se & (syndrome == 7'd26)) ? ~code[26] : code[26];
  assign dout[21] = (se & (syndrome == 7'd27)) ? ~code[27] : code[27];
  assign dout[22] = (se & (syndrome == 7'd28)) ? ~code[28] : code[28];
  assign dout[23] = (se & (syndrome == 7'd29)) ? ~code[29] : code[29];
  assign dout[24] = (se & (syndrome == 7'd30)) ? ~code[30] : code[30];
  assign dout[25] = (se & (syndrome == 7'd31)) ? ~code[31] : code[31];
  assign dout[26] = (se & (syndrome == 7'd33)) ? ~code[33] : code[33];
  assign dout[27] = (se & (syndrome == 7'd34)) ? ~code[34] : code[34];
  assign dout[28] = (se & (syndrome == 7'd35)) ? ~code[35] : code[35];
  assign dout[29] = (se & (syndrome == 7'd36)) ? ~code[36] : code[36];
  assign dout[30] = (se & (syndrome == 7'd37)) ? ~code[37] : code[37];
  assign dout[31] = (se & (syndrome == 7'd38)) ? ~code[38] : code[38];
  assign dout[32] = (se & (syndrome == 7'd39)) ? ~code[39] : code[39];
  assign dout[33] = (se & (syndrome == 7'd40)) ? ~code[40] : code[40];
  assign dout[34] = (se & (syndrome == 7'd41)) ? ~code[41] : code[41];
  assign dout[35] = (se & (syndrome == 7'd42)) ? ~code[42] : code[42];
  assign dout[36] = (se & (syndrome == 7'd43)) ? ~code[43] : code[43];
  assign dout[37] = (se & (syndrome == 7'd44)) ? ~code[44] : code[44];
  assign dout[38] = (se & (syndrome == 7'd45)) ? ~code[45] : code[45];
  assign dout[39] = (se & (syndrome == 7'd46)) ? ~code[46] : code[46];
  assign dout[40] = (se & (syndrome == 7'd47)) ? ~code[47] : code[47];
  assign dout[41] = (se & (syndrome == 7'd48)) ? ~code[48] : code[48];
  assign dout[42] = (se & (syndrome == 7'd49)) ? ~code[49] : code[49];
  assign dout[43] = (se & (syndrome == 7'd50)) ? ~code[50] : code[50];
  assign dout[44] = (se & (syndrome == 7'd51)) ? ~code[51] : code[51];
  assign dout[45] = (se & (syndrome == 7'd52)) ? ~code[52] : code[52];
  assign dout[46] = (se & (syndrome == 7'd53)) ? ~code[53] : code[53];
  assign dout[47] = (se & (syndrome == 7'd54)) ? ~code[54] : code[54];
  assign dout[48] = (se & (syndrome == 7'd55)) ? ~code[55] : code[55];
  assign dout[49] = (se & (syndrome == 7'd56)) ? ~code[56] : code[56];
  assign dout[50] = (se & (syndrome == 7'd57)) ? ~code[57] : code[57];
  assign dout[51] = (se & (syndrome == 7'd58)) ? ~code[58] : code[58];
  assign dout[52] = (se & (syndrome == 7'd59)) ? ~code[59] : code[59];
  assign dout[53] = (se & (syndrome == 7'd60)) ? ~code[60] : code[60];
  assign dout[54] = (se & (syndrome == 7'd61)) ? ~code[61] : code[61];
  assign dout[55] = (se & (syndrome == 7'd62)) ? ~code[62] : code[62];
  assign dout[56] = (se & (syndrome == 7'd63)) ? ~code[63] : code[63];
  assign dout[57] = (se & (syndrome == 7'd65)) ? ~code[65] : code[65];
  assign dout[58] = (se & (syndrome == 7'd66)) ? ~code[66] : code[66];
  assign dout[59] = (se & (syndrome == 7'd67)) ? ~code[67] : code[67];
  assign dout[60] = (se & (syndrome == 7'd68)) ? ~code[68] : code[68];
  assign dout[61] = (se & (syndrome == 7'd69)) ? ~code[69] : code[69];
  assign dout[62] = (se & (syndrome == 7'd70)) ? ~code[70] : code[70];
  assign dout[63] = (se & (syndrome == 7'd71)) ? ~code[71] : code[71];
endmodule
module hamming64_syndrome (input [71:0] code, output [6:0] syn, output perr);
  wire s0 = code[1] ^ code[3] ^ code[5] ^ code[7] ^ code[9] ^ code[11] ^ code[13] ^ code[15] ^ code[17] ^ code[19] ^ code[21] ^ code[23] ^ code[25] ^ code[27] ^ code[29] ^ code[31] ^ code[33] ^ code[35] ^ code[37] ^ code[39] ^ code[41] ^ code[43] ^ code[45] ^ code[47] ^ code[49] ^ code[51] ^ code[53] ^ code[55] ^ code[57] ^ code[59] ^ code[61] ^ code[63] ^ code[65] ^ code[67] ^ code[69] ^ code[71];
  wire s1 = code[2] ^ code[3] ^ code[6] ^ code[7] ^ code[10] ^ code[11] ^ code[14] ^ code[15] ^ code[18] ^ code[19] ^ code[22] ^ code[23] ^ code[26] ^ code[27] ^ code[30] ^ code[31] ^ code[34] ^ code[35] ^ code[38] ^ code[39] ^ code[42] ^ code[43] ^ code[46] ^ code[47] ^ code[50] ^ code[51] ^ code[54] ^ code[55] ^ code[58] ^ code[59] ^ code[62] ^ code[63] ^ code[66] ^ code[67] ^ code[70] ^ code[71];
  wire s2 = code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[36] ^ code[37] ^ code[38] ^ code[39] ^ code[44] ^ code[45] ^ code[46] ^ code[47] ^ code[52] ^ code[53] ^ code[54] ^ code[55] ^ code[60] ^ code[61] ^ code[62] ^ code[63] ^ code[68] ^ code[69] ^ code[70] ^ code[71];
  wire s3 = code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[40] ^ code[41] ^ code[42] ^ code[43] ^ code[44] ^ code[45] ^ code[46] ^ code[47] ^ code[56] ^ code[57] ^ code[58] ^ code[59] ^ code[60] ^ code[61] ^ code[62] ^ code[63];
  wire s4 = code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[48] ^ code[49] ^ code[50] ^ code[51] ^ code[52] ^ code[53] ^ code[54] ^ code[55] ^ code[56] ^ code[57] ^ code[58] ^ code[59] ^ code[60] ^ code[61] ^ code[62] ^ code[63];
  wire s5 = code[32] ^ code[33] ^ code[34] ^ code[35] ^ code[36] ^ code[37] ^ code[38] ^ code[39] ^ code[40] ^ code[41] ^ code[42] ^ code[43] ^ code[44] ^ code[45] ^ code[46] ^ code[47] ^ code[48] ^ code[49] ^ code[50] ^ code[51] ^ code[52] ^ code[53] ^ code[54] ^ code[55] ^ code[56] ^ code[57] ^ code[58] ^ code[59] ^ code[60] ^ code[61] ^ code[62] ^ code[63];
  wire s6 = code[64] ^ code[65] ^ code[66] ^ code[67] ^ code[68] ^ code[69] ^ code[70] ^ code[71];
  assign syn = {s6, s5, s4, s3, s2, s1, s0};
  assign perr = code[0] ^ (code[1] ^ code[2] ^ code[3] ^ code[4] ^ code[5] ^ code[6] ^ code[7] ^ code[8] ^ code[9] ^ code[10] ^ code[11] ^ code[12] ^ code[13] ^ code[14] ^ code[15] ^ code[16] ^ code[17] ^ code[18] ^ code[19] ^ code[20] ^ code[21] ^ code[22] ^ code[23] ^ code[24] ^ code[25] ^ code[26] ^ code[27] ^ code[28] ^ code[29] ^ code[30] ^ code[31] ^ code[32] ^ code[33] ^ code[34] ^ code[35] ^ code[36] ^ code[37] ^ code[38] ^ code[39] ^ code[40] ^ code[41] ^ code[42] ^ code[43] ^ code[44] ^ code[45] ^ code[46] ^ code[47] ^ code[48] ^ code[49] ^ code[50] ^ code[51] ^ code[52] ^ code[53] ^ code[54] ^ code[55] ^ code[56] ^ code[57] ^ code[58] ^ code[59] ^ code[60] ^ code[61] ^ code[62] ^ code[63] ^ code[64] ^ code[65] ^ code[66] ^ code[67] ^ code[68] ^ code[69] ^ code[70] ^ code[71]);
endmodule