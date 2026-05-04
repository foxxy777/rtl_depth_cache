module qread64_1 (
    input  [5:0] ptr,
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
    input  [31:0] d32,
    input  [31:0] d33,
    input  [31:0] d34,
    input  [31:0] d35,
    input  [31:0] d36,
    input  [31:0] d37,
    input  [31:0] d38,
    input  [31:0] d39,
    input  [31:0] d40,
    input  [31:0] d41,
    input  [31:0] d42,
    input  [31:0] d43,
    input  [31:0] d44,
    input  [31:0] d45,
    input  [31:0] d46,
    input  [31:0] d47,
    input  [31:0] d48,
    input  [31:0] d49,
    input  [31:0] d50,
    input  [31:0] d51,
    input  [31:0] d52,
    input  [31:0] d53,
    input  [31:0] d54,
    input  [31:0] d55,
    input  [31:0] d56,
    input  [31:0] d57,
    input  [31:0] d58,
    input  [31:0] d59,
    input  [31:0] d60,
    input  [31:0] d61,
    input  [31:0] d62,
    input  [31:0] d63,
    output [31:0] data_out
);
    reg [31:0] data_out;
    always @(*) begin
        case (ptr)
            6'd0: data_out = d0;
            6'd1: data_out = d1;
            6'd2: data_out = d2;
            6'd3: data_out = d3;
            6'd4: data_out = d4;
            6'd5: data_out = d5;
            6'd6: data_out = d6;
            6'd7: data_out = d7;
            6'd8: data_out = d8;
            6'd9: data_out = d9;
            6'd10: data_out = d10;
            6'd11: data_out = d11;
            6'd12: data_out = d12;
            6'd13: data_out = d13;
            6'd14: data_out = d14;
            6'd15: data_out = d15;
            6'd16: data_out = d16;
            6'd17: data_out = d17;
            6'd18: data_out = d18;
            6'd19: data_out = d19;
            6'd20: data_out = d20;
            6'd21: data_out = d21;
            6'd22: data_out = d22;
            6'd23: data_out = d23;
            6'd24: data_out = d24;
            6'd25: data_out = d25;
            6'd26: data_out = d26;
            6'd27: data_out = d27;
            6'd28: data_out = d28;
            6'd29: data_out = d29;
            6'd30: data_out = d30;
            6'd31: data_out = d31;
            6'd32: data_out = d32;
            6'd33: data_out = d33;
            6'd34: data_out = d34;
            6'd35: data_out = d35;
            6'd36: data_out = d36;
            6'd37: data_out = d37;
            6'd38: data_out = d38;
            6'd39: data_out = d39;
            6'd40: data_out = d40;
            6'd41: data_out = d41;
            6'd42: data_out = d42;
            6'd43: data_out = d43;
            6'd44: data_out = d44;
            6'd45: data_out = d45;
            6'd46: data_out = d46;
            6'd47: data_out = d47;
            6'd48: data_out = d48;
            6'd49: data_out = d49;
            6'd50: data_out = d50;
            6'd51: data_out = d51;
            6'd52: data_out = d52;
            6'd53: data_out = d53;
            6'd54: data_out = d54;
            6'd55: data_out = d55;
            6'd56: data_out = d56;
            6'd57: data_out = d57;
            6'd58: data_out = d58;
            6'd59: data_out = d59;
            6'd60: data_out = d60;
            6'd61: data_out = d61;
            6'd62: data_out = d62;
            6'd63: data_out = d63;
            default: data_out = 32'b0;
        endcase
    end
endmodule
