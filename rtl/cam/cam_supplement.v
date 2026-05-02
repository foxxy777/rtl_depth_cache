module cam_A_32w32 (
  input [31:0] req_tag,
  input [1023:0] tags,
  output [31:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign hit[4] = (req_tag == tags[128 +: 32]);
  assign hit[5] = (req_tag == tags[160 +: 32]);
  assign hit[6] = (req_tag == tags[192 +: 32]);
  assign hit[7] = (req_tag == tags[224 +: 32]);
  assign hit[8] = (req_tag == tags[256 +: 32]);
  assign hit[9] = (req_tag == tags[288 +: 32]);
  assign hit[10] = (req_tag == tags[320 +: 32]);
  assign hit[11] = (req_tag == tags[352 +: 32]);
  assign hit[12] = (req_tag == tags[384 +: 32]);
  assign hit[13] = (req_tag == tags[416 +: 32]);
  assign hit[14] = (req_tag == tags[448 +: 32]);
  assign hit[15] = (req_tag == tags[480 +: 32]);
  assign hit[16] = (req_tag == tags[512 +: 32]);
  assign hit[17] = (req_tag == tags[544 +: 32]);
  assign hit[18] = (req_tag == tags[576 +: 32]);
  assign hit[19] = (req_tag == tags[608 +: 32]);
  assign hit[20] = (req_tag == tags[640 +: 32]);
  assign hit[21] = (req_tag == tags[672 +: 32]);
  assign hit[22] = (req_tag == tags[704 +: 32]);
  assign hit[23] = (req_tag == tags[736 +: 32]);
  assign hit[24] = (req_tag == tags[768 +: 32]);
  assign hit[25] = (req_tag == tags[800 +: 32]);
  assign hit[26] = (req_tag == tags[832 +: 32]);
  assign hit[27] = (req_tag == tags[864 +: 32]);
  assign hit[28] = (req_tag == tags[896 +: 32]);
  assign hit[29] = (req_tag == tags[928 +: 32]);
  assign hit[30] = (req_tag == tags[960 +: 32]);
  assign hit[31] = (req_tag == tags[992 +: 32]);
endmodule

module cam_E2_32w32 (
  input [31:0] req_tag,
  input [1023:0] tags,
  output [31:0] hit
);
  assign hit[0] = ~|(req_tag ^ tags[0 +: 32]);
  assign hit[1] = ~|(req_tag ^ tags[32 +: 32]);
  assign hit[2] = ~|(req_tag ^ tags[64 +: 32]);
  assign hit[3] = ~|(req_tag ^ tags[96 +: 32]);
  assign hit[4] = ~|(req_tag ^ tags[128 +: 32]);
  assign hit[5] = ~|(req_tag ^ tags[160 +: 32]);
  assign hit[6] = ~|(req_tag ^ tags[192 +: 32]);
  assign hit[7] = ~|(req_tag ^ tags[224 +: 32]);
  assign hit[8] = ~|(req_tag ^ tags[256 +: 32]);
  assign hit[9] = ~|(req_tag ^ tags[288 +: 32]);
  assign hit[10] = ~|(req_tag ^ tags[320 +: 32]);
  assign hit[11] = ~|(req_tag ^ tags[352 +: 32]);
  assign hit[12] = ~|(req_tag ^ tags[384 +: 32]);
  assign hit[13] = ~|(req_tag ^ tags[416 +: 32]);
  assign hit[14] = ~|(req_tag ^ tags[448 +: 32]);
  assign hit[15] = ~|(req_tag ^ tags[480 +: 32]);
  assign hit[16] = ~|(req_tag ^ tags[512 +: 32]);
  assign hit[17] = ~|(req_tag ^ tags[544 +: 32]);
  assign hit[18] = ~|(req_tag ^ tags[576 +: 32]);
  assign hit[19] = ~|(req_tag ^ tags[608 +: 32]);
  assign hit[20] = ~|(req_tag ^ tags[640 +: 32]);
  assign hit[21] = ~|(req_tag ^ tags[672 +: 32]);
  assign hit[22] = ~|(req_tag ^ tags[704 +: 32]);
  assign hit[23] = ~|(req_tag ^ tags[736 +: 32]);
  assign hit[24] = ~|(req_tag ^ tags[768 +: 32]);
  assign hit[25] = ~|(req_tag ^ tags[800 +: 32]);
  assign hit[26] = ~|(req_tag ^ tags[832 +: 32]);
  assign hit[27] = ~|(req_tag ^ tags[864 +: 32]);
  assign hit[28] = ~|(req_tag ^ tags[896 +: 32]);
  assign hit[29] = ~|(req_tag ^ tags[928 +: 32]);
  assign hit[30] = ~|(req_tag ^ tags[960 +: 32]);
  assign hit[31] = ~|(req_tag ^ tags[992 +: 32]);
endmodule

module cam_A_64w32 (
  input [31:0] req_tag,
  input [2047:0] tags,
  output [63:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign hit[4] = (req_tag == tags[128 +: 32]);
  assign hit[5] = (req_tag == tags[160 +: 32]);
  assign hit[6] = (req_tag == tags[192 +: 32]);
  assign hit[7] = (req_tag == tags[224 +: 32]);
  assign hit[8] = (req_tag == tags[256 +: 32]);
  assign hit[9] = (req_tag == tags[288 +: 32]);
  assign hit[10] = (req_tag == tags[320 +: 32]);
  assign hit[11] = (req_tag == tags[352 +: 32]);
  assign hit[12] = (req_tag == tags[384 +: 32]);
  assign hit[13] = (req_tag == tags[416 +: 32]);
  assign hit[14] = (req_tag == tags[448 +: 32]);
  assign hit[15] = (req_tag == tags[480 +: 32]);
  assign hit[16] = (req_tag == tags[512 +: 32]);
  assign hit[17] = (req_tag == tags[544 +: 32]);
  assign hit[18] = (req_tag == tags[576 +: 32]);
  assign hit[19] = (req_tag == tags[608 +: 32]);
  assign hit[20] = (req_tag == tags[640 +: 32]);
  assign hit[21] = (req_tag == tags[672 +: 32]);
  assign hit[22] = (req_tag == tags[704 +: 32]);
  assign hit[23] = (req_tag == tags[736 +: 32]);
  assign hit[24] = (req_tag == tags[768 +: 32]);
  assign hit[25] = (req_tag == tags[800 +: 32]);
  assign hit[26] = (req_tag == tags[832 +: 32]);
  assign hit[27] = (req_tag == tags[864 +: 32]);
  assign hit[28] = (req_tag == tags[896 +: 32]);
  assign hit[29] = (req_tag == tags[928 +: 32]);
  assign hit[30] = (req_tag == tags[960 +: 32]);
  assign hit[31] = (req_tag == tags[992 +: 32]);
  assign hit[32] = (req_tag == tags[1024 +: 32]);
  assign hit[33] = (req_tag == tags[1056 +: 32]);
  assign hit[34] = (req_tag == tags[1088 +: 32]);
  assign hit[35] = (req_tag == tags[1120 +: 32]);
  assign hit[36] = (req_tag == tags[1152 +: 32]);
  assign hit[37] = (req_tag == tags[1184 +: 32]);
  assign hit[38] = (req_tag == tags[1216 +: 32]);
  assign hit[39] = (req_tag == tags[1248 +: 32]);
  assign hit[40] = (req_tag == tags[1280 +: 32]);
  assign hit[41] = (req_tag == tags[1312 +: 32]);
  assign hit[42] = (req_tag == tags[1344 +: 32]);
  assign hit[43] = (req_tag == tags[1376 +: 32]);
  assign hit[44] = (req_tag == tags[1408 +: 32]);
  assign hit[45] = (req_tag == tags[1440 +: 32]);
  assign hit[46] = (req_tag == tags[1472 +: 32]);
  assign hit[47] = (req_tag == tags[1504 +: 32]);
  assign hit[48] = (req_tag == tags[1536 +: 32]);
  assign hit[49] = (req_tag == tags[1568 +: 32]);
  assign hit[50] = (req_tag == tags[1600 +: 32]);
  assign hit[51] = (req_tag == tags[1632 +: 32]);
  assign hit[52] = (req_tag == tags[1664 +: 32]);
  assign hit[53] = (req_tag == tags[1696 +: 32]);
  assign hit[54] = (req_tag == tags[1728 +: 32]);
  assign hit[55] = (req_tag == tags[1760 +: 32]);
  assign hit[56] = (req_tag == tags[1792 +: 32]);
  assign hit[57] = (req_tag == tags[1824 +: 32]);
  assign hit[58] = (req_tag == tags[1856 +: 32]);
  assign hit[59] = (req_tag == tags[1888 +: 32]);
  assign hit[60] = (req_tag == tags[1920 +: 32]);
  assign hit[61] = (req_tag == tags[1952 +: 32]);
  assign hit[62] = (req_tag == tags[1984 +: 32]);
  assign hit[63] = (req_tag == tags[2016 +: 32]);
endmodule

module cam_E2_64w32 (
  input [31:0] req_tag,
  input [2047:0] tags,
  output [63:0] hit
);
  assign hit[0] = ~|(req_tag ^ tags[0 +: 32]);
  assign hit[1] = ~|(req_tag ^ tags[32 +: 32]);
  assign hit[2] = ~|(req_tag ^ tags[64 +: 32]);
  assign hit[3] = ~|(req_tag ^ tags[96 +: 32]);
  assign hit[4] = ~|(req_tag ^ tags[128 +: 32]);
  assign hit[5] = ~|(req_tag ^ tags[160 +: 32]);
  assign hit[6] = ~|(req_tag ^ tags[192 +: 32]);
  assign hit[7] = ~|(req_tag ^ tags[224 +: 32]);
  assign hit[8] = ~|(req_tag ^ tags[256 +: 32]);
  assign hit[9] = ~|(req_tag ^ tags[288 +: 32]);
  assign hit[10] = ~|(req_tag ^ tags[320 +: 32]);
  assign hit[11] = ~|(req_tag ^ tags[352 +: 32]);
  assign hit[12] = ~|(req_tag ^ tags[384 +: 32]);
  assign hit[13] = ~|(req_tag ^ tags[416 +: 32]);
  assign hit[14] = ~|(req_tag ^ tags[448 +: 32]);
  assign hit[15] = ~|(req_tag ^ tags[480 +: 32]);
  assign hit[16] = ~|(req_tag ^ tags[512 +: 32]);
  assign hit[17] = ~|(req_tag ^ tags[544 +: 32]);
  assign hit[18] = ~|(req_tag ^ tags[576 +: 32]);
  assign hit[19] = ~|(req_tag ^ tags[608 +: 32]);
  assign hit[20] = ~|(req_tag ^ tags[640 +: 32]);
  assign hit[21] = ~|(req_tag ^ tags[672 +: 32]);
  assign hit[22] = ~|(req_tag ^ tags[704 +: 32]);
  assign hit[23] = ~|(req_tag ^ tags[736 +: 32]);
  assign hit[24] = ~|(req_tag ^ tags[768 +: 32]);
  assign hit[25] = ~|(req_tag ^ tags[800 +: 32]);
  assign hit[26] = ~|(req_tag ^ tags[832 +: 32]);
  assign hit[27] = ~|(req_tag ^ tags[864 +: 32]);
  assign hit[28] = ~|(req_tag ^ tags[896 +: 32]);
  assign hit[29] = ~|(req_tag ^ tags[928 +: 32]);
  assign hit[30] = ~|(req_tag ^ tags[960 +: 32]);
  assign hit[31] = ~|(req_tag ^ tags[992 +: 32]);
  assign hit[32] = ~|(req_tag ^ tags[1024 +: 32]);
  assign hit[33] = ~|(req_tag ^ tags[1056 +: 32]);
  assign hit[34] = ~|(req_tag ^ tags[1088 +: 32]);
  assign hit[35] = ~|(req_tag ^ tags[1120 +: 32]);
  assign hit[36] = ~|(req_tag ^ tags[1152 +: 32]);
  assign hit[37] = ~|(req_tag ^ tags[1184 +: 32]);
  assign hit[38] = ~|(req_tag ^ tags[1216 +: 32]);
  assign hit[39] = ~|(req_tag ^ tags[1248 +: 32]);
  assign hit[40] = ~|(req_tag ^ tags[1280 +: 32]);
  assign hit[41] = ~|(req_tag ^ tags[1312 +: 32]);
  assign hit[42] = ~|(req_tag ^ tags[1344 +: 32]);
  assign hit[43] = ~|(req_tag ^ tags[1376 +: 32]);
  assign hit[44] = ~|(req_tag ^ tags[1408 +: 32]);
  assign hit[45] = ~|(req_tag ^ tags[1440 +: 32]);
  assign hit[46] = ~|(req_tag ^ tags[1472 +: 32]);
  assign hit[47] = ~|(req_tag ^ tags[1504 +: 32]);
  assign hit[48] = ~|(req_tag ^ tags[1536 +: 32]);
  assign hit[49] = ~|(req_tag ^ tags[1568 +: 32]);
  assign hit[50] = ~|(req_tag ^ tags[1600 +: 32]);
  assign hit[51] = ~|(req_tag ^ tags[1632 +: 32]);
  assign hit[52] = ~|(req_tag ^ tags[1664 +: 32]);
  assign hit[53] = ~|(req_tag ^ tags[1696 +: 32]);
  assign hit[54] = ~|(req_tag ^ tags[1728 +: 32]);
  assign hit[55] = ~|(req_tag ^ tags[1760 +: 32]);
  assign hit[56] = ~|(req_tag ^ tags[1792 +: 32]);
  assign hit[57] = ~|(req_tag ^ tags[1824 +: 32]);
  assign hit[58] = ~|(req_tag ^ tags[1856 +: 32]);
  assign hit[59] = ~|(req_tag ^ tags[1888 +: 32]);
  assign hit[60] = ~|(req_tag ^ tags[1920 +: 32]);
  assign hit[61] = ~|(req_tag ^ tags[1952 +: 32]);
  assign hit[62] = ~|(req_tag ^ tags[1984 +: 32]);
  assign hit[63] = ~|(req_tag ^ tags[2016 +: 32]);
endmodule
