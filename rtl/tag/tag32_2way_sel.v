module tag32_2way_sel (
    input  [31:0] req_tag,
    input  [31:0] tag0, tag1,
    input  [63:0] data0, data1,
    output [63:0] data_out,
    output hit
);
    assign hit = (req_tag == tag0) | (req_tag == tag1);
    wire sel0 = (req_tag == tag0);
    assign data_out = sel0 ? data0 : data1;
endmodule
