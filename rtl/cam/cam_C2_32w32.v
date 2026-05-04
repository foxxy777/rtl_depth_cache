module cam_C2_32w32 (
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
    reg [4:0] way_r;
    always @(*) begin
        way_r = 5'd0;
        if (hit[31]) way_r = 5'd31;
        if (hit[30]) way_r = 5'd30;
        if (hit[29]) way_r = 5'd29;
        if (hit[28]) way_r = 5'd28;
        if (hit[27]) way_r = 5'd27;
        if (hit[26]) way_r = 5'd26;
        if (hit[25]) way_r = 5'd25;
        if (hit[24]) way_r = 5'd24;
        if (hit[23]) way_r = 5'd23;
        if (hit[22]) way_r = 5'd22;
        if (hit[21]) way_r = 5'd21;
        if (hit[20]) way_r = 5'd20;
        if (hit[19]) way_r = 5'd19;
        if (hit[18]) way_r = 5'd18;
        if (hit[17]) way_r = 5'd17;
        if (hit[16]) way_r = 5'd16;
        if (hit[15]) way_r = 5'd15;
        if (hit[14]) way_r = 5'd14;
        if (hit[13]) way_r = 5'd13;
        if (hit[12]) way_r = 5'd12;
        if (hit[11]) way_r = 5'd11;
        if (hit[10]) way_r = 5'd10;
        if (hit[9]) way_r = 5'd9;
        if (hit[8]) way_r = 5'd8;
        if (hit[7]) way_r = 5'd7;
        if (hit[6]) way_r = 5'd6;
        if (hit[5]) way_r = 5'd5;
        if (hit[4]) way_r = 5'd4;
        if (hit[3]) way_r = 5'd3;
        if (hit[2]) way_r = 5'd2;
        if (hit[1]) way_r = 5'd1;
    end
    assign way_enc = way_r;
endmodule
