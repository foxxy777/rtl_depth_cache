module cam_C3_32w32 (
    input  [31:0] req_tag,
    input  [1023:0] tags,
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
    assign valid = |hit;

    wire has_lo_0 = |hit[15:0];
    wire has_hi_0 = |hit[31:16];
    wire go_hi_0 = ~has_lo_0 & has_hi_0;
    assign way_enc[4] = go_hi_0;
    wire [15:0] sel_0 = go_hi_0 ? hit[31:16] : hit[15:0];

    wire has_lo_1 = |sel_0[7:0];
    wire has_hi_1 = |sel_0[15:8];
    wire go_hi_1 = ~has_lo_1 & has_hi_1;
    assign way_enc[3] = go_hi_1;
    wire [7:0] sel_1 = go_hi_1 ? sel_0[15:8] : sel_0[7:0];

    wire has_lo_2 = |sel_1[3:0];
    wire has_hi_2 = |sel_1[7:4];
    wire go_hi_2 = ~has_lo_2 & has_hi_2;
    assign way_enc[2] = go_hi_2;
    wire [3:0] sel_2 = go_hi_2 ? sel_1[7:4] : sel_1[3:0];

    wire has_lo_3 = |sel_2[1:0];
    wire has_hi_3 = |sel_2[3:2];
    wire go_hi_3 = ~has_lo_3 & has_hi_3;
    assign way_enc[1] = go_hi_3;
    wire [1:0] sel_3 = go_hi_3 ? sel_2[3:2] : sel_2[1:0];

    wire has_lo_4 = |sel_3[0:0];
    wire has_hi_4 = |sel_3[1:1];
    wire go_hi_4 = ~has_lo_4 & has_hi_4;
    assign way_enc[0] = go_hi_4;
endmodule
