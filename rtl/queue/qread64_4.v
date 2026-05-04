module qread64_4 (
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
    output [31:0] data_out0,
    output [31:0] data_out1,
    output [31:0] data_out2,
    output [31:0] data_out3
);
    wire [5:0] addr1 = ptr + 6'd1;
    wire [5:0] addr2 = ptr + 6'd2;
    wire [5:0] addr3 = ptr + 6'd3;
    reg [31:0] data_out0;
    reg [31:0] data_out1;
    reg [31:0] data_out2;
    reg [31:0] data_out3;
    always @(*) begin
        case (ptr)
            6'd0: data_out0 = d0;
            6'd1: data_out0 = d1;
            6'd2: data_out0 = d2;
            6'd3: data_out0 = d3;
            6'd4: data_out0 = d4;
            6'd5: data_out0 = d5;
            6'd6: data_out0 = d6;
            6'd7: data_out0 = d7;
            6'd8: data_out0 = d8;
            6'd9: data_out0 = d9;
            6'd10: data_out0 = d10;
            6'd11: data_out0 = d11;
            6'd12: data_out0 = d12;
            6'd13: data_out0 = d13;
            6'd14: data_out0 = d14;
            6'd15: data_out0 = d15;
            6'd16: data_out0 = d16;
            6'd17: data_out0 = d17;
            6'd18: data_out0 = d18;
            6'd19: data_out0 = d19;
            6'd20: data_out0 = d20;
            6'd21: data_out0 = d21;
            6'd22: data_out0 = d22;
            6'd23: data_out0 = d23;
            6'd24: data_out0 = d24;
            6'd25: data_out0 = d25;
            6'd26: data_out0 = d26;
            6'd27: data_out0 = d27;
            6'd28: data_out0 = d28;
            6'd29: data_out0 = d29;
            6'd30: data_out0 = d30;
            6'd31: data_out0 = d31;
            6'd32: data_out0 = d32;
            6'd33: data_out0 = d33;
            6'd34: data_out0 = d34;
            6'd35: data_out0 = d35;
            6'd36: data_out0 = d36;
            6'd37: data_out0 = d37;
            6'd38: data_out0 = d38;
            6'd39: data_out0 = d39;
            6'd40: data_out0 = d40;
            6'd41: data_out0 = d41;
            6'd42: data_out0 = d42;
            6'd43: data_out0 = d43;
            6'd44: data_out0 = d44;
            6'd45: data_out0 = d45;
            6'd46: data_out0 = d46;
            6'd47: data_out0 = d47;
            6'd48: data_out0 = d48;
            6'd49: data_out0 = d49;
            6'd50: data_out0 = d50;
            6'd51: data_out0 = d51;
            6'd52: data_out0 = d52;
            6'd53: data_out0 = d53;
            6'd54: data_out0 = d54;
            6'd55: data_out0 = d55;
            6'd56: data_out0 = d56;
            6'd57: data_out0 = d57;
            6'd58: data_out0 = d58;
            6'd59: data_out0 = d59;
            6'd60: data_out0 = d60;
            6'd61: data_out0 = d61;
            6'd62: data_out0 = d62;
            6'd63: data_out0 = d63;
            default: data_out0 = 32'b0;
        endcase
        case (addr1)
            6'd0: data_out1 = d0;
            6'd1: data_out1 = d1;
            6'd2: data_out1 = d2;
            6'd3: data_out1 = d3;
            6'd4: data_out1 = d4;
            6'd5: data_out1 = d5;
            6'd6: data_out1 = d6;
            6'd7: data_out1 = d7;
            6'd8: data_out1 = d8;
            6'd9: data_out1 = d9;
            6'd10: data_out1 = d10;
            6'd11: data_out1 = d11;
            6'd12: data_out1 = d12;
            6'd13: data_out1 = d13;
            6'd14: data_out1 = d14;
            6'd15: data_out1 = d15;
            6'd16: data_out1 = d16;
            6'd17: data_out1 = d17;
            6'd18: data_out1 = d18;
            6'd19: data_out1 = d19;
            6'd20: data_out1 = d20;
            6'd21: data_out1 = d21;
            6'd22: data_out1 = d22;
            6'd23: data_out1 = d23;
            6'd24: data_out1 = d24;
            6'd25: data_out1 = d25;
            6'd26: data_out1 = d26;
            6'd27: data_out1 = d27;
            6'd28: data_out1 = d28;
            6'd29: data_out1 = d29;
            6'd30: data_out1 = d30;
            6'd31: data_out1 = d31;
            6'd32: data_out1 = d32;
            6'd33: data_out1 = d33;
            6'd34: data_out1 = d34;
            6'd35: data_out1 = d35;
            6'd36: data_out1 = d36;
            6'd37: data_out1 = d37;
            6'd38: data_out1 = d38;
            6'd39: data_out1 = d39;
            6'd40: data_out1 = d40;
            6'd41: data_out1 = d41;
            6'd42: data_out1 = d42;
            6'd43: data_out1 = d43;
            6'd44: data_out1 = d44;
            6'd45: data_out1 = d45;
            6'd46: data_out1 = d46;
            6'd47: data_out1 = d47;
            6'd48: data_out1 = d48;
            6'd49: data_out1 = d49;
            6'd50: data_out1 = d50;
            6'd51: data_out1 = d51;
            6'd52: data_out1 = d52;
            6'd53: data_out1 = d53;
            6'd54: data_out1 = d54;
            6'd55: data_out1 = d55;
            6'd56: data_out1 = d56;
            6'd57: data_out1 = d57;
            6'd58: data_out1 = d58;
            6'd59: data_out1 = d59;
            6'd60: data_out1 = d60;
            6'd61: data_out1 = d61;
            6'd62: data_out1 = d62;
            6'd63: data_out1 = d63;
            default: data_out1 = 32'b0;
        endcase
        case (addr2)
            6'd0: data_out2 = d0;
            6'd1: data_out2 = d1;
            6'd2: data_out2 = d2;
            6'd3: data_out2 = d3;
            6'd4: data_out2 = d4;
            6'd5: data_out2 = d5;
            6'd6: data_out2 = d6;
            6'd7: data_out2 = d7;
            6'd8: data_out2 = d8;
            6'd9: data_out2 = d9;
            6'd10: data_out2 = d10;
            6'd11: data_out2 = d11;
            6'd12: data_out2 = d12;
            6'd13: data_out2 = d13;
            6'd14: data_out2 = d14;
            6'd15: data_out2 = d15;
            6'd16: data_out2 = d16;
            6'd17: data_out2 = d17;
            6'd18: data_out2 = d18;
            6'd19: data_out2 = d19;
            6'd20: data_out2 = d20;
            6'd21: data_out2 = d21;
            6'd22: data_out2 = d22;
            6'd23: data_out2 = d23;
            6'd24: data_out2 = d24;
            6'd25: data_out2 = d25;
            6'd26: data_out2 = d26;
            6'd27: data_out2 = d27;
            6'd28: data_out2 = d28;
            6'd29: data_out2 = d29;
            6'd30: data_out2 = d30;
            6'd31: data_out2 = d31;
            6'd32: data_out2 = d32;
            6'd33: data_out2 = d33;
            6'd34: data_out2 = d34;
            6'd35: data_out2 = d35;
            6'd36: data_out2 = d36;
            6'd37: data_out2 = d37;
            6'd38: data_out2 = d38;
            6'd39: data_out2 = d39;
            6'd40: data_out2 = d40;
            6'd41: data_out2 = d41;
            6'd42: data_out2 = d42;
            6'd43: data_out2 = d43;
            6'd44: data_out2 = d44;
            6'd45: data_out2 = d45;
            6'd46: data_out2 = d46;
            6'd47: data_out2 = d47;
            6'd48: data_out2 = d48;
            6'd49: data_out2 = d49;
            6'd50: data_out2 = d50;
            6'd51: data_out2 = d51;
            6'd52: data_out2 = d52;
            6'd53: data_out2 = d53;
            6'd54: data_out2 = d54;
            6'd55: data_out2 = d55;
            6'd56: data_out2 = d56;
            6'd57: data_out2 = d57;
            6'd58: data_out2 = d58;
            6'd59: data_out2 = d59;
            6'd60: data_out2 = d60;
            6'd61: data_out2 = d61;
            6'd62: data_out2 = d62;
            6'd63: data_out2 = d63;
            default: data_out2 = 32'b0;
        endcase
        case (addr3)
            6'd0: data_out3 = d0;
            6'd1: data_out3 = d1;
            6'd2: data_out3 = d2;
            6'd3: data_out3 = d3;
            6'd4: data_out3 = d4;
            6'd5: data_out3 = d5;
            6'd6: data_out3 = d6;
            6'd7: data_out3 = d7;
            6'd8: data_out3 = d8;
            6'd9: data_out3 = d9;
            6'd10: data_out3 = d10;
            6'd11: data_out3 = d11;
            6'd12: data_out3 = d12;
            6'd13: data_out3 = d13;
            6'd14: data_out3 = d14;
            6'd15: data_out3 = d15;
            6'd16: data_out3 = d16;
            6'd17: data_out3 = d17;
            6'd18: data_out3 = d18;
            6'd19: data_out3 = d19;
            6'd20: data_out3 = d20;
            6'd21: data_out3 = d21;
            6'd22: data_out3 = d22;
            6'd23: data_out3 = d23;
            6'd24: data_out3 = d24;
            6'd25: data_out3 = d25;
            6'd26: data_out3 = d26;
            6'd27: data_out3 = d27;
            6'd28: data_out3 = d28;
            6'd29: data_out3 = d29;
            6'd30: data_out3 = d30;
            6'd31: data_out3 = d31;
            6'd32: data_out3 = d32;
            6'd33: data_out3 = d33;
            6'd34: data_out3 = d34;
            6'd35: data_out3 = d35;
            6'd36: data_out3 = d36;
            6'd37: data_out3 = d37;
            6'd38: data_out3 = d38;
            6'd39: data_out3 = d39;
            6'd40: data_out3 = d40;
            6'd41: data_out3 = d41;
            6'd42: data_out3 = d42;
            6'd43: data_out3 = d43;
            6'd44: data_out3 = d44;
            6'd45: data_out3 = d45;
            6'd46: data_out3 = d46;
            6'd47: data_out3 = d47;
            6'd48: data_out3 = d48;
            6'd49: data_out3 = d49;
            6'd50: data_out3 = d50;
            6'd51: data_out3 = d51;
            6'd52: data_out3 = d52;
            6'd53: data_out3 = d53;
            6'd54: data_out3 = d54;
            6'd55: data_out3 = d55;
            6'd56: data_out3 = d56;
            6'd57: data_out3 = d57;
            6'd58: data_out3 = d58;
            6'd59: data_out3 = d59;
            6'd60: data_out3 = d60;
            6'd61: data_out3 = d61;
            6'd62: data_out3 = d62;
            6'd63: data_out3 = d63;
            default: data_out3 = 32'b0;
        endcase
    end
endmodule
