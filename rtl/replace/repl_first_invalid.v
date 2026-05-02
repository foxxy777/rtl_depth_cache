module repl_first_invalid_4 (
  input [3:0] valid_bits,
  output reg [1:0] way,
  output any_invalid
);
  wire [3:0] inv = ~valid_bits;
  assign any_invalid = |inv;
  always @(*) begin
    way = 2'd0;
    if (inv[0]) way = 2'd0;
    else if (inv[1]) way = 2'd1;
    else if (inv[2]) way = 2'd2;
    else if (inv[3]) way = 2'd3;
  end
endmodule

module repl_first_invalid_8 (
  input [7:0] valid_bits,
  output reg [2:0] way,
  output any_invalid
);
  wire [7:0] inv = ~valid_bits;
  assign any_invalid = |inv;
  always @(*) begin
    way = 3'd0;
    if (inv[0]) way = 3'd0;
    else if (inv[1]) way = 3'd1;
    else if (inv[2]) way = 3'd2;
    else if (inv[3]) way = 3'd3;
    else if (inv[4]) way = 3'd4;
    else if (inv[5]) way = 3'd5;
    else if (inv[6]) way = 3'd6;
    else if (inv[7]) way = 3'd7;
  end
endmodule

module repl_first_invalid_16 (
  input [15:0] valid_bits,
  output reg [3:0] way,
  output any_invalid
);
  wire [15:0] inv = ~valid_bits;
  assign any_invalid = |inv;
  always @(*) begin
    way = 4'd0;
    if (inv[0]) way = 4'd0;
    else if (inv[1]) way = 4'd1;
    else if (inv[2]) way = 4'd2;
    else if (inv[3]) way = 4'd3;
    else if (inv[4]) way = 4'd4;
    else if (inv[5]) way = 4'd5;
    else if (inv[6]) way = 4'd6;
    else if (inv[7]) way = 4'd7;
    else if (inv[8]) way = 4'd8;
    else if (inv[9]) way = 4'd9;
    else if (inv[10]) way = 4'd10;
    else if (inv[11]) way = 4'd11;
    else if (inv[12]) way = 4'd12;
    else if (inv[13]) way = 4'd13;
    else if (inv[14]) way = 4'd14;
    else if (inv[15]) way = 4'd15;
  end
endmodule

module repl_first_invalid_32 (
  input [31:0] valid_bits,
  output reg [4:0] way,
  output any_invalid
);
  wire [31:0] inv = ~valid_bits;
  assign any_invalid = |inv;
  always @(*) begin
    way = 5'd0;
    if (inv[0]) way = 5'd0;
    else if (inv[1]) way = 5'd1;
    else if (inv[2]) way = 5'd2;
    else if (inv[3]) way = 5'd3;
    else if (inv[4]) way = 5'd4;
    else if (inv[5]) way = 5'd5;
    else if (inv[6]) way = 5'd6;
    else if (inv[7]) way = 5'd7;
    else if (inv[8]) way = 5'd8;
    else if (inv[9]) way = 5'd9;
    else if (inv[10]) way = 5'd10;
    else if (inv[11]) way = 5'd11;
    else if (inv[12]) way = 5'd12;
    else if (inv[13]) way = 5'd13;
    else if (inv[14]) way = 5'd14;
    else if (inv[15]) way = 5'd15;
    else if (inv[16]) way = 5'd16;
    else if (inv[17]) way = 5'd17;
    else if (inv[18]) way = 5'd18;
    else if (inv[19]) way = 5'd19;
    else if (inv[20]) way = 5'd20;
    else if (inv[21]) way = 5'd21;
    else if (inv[22]) way = 5'd22;
    else if (inv[23]) way = 5'd23;
    else if (inv[24]) way = 5'd24;
    else if (inv[25]) way = 5'd25;
    else if (inv[26]) way = 5'd26;
    else if (inv[27]) way = 5'd27;
    else if (inv[28]) way = 5'd28;
    else if (inv[29]) way = 5'd29;
    else if (inv[30]) way = 5'd30;
    else if (inv[31]) way = 5'd31;
  end
endmodule

module repl_first_invalid_64 (
  input [63:0] valid_bits,
  output reg [5:0] way,
  output any_invalid
);
  wire [63:0] inv = ~valid_bits;
  assign any_invalid = |inv;
  always @(*) begin
    way = 6'd0;
    if (inv[0]) way = 6'd0;
    else if (inv[1]) way = 6'd1;
    else if (inv[2]) way = 6'd2;
    else if (inv[3]) way = 6'd3;
    else if (inv[4]) way = 6'd4;
    else if (inv[5]) way = 6'd5;
    else if (inv[6]) way = 6'd6;
    else if (inv[7]) way = 6'd7;
    else if (inv[8]) way = 6'd8;
    else if (inv[9]) way = 6'd9;
    else if (inv[10]) way = 6'd10;
    else if (inv[11]) way = 6'd11;
    else if (inv[12]) way = 6'd12;
    else if (inv[13]) way = 6'd13;
    else if (inv[14]) way = 6'd14;
    else if (inv[15]) way = 6'd15;
    else if (inv[16]) way = 6'd16;
    else if (inv[17]) way = 6'd17;
    else if (inv[18]) way = 6'd18;
    else if (inv[19]) way = 6'd19;
    else if (inv[20]) way = 6'd20;
    else if (inv[21]) way = 6'd21;
    else if (inv[22]) way = 6'd22;
    else if (inv[23]) way = 6'd23;
    else if (inv[24]) way = 6'd24;
    else if (inv[25]) way = 6'd25;
    else if (inv[26]) way = 6'd26;
    else if (inv[27]) way = 6'd27;
    else if (inv[28]) way = 6'd28;
    else if (inv[29]) way = 6'd29;
    else if (inv[30]) way = 6'd30;
    else if (inv[31]) way = 6'd31;
    else if (inv[32]) way = 6'd32;
    else if (inv[33]) way = 6'd33;
    else if (inv[34]) way = 6'd34;
    else if (inv[35]) way = 6'd35;
    else if (inv[36]) way = 6'd36;
    else if (inv[37]) way = 6'd37;
    else if (inv[38]) way = 6'd38;
    else if (inv[39]) way = 6'd39;
    else if (inv[40]) way = 6'd40;
    else if (inv[41]) way = 6'd41;
    else if (inv[42]) way = 6'd42;
    else if (inv[43]) way = 6'd43;
    else if (inv[44]) way = 6'd44;
    else if (inv[45]) way = 6'd45;
    else if (inv[46]) way = 6'd46;
    else if (inv[47]) way = 6'd47;
    else if (inv[48]) way = 6'd48;
    else if (inv[49]) way = 6'd49;
    else if (inv[50]) way = 6'd50;
    else if (inv[51]) way = 6'd51;
    else if (inv[52]) way = 6'd52;
    else if (inv[53]) way = 6'd53;
    else if (inv[54]) way = 6'd54;
    else if (inv[55]) way = 6'd55;
    else if (inv[56]) way = 6'd56;
    else if (inv[57]) way = 6'd57;
    else if (inv[58]) way = 6'd58;
    else if (inv[59]) way = 6'd59;
    else if (inv[60]) way = 6'd60;
    else if (inv[61]) way = 6'd61;
    else if (inv[62]) way = 6'd62;
    else if (inv[63]) way = 6'd63;
  end
endmodule
