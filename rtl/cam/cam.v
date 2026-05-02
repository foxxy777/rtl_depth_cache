module cam_A_2w8 (
  input  [7:0] req_tag,
  input  [15:0] tags,
  output [1:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 8]);
  assign hit[1] = (req_tag == tags[8 +: 8]);
endmodule

module cam_A_2w16 (
  input  [15:0] req_tag,
  input  [31:0] tags,
  output [1:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 16]);
  assign hit[1] = (req_tag == tags[16 +: 16]);
endmodule

module cam_A_2w32 (
  input  [31:0] req_tag,
  input  [63:0] tags,
  output [1:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
endmodule

module cam_A_2w48 (
  input  [47:0] req_tag,
  input  [95:0] tags,
  output [1:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 48]);
  assign hit[1] = (req_tag == tags[48 +: 48]);
endmodule

module cam_A_4w8 (
  input  [7:0] req_tag,
  input  [31:0] tags,
  output [3:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 8]);
  assign hit[1] = (req_tag == tags[8 +: 8]);
  assign hit[2] = (req_tag == tags[16 +: 8]);
  assign hit[3] = (req_tag == tags[24 +: 8]);
endmodule

module cam_A_4w16 (
  input  [15:0] req_tag,
  input  [63:0] tags,
  output [3:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 16]);
  assign hit[1] = (req_tag == tags[16 +: 16]);
  assign hit[2] = (req_tag == tags[32 +: 16]);
  assign hit[3] = (req_tag == tags[48 +: 16]);
endmodule

module cam_A_4w32 (
  input  [31:0] req_tag,
  input  [127:0] tags,
  output [3:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
endmodule

module cam_A_4w48 (
  input  [47:0] req_tag,
  input  [191:0] tags,
  output [3:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 48]);
  assign hit[1] = (req_tag == tags[48 +: 48]);
  assign hit[2] = (req_tag == tags[96 +: 48]);
  assign hit[3] = (req_tag == tags[144 +: 48]);
endmodule

module cam_A_8w8 (
  input  [7:0] req_tag,
  input  [63:0] tags,
  output [7:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 8]);
  assign hit[1] = (req_tag == tags[8 +: 8]);
  assign hit[2] = (req_tag == tags[16 +: 8]);
  assign hit[3] = (req_tag == tags[24 +: 8]);
  assign hit[4] = (req_tag == tags[32 +: 8]);
  assign hit[5] = (req_tag == tags[40 +: 8]);
  assign hit[6] = (req_tag == tags[48 +: 8]);
  assign hit[7] = (req_tag == tags[56 +: 8]);
endmodule

module cam_A_8w16 (
  input  [15:0] req_tag,
  input  [127:0] tags,
  output [7:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 16]);
  assign hit[1] = (req_tag == tags[16 +: 16]);
  assign hit[2] = (req_tag == tags[32 +: 16]);
  assign hit[3] = (req_tag == tags[48 +: 16]);
  assign hit[4] = (req_tag == tags[64 +: 16]);
  assign hit[5] = (req_tag == tags[80 +: 16]);
  assign hit[6] = (req_tag == tags[96 +: 16]);
  assign hit[7] = (req_tag == tags[112 +: 16]);
endmodule

module cam_A_8w32 (
  input  [31:0] req_tag,
  input  [255:0] tags,
  output [7:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign hit[4] = (req_tag == tags[128 +: 32]);
  assign hit[5] = (req_tag == tags[160 +: 32]);
  assign hit[6] = (req_tag == tags[192 +: 32]);
  assign hit[7] = (req_tag == tags[224 +: 32]);
endmodule

module cam_A_8w48 (
  input  [47:0] req_tag,
  input  [383:0] tags,
  output [7:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 48]);
  assign hit[1] = (req_tag == tags[48 +: 48]);
  assign hit[2] = (req_tag == tags[96 +: 48]);
  assign hit[3] = (req_tag == tags[144 +: 48]);
  assign hit[4] = (req_tag == tags[192 +: 48]);
  assign hit[5] = (req_tag == tags[240 +: 48]);
  assign hit[6] = (req_tag == tags[288 +: 48]);
  assign hit[7] = (req_tag == tags[336 +: 48]);
endmodule

module cam_A_16w8 (
  input  [7:0] req_tag,
  input  [127:0] tags,
  output [15:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 8]);
  assign hit[1] = (req_tag == tags[8 +: 8]);
  assign hit[2] = (req_tag == tags[16 +: 8]);
  assign hit[3] = (req_tag == tags[24 +: 8]);
  assign hit[4] = (req_tag == tags[32 +: 8]);
  assign hit[5] = (req_tag == tags[40 +: 8]);
  assign hit[6] = (req_tag == tags[48 +: 8]);
  assign hit[7] = (req_tag == tags[56 +: 8]);
  assign hit[8] = (req_tag == tags[64 +: 8]);
  assign hit[9] = (req_tag == tags[72 +: 8]);
  assign hit[10] = (req_tag == tags[80 +: 8]);
  assign hit[11] = (req_tag == tags[88 +: 8]);
  assign hit[12] = (req_tag == tags[96 +: 8]);
  assign hit[13] = (req_tag == tags[104 +: 8]);
  assign hit[14] = (req_tag == tags[112 +: 8]);
  assign hit[15] = (req_tag == tags[120 +: 8]);
endmodule

module cam_A_16w16 (
  input  [15:0] req_tag,
  input  [255:0] tags,
  output [15:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 16]);
  assign hit[1] = (req_tag == tags[16 +: 16]);
  assign hit[2] = (req_tag == tags[32 +: 16]);
  assign hit[3] = (req_tag == tags[48 +: 16]);
  assign hit[4] = (req_tag == tags[64 +: 16]);
  assign hit[5] = (req_tag == tags[80 +: 16]);
  assign hit[6] = (req_tag == tags[96 +: 16]);
  assign hit[7] = (req_tag == tags[112 +: 16]);
  assign hit[8] = (req_tag == tags[128 +: 16]);
  assign hit[9] = (req_tag == tags[144 +: 16]);
  assign hit[10] = (req_tag == tags[160 +: 16]);
  assign hit[11] = (req_tag == tags[176 +: 16]);
  assign hit[12] = (req_tag == tags[192 +: 16]);
  assign hit[13] = (req_tag == tags[208 +: 16]);
  assign hit[14] = (req_tag == tags[224 +: 16]);
  assign hit[15] = (req_tag == tags[240 +: 16]);
endmodule

module cam_A_16w32 (
  input  [31:0] req_tag,
  input  [511:0] tags,
  output [15:0] hit
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
endmodule

module cam_A_16w48 (
  input  [47:0] req_tag,
  input  [767:0] tags,
  output [15:0] hit
);
  assign hit[0] = (req_tag == tags[0 +: 48]);
  assign hit[1] = (req_tag == tags[48 +: 48]);
  assign hit[2] = (req_tag == tags[96 +: 48]);
  assign hit[3] = (req_tag == tags[144 +: 48]);
  assign hit[4] = (req_tag == tags[192 +: 48]);
  assign hit[5] = (req_tag == tags[240 +: 48]);
  assign hit[6] = (req_tag == tags[288 +: 48]);
  assign hit[7] = (req_tag == tags[336 +: 48]);
  assign hit[8] = (req_tag == tags[384 +: 48]);
  assign hit[9] = (req_tag == tags[432 +: 48]);
  assign hit[10] = (req_tag == tags[480 +: 48]);
  assign hit[11] = (req_tag == tags[528 +: 48]);
  assign hit[12] = (req_tag == tags[576 +: 48]);
  assign hit[13] = (req_tag == tags[624 +: 48]);
  assign hit[14] = (req_tag == tags[672 +: 48]);
  assign hit[15] = (req_tag == tags[720 +: 48]);
endmodule

module cam_B_2w8 (
  input  [7:0] req_tag,
  input  [15:0] tags,
  output [1:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 8]);
  assign hit[1] = (req_tag == tags[8 +: 8]);
  assign any_hit = |hit;
endmodule

module cam_B_2w16 (
  input  [15:0] req_tag,
  input  [31:0] tags,
  output [1:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 16]);
  assign hit[1] = (req_tag == tags[16 +: 16]);
  assign any_hit = |hit;
endmodule

module cam_B_2w32 (
  input  [31:0] req_tag,
  input  [63:0] tags,
  output [1:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign any_hit = |hit;
endmodule

module cam_B_2w48 (
  input  [47:0] req_tag,
  input  [95:0] tags,
  output [1:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 48]);
  assign hit[1] = (req_tag == tags[48 +: 48]);
  assign any_hit = |hit;
endmodule

module cam_B_4w8 (
  input  [7:0] req_tag,
  input  [31:0] tags,
  output [3:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 8]);
  assign hit[1] = (req_tag == tags[8 +: 8]);
  assign hit[2] = (req_tag == tags[16 +: 8]);
  assign hit[3] = (req_tag == tags[24 +: 8]);
  assign any_hit = |hit;
endmodule

module cam_B_4w16 (
  input  [15:0] req_tag,
  input  [63:0] tags,
  output [3:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 16]);
  assign hit[1] = (req_tag == tags[16 +: 16]);
  assign hit[2] = (req_tag == tags[32 +: 16]);
  assign hit[3] = (req_tag == tags[48 +: 16]);
  assign any_hit = |hit;
endmodule

module cam_B_4w32 (
  input  [31:0] req_tag,
  input  [127:0] tags,
  output [3:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign any_hit = |hit;
endmodule

module cam_B_4w48 (
  input  [47:0] req_tag,
  input  [191:0] tags,
  output [3:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 48]);
  assign hit[1] = (req_tag == tags[48 +: 48]);
  assign hit[2] = (req_tag == tags[96 +: 48]);
  assign hit[3] = (req_tag == tags[144 +: 48]);
  assign any_hit = |hit;
endmodule

module cam_B_8w8 (
  input  [7:0] req_tag,
  input  [63:0] tags,
  output [7:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 8]);
  assign hit[1] = (req_tag == tags[8 +: 8]);
  assign hit[2] = (req_tag == tags[16 +: 8]);
  assign hit[3] = (req_tag == tags[24 +: 8]);
  assign hit[4] = (req_tag == tags[32 +: 8]);
  assign hit[5] = (req_tag == tags[40 +: 8]);
  assign hit[6] = (req_tag == tags[48 +: 8]);
  assign hit[7] = (req_tag == tags[56 +: 8]);
  assign any_hit = |hit;
endmodule

module cam_B_8w16 (
  input  [15:0] req_tag,
  input  [127:0] tags,
  output [7:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 16]);
  assign hit[1] = (req_tag == tags[16 +: 16]);
  assign hit[2] = (req_tag == tags[32 +: 16]);
  assign hit[3] = (req_tag == tags[48 +: 16]);
  assign hit[4] = (req_tag == tags[64 +: 16]);
  assign hit[5] = (req_tag == tags[80 +: 16]);
  assign hit[6] = (req_tag == tags[96 +: 16]);
  assign hit[7] = (req_tag == tags[112 +: 16]);
  assign any_hit = |hit;
endmodule

module cam_B_8w32 (
  input  [31:0] req_tag,
  input  [255:0] tags,
  output [7:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign hit[4] = (req_tag == tags[128 +: 32]);
  assign hit[5] = (req_tag == tags[160 +: 32]);
  assign hit[6] = (req_tag == tags[192 +: 32]);
  assign hit[7] = (req_tag == tags[224 +: 32]);
  assign any_hit = |hit;
endmodule

module cam_B_8w48 (
  input  [47:0] req_tag,
  input  [383:0] tags,
  output [7:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 48]);
  assign hit[1] = (req_tag == tags[48 +: 48]);
  assign hit[2] = (req_tag == tags[96 +: 48]);
  assign hit[3] = (req_tag == tags[144 +: 48]);
  assign hit[4] = (req_tag == tags[192 +: 48]);
  assign hit[5] = (req_tag == tags[240 +: 48]);
  assign hit[6] = (req_tag == tags[288 +: 48]);
  assign hit[7] = (req_tag == tags[336 +: 48]);
  assign any_hit = |hit;
endmodule

module cam_B_16w8 (
  input  [7:0] req_tag,
  input  [127:0] tags,
  output [15:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 8]);
  assign hit[1] = (req_tag == tags[8 +: 8]);
  assign hit[2] = (req_tag == tags[16 +: 8]);
  assign hit[3] = (req_tag == tags[24 +: 8]);
  assign hit[4] = (req_tag == tags[32 +: 8]);
  assign hit[5] = (req_tag == tags[40 +: 8]);
  assign hit[6] = (req_tag == tags[48 +: 8]);
  assign hit[7] = (req_tag == tags[56 +: 8]);
  assign hit[8] = (req_tag == tags[64 +: 8]);
  assign hit[9] = (req_tag == tags[72 +: 8]);
  assign hit[10] = (req_tag == tags[80 +: 8]);
  assign hit[11] = (req_tag == tags[88 +: 8]);
  assign hit[12] = (req_tag == tags[96 +: 8]);
  assign hit[13] = (req_tag == tags[104 +: 8]);
  assign hit[14] = (req_tag == tags[112 +: 8]);
  assign hit[15] = (req_tag == tags[120 +: 8]);
  assign any_hit = |hit;
endmodule

module cam_B_16w16 (
  input  [15:0] req_tag,
  input  [255:0] tags,
  output [15:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 16]);
  assign hit[1] = (req_tag == tags[16 +: 16]);
  assign hit[2] = (req_tag == tags[32 +: 16]);
  assign hit[3] = (req_tag == tags[48 +: 16]);
  assign hit[4] = (req_tag == tags[64 +: 16]);
  assign hit[5] = (req_tag == tags[80 +: 16]);
  assign hit[6] = (req_tag == tags[96 +: 16]);
  assign hit[7] = (req_tag == tags[112 +: 16]);
  assign hit[8] = (req_tag == tags[128 +: 16]);
  assign hit[9] = (req_tag == tags[144 +: 16]);
  assign hit[10] = (req_tag == tags[160 +: 16]);
  assign hit[11] = (req_tag == tags[176 +: 16]);
  assign hit[12] = (req_tag == tags[192 +: 16]);
  assign hit[13] = (req_tag == tags[208 +: 16]);
  assign hit[14] = (req_tag == tags[224 +: 16]);
  assign hit[15] = (req_tag == tags[240 +: 16]);
  assign any_hit = |hit;
endmodule

module cam_B_16w32 (
  input  [31:0] req_tag,
  input  [511:0] tags,
  output [15:0] hit,
  output any_hit
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
  assign any_hit = |hit;
endmodule

module cam_B_16w48 (
  input  [47:0] req_tag,
  input  [767:0] tags,
  output [15:0] hit,
  output any_hit
);
  assign hit[0] = (req_tag == tags[0 +: 48]);
  assign hit[1] = (req_tag == tags[48 +: 48]);
  assign hit[2] = (req_tag == tags[96 +: 48]);
  assign hit[3] = (req_tag == tags[144 +: 48]);
  assign hit[4] = (req_tag == tags[192 +: 48]);
  assign hit[5] = (req_tag == tags[240 +: 48]);
  assign hit[6] = (req_tag == tags[288 +: 48]);
  assign hit[7] = (req_tag == tags[336 +: 48]);
  assign hit[8] = (req_tag == tags[384 +: 48]);
  assign hit[9] = (req_tag == tags[432 +: 48]);
  assign hit[10] = (req_tag == tags[480 +: 48]);
  assign hit[11] = (req_tag == tags[528 +: 48]);
  assign hit[12] = (req_tag == tags[576 +: 48]);
  assign hit[13] = (req_tag == tags[624 +: 48]);
  assign hit[14] = (req_tag == tags[672 +: 48]);
  assign hit[15] = (req_tag == tags[720 +: 48]);
  assign any_hit = |hit;
endmodule

module cam_C1_2w32 (
  input  [31:0] req_tag,
  input  [63:0] tags,
  output [0:0] way_enc,
  output valid
);
  wire [1:0] hit;
  wire [1:0] grant;
  wire [0:0] enc;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign grant = hit & (~hit + 2'd1);
  assign enc[0] = grant[1];
  assign way_enc = enc;
  assign valid = |hit;
endmodule

module cam_C1_4w32 (
  input  [31:0] req_tag,
  input  [127:0] tags,
  output [1:0] way_enc,
  output valid
);
  wire [3:0] hit;
  wire [3:0] grant;
  wire [1:0] enc;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign grant = hit & (~hit + 4'd1);
  assign enc[0] = grant[1] | grant[3];
  assign enc[1] = grant[2] | grant[3];
  assign way_enc = enc;
  assign valid = |hit;
endmodule

module cam_C1_8w32 (
  input  [31:0] req_tag,
  input  [255:0] tags,
  output [2:0] way_enc,
  output valid
);
  wire [7:0] hit;
  wire [7:0] grant;
  wire [2:0] enc;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign hit[4] = (req_tag == tags[128 +: 32]);
  assign hit[5] = (req_tag == tags[160 +: 32]);
  assign hit[6] = (req_tag == tags[192 +: 32]);
  assign hit[7] = (req_tag == tags[224 +: 32]);
  assign grant = hit & (~hit + 8'd1);
  assign enc[0] = grant[1] | grant[3] | grant[5] | grant[7];
  assign enc[1] = grant[2] | grant[3] | grant[6] | grant[7];
  assign enc[2] = grant[4] | grant[5] | grant[6] | grant[7];
  assign way_enc = enc;
  assign valid = |hit;
endmodule

module cam_C1_16w32 (
  input  [31:0] req_tag,
  input  [511:0] tags,
  output [3:0] way_enc,
  output valid
);
  wire [15:0] hit;
  wire [15:0] grant;
  wire [3:0] enc;
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
  assign grant = hit & (~hit + 16'd1);
  assign enc[0] = grant[1] | grant[3] | grant[5] | grant[7] | grant[9] | grant[11] | grant[13] | grant[15];
  assign enc[1] = grant[2] | grant[3] | grant[6] | grant[7] | grant[10] | grant[11] | grant[14] | grant[15];
  assign enc[2] = grant[4] | grant[5] | grant[6] | grant[7] | grant[12] | grant[13] | grant[14] | grant[15];
  assign enc[3] = grant[8] | grant[9] | grant[10] | grant[11] | grant[12] | grant[13] | grant[14] | grant[15];
  assign way_enc = enc;
  assign valid = |hit;
endmodule

module cam_C2_2w32 (
  input  [31:0] req_tag,
  input  [63:0] tags,
  output reg [0:0] way_enc,
  output valid
);
  wire [1:0] hit;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign valid = |hit;
  always @(*) begin
    way_enc = 1'd0;
    if (hit[1]) way_enc = 1'd1;
    if (hit[0]) way_enc = 1'd0;
  end
endmodule

module cam_C2_4w32 (
  input  [31:0] req_tag,
  input  [127:0] tags,
  output reg [1:0] way_enc,
  output valid
);
  wire [3:0] hit;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign valid = |hit;
  always @(*) begin
    way_enc = 2'd0;
    if (hit[3]) way_enc = 2'd3;
    if (hit[2]) way_enc = 2'd2;
    if (hit[1]) way_enc = 2'd1;
    if (hit[0]) way_enc = 2'd0;
  end
endmodule

module cam_C2_8w32 (
  input  [31:0] req_tag,
  input  [255:0] tags,
  output reg [2:0] way_enc,
  output valid
);
  wire [7:0] hit;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign hit[4] = (req_tag == tags[128 +: 32]);
  assign hit[5] = (req_tag == tags[160 +: 32]);
  assign hit[6] = (req_tag == tags[192 +: 32]);
  assign hit[7] = (req_tag == tags[224 +: 32]);
  assign valid = |hit;
  always @(*) begin
    way_enc = 3'd0;
    if (hit[7]) way_enc = 3'd7;
    if (hit[6]) way_enc = 3'd6;
    if (hit[5]) way_enc = 3'd5;
    if (hit[4]) way_enc = 3'd4;
    if (hit[3]) way_enc = 3'd3;
    if (hit[2]) way_enc = 3'd2;
    if (hit[1]) way_enc = 3'd1;
    if (hit[0]) way_enc = 3'd0;
  end
endmodule

module cam_C2_16w32 (
  input  [31:0] req_tag,
  input  [511:0] tags,
  output reg [3:0] way_enc,
  output valid
);
  wire [15:0] hit;
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
  assign valid = |hit;
  always @(*) begin
    way_enc = 4'd0;
    if (hit[15]) way_enc = 4'd15;
    if (hit[14]) way_enc = 4'd14;
    if (hit[13]) way_enc = 4'd13;
    if (hit[12]) way_enc = 4'd12;
    if (hit[11]) way_enc = 4'd11;
    if (hit[10]) way_enc = 4'd10;
    if (hit[9]) way_enc = 4'd9;
    if (hit[8]) way_enc = 4'd8;
    if (hit[7]) way_enc = 4'd7;
    if (hit[6]) way_enc = 4'd6;
    if (hit[5]) way_enc = 4'd5;
    if (hit[4]) way_enc = 4'd4;
    if (hit[3]) way_enc = 4'd3;
    if (hit[2]) way_enc = 4'd2;
    if (hit[1]) way_enc = 4'd1;
    if (hit[0]) way_enc = 4'd0;
  end
endmodule

module cam_C3_2w32 (
  input  [31:0] req_tag,
  input  [63:0] tags,
  output [0:0] way_enc,
  output valid
);
  wire [1:0] hit;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign valid = |hit;
  wire has_lo_0 = |hit[0:0];
  wire has_hi_0 = |hit[1:1];
  wire go_hi_0 = ~has_lo_0 & has_hi_0;
  assign way_enc[0] = go_hi_0;
endmodule

module cam_C3_4w32 (
  input  [31:0] req_tag,
  input  [127:0] tags,
  output [1:0] way_enc,
  output valid
);
  wire [3:0] hit;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign valid = |hit;
  wire has_lo_0 = |hit[1:0];
  wire has_hi_0 = |hit[3:2];
  wire go_hi_0 = ~has_lo_0 & has_hi_0;
  assign way_enc[1] = go_hi_0;
  wire [1:0] sel_0 = go_hi_0 ? hit[3:2] : hit[1:0];
  wire has_lo_1 = |sel_0[0:0];
  wire has_hi_1 = |sel_0[1:1];
  wire go_hi_1 = ~has_lo_1 & has_hi_1;
  assign way_enc[0] = go_hi_1;
endmodule

module cam_C3_8w32 (
  input  [31:0] req_tag,
  input  [255:0] tags,
  output [2:0] way_enc,
  output valid
);
  wire [7:0] hit;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign hit[4] = (req_tag == tags[128 +: 32]);
  assign hit[5] = (req_tag == tags[160 +: 32]);
  assign hit[6] = (req_tag == tags[192 +: 32]);
  assign hit[7] = (req_tag == tags[224 +: 32]);
  assign valid = |hit;
  wire has_lo_0 = |hit[3:0];
  wire has_hi_0 = |hit[7:4];
  wire go_hi_0 = ~has_lo_0 & has_hi_0;
  assign way_enc[2] = go_hi_0;
  wire [3:0] sel_0 = go_hi_0 ? hit[7:4] : hit[3:0];
  wire has_lo_1 = |sel_0[1:0];
  wire has_hi_1 = |sel_0[3:2];
  wire go_hi_1 = ~has_lo_1 & has_hi_1;
  assign way_enc[1] = go_hi_1;
  wire [1:0] sel_1 = go_hi_1 ? sel_0[3:2] : sel_0[1:0];
  wire has_lo_2 = |sel_1[0:0];
  wire has_hi_2 = |sel_1[1:1];
  wire go_hi_2 = ~has_lo_2 & has_hi_2;
  assign way_enc[0] = go_hi_2;
endmodule

module cam_C3_16w32 (
  input  [31:0] req_tag,
  input  [511:0] tags,
  output [3:0] way_enc,
  output valid
);
  wire [15:0] hit;
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
  assign valid = |hit;
  wire has_lo_0 = |hit[7:0];
  wire has_hi_0 = |hit[15:8];
  wire go_hi_0 = ~has_lo_0 & has_hi_0;
  assign way_enc[3] = go_hi_0;
  wire [7:0] sel_0 = go_hi_0 ? hit[15:8] : hit[7:0];
  wire has_lo_1 = |sel_0[3:0];
  wire has_hi_1 = |sel_0[7:4];
  wire go_hi_1 = ~has_lo_1 & has_hi_1;
  assign way_enc[2] = go_hi_1;
  wire [3:0] sel_1 = go_hi_1 ? sel_0[7:4] : sel_0[3:0];
  wire has_lo_2 = |sel_1[1:0];
  wire has_hi_2 = |sel_1[3:2];
  wire go_hi_2 = ~has_lo_2 & has_hi_2;
  assign way_enc[1] = go_hi_2;
  wire [1:0] sel_2 = go_hi_2 ? sel_1[3:2] : sel_1[1:0];
  wire has_lo_3 = |sel_2[0:0];
  wire has_hi_3 = |sel_2[1:1];
  wire go_hi_3 = ~has_lo_3 & has_hi_3;
  assign way_enc[0] = go_hi_3;
endmodule

module cam_D_2w32_d64 (
  input  [31:0] req_tag,
  input  [63:0] tags,
  input  [127:0] data,
  output [63:0] data_out,
  output [0:0] way_enc,
  output valid
);
  wire [1:0] hit;
  wire [1:0] grant;
  wire [0:0] enc;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign grant = hit & (~hit + 2'd1);
  assign enc[0] = grant[1];
  assign way_enc = enc;
  assign valid = |hit;
  reg [63:0] data_out_r;
  always @(*) begin
    data_out_r = 64'd0;
    if (grant[0]) data_out_r = data[0 +: 64];
    if (grant[1]) data_out_r = data[64 +: 64];
  end
  assign data_out = data_out_r;
endmodule

module cam_D_4w32_d64 (
  input  [31:0] req_tag,
  input  [127:0] tags,
  input  [255:0] data,
  output [63:0] data_out,
  output [1:0] way_enc,
  output valid
);
  wire [3:0] hit;
  wire [3:0] grant;
  wire [1:0] enc;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign grant = hit & (~hit + 4'd1);
  assign enc[0] = grant[1] | grant[3];
  assign enc[1] = grant[2] | grant[3];
  assign way_enc = enc;
  assign valid = |hit;
  reg [63:0] data_out_r;
  always @(*) begin
    data_out_r = 64'd0;
    if (grant[0]) data_out_r = data[0 +: 64];
    if (grant[1]) data_out_r = data[64 +: 64];
    if (grant[2]) data_out_r = data[128 +: 64];
    if (grant[3]) data_out_r = data[192 +: 64];
  end
  assign data_out = data_out_r;
endmodule

module cam_D_8w32_d64 (
  input  [31:0] req_tag,
  input  [255:0] tags,
  input  [511:0] data,
  output [63:0] data_out,
  output [2:0] way_enc,
  output valid
);
  wire [7:0] hit;
  wire [7:0] grant;
  wire [2:0] enc;
  assign hit[0] = (req_tag == tags[0 +: 32]);
  assign hit[1] = (req_tag == tags[32 +: 32]);
  assign hit[2] = (req_tag == tags[64 +: 32]);
  assign hit[3] = (req_tag == tags[96 +: 32]);
  assign hit[4] = (req_tag == tags[128 +: 32]);
  assign hit[5] = (req_tag == tags[160 +: 32]);
  assign hit[6] = (req_tag == tags[192 +: 32]);
  assign hit[7] = (req_tag == tags[224 +: 32]);
  assign grant = hit & (~hit + 8'd1);
  assign enc[0] = grant[1] | grant[3] | grant[5] | grant[7];
  assign enc[1] = grant[2] | grant[3] | grant[6] | grant[7];
  assign enc[2] = grant[4] | grant[5] | grant[6] | grant[7];
  assign way_enc = enc;
  assign valid = |hit;
  reg [63:0] data_out_r;
  always @(*) begin
    data_out_r = 64'd0;
    if (grant[0]) data_out_r = data[0 +: 64];
    if (grant[1]) data_out_r = data[64 +: 64];
    if (grant[2]) data_out_r = data[128 +: 64];
    if (grant[3]) data_out_r = data[192 +: 64];
    if (grant[4]) data_out_r = data[256 +: 64];
    if (grant[5]) data_out_r = data[320 +: 64];
    if (grant[6]) data_out_r = data[384 +: 64];
    if (grant[7]) data_out_r = data[448 +: 64];
  end
  assign data_out = data_out_r;
endmodule

module cam_D_16w32_d64 (
  input  [31:0] req_tag,
  input  [511:0] tags,
  input  [1023:0] data,
  output [63:0] data_out,
  output [3:0] way_enc,
  output valid
);
  wire [15:0] hit;
  wire [15:0] grant;
  wire [3:0] enc;
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
  assign grant = hit & (~hit + 16'd1);
  assign enc[0] = grant[1] | grant[3] | grant[5] | grant[7] | grant[9] | grant[11] | grant[13] | grant[15];
  assign enc[1] = grant[2] | grant[3] | grant[6] | grant[7] | grant[10] | grant[11] | grant[14] | grant[15];
  assign enc[2] = grant[4] | grant[5] | grant[6] | grant[7] | grant[12] | grant[13] | grant[14] | grant[15];
  assign enc[3] = grant[8] | grant[9] | grant[10] | grant[11] | grant[12] | grant[13] | grant[14] | grant[15];
  assign way_enc = enc;
  assign valid = |hit;
  reg [63:0] data_out_r;
  always @(*) begin
    data_out_r = 64'd0;
    if (grant[0]) data_out_r = data[0 +: 64];
    if (grant[1]) data_out_r = data[64 +: 64];
    if (grant[2]) data_out_r = data[128 +: 64];
    if (grant[3]) data_out_r = data[192 +: 64];
    if (grant[4]) data_out_r = data[256 +: 64];
    if (grant[5]) data_out_r = data[320 +: 64];
    if (grant[6]) data_out_r = data[384 +: 64];
    if (grant[7]) data_out_r = data[448 +: 64];
    if (grant[8]) data_out_r = data[512 +: 64];
    if (grant[9]) data_out_r = data[576 +: 64];
    if (grant[10]) data_out_r = data[640 +: 64];
    if (grant[11]) data_out_r = data[704 +: 64];
    if (grant[12]) data_out_r = data[768 +: 64];
    if (grant[13]) data_out_r = data[832 +: 64];
    if (grant[14]) data_out_r = data[896 +: 64];
    if (grant[15]) data_out_r = data[960 +: 64];
  end
  assign data_out = data_out_r;
endmodule

module cam_E2_2w32 (
  input  [31:0] req_tag,
  input  [63:0] tags,
  output [1:0] hit
);
  assign hit[0] = ~|(req_tag ^ tags[0 +: 32]);
  assign hit[1] = ~|(req_tag ^ tags[32 +: 32]);
endmodule

module cam_E2_4w32 (
  input  [31:0] req_tag,
  input  [127:0] tags,
  output [3:0] hit
);
  assign hit[0] = ~|(req_tag ^ tags[0 +: 32]);
  assign hit[1] = ~|(req_tag ^ tags[32 +: 32]);
  assign hit[2] = ~|(req_tag ^ tags[64 +: 32]);
  assign hit[3] = ~|(req_tag ^ tags[96 +: 32]);
endmodule

module cam_E2_8w32 (
  input  [31:0] req_tag,
  input  [255:0] tags,
  output [7:0] hit
);
  assign hit[0] = ~|(req_tag ^ tags[0 +: 32]);
  assign hit[1] = ~|(req_tag ^ tags[32 +: 32]);
  assign hit[2] = ~|(req_tag ^ tags[64 +: 32]);
  assign hit[3] = ~|(req_tag ^ tags[96 +: 32]);
  assign hit[4] = ~|(req_tag ^ tags[128 +: 32]);
  assign hit[5] = ~|(req_tag ^ tags[160 +: 32]);
  assign hit[6] = ~|(req_tag ^ tags[192 +: 32]);
  assign hit[7] = ~|(req_tag ^ tags[224 +: 32]);
endmodule

module cam_E2_16w32 (
  input  [31:0] req_tag,
  input  [511:0] tags,
  output [15:0] hit
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
endmodule

module cam_E3_4w32 (
  input  [31:0] req_tag,
  input  [127:0] tags,
  output [3:0] hit
);
  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin : g
      assign hit[i] = (req_tag == tags[i*32 +: 32]);
    end
  endgenerate
endmodule

module cam_E3_8w32 (
  input  [31:0] req_tag,
  input  [255:0] tags,
  output [7:0] hit
);
  genvar i;
  generate
    for (i = 0; i < 8; i = i + 1) begin : g
      assign hit[i] = (req_tag == tags[i*32 +: 32]);
    end
  endgenerate
endmodule

module cam_E3_16w32 (
  input  [31:0] req_tag,
  input  [511:0] tags,
  output [15:0] hit
);
  genvar i;
  generate
    for (i = 0; i < 16; i = i + 1) begin : g
      assign hit[i] = (req_tag == tags[i*32 +: 32]);
    end
  endgenerate
endmodule
