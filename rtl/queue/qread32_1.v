module qread32_1 (
    input  [4:0] ptr,
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
    input  [31:0] d16,
    input  [31:0] d17,
    input  [31:0] d18,
    input  [31:0] d19,
    input  [31:0] d20,
    input  [31:0] d21,
    input  [31:0] d22,
    input  [31:0] d23,
    input  [31:0] d24,
    input  [31:0] d25,
    input  [31:0] d26,
    input  [31:0] d27,
    input  [31:0] d28,
    input  [31:0] d29,
    input  [31:0] d30,
    input  [31:0] d31,
    output [31:0] data_out
);
    reg [31:0] data_out;
    always @(*) begin
        case (ptr)
            5'd0: data_out = d0;
            5'd1: data_out = d1;
            5'd2: data_out = d2;
            5'd3: data_out = d3;
            5'd4: data_out = d4;
            5'd5: data_out = d5;
            5'd6: data_out = d6;
            5'd7: data_out = d7;
            5'd8: data_out = d8;
            5'd9: data_out = d9;
            5'd10: data_out = d10;
            5'd11: data_out = d11;
            5'd12: data_out = d12;
            5'd13: data_out = d13;
            5'd14: data_out = d14;
            5'd15: data_out = d15;
            5'd16: data_out = d16;
            5'd17: data_out = d17;
            5'd18: data_out = d18;
            5'd19: data_out = d19;
            5'd20: data_out = d20;
            5'd21: data_out = d21;
            5'd22: data_out = d22;
            5'd23: data_out = d23;
            5'd24: data_out = d24;
            5'd25: data_out = d25;
            5'd26: data_out = d26;
            5'd27: data_out = d27;
            5'd28: data_out = d28;
            5'd29: data_out = d29;
            5'd30: data_out = d30;
            5'd31: data_out = d31;
            default: data_out = 32'b0;
        endcase
    end
endmodule
