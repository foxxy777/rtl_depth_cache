module qread16_1 (
    input  [3:0] ptr,
    input  [31:0] d0,
    input  [31:0] d1,
    input  [31:0] d2,
    input  [31:0] d3,
    input  [31:0] d4,
    input  [31:0] d5,
    input  [31:0] d6,
    input  [31:0] d7,
    input  [31:0] d8,
    input  [31:0] d9,
    input  [31:0] d10,
    input  [31:0] d11,
    input  [31:0] d12,
    input  [31:0] d13,
    input  [31:0] d14,
    input  [31:0] d15,
    output [31:0] data_out
);
    reg [31:0] data_out;
    always @(*) begin
        case (ptr)
            4'd0: data_out = d0;
            4'd1: data_out = d1;
            4'd2: data_out = d2;
            4'd3: data_out = d3;
            4'd4: data_out = d4;
            4'd5: data_out = d5;
            4'd6: data_out = d6;
            4'd7: data_out = d7;
            4'd8: data_out = d8;
            4'd9: data_out = d9;
            4'd10: data_out = d10;
            4'd11: data_out = d11;
            4'd12: data_out = d12;
            4'd13: data_out = d13;
            4'd14: data_out = d14;
            4'd15: data_out = d15;
            default: data_out = 32'b0;
        endcase
    end
endmodule
