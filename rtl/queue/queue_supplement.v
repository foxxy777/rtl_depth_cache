module qread_1_16e (
  input [3:0] ptr,
  input [511:0] din,
  output reg [31:0] data_out0
);
  wire [3:0] addr0 = ptr + 4'd0;
  always @(*) begin
    case (addr0)
      4'd0: data_out0 = din[0 +: 32];
      4'd1: data_out0 = din[32 +: 32];
      4'd2: data_out0 = din[64 +: 32];
      4'd3: data_out0 = din[96 +: 32];
      4'd4: data_out0 = din[128 +: 32];
      4'd5: data_out0 = din[160 +: 32];
      4'd6: data_out0 = din[192 +: 32];
      4'd7: data_out0 = din[224 +: 32];
      4'd8: data_out0 = din[256 +: 32];
      4'd9: data_out0 = din[288 +: 32];
      4'd10: data_out0 = din[320 +: 32];
      4'd11: data_out0 = din[352 +: 32];
      4'd12: data_out0 = din[384 +: 32];
      4'd13: data_out0 = din[416 +: 32];
      4'd14: data_out0 = din[448 +: 32];
      4'd15: data_out0 = din[480 +: 32];
      default: data_out0 = 32'd0;
    endcase
  end
endmodule

module qread_2_16e (
  input [3:0] ptr,
  input [511:0] din,
  output reg [31:0] data_out0,
  output reg [31:0] data_out1
);
  wire [3:0] addr0 = ptr + 4'd0;
  always @(*) begin
    case (addr0)
      4'd0: data_out0 = din[0 +: 32];
      4'd1: data_out0 = din[32 +: 32];
      4'd2: data_out0 = din[64 +: 32];
      4'd3: data_out0 = din[96 +: 32];
      4'd4: data_out0 = din[128 +: 32];
      4'd5: data_out0 = din[160 +: 32];
      4'd6: data_out0 = din[192 +: 32];
      4'd7: data_out0 = din[224 +: 32];
      4'd8: data_out0 = din[256 +: 32];
      4'd9: data_out0 = din[288 +: 32];
      4'd10: data_out0 = din[320 +: 32];
      4'd11: data_out0 = din[352 +: 32];
      4'd12: data_out0 = din[384 +: 32];
      4'd13: data_out0 = din[416 +: 32];
      4'd14: data_out0 = din[448 +: 32];
      4'd15: data_out0 = din[480 +: 32];
      default: data_out0 = 32'd0;
    endcase
  end
  wire [3:0] addr1 = ptr + 4'd1;
  always @(*) begin
    case (addr1)
      4'd0: data_out1 = din[0 +: 32];
      4'd1: data_out1 = din[32 +: 32];
      4'd2: data_out1 = din[64 +: 32];
      4'd3: data_out1 = din[96 +: 32];
      4'd4: data_out1 = din[128 +: 32];
      4'd5: data_out1 = din[160 +: 32];
      4'd6: data_out1 = din[192 +: 32];
      4'd7: data_out1 = din[224 +: 32];
      4'd8: data_out1 = din[256 +: 32];
      4'd9: data_out1 = din[288 +: 32];
      4'd10: data_out1 = din[320 +: 32];
      4'd11: data_out1 = din[352 +: 32];
      4'd12: data_out1 = din[384 +: 32];
      4'd13: data_out1 = din[416 +: 32];
      4'd14: data_out1 = din[448 +: 32];
      4'd15: data_out1 = din[480 +: 32];
      default: data_out1 = 32'd0;
    endcase
  end
endmodule

module qread_4_16e (
  input [3:0] ptr,
  input [511:0] din,
  output reg [31:0] data_out0,
  output reg [31:0] data_out1,
  output reg [31:0] data_out2,
  output reg [31:0] data_out3
);
  wire [3:0] addr0 = ptr + 4'd0;
  always @(*) begin
    case (addr0)
      4'd0: data_out0 = din[0 +: 32];
      4'd1: data_out0 = din[32 +: 32];
      4'd2: data_out0 = din[64 +: 32];
      4'd3: data_out0 = din[96 +: 32];
      4'd4: data_out0 = din[128 +: 32];
      4'd5: data_out0 = din[160 +: 32];
      4'd6: data_out0 = din[192 +: 32];
      4'd7: data_out0 = din[224 +: 32];
      4'd8: data_out0 = din[256 +: 32];
      4'd9: data_out0 = din[288 +: 32];
      4'd10: data_out0 = din[320 +: 32];
      4'd11: data_out0 = din[352 +: 32];
      4'd12: data_out0 = din[384 +: 32];
      4'd13: data_out0 = din[416 +: 32];
      4'd14: data_out0 = din[448 +: 32];
      4'd15: data_out0 = din[480 +: 32];
      default: data_out0 = 32'd0;
    endcase
  end
  wire [3:0] addr1 = ptr + 4'd1;
  always @(*) begin
    case (addr1)
      4'd0: data_out1 = din[0 +: 32];
      4'd1: data_out1 = din[32 +: 32];
      4'd2: data_out1 = din[64 +: 32];
      4'd3: data_out1 = din[96 +: 32];
      4'd4: data_out1 = din[128 +: 32];
      4'd5: data_out1 = din[160 +: 32];
      4'd6: data_out1 = din[192 +: 32];
      4'd7: data_out1 = din[224 +: 32];
      4'd8: data_out1 = din[256 +: 32];
      4'd9: data_out1 = din[288 +: 32];
      4'd10: data_out1 = din[320 +: 32];
      4'd11: data_out1 = din[352 +: 32];
      4'd12: data_out1 = din[384 +: 32];
      4'd13: data_out1 = din[416 +: 32];
      4'd14: data_out1 = din[448 +: 32];
      4'd15: data_out1 = din[480 +: 32];
      default: data_out1 = 32'd0;
    endcase
  end
  wire [3:0] addr2 = ptr + 4'd2;
  always @(*) begin
    case (addr2)
      4'd0: data_out2 = din[0 +: 32];
      4'd1: data_out2 = din[32 +: 32];
      4'd2: data_out2 = din[64 +: 32];
      4'd3: data_out2 = din[96 +: 32];
      4'd4: data_out2 = din[128 +: 32];
      4'd5: data_out2 = din[160 +: 32];
      4'd6: data_out2 = din[192 +: 32];
      4'd7: data_out2 = din[224 +: 32];
      4'd8: data_out2 = din[256 +: 32];
      4'd9: data_out2 = din[288 +: 32];
      4'd10: data_out2 = din[320 +: 32];
      4'd11: data_out2 = din[352 +: 32];
      4'd12: data_out2 = din[384 +: 32];
      4'd13: data_out2 = din[416 +: 32];
      4'd14: data_out2 = din[448 +: 32];
      4'd15: data_out2 = din[480 +: 32];
      default: data_out2 = 32'd0;
    endcase
  end
  wire [3:0] addr3 = ptr + 4'd3;
  always @(*) begin
    case (addr3)
      4'd0: data_out3 = din[0 +: 32];
      4'd1: data_out3 = din[32 +: 32];
      4'd2: data_out3 = din[64 +: 32];
      4'd3: data_out3 = din[96 +: 32];
      4'd4: data_out3 = din[128 +: 32];
      4'd5: data_out3 = din[160 +: 32];
      4'd6: data_out3 = din[192 +: 32];
      4'd7: data_out3 = din[224 +: 32];
      4'd8: data_out3 = din[256 +: 32];
      4'd9: data_out3 = din[288 +: 32];
      4'd10: data_out3 = din[320 +: 32];
      4'd11: data_out3 = din[352 +: 32];
      4'd12: data_out3 = din[384 +: 32];
      4'd13: data_out3 = din[416 +: 32];
      4'd14: data_out3 = din[448 +: 32];
      4'd15: data_out3 = din[480 +: 32];
      default: data_out3 = 32'd0;
    endcase
  end
endmodule

module qread_1_32e (
  input [4:0] ptr,
  input [1023:0] din,
  output reg [31:0] data_out0
);
  wire [4:0] addr0 = ptr + 5'd0;
  always @(*) begin
    case (addr0)
      5'd0: data_out0 = din[0 +: 32];
      5'd1: data_out0 = din[32 +: 32];
      5'd2: data_out0 = din[64 +: 32];
      5'd3: data_out0 = din[96 +: 32];
      5'd4: data_out0 = din[128 +: 32];
      5'd5: data_out0 = din[160 +: 32];
      5'd6: data_out0 = din[192 +: 32];
      5'd7: data_out0 = din[224 +: 32];
      5'd8: data_out0 = din[256 +: 32];
      5'd9: data_out0 = din[288 +: 32];
      5'd10: data_out0 = din[320 +: 32];
      5'd11: data_out0 = din[352 +: 32];
      5'd12: data_out0 = din[384 +: 32];
      5'd13: data_out0 = din[416 +: 32];
      5'd14: data_out0 = din[448 +: 32];
      5'd15: data_out0 = din[480 +: 32];
      5'd16: data_out0 = din[512 +: 32];
      5'd17: data_out0 = din[544 +: 32];
      5'd18: data_out0 = din[576 +: 32];
      5'd19: data_out0 = din[608 +: 32];
      5'd20: data_out0 = din[640 +: 32];
      5'd21: data_out0 = din[672 +: 32];
      5'd22: data_out0 = din[704 +: 32];
      5'd23: data_out0 = din[736 +: 32];
      5'd24: data_out0 = din[768 +: 32];
      5'd25: data_out0 = din[800 +: 32];
      5'd26: data_out0 = din[832 +: 32];
      5'd27: data_out0 = din[864 +: 32];
      5'd28: data_out0 = din[896 +: 32];
      5'd29: data_out0 = din[928 +: 32];
      5'd30: data_out0 = din[960 +: 32];
      5'd31: data_out0 = din[992 +: 32];
      default: data_out0 = 32'd0;
    endcase
  end
endmodule

module qread_2_32e (
  input [4:0] ptr,
  input [1023:0] din,
  output reg [31:0] data_out0,
  output reg [31:0] data_out1
);
  wire [4:0] addr0 = ptr + 5'd0;
  always @(*) begin
    case (addr0)
      5'd0: data_out0 = din[0 +: 32];
      5'd1: data_out0 = din[32 +: 32];
      5'd2: data_out0 = din[64 +: 32];
      5'd3: data_out0 = din[96 +: 32];
      5'd4: data_out0 = din[128 +: 32];
      5'd5: data_out0 = din[160 +: 32];
      5'd6: data_out0 = din[192 +: 32];
      5'd7: data_out0 = din[224 +: 32];
      5'd8: data_out0 = din[256 +: 32];
      5'd9: data_out0 = din[288 +: 32];
      5'd10: data_out0 = din[320 +: 32];
      5'd11: data_out0 = din[352 +: 32];
      5'd12: data_out0 = din[384 +: 32];
      5'd13: data_out0 = din[416 +: 32];
      5'd14: data_out0 = din[448 +: 32];
      5'd15: data_out0 = din[480 +: 32];
      5'd16: data_out0 = din[512 +: 32];
      5'd17: data_out0 = din[544 +: 32];
      5'd18: data_out0 = din[576 +: 32];
      5'd19: data_out0 = din[608 +: 32];
      5'd20: data_out0 = din[640 +: 32];
      5'd21: data_out0 = din[672 +: 32];
      5'd22: data_out0 = din[704 +: 32];
      5'd23: data_out0 = din[736 +: 32];
      5'd24: data_out0 = din[768 +: 32];
      5'd25: data_out0 = din[800 +: 32];
      5'd26: data_out0 = din[832 +: 32];
      5'd27: data_out0 = din[864 +: 32];
      5'd28: data_out0 = din[896 +: 32];
      5'd29: data_out0 = din[928 +: 32];
      5'd30: data_out0 = din[960 +: 32];
      5'd31: data_out0 = din[992 +: 32];
      default: data_out0 = 32'd0;
    endcase
  end
  wire [4:0] addr1 = ptr + 5'd1;
  always @(*) begin
    case (addr1)
      5'd0: data_out1 = din[0 +: 32];
      5'd1: data_out1 = din[32 +: 32];
      5'd2: data_out1 = din[64 +: 32];
      5'd3: data_out1 = din[96 +: 32];
      5'd4: data_out1 = din[128 +: 32];
      5'd5: data_out1 = din[160 +: 32];
      5'd6: data_out1 = din[192 +: 32];
      5'd7: data_out1 = din[224 +: 32];
      5'd8: data_out1 = din[256 +: 32];
      5'd9: data_out1 = din[288 +: 32];
      5'd10: data_out1 = din[320 +: 32];
      5'd11: data_out1 = din[352 +: 32];
      5'd12: data_out1 = din[384 +: 32];
      5'd13: data_out1 = din[416 +: 32];
      5'd14: data_out1 = din[448 +: 32];
      5'd15: data_out1 = din[480 +: 32];
      5'd16: data_out1 = din[512 +: 32];
      5'd17: data_out1 = din[544 +: 32];
      5'd18: data_out1 = din[576 +: 32];
      5'd19: data_out1 = din[608 +: 32];
      5'd20: data_out1 = din[640 +: 32];
      5'd21: data_out1 = din[672 +: 32];
      5'd22: data_out1 = din[704 +: 32];
      5'd23: data_out1 = din[736 +: 32];
      5'd24: data_out1 = din[768 +: 32];
      5'd25: data_out1 = din[800 +: 32];
      5'd26: data_out1 = din[832 +: 32];
      5'd27: data_out1 = din[864 +: 32];
      5'd28: data_out1 = din[896 +: 32];
      5'd29: data_out1 = din[928 +: 32];
      5'd30: data_out1 = din[960 +: 32];
      5'd31: data_out1 = din[992 +: 32];
      default: data_out1 = 32'd0;
    endcase
  end
endmodule

module qread_4_32e (
  input [4:0] ptr,
  input [1023:0] din,
  output reg [31:0] data_out0,
  output reg [31:0] data_out1,
  output reg [31:0] data_out2,
  output reg [31:0] data_out3
);
  wire [4:0] addr0 = ptr + 5'd0;
  always @(*) begin
    case (addr0)
      5'd0: data_out0 = din[0 +: 32];
      5'd1: data_out0 = din[32 +: 32];
      5'd2: data_out0 = din[64 +: 32];
      5'd3: data_out0 = din[96 +: 32];
      5'd4: data_out0 = din[128 +: 32];
      5'd5: data_out0 = din[160 +: 32];
      5'd6: data_out0 = din[192 +: 32];
      5'd7: data_out0 = din[224 +: 32];
      5'd8: data_out0 = din[256 +: 32];
      5'd9: data_out0 = din[288 +: 32];
      5'd10: data_out0 = din[320 +: 32];
      5'd11: data_out0 = din[352 +: 32];
      5'd12: data_out0 = din[384 +: 32];
      5'd13: data_out0 = din[416 +: 32];
      5'd14: data_out0 = din[448 +: 32];
      5'd15: data_out0 = din[480 +: 32];
      5'd16: data_out0 = din[512 +: 32];
      5'd17: data_out0 = din[544 +: 32];
      5'd18: data_out0 = din[576 +: 32];
      5'd19: data_out0 = din[608 +: 32];
      5'd20: data_out0 = din[640 +: 32];
      5'd21: data_out0 = din[672 +: 32];
      5'd22: data_out0 = din[704 +: 32];
      5'd23: data_out0 = din[736 +: 32];
      5'd24: data_out0 = din[768 +: 32];
      5'd25: data_out0 = din[800 +: 32];
      5'd26: data_out0 = din[832 +: 32];
      5'd27: data_out0 = din[864 +: 32];
      5'd28: data_out0 = din[896 +: 32];
      5'd29: data_out0 = din[928 +: 32];
      5'd30: data_out0 = din[960 +: 32];
      5'd31: data_out0 = din[992 +: 32];
      default: data_out0 = 32'd0;
    endcase
  end
  wire [4:0] addr1 = ptr + 5'd1;
  always @(*) begin
    case (addr1)
      5'd0: data_out1 = din[0 +: 32];
      5'd1: data_out1 = din[32 +: 32];
      5'd2: data_out1 = din[64 +: 32];
      5'd3: data_out1 = din[96 +: 32];
      5'd4: data_out1 = din[128 +: 32];
      5'd5: data_out1 = din[160 +: 32];
      5'd6: data_out1 = din[192 +: 32];
      5'd7: data_out1 = din[224 +: 32];
      5'd8: data_out1 = din[256 +: 32];
      5'd9: data_out1 = din[288 +: 32];
      5'd10: data_out1 = din[320 +: 32];
      5'd11: data_out1 = din[352 +: 32];
      5'd12: data_out1 = din[384 +: 32];
      5'd13: data_out1 = din[416 +: 32];
      5'd14: data_out1 = din[448 +: 32];
      5'd15: data_out1 = din[480 +: 32];
      5'd16: data_out1 = din[512 +: 32];
      5'd17: data_out1 = din[544 +: 32];
      5'd18: data_out1 = din[576 +: 32];
      5'd19: data_out1 = din[608 +: 32];
      5'd20: data_out1 = din[640 +: 32];
      5'd21: data_out1 = din[672 +: 32];
      5'd22: data_out1 = din[704 +: 32];
      5'd23: data_out1 = din[736 +: 32];
      5'd24: data_out1 = din[768 +: 32];
      5'd25: data_out1 = din[800 +: 32];
      5'd26: data_out1 = din[832 +: 32];
      5'd27: data_out1 = din[864 +: 32];
      5'd28: data_out1 = din[896 +: 32];
      5'd29: data_out1 = din[928 +: 32];
      5'd30: data_out1 = din[960 +: 32];
      5'd31: data_out1 = din[992 +: 32];
      default: data_out1 = 32'd0;
    endcase
  end
  wire [4:0] addr2 = ptr + 5'd2;
  always @(*) begin
    case (addr2)
      5'd0: data_out2 = din[0 +: 32];
      5'd1: data_out2 = din[32 +: 32];
      5'd2: data_out2 = din[64 +: 32];
      5'd3: data_out2 = din[96 +: 32];
      5'd4: data_out2 = din[128 +: 32];
      5'd5: data_out2 = din[160 +: 32];
      5'd6: data_out2 = din[192 +: 32];
      5'd7: data_out2 = din[224 +: 32];
      5'd8: data_out2 = din[256 +: 32];
      5'd9: data_out2 = din[288 +: 32];
      5'd10: data_out2 = din[320 +: 32];
      5'd11: data_out2 = din[352 +: 32];
      5'd12: data_out2 = din[384 +: 32];
      5'd13: data_out2 = din[416 +: 32];
      5'd14: data_out2 = din[448 +: 32];
      5'd15: data_out2 = din[480 +: 32];
      5'd16: data_out2 = din[512 +: 32];
      5'd17: data_out2 = din[544 +: 32];
      5'd18: data_out2 = din[576 +: 32];
      5'd19: data_out2 = din[608 +: 32];
      5'd20: data_out2 = din[640 +: 32];
      5'd21: data_out2 = din[672 +: 32];
      5'd22: data_out2 = din[704 +: 32];
      5'd23: data_out2 = din[736 +: 32];
      5'd24: data_out2 = din[768 +: 32];
      5'd25: data_out2 = din[800 +: 32];
      5'd26: data_out2 = din[832 +: 32];
      5'd27: data_out2 = din[864 +: 32];
      5'd28: data_out2 = din[896 +: 32];
      5'd29: data_out2 = din[928 +: 32];
      5'd30: data_out2 = din[960 +: 32];
      5'd31: data_out2 = din[992 +: 32];
      default: data_out2 = 32'd0;
    endcase
  end
  wire [4:0] addr3 = ptr + 5'd3;
  always @(*) begin
    case (addr3)
      5'd0: data_out3 = din[0 +: 32];
      5'd1: data_out3 = din[32 +: 32];
      5'd2: data_out3 = din[64 +: 32];
      5'd3: data_out3 = din[96 +: 32];
      5'd4: data_out3 = din[128 +: 32];
      5'd5: data_out3 = din[160 +: 32];
      5'd6: data_out3 = din[192 +: 32];
      5'd7: data_out3 = din[224 +: 32];
      5'd8: data_out3 = din[256 +: 32];
      5'd9: data_out3 = din[288 +: 32];
      5'd10: data_out3 = din[320 +: 32];
      5'd11: data_out3 = din[352 +: 32];
      5'd12: data_out3 = din[384 +: 32];
      5'd13: data_out3 = din[416 +: 32];
      5'd14: data_out3 = din[448 +: 32];
      5'd15: data_out3 = din[480 +: 32];
      5'd16: data_out3 = din[512 +: 32];
      5'd17: data_out3 = din[544 +: 32];
      5'd18: data_out3 = din[576 +: 32];
      5'd19: data_out3 = din[608 +: 32];
      5'd20: data_out3 = din[640 +: 32];
      5'd21: data_out3 = din[672 +: 32];
      5'd22: data_out3 = din[704 +: 32];
      5'd23: data_out3 = din[736 +: 32];
      5'd24: data_out3 = din[768 +: 32];
      5'd25: data_out3 = din[800 +: 32];
      5'd26: data_out3 = din[832 +: 32];
      5'd27: data_out3 = din[864 +: 32];
      5'd28: data_out3 = din[896 +: 32];
      5'd29: data_out3 = din[928 +: 32];
      5'd30: data_out3 = din[960 +: 32];
      5'd31: data_out3 = din[992 +: 32];
      default: data_out3 = 32'd0;
    endcase
  end
endmodule
