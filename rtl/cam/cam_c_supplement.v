module cam_C1_32w32 (
  input [31:0] req_tag,
  input [1023:0] tags,
  output [4:0] way_enc,
  output valid
);
  wire [31:0] hit;
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
  wire [31:0] grant = hit & (~hit + 32'd1);
  assign way_enc[0] = grant[1] | grant[3] | grant[5] | grant[7] | grant[9] | grant[11] | grant[13] | grant[15] | grant[17] | grant[19] | grant[21] | grant[23] | grant[25] | grant[27] | grant[29] | grant[31];
  assign way_enc[1] = grant[2] | grant[3] | grant[6] | grant[7] | grant[10] | grant[11] | grant[14] | grant[15] | grant[18] | grant[19] | grant[22] | grant[23] | grant[26] | grant[27] | grant[30] | grant[31];
  assign way_enc[2] = grant[4] | grant[5] | grant[6] | grant[7] | grant[12] | grant[13] | grant[14] | grant[15] | grant[20] | grant[21] | grant[22] | grant[23] | grant[28] | grant[29] | grant[30] | grant[31];
  assign way_enc[3] = grant[8] | grant[9] | grant[10] | grant[11] | grant[12] | grant[13] | grant[14] | grant[15] | grant[24] | grant[25] | grant[26] | grant[27] | grant[28] | grant[29] | grant[30] | grant[31];
  assign way_enc[4] = grant[16] | grant[17] | grant[18] | grant[19] | grant[20] | grant[21] | grant[22] | grant[23] | grant[24] | grant[25] | grant[26] | grant[27] | grant[28] | grant[29] | grant[30] | grant[31];
  assign valid = |hit;
endmodule

module cam_C2_32w32 (
  input [31:0] req_tag,
  input [1023:0] tags,
  output reg [4:0] way_enc,
  output valid
);
  wire [31:0] hit;
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
  assign valid = |hit;
  always @(*) begin
    way_enc = 5'd0;
    if (hit[0]) way_enc = 5'd0;
    else if (hit[1]) way_enc = 5'd1;
    else if (hit[2]) way_enc = 5'd2;
    else if (hit[3]) way_enc = 5'd3;
    else if (hit[4]) way_enc = 5'd4;
    else if (hit[5]) way_enc = 5'd5;
    else if (hit[6]) way_enc = 5'd6;
    else if (hit[7]) way_enc = 5'd7;
    else if (hit[8]) way_enc = 5'd8;
    else if (hit[9]) way_enc = 5'd9;
    else if (hit[10]) way_enc = 5'd10;
    else if (hit[11]) way_enc = 5'd11;
    else if (hit[12]) way_enc = 5'd12;
    else if (hit[13]) way_enc = 5'd13;
    else if (hit[14]) way_enc = 5'd14;
    else if (hit[15]) way_enc = 5'd15;
    else if (hit[16]) way_enc = 5'd16;
    else if (hit[17]) way_enc = 5'd17;
    else if (hit[18]) way_enc = 5'd18;
    else if (hit[19]) way_enc = 5'd19;
    else if (hit[20]) way_enc = 5'd20;
    else if (hit[21]) way_enc = 5'd21;
    else if (hit[22]) way_enc = 5'd22;
    else if (hit[23]) way_enc = 5'd23;
    else if (hit[24]) way_enc = 5'd24;
    else if (hit[25]) way_enc = 5'd25;
    else if (hit[26]) way_enc = 5'd26;
    else if (hit[27]) way_enc = 5'd27;
    else if (hit[28]) way_enc = 5'd28;
    else if (hit[29]) way_enc = 5'd29;
    else if (hit[30]) way_enc = 5'd30;
    else if (hit[31]) way_enc = 5'd31;
  end
endmodule
