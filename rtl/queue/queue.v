// ============================================================
// 10_queue_read: Queue read logic depth comparison
// Verilog-2001 for iverilog compatibility
// ============================================================

// ============================================================
// Module 1: Read 1 entry (baseline)
// ============================================================
module qread_1 (
    input  [2:0]  ptr,
    input  [31:0] d0, d1, d2, d3, d4, d5, d6, d7,
    output [31:0] data_out
);
    reg [31:0] data_out;

    always @(*) begin
        case (ptr)
            3'd0: data_out = d0;
            3'd1: data_out = d1;
            3'd2: data_out = d2;
            3'd3: data_out = d3;
            3'd4: data_out = d4;
            3'd5: data_out = d5;
            3'd6: data_out = d6;
            3'd7: data_out = d7;
        endcase
    end
endmodule

// ============================================================
// Module 2: Read 2 consecutive entries
// ============================================================
module qread_2 (
    input  [2:0]  ptr,
    input  [31:0] d0, d1, d2, d3, d4, d5, d6, d7,
    output [31:0] data_out0,
    output [31:0] data_out1
);
    wire [2:0] addr1 = ptr + 1'b1;
    reg [31:0] data_out0, data_out1;

    always @(*) begin
        case (ptr)
            3'd0: data_out0 = d0;
            3'd1: data_out0 = d1;
            3'd2: data_out0 = d2;
            3'd3: data_out0 = d3;
            3'd4: data_out0 = d4;
            3'd5: data_out0 = d5;
            3'd6: data_out0 = d6;
            3'd7: data_out0 = d7;
        endcase
        case (addr1)
            3'd0: data_out1 = d0;
            3'd1: data_out1 = d1;
            3'd2: data_out1 = d2;
            3'd3: data_out1 = d3;
            3'd4: data_out1 = d4;
            3'd5: data_out1 = d5;
            3'd6: data_out1 = d6;
            3'd7: data_out1 = d7;
        endcase
    end
endmodule

// ============================================================
// Module 3: Read 4 consecutive entries
// ============================================================
module qread_4 (
    input  [2:0]  ptr,
    input  [31:0] d0, d1, d2, d3, d4, d5, d6, d7,
    output [31:0] data_out0,
    output [31:0] data_out1,
    output [31:0] data_out2,
    output [31:0] data_out3
);
    wire [2:0] addr1 = ptr + 1'b1;
    wire [2:0] addr2 = ptr + 2'd2;
    wire [2:0] addr3 = ptr + 2'd3;
    reg [31:0] data_out0, data_out1, data_out2, data_out3;

    always @(*) begin
        case (ptr)
            3'd0: data_out0 = d0;
            3'd1: data_out0 = d1;
            3'd2: data_out0 = d2;
            3'd3: data_out0 = d3;
            3'd4: data_out0 = d4;
            3'd5: data_out0 = d5;
            3'd6: data_out0 = d6;
            3'd7: data_out0 = d7;
        endcase
        case (addr1)
            3'd0: data_out1 = d0;
            3'd1: data_out1 = d1;
            3'd2: data_out1 = d2;
            3'd3: data_out1 = d3;
            3'd4: data_out1 = d4;
            3'd5: data_out1 = d5;
            3'd6: data_out1 = d6;
            3'd7: data_out1 = d7;
        endcase
        case (addr2)
            3'd0: data_out2 = d0;
            3'd1: data_out2 = d1;
            3'd2: data_out2 = d2;
            3'd3: data_out2 = d3;
            3'd4: data_out2 = d4;
            3'd5: data_out2 = d5;
            3'd6: data_out2 = d6;
            3'd7: data_out2 = d7;
        endcase
        case (addr3)
            3'd0: data_out3 = d0;
            3'd1: data_out3 = d1;
            3'd2: data_out3 = d2;
            3'd3: data_out3 = d3;
            3'd4: data_out3 = d4;
            3'd5: data_out3 = d5;
            3'd6: data_out3 = d6;
            3'd7: data_out3 = d7;
        endcase
    end
endmodule

// ============================================================
// Module 4: Read 2 entries, one-hot MUX style
// ============================================================
module qread_2_oh (
    input  [2:0]  ptr,
    input  [31:0] d0, d1, d2, d3, d4, d5, d6, d7,
    output [31:0] data_out0,
    output [31:0] data_out1
);
    reg [7:0] oh;
    wire [7:0] oh_shift;

    always @(*) begin
        case (ptr)
            3'd0: oh = 8'b00000001;
            3'd1: oh = 8'b00000010;
            3'd2: oh = 8'b00000100;
            3'd3: oh = 8'b00001000;
            3'd4: oh = 8'b00010000;
            3'd5: oh = 8'b00100000;
            3'd6: oh = 8'b01000000;
            3'd7: oh = 8'b10000000;
            default: oh = 8'b00000000;
        endcase
    end

    assign oh_shift = {oh[6:0], oh[7]};

    assign data_out0 = (d0 & {32{oh[0]}}) |
                       (d1 & {32{oh[1]}}) |
                       (d2 & {32{oh[2]}}) |
                       (d3 & {32{oh[3]}}) |
                       (d4 & {32{oh[4]}}) |
                       (d5 & {32{oh[5]}}) |
                       (d6 & {32{oh[6]}}) |
                       (d7 & {32{oh[7]}});

    assign data_out1 = (d0 & {32{oh_shift[0]}}) |
                       (d1 & {32{oh_shift[1]}}) |
                       (d2 & {32{oh_shift[2]}}) |
                       (d3 & {32{oh_shift[3]}}) |
                       (d4 & {32{oh_shift[4]}}) |
                       (d5 & {32{oh_shift[5]}}) |
                       (d6 & {32{oh_shift[6]}}) |
                       (d7 & {32{oh_shift[7]}});
endmodule

// ============================================================
// Module 5: Read 4 entries, one-hot MUX style
// ============================================================
module qread_4_oh (
    input  [2:0]  ptr,
    input  [31:0] d0, d1, d2, d3, d4, d5, d6, d7,
    output [31:0] data_out0,
    output [31:0] data_out1,
    output [31:0] data_out2,
    output [31:0] data_out3
);
    reg [7:0] oh;
    wire [7:0] oh_s1, oh_s2, oh_s3;

    always @(*) begin
        case (ptr)
            3'd0: oh = 8'b00000001;
            3'd1: oh = 8'b00000010;
            3'd2: oh = 8'b00000100;
            3'd3: oh = 8'b00001000;
            3'd4: oh = 8'b00010000;
            3'd5: oh = 8'b00100000;
            3'd6: oh = 8'b01000000;
            3'd7: oh = 8'b10000000;
            default: oh = 8'b00000000;
        endcase
    end

    assign oh_s1 = {oh[6:0], oh[7]};
    assign oh_s2 = {oh[5:0], oh[7:6]};
    assign oh_s3 = {oh[4:0], oh[7:5]};

    assign data_out0 = (d0 & {32{oh[0]}}) |
                       (d1 & {32{oh[1]}}) |
                       (d2 & {32{oh[2]}}) |
                       (d3 & {32{oh[3]}}) |
                       (d4 & {32{oh[4]}}) |
                       (d5 & {32{oh[5]}}) |
                       (d6 & {32{oh[6]}}) |
                       (d7 & {32{oh[7]}});

    assign data_out1 = (d0 & {32{oh_s1[0]}}) |
                       (d1 & {32{oh_s1[1]}}) |
                       (d2 & {32{oh_s1[2]}}) |
                       (d3 & {32{oh_s1[3]}}) |
                       (d4 & {32{oh_s1[4]}}) |
                       (d5 & {32{oh_s1[5]}}) |
                       (d6 & {32{oh_s1[6]}}) |
                       (d7 & {32{oh_s1[7]}});

    assign data_out2 = (d0 & {32{oh_s2[0]}}) |
                       (d1 & {32{oh_s2[1]}}) |
                       (d2 & {32{oh_s2[2]}}) |
                       (d3 & {32{oh_s2[3]}}) |
                       (d4 & {32{oh_s2[4]}}) |
                       (d5 & {32{oh_s2[5]}}) |
                       (d6 & {32{oh_s2[6]}}) |
                       (d7 & {32{oh_s2[7]}});

    assign data_out3 = (d0 & {32{oh_s3[0]}}) |
                       (d1 & {32{oh_s3[1]}}) |
                       (d2 & {32{oh_s3[2]}}) |
                       (d3 & {32{oh_s3[3]}}) |
                       (d4 & {32{oh_s3[4]}}) |
                       (d5 & {32{oh_s3[5]}}) |
                       (d6 & {32{oh_s3[6]}}) |
                       (d7 & {32{oh_s3[7]}});
endmodule
